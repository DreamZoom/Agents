<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Business.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Agent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Applyfor
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div role="tabpanel">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#request" aria-controls="request" role="tab" data-toggle="tab">申请代理</a></li>
            <li role="presentation"><a href="#update" aria-controls="update" role="tab" data-toggle="tab">代理升级</a></li>

        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="request">
                <h3></h3>
                <div class="form-horizontal">
                    <% using (Html.BeginForm())
                       { %>
                    <%: Html.AntiForgeryToken() %>
                    <%: Html.ValidationSummary(true) %>

                    <fieldset>
                        <legend>填写代理申请</legend>

                        <%:Html.Hidden("RequestType",0)%>
                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ProductName, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ProductName) %>
                                <%: Html.ValidationMessageFor(model => model.ProductName) %>
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
                            <%: Html.LabelFor(model => model.Weixin, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.Weixin) %>
                                <%: Html.ValidationMessageFor(model => model.Weixin) %>
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
                            <%: Html.LabelFor(model => model.AgentName, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.AgentName) %>
                                <%: Html.ValidationMessageFor(model => model.AgentName) %>
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
                            <%: Html.LabelFor(model => model.Address, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.Address) %>
                                <%: Html.ValidationMessageFor(model => model.Address) %>
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
                            <%: Html.LabelFor(model => model.ShopLink1, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopLink1) %>
                                <%: Html.ValidationMessageFor(model => model.ShopLink1) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopAccount1, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopAccount1) %>
                                <%: Html.ValidationMessageFor(model => model.ShopAccount1) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopLink2, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopLink2) %>
                                <%: Html.ValidationMessageFor(model => model.ShopLink2) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopAccount2, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopAccount2) %>
                                <%: Html.ValidationMessageFor(model => model.ShopAccount2) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopLink3, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopLink3) %>
                                <%: Html.ValidationMessageFor(model => model.ShopLink3) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopAccount3, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopAccount3) %>
                                <%: Html.ValidationMessageFor(model => model.ShopAccount3) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input type="submit" class="btn btn-primary" value="提交申请">
                            </div>
                        </div>

                    </fieldset>
                    <% } %>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="update">
                  <h3></h3>
                <div class="form-horizontal">
                    <% using (Html.BeginForm())
                       { %>
                    <%: Html.AntiForgeryToken() %>
                    <%: Html.ValidationSummary(true) %>

                    <fieldset>
                        <legend>填写升级申请</legend>

                       <%:Html.Hidden("RequestType",1)%>
                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ProductName, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ProductName) %>
                                <%: Html.ValidationMessageFor(model => model.ProductName) %>
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
                            <%: Html.LabelFor(model => model.Weixin, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.Weixin) %>
                                <%: Html.ValidationMessageFor(model => model.Weixin) %>
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
                            <%: Html.LabelFor(model => model.AgentName, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.AgentName) %>
                                <%: Html.ValidationMessageFor(model => model.AgentName) %>
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
                            <%: Html.LabelFor(model => model.Address, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.Address) %>
                                <%: Html.ValidationMessageFor(model => model.Address) %>
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
                            <%: Html.LabelFor(model => model.ShopLink1, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopLink1) %>
                                <%: Html.ValidationMessageFor(model => model.ShopLink1) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopAccount1, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopAccount1) %>
                                <%: Html.ValidationMessageFor(model => model.ShopAccount1) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopLink2, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopLink2) %>
                                <%: Html.ValidationMessageFor(model => model.ShopLink2) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopAccount2, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopAccount2) %>
                                <%: Html.ValidationMessageFor(model => model.ShopAccount2) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopLink3, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopLink3) %>
                                <%: Html.ValidationMessageFor(model => model.ShopLink3) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <%: Html.LabelFor(model => model.ShopAccount3, new { @class="col-sm-2 control-label"}) %>

                            <div class="col-sm-10">
                                <%: Html.EditorFor(model => model.ShopAccount3) %>
                                <%: Html.ValidationMessageFor(model => model.ShopAccount3) %>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input type="submit" class="btn btn-primary" value="提交申请">
                            </div>
                        </div>

                    </fieldset>
                    <% } %>
                </div>

            </div>
        </div>

    </div>

</asp:Content>
