<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Business.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Agent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AgentDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="form-horizontal" role="form">
        <fieldset>
            <legend>详细信息</legend>

            <div class="form-group">
                <%: Html.LabelFor(model => model.Weixin, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Weixin) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.PrevWeixin, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.PrevWeixin) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.AgentName, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.AgentName) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.AgentLevel, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.AgentLevel) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.IDCard, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.IDCard) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.Tell, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Tell) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.Address, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Address) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.Emaill, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Emaill) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.AuthorizeBookNo, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.AuthorizeBookNo) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.AuthorizeBooStartDate, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.AuthorizeBooStartDate) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.AuthorizeBooEndDate, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.AuthorizeBooEndDate) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.ProductName, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.ProductName) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.State, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.State) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.ShopLink1, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.ShopLink1) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.ShopAccount1, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.ShopAccount1) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.ShopLink2, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.ShopLink2) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.ShopAccount2, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.ShopAccount2) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.ShopLink3, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.ShopLink3) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.ShopAccount3, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.ShopAccount3) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.Bussiness, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Bussiness) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.RequestType, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.RequestType) %>
                </div>
            </div>

            <div class="form-group">
                
            </div>
        </fieldset>
    </div>



</asp:Content>
