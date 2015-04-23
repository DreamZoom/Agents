<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.LoginModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    登录
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">

   

    <section id="loginForm" class="col-md-4">

        <% using (Html.BeginForm(new { ReturnUrl = ViewBag.ReturnUrl }))
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>使用本地帐户登录。</legend>
            <div >
                <div >
                    <%: Html.LabelFor(m => m.UserName) %>
                    <%: Html.TextBoxFor(m => m.UserName, new { @class="form-control col-md-4" })%>
                    <%: Html.ValidationMessageFor(m => m.UserName) %>
                </div>
                <div >
                    <%: Html.LabelFor(m => m.Password) %>
                    <%: Html.PasswordFor(m => m.Password, new { @class="form-control col-md-4" }) %>
                    <%: Html.ValidationMessageFor(m => m.Password) %>
                </div>

                <div >
                    
                    <label>
                         <%: Html.CheckBoxFor(m => m.RememberMe) %>
                        <%: Html.DisplayNameFor(m => m.RememberMe) %>
                    </label>
                </div>
                
            </div>
            <p>

                <input type="submit" value="登录" class="btn btn-success pull-right" />
            </p>
        </fieldset>
        <p>
            <%: Html.ActionLink("注册", "Register") %> 如果您没有帐户。
        </p>
        <% } %>
    </section>


</asp:Content>


