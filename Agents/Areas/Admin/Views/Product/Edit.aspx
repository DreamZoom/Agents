<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Product>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<% using (Html.BeginForm("Edit","Product",FormMethod.Post,new { @class="form-horizontal" ,role="form" })) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>编辑</legend>

        <div class="form-group">
            <%: Html.LabelFor(model => model.ProductName, new { @class="col-sm-2 control-label"}) %>
        
         <div class="col-sm-10">
            <%: Html.EditorFor(model => model.ProductName) %>
            <%: Html.ValidationMessageFor(model => model.ProductName) %>
        </div>
		 </div>

        <div class="form-group">
            <%: Html.LabelFor(model => model.ProductDiscription, new { @class="col-sm-2 control-label"}) %>
        
         <div class="col-sm-10">
            <%: Html.EditorFor(model => model.ProductDiscription) %>
            <%: Html.ValidationMessageFor(model => model.ProductDiscription) %>
        </div>
		 </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <input type="submit" class="btn btn-primary" value="保存" />	<%: Html.ActionLink("返回列表", "Index",new{},new { @class="btn btn-success"}) %>
            </div>
        </div>
    </fieldset>
<% } %>

<div>
    
</div>

</asp:Content>
