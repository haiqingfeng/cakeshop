<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>系统后台</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <!-- <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>手表后台管理</span></a>
            </div> -->

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>${admin.userName }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/admin/findCake">蛋糕-cake</a></li>
                      <li><a href="index.jsp">种类-type</a></li>
                      <li><a href="index.jsp">口味-flavour</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.jsp">General Form</a></li>
                      <li><a href="form_advanced.jsp">Advanced Components</a></li>
                      <li><a href="form_validation.jsp">Form Validation</a></li>
                      <li><a href="form_wizards.jsp">Form Wizard</a></li>
                      <li><a href="form_upload.jsp">Form Upload</a></li>
                      <li><a href="form_buttons.jsp">Form Buttons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.jsp">General Elements</a></li>
                      <li><a href="media_gallery.jsp">Media Gallery</a></li>
                      <li><a href="typography.jsp">Typography</a></li>
                      <li><a href="icons.jsp">Icons</a></li>
                      <li><a href="glyphicons.jsp">Glyphicons</a></li>
                      <li><a href="widgets.jsp">Widgets</a></li>
                      <li><a href="invoice.jsp">Invoice</a></li>
                      <li><a href="inbox.jsp">Inbox</a></li>
                      <li><a href="calendar.jsp">Calendar</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.jsp">Tables</a></li>
                      <li><a href="tables_dynamic.jsp">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.jsp">Chart JS</a></li>
                      <li><a href="chartjs2.jsp">Chart JS2</a></li>
                      <li><a href="morisjs.jsp">Moris JS</a></li>
                      <li><a href="echarts.jsp">ECharts</a></li>
                      <li><a href="other_charts.jsp">Other Charts</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fixed_sidebar.jsp">Fixed Sidebar</a></li>
                      <li><a href="fixed_footer.jsp">Fixed Footer</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.jsp">E-commerce</a></li>
                      <li><a href="projects.jsp">Projects</a></li>
                      <li><a href="project_detail.jsp">Project Detail</a></li>
                      <li><a href="contacts.jsp">Contacts</a></li>
                      <li><a href="profile.jsp">Profile</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_403.jsp">403 Error</a></li>
                      <li><a href="page_404.jsp">404 Error</a></li>
                      <li><a href="page_500.jsp">500 Error</a></li>
                      <li><a href="plain_page.jsp">Plain Page</a></li>
                      <li><a href="login.jsp">Login Page</a></li>
                      <li><a href="pricing_tables.jsp">Pricing Tables</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.jsp">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>                  
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.jsp">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">${admin.userName }
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    
                    <li><a href="${pageContext.request.contextPath}/user/logout"><i class="fa fa-sign-out pull-right"></i>退出登录</a></li>
                  </ul>
                </li>      
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3></h3>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="clearfix"></div>
                    <div id="form1" class="form-horizontal" runat="server">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>后台管理</h2>
                                    <div class="clearfix"></div>
                                </div>
                                <br/>
                                <form action="${pageContext.request.contextPath}/admin/selectCake" method="post">
                                	<table class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
                                    <tr align="center">
                                    	<td><input class="form-control"  name="name" type="text" placeholder="名称"/></td>
                                    	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-success" value="查询"/></td>
                                    </tr>
                                	</table>
                                </form>
                                <div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
                                    <a class="btn btn btn-primary"  role="button" href="${pageContext.request.contextPath}/admin/add" >增加</a>
                                </div>
                                <div class="x_content">
                                    <div class="table-responsive">
                                        <table class="table table-striped jambo_table bulk_action text-center">
                                            <thead>
                                            <tr class="headings">
                                                <th class="column-title text-center">id</th>
                                                <th class="column-title text-center">蛋糕</th>
                                                <th class="column-title text-center">描述</th>
                                                <th class="column-title text-center">种类</th>
                                                <th class="column-title text-center">口味</th>
                                                <th class="column-title text-center">颜色</th>
                                                <th class="column-title text-center">修改</th>
                                                <th class="column-title text-center">删除</th>    
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${cakes }" var="cake">
                                            <tr class="even pointer">
                                            	<td class="text-center">${cake.cakeId }</td>
                                            	<td class="text-center">${cake.cakeName }</td>
                                            	<td class="text-center">${cake.description }</td>
                                            	<td class="text-center">${cake.getType().typeName }</td>
                                            	<td class="text-center">${cake.getFlavour().flavourName }</td>
                                            	<td class="text-center">${cake.getColor().colorName }</td>
                                            	<td class="text-center"><a href="${pageContext.request.contextPath}/admin/editCake?cakeId=${cake.cakeId}">修改</a></td>
                                            	<td class="text-center"><a href="${pageContext.request.contextPath}/admin/deleteCake?cakeId=${cake.cakeId}">删除</a></td>
                                            </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div id="pagination" style="padding-top: 0px;background-color: #ffffff;height: 110px;">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination">
                                          <li>
                                            <a href="#" aria-label="Previous">
                                              <span aria-hidden="true">&laquo;</span>
                                            </a>
                                          </li>
                                          <li><a href="#">1</a></li>
                                          <li><a href="#">2</a></li>
                                          <li><a href="#">3</a></li>
                                          <li><a href="#">4</a></li>
                                          <li><a href="#">5</a></li>
                                          <li>
                                            <a href="#" aria-label="Next">
                                              <span aria-hidden="true">&raquo;</span>
                                            </a>
                                          </li>
                                        </ul>
                                      </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
          


          
      
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>


    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
	   <!-- 自定义script放到这 -->
     <script type="text/javascript">
        //完成全选全不选
    $("#check_all").click(function () {
        //对于原生的属性用prop获取；attr获取自定义的属性
        $(".check_item").prop("checked",$(this).prop("checked"));
    });
    //check_item
    $(document).on("click",".check_item",function () {
        //判断当前选中的是否为总个数
        var flag = $(".check_item:checked").length == $(".check_item").length;
        $("#check_all").prop("checked",flag);
    });

    $("#distribution_btn").click(function () {
        var a="id=";
        $.each($(".check_item:checked"),function () {
            if($(this).parents("tr").find("td:eq(1)").text()!="分配"){
                return;
            }else{
                a += $(this).parents("tr").find("td:eq(2)").text()+"_";
            }

        });
        a = a.substring(0,a.length-1);
        $(this).attr("href",editUrl+"?"+a);
    });
     </script>
  </body>
</html>
