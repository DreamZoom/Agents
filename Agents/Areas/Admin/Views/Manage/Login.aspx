<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Agents.Models.Admin>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>后台管理登录</title>
    <link href="../../../../Theme/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../../Theme/css/ace.min.css" rel="stylesheet" />
    <link href="../../../../Theme/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../../../Theme/css/ace-rtl.min.css" rel="stylesheet" />
    <link href="../../../../Theme/css/ace-skins.min.css" rel="stylesheet" />
    <script src="../../../../Theme/js/jquery-2.0.3.min.js"></script>
    <script src="../../../../Theme/js/bootstrap.min.js"></script>
    <script src="../../../../Theme/js/ace.min.js"></script>
    <script src="../../../../Theme/js/ace-extra.min.js"></script>
</head>
<body class="login-layout">
    <div >
        <div class="main-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="login-container">
                            <div class="center">
                                <h1>
                                    <i class="ace-icon fa fa-leaf green"></i>
                                    <span class="white" id="id-text2">后台管理登录</span>
                                </h1>
                                <h4 class="blue" id="id-company-text"></h4>
                            </div>

                            <div class="space-6"></div>

                            <div class="position-relative">
                                <div id="login-box" class="login-box visible widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header blue lighter bigger">
                                                <i class="ace-icon fa fa-coffee green"></i>
                                                请输入您的账户信息
                                            </h4>

                                            <div class="space-6"></div>

                                            <form action="<%:Url.Action("Login") %>" method="post">
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <%:Html.TextBoxFor(m => m.AdminName, new { @class="form-control" ,placeholder="Username"})%>
                                                            <i class="ace-icon fa icon-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                             <%:Html.PasswordFor(m => m.Password, new { @class="form-control" ,placeholder="Password"})%>
                                                            <i class="ace-icon fa icon-lock"></i>
                                                        </span>
                                                    </label>

                                                    <div class="space"></div>

                                                    <div class="clearfix">
                                                        <label class="inline">
                                                            <%--<input type="checkbox" class="ace" name="RemeberMe" />--%>
                                                             <%: Html.CheckBox("RemeberMe") %>
                                                            <span class="lbl">记住我?</span>
                                                        </label>

                                                        <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                            <i class="ace-icon fa fa-key"></i>
                                                            <span class="bigger-110">登录</span>
                                                        </button>
                                                    </div>

                                                    <div class="space-4"></div>
                                                </fieldset>
                                            </form>

                                            <div class="social-or-login center">
                                                <span class="bigger-110"></span>
                                            </div>

                                            <div class="space-6"></div>

                                           
                                        </div>
                                        <!-- /.widget-main -->

                                       
                                    </div>
                                    <!-- /.widget-body -->
                                </div>
                                <!-- /.login-box -->

                              

                           
                                <!-- /.signup-box -->
                            </div>
                            <!-- /.position-relative -->

                           
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.main-content -->
        </div>
        <!-- /.main-container -->



        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function ($) {
                $(document).on('click', '.toolbar a[data-target]', function (e) {
                    e.preventDefault();
                    var target = $(this).data('target');
                    $('.widget-box.visible').removeClass('visible');//hide others
                    $(target).addClass('visible');//show target
                });
            });

        </script>
    </div>
</body>
</html>
