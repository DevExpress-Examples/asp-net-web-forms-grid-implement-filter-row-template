Imports DevExpress.Data.Filtering
Imports DevExpress.Web

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Grid_CustomCallback(ByVal sender As Object, ByVal e As ASPxGridViewCustomCallbackEventArgs)
        If e.Parameters = "FilterByCategories" Then
            Dim column = Grid.DataColumns("CategoryName")
            Dim lookup = TryCast(Grid.FindFilterCellTemplateControl(column, "Lookup"), ASPxGridLookup)
            If lookup IsNot Nothing Then
                Grid.ApplyFilterToColumn(column, CreateCriteria(lookup, column.FieldName))
            End If
        End If
    End Sub

    Protected Function CreateCriteria(ByVal gridLookup As ASPxGridLookup, ByVal fieldName As String) As CriteriaOperator
        Dim values = gridLookup.GridView.GetSelectedFieldValues(fieldName)
        Return If(values.Count > 0, New InOperator(fieldName, values), Nothing)
    End Function
End Class