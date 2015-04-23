<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Agent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="tabbable">
        <ul class="nav nav-tabs" id="myTab">
            <li class="active">
                <a data-toggle="tab" href="#home">
                    <i class="green ace-icon fa fa-home bigger-120"></i>
                    仅添加代理
                </a>
            </li>

            <li>
                <a data-toggle="tab" href="#messages">添加商户，同时添加代理。
														
                </a>
            </li>


        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <p></p>
                <% using (Html.BeginForm("Create", "Agent", FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
                   { %>
                <%: Html.AntiForgeryToken() %>
                <%: Html.ValidationSummary(true) %>

                <fieldset>
                    <legend>代理信息</legend>

                    <div class="form-group">
                        <%: Html.LabelFor(model => model.Bussiness, new { @class="col-sm-2 control-label"}) %>

                        <div class="col-sm-10">
                            <%: Html.EditorFor(model => model.Bussiness) %>
                            <%: Html.ValidationMessageFor(model => model.Bussiness) %>
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
                        <%: Html.LabelFor(model => model.PrevWeixin, new { @class="col-sm-2 control-label"}) %>

                        <div class="col-sm-10">
                            <%: Html.EditorFor(model => model.PrevWeixin) %>
                            <%: Html.ValidationMessageFor(model => model.PrevWeixin) %>
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
                            <input type="submit" class="btn btn-primary" value="创建">
                            <%: Html.ActionLink("返回列表", "Index",new{},new { @class="btn btn-success"}) %>
                        </div>
                    </div>

                </fieldset>
                <% } %>
            </div>

            <div id="messages" class="tab-pane fade">
                <p></p>
                <% using (Html.BeginForm("Create", "Agent", FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
                   { %>
                <%: Html.AntiForgeryToken() %>
                <%: Html.ValidationSummary(true) %>

                <fieldset>
                    <legend>账户信息</legend>
                    <!--添加代理商账户-->
                    <div class="form-group">

                        <label class="col-sm-2 control-label">代理商账户</label>
                        <div class="col-sm-10">
                            <%: Html.TextBox("UserName") %>
                            <%: Html.ValidationMessage("UserName") %>
                        </div>
                    </div>

                    <div class="form-group">

                        <label class="col-sm-2 control-label">代理商密码</label>
                        <div class="col-sm-10">
                            <%: Html.TextBox("Password") %>
                            <%: Html.ValidationMessage("Password") %>
                        </div>
                    </div>
                    <%:Html.Hidden("isAddBusiness",true) %>
                    <!--添加代理商账户-->
                </fieldset>

                <fieldset>
                    <legend>代理信息</legend>
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
                        <%: Html.LabelFor(model => model.ProductName, new { @class="col-sm-2 control-label"}) %>

                        <div class="col-sm-10">
                            <%: Html.DropDownList("ProductName", String.Empty) %>
                            <%: Html.ValidationMessageFor(model => model.ProductName) %>
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
                            <input type="submit" class="btn btn-primary" value="创建">
                            <%: Html.ActionLink("返回列表", "Index",new{},new { @class="btn btn-success"}) %>
                        </div>
                    </div>

                </fieldset>
                <% } %>
            </div>


        </div>
    </div>



</asp:Content>


