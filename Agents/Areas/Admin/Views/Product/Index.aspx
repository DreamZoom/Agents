<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/IFrame.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Agents.Models.Product>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-xs-12">
            <h3 class="header smaller lighter blue">产品列表</h3>
            <div class="table-header">
            </div>

            <div class="table-responsive">

                <table class="table table-hover">
                    <thead>
                        <tr>
                           <th class="center">
                                <label>
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>
                                <%: Html.DisplayNameFor(model => model.ProductName) %>
                            </th>
                            <th>
                                <%: Html.DisplayNameFor(model => model.ProductDiscription) %>
                            </th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% foreach (var item in Model)
                           { %>
                        <tr>
                            <td class="center">
                                <label>
                                    <input type="checkbox" class="ace" name="check"  value="<%: Html.DisplayFor(modelItem => item.ProductName) %>"/>
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td>
                                <%: Html.DisplayFor(modelItem => item.ProductName) %>
                            </td>
                            <td>
                                <%: Html.DisplayFor(modelItem => item.ProductDiscription) %>
                            </td>
                            <td>
                                <%: Html.ActionLink("编辑", "Edit", new { id=item.ProductName }) %> |
            <%: Html.ActionLink("详情","Details", new {id=item.ProductName }) %> |
            <%: Html.ActionLink("删除", "Delete", new { id=item.ProductName }) %>
                            </td>
                        </tr>

                        <% } %>
                    </tbody>
                </table>

                <div id="toolbar">
                    <div class="btn-group">
                        <%: Html.ActionLink("新建", "Create",new{},new{ @class="btn btn-primary" }) %>
                        <button class="btn btn-success" id="btn_delete">删除选择</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        jQuery(function ($) {



            $('table th input:checkbox').on('click', function () {
                var that = this;
                $(this).closest('table').find('tr > td:first-child input:checkbox')
                .each(function () {
                    this.checked = that.checked;
                    $(this).closest('tr').toggleClass('selected');
                });

            });


            $("#btn_delete").on("click", function () {

                var idlist = new Array();
                $("input[type=checkbox][name=check]:checked").each(function () {
                    idlist.push($(this).val());
                });

                var ids = idlist.join(',');
                //alert(ids);
                window.location.href = "<%: Url.Action("DeleteList")%>?ids=" + ids;
            });

        });
    </script>

</asp:Content>
