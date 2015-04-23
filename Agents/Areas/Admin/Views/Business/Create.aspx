<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Business>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<% using (Html.BeginForm("Create","Business",FormMethod.Post,new { @class="form-horizontal", role="form" })) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>新建</legend>

       
        <div class="form-group">
            <%: Html.LabelFor(model => model.UserName, new { @class="col-sm-2 control-label"}) %>
       
         <div class="col-sm-10">
            <%: Html.EditorFor(model => model.UserName) %>
            <%: Html.ValidationMessageFor(model => model.UserName) %>
        </div>
      </div>
       
        <div class="form-group">
            <%: Html.LabelFor(model => model.Password, new { @class="col-sm-2 control-label"}) %>
       
         <div class="col-sm-10">
            <%: Html.EditorFor(model => model.Password) %>
            <%: Html.ValidationMessageFor(model => model.Password) %>
        </div>
      </div>
       
        <div class="form-group">
            <%: Html.LabelFor(model => model.Emaill, new { @class="col-sm-2 control-label"}) %>
       
         <div class="col-sm-10">
            <%: Html.EditorFor(model => model.Emaill) %>
            <%: Html.ValidationMessageFor(model => model.Emaill) %>
        </div>
      </div>
       
        <div class="form-group">
            <%: Html.LabelFor(model => model.RegisterTime, new { @class="col-sm-2 control-label"}) %>
       
         <div class="col-sm-10">
            <%: Html.EditorFor(model => model.RegisterTime) %>
            <%: Html.ValidationMessageFor(model => model.RegisterTime) %>
        </div>
      </div>
     
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <input type="submit" class="btn btn-primary" value="创建">	<%: Html.ActionLink("返回列表", "Index",new{},new { @class="btn btn-success"}) %>
            </div>
        </div>
       
    </fieldset>
<% } %>

<div>
    
</div>

</asp:Content>


