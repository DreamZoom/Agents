<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Admin>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<div class="alert alert-danger" role="alert">您确定要删除此条信息吗?</div>

 <div class="form-horizontal" role="form">
<fieldset>
    <legend>详细信息</legend>
    <div class="form-group">
        <%: Html.LabelFor(model => model.AdminName, new { @class="col-sm-2 control-label"}) %>
    
		<div class="col-sm-10">
			<%: Html.DisplayFor(model => model.AdminName) %>
		</div>
	</div>
    <div class="form-group">
        <%: Html.LabelFor(model => model.Password, new { @class="col-sm-2 control-label"}) %>
    
		<div class="col-sm-10">
			<%: Html.DisplayFor(model => model.Password) %>
		</div>
	</div>
    <div class="form-group">
        <%: Html.LabelFor(model => model.AddTime, new { @class="col-sm-2 control-label"}) %>
    
		<div class="col-sm-10">
			<%: Html.DisplayFor(model => model.AddTime) %>
		</div>
	</div>
    <div class="form-group">
        <%: Html.LabelFor(model => model.LastLoginTime, new { @class="col-sm-2 control-label"}) %>
    
		<div class="col-sm-10">
			<%: Html.DisplayFor(model => model.LastLoginTime) %>
		</div>
	</div>
	<div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
			<% using (Html.BeginForm()) { %>
				<%: Html.AntiForgeryToken() %>
						  <input type="submit" class="btn btn-primary" value="确定删除"> <%: Html.ActionLink("回到列表", "Index",new{},new { @class="btn btn-success"}) %>
			<% } %>
		</div>
    </div>
</fieldset>
</div>

</asp:Content>
