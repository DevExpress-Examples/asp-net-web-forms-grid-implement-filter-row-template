<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxGridLookup" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function Lookup_ValueChanged(s, e) {
            grid.PerformCallback("FilterByCategories");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGridView runat="server" ID="Grid" AutoGenerateColumns="False" DataSourceID="ProductsDataSource" ClientInstanceName="grid" 
        OnCustomCallback="Grid_CustomCallback" EnableViewState="false">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="CategoryName">
                <FilterTemplate>
                    <dx:ASPxGridLookup runat="server" ID="Lookup" AutoGenerateColumns="False" DataSourceID="CategoriesDataSource" KeyFieldName="CategoryID" 
                        SelectionMode="Multiple" TextFormatString="{0}" >
                        <Columns>
                            <dx:GridViewCommandColumn ShowSelectCheckbox="true" />
                            <dx:GridViewDataTextColumn FieldName="CategoryName" />
                            <dx:GridViewDataBinaryImageColumn FieldName="Picture">
                                <PropertiesBinaryImage ImageWidth="48" />
                            </dx:GridViewDataBinaryImageColumn>
                        </Columns>
                        <ClientSideEvents ValueChanged="Lookup_ValueChanged" />
                    </dx:ASPxGridLookup>
                </FilterTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" />
            <dx:GridViewDataTextColumn FieldName="ProductSales" />
            <dx:GridViewDataDateColumn FieldName="ShippedDate" />
        </Columns>
        <Settings ShowFilterRow="true" />
    </dx:ASPxGridView>
    <asp:AccessDataSource ID="ProductsDataSource" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [ProductReports]" />
    <asp:AccessDataSource ID="CategoriesDataSource" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Categories]" />
    </form>
</body>
</html>