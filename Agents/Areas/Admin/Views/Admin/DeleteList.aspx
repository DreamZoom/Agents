<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Agents.Models.Admin>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DeleteList
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<h2>您将要删除这些内容。<small>确定要删除吗？</small></h2>

<table class="table table-hover">
	<thead>
    <tr>
	    
        <th>
            <%: Html.DisplayNameFor(model => model.AdminName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Password) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.AddTime) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.LastLoginTime) %>
        </th>
        <th>操作</th>
    </tr>
	</thead>
	<tbody>
<% foreach (var item in Model) { %>
    <tr>
	    
        <td>
            <%: Html.DisplayFor(modelItem => item.AdminName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Password) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.AddTime) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.LastLoginTime) %>
        </td>
        <td>
            <%: Html.ActionLink("编辑", "Edit", new { /* id=item.PrimaryKey */ }) %> |
            <%: Html.ActionLink("详情","Details", new { /* id=item.PrimaryKey */ }) %> |
            <%: Html.ActionLink("删除", "Delete", new { /* id=item.PrimaryKey */ }) %>
        </td>
    </tr>

<% } %>
	</tbody>
</table>

<p>
    <% using (Html.BeginForm())
        { %>
    <%: Html.AntiForgeryToken() %>
    <input type="submit" class="btn btn-primary" value="确定删除">
    <%: Html.ActionLink("回到列表", "Index",new{},new { @class="btn btn-success"}) %>
    <% } %>
</p>



</asp:Content>
