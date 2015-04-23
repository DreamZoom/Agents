<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Business.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>欢迎<%:User.Identity.Name %></h2>
<div class="bg-info">
    <% var business = ViewBag.Business as Agents.Models.Business; %>
  <span>注册时间：<%:business.RegisterTime %></span>  
</div>

<div>
    <h3>代理产品</h3>
    <%foreach(var agent in business.Agents){ %>
       <div>
           <%:agent.ProductName %>
       </div>
    <%} %>
</div>
</asp:Content>
