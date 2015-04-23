<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Business.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Agents.Models.Agent>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BusinessAgentsOfChecked
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div role="tabpanel">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#myrequest" aria-controls="myrequest" role="tab" data-toggle="tab">待审核的申请</a></li>


        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="myrequest">
                <h3></h3>
                <table class="table table-hover">
                    <thead>
                        <tr>

                            <th>
                                <%: Html.DisplayNameFor(model => model.Weixin) %>
                            </th>
                            <th>
                                <%: Html.DisplayNameFor(model => model.PrevWeixin) %>
                            </th>

                            <th>
                                <%: Html.DisplayNameFor(model => model.AgentLevel) %>
                            </th>



                            <th>
                                <%: Html.DisplayNameFor(model => model.Product.ProductDiscription) %>
                            </th>

                            <th>
                                <%: Html.DisplayNameFor(model => model.State) %>
                            </th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <% foreach (var item in Model)
                           { %>
                        <tr>

                            <td>
                                <%: Html.DisplayFor(modelItem => item.Weixin) %>
                            </td>
                            <td>
                                <%: Html.DisplayFor(modelItem => item.PrevWeixin) %>
                            </td>

                            <td>
                                <%:(Agents.Models.AgentLevel) ( item.AgentLevel) %>
                            </td>


                            <td>
                                <%: Html.DisplayFor(modelItem => item.Product.ProductDiscription) %>
                            </td>

                            <td>
                                <%:(Agents.Models.AgentState)(item.State) %>
                            </td>
                            <td></td>
                        </tr>

                        <% } %>
                    </tbody>
                </table>

            </div>

        </div>

    </div>


   
    <script type="text/javascript">
        var d = dialog({
            title: '提示',
            content: '按钮回调函数返回 false 则不许关闭',
            okValue: '确定',
            ok: function () {
                this.title('提交中…');
                return false;
            },
            cancelValue: '取消',
            cancel: function () { }
        });
        d.show();
    </script>
    

</asp:Content>
