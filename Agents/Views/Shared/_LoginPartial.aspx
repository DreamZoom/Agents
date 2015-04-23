<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<% if (Request.IsAuthenticated)
   { %>

<li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">你好，<%:User.Identity.Name %> <span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu">
        <li><a href="<%:Url.Action("LogOff","Account") %>">注销登录</a></li>
    </ul>
</li>

<% }
   else
   { %>

<li><%: Html.ActionLink("注册", "Register", "Account", routeValues: null, htmlAttributes: new { id = "registerLink" })%></li>
<li><%: Html.ActionLink("登录", "Login", "Account", routeValues: null, htmlAttributes: new { id = "loginLink" })%></li>

<% } %>