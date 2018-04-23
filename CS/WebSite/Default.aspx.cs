using DevExpress.Data.Filtering;
using DevExpress.Web.ASPxGridLookup;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page {
    protected void Grid_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e) {
        if(e.Parameters == "FilterByCategories") {
            var column = Grid.DataColumns["CategoryName"];
            var lookup = Grid.FindFilterCellTemplateControl(column, "Lookup") as ASPxGridLookup;
            if(lookup != null)
                Grid.ApplyFilterToColumn(column, CreateCriteria(lookup, column.FieldName));
        }
    }

    protected CriteriaOperator CreateCriteria(ASPxGridLookup gridLookup, string fieldName) {
        var values = gridLookup.GridView.GetSelectedFieldValues(fieldName);
        return values.Count > 0 ? new InOperator(fieldName, values) : null;
    }
}