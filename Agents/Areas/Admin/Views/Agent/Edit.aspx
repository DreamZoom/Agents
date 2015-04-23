<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Agent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



    <% using (Html.BeginForm("Edit", "Agent", FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
       { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>编辑</legend>

        <div class="form-group">
            <%: Html.LabelFor(model => model.Weixin, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.EditorFor(model => model.Weixin) %>
                <%: Html.ValidationMessageFor(model => model.Weixin) %>
            </div>
        </div>

        <div class="form-group">
            <%: Html.LabelFor(model => model.PrevWeixin, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.EditorFor(model => model.PrevWeixin) %>
                <%: Html.ValidationMessageFor(model => model.PrevWeixin) %>
            </div>
        </div>

        <div class="form-group">
            <%: Html.LabelFor(model => model.AgentName, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.EditorFor(model => model.AgentName) %>
                <%: Html.ValidationMessageFor(model => model.AgentName) %>
            </div>
        </div>

        <div class="form-group">
            <%: Html.LabelFor(model => model.AgentLevel, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.EditorFor(model => model.AgentLevel) %>
                <%: Html.ValidationMessageFor(model => model.AgentLevel) %>
            </div>
        </div>

        <div class="form-group">
            <%: Html.LabelFor(model => model.IDCard, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.EditorFor(model => model.IDCard) %>
                <%: Html.ValidationMessageFor(model => model.IDCard) %>
            </div>
        </div>

        <div class="form-group">
            <%: Html.LabelFor(model => model.Tell, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.EditorFor(model => model.Tell) %>
                <%: Html.ValidationMessageFor(model => model.Tell) %>
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
            <%: Html.LabelFor(model => model.Address, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.EditorFor(model => model.Address) %>
                <%: Html.ValidationMessageFor(model => model.Address) %>
            </div>
        </div>

        <div class="form-group">
            <%: Html.LabelFor(model => model.ProductName, new { @class="col-sm-2 control-label"}) %>

            <div class="col-sm-10">
                <%: Html.DropDownList("ProductName", String.Empty) %>
                <%: Html.ValidationMessageFor(model => model.ProductName) %>
            </div>
        </div>





        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-primary" value="保存" />
                <%: Html.ActionLink("返回列表", "Index",new{},new { @class="btn btn-success"}) %>
            </div>
        </div>
    </fieldset>
    <% } %>

    <div>
    </div>

</asp:Content>
