<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128536219/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4521)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How use ASPxGridLookup as FilterRow editor via FilterTemplate
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4521/)**
<!-- run online end -->


<p>In some cases, when the default <a href="http://help.devexpress.com/#AspNet/CustomDocument3753"><u>filter row</u></a> editor's functionality is not enough, you can provide custom filter cell content using the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewColumn_FilterTemplatetopic"><u>FilterTemplate</u></a>. </p><p>In this example, a default cell editor is replaced with the <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxGridLookupASPxGridLookuptopic"><u>ASPxGridLookup</u></a> control. The control's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientEdit_ValueChangedtopic"><u>ValueChanged</u></a> client-side event is used to send a callback to the server side, invoking the grid's <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_CustomCallbacktopic"><u>CustomCallback</u></a> event. In the event handler, a filter criteria is created and applied to the grid using the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_ApplyFilterToColumntopic"><u>ApplyFilterToColumn</u></a> method.</p>

<br/>


