<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# ASPxGridView - How use ASPxGridLookup as FilterRow editor via FilterTemplate


<p>In some cases, when the default <a href="http://help.devexpress.com/#AspNet/CustomDocument3753"><u>filter row</u></a> editor's functionality is not enough, you can provide custom filter cell content using the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewColumn_FilterTemplatetopic"><u>FilterTemplate</u></a>. </p><p>In this example, a default cell editor is replaced with the <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxGridLookupASPxGridLookuptopic"><u>ASPxGridLookup</u></a> control. The control's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientEdit_ValueChangedtopic"><u>ValueChanged</u></a> client-side event is used to send a callback to the server side, invoking the grid's <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_CustomCallbacktopic"><u>CustomCallback</u></a> event. In the event handler, a filter criteria is created and applied to the grid using the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_ApplyFilterToColumntopic"><u>ApplyFilterToColumn</u></a> method.</p>

<br/>


