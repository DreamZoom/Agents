<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<% var admin = Session["Admin"] as Agents.Models.Admin; %>
<% if (admin!=null)
   { %>
<small>你好,</small>
<%: admin.AdminName%>!
   
<% }
   else
   { %>
<small>你好,</small>
请登录。
<% } %>