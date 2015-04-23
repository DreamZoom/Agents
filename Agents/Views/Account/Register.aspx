<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.RegisterModel>" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
    注册
</asp:Content>

<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3 class="">用户注册</h3>
    <hr />
    <div  style="margin-left:auto;margin-right:auto;width:40%">
        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary() %>

        <fieldset>
            <legend></legend>
            <div>
                <div class="input-group">
                    <%: Html.LabelFor(m => m.UserName) %>
                    <%: Html.TextBoxFor(m => m.UserName, new { @class="form-control " }) %>
                </div>
                <div class="input-group">
                    <%: Html.LabelFor(m => m.Password) %>
                    <%: Html.PasswordFor(m => m.Password, new { @class="form-control " }) %>
                </div>
                <div class="input-group">
                    <%: Html.LabelFor(m => m.ConfirmPassword) %>
                    <%: Html.PasswordFor(m => m.ConfirmPassword, new { @class="form-control " }) %>
                </div>
               <br />
                <p>
                    <input type="submit" value="注册" class="btn btn-success" />
                </p>
            </div>


        </fieldset>
        <% } %>
    </div>
</asp:Content>


