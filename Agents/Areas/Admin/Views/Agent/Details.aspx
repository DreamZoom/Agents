<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Agent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
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
                    <%: (Agents.Models.AgentState)( Model.AgentLevel) %>
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
                <%: Html.LabelFor(model => model.Emaill, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Emaill) %>
                </div>
            </div>

            <div class="form-group">
                <%: Html.LabelFor(model => model.Address, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Address) %>
                </div>
            </div>



            <div class="form-group">
                <%: Html.LabelFor(model => model.Product.ProductDiscription, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: Html.DisplayFor(model => model.Product.ProductDiscription) %>
                </div>
            </div>



            <div class="form-group">
                <%: Html.LabelFor(model => model.State, new { @class="col-sm-2 control-label"}) %>

                <div class="col-sm-10">
                    <%: (Agents.Models.AgentState)(Model.State) %>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <%: Html.ActionLink("编辑", "Edit", new { /* id=Model.PrimaryKey */ },new { @class="btn btn-primary"}) %>
                    <%: Html.ActionLink("返回列表", "Index",new{},new { @class="btn btn-success"}) %>
                </div>
            </div>
        </fieldset>
    </div>



</asp:Content>
