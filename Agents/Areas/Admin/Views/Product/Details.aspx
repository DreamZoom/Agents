<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Product>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


 <div class="form-horizontal" role="form">
<fieldset>
    <legend>详细信息</legend>

    <div class="form-group">
        <%: Html.LabelFor(model => model.ProductName, new { @class="col-sm-2 control-label"}) %>
    
		<div class="col-sm-10">
			<%: Html.DisplayFor(model => model.ProductName) %>
		</div>
	</div>

    <div class="form-group">
        <%: Html.LabelFor(model => model.ProductDiscription, new { @class="col-sm-2 control-label"}) %>
    
		<div class="col-sm-10">
			<%: Html.DisplayFor(model => model.ProductDiscription) %>
		</div>
	</div>

	<div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
							<%: Html.ActionLink("编辑", "Edit", new { /* id=Model.PrimaryKey */ },new { @class="btn btn-primary"}) %> 
				<%: Html.ActionLink("返回列表", "Index",new{},new { @class="btn btn-success"}) %>
						</div>
	</div>
</fieldset>
</div>

		

</asp:Content>
