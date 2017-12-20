<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>图书列表 - 图书管理系统</title>

<!-- Bootstrap -->
<link href="/library/static/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="/library/static/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="/library/static/css/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<!--  <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet"> -->
<!-- bootstrap-wysiwyg -->
<link href="/library/static/css/prettify.min.css" rel="stylesheet">
<!-- Select2 -->
<link href="/library/static/css/select2.min.css" rel="stylesheet">
<!-- Switchery -->
<link href="/library/static/css/switchery.min.css" rel="stylesheet">
<!-- starrr -->
<link href="/library/static/css/starrr.css" rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link href="/library/static/css/daterangepicker.css" rel="stylesheet">

<!-- Datatables -->
<link href="/library/static/css/dataTables.bootstrap.min.css"
  rel="stylesheet">
<link href="/library/static/css/buttons.bootstrap.min.css"
  rel="stylesheet">
<link href="/library/static/css/fixedHeader.bootstrap.min.css"
  rel="stylesheet">
<link href="/library/static/css/responsive.bootstrap.min.css"
  rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/library/static/css/custom.min.css" rel="stylesheet">

<style>
.dataTables_wrapper .dataTables_filter {
  float: right;
  text-align: right;
  visibility: hidden;
}
#button-modify {

}
</style>
</head>

<body class="nav-md">
  <div class="container body">
    <div class="main_container">
      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
          <div class="navbar nav_title" style="border: 0;">
            <a href="/library/queryBook.jsp" class="site_title"><i
              class="fa fa-book"></i> <span>图书管理系统</span></a>
          </div>

          <div class="clearfix"></div>

          <!-- menu profile quick info -->
          <div class="profile clearfix">
            <div class="profile_pic">
              <img src="/library/static/images/administrator.png"
                alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome,</span>
              <h2>Administrator</h2>
            </div>
          </div>
          <!-- /menu profile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu"
            class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
              <h3>图书管理</h3>
              <ul class="nav side-menu">
                <li><a><i class="fa fa-table"></i> 图书查询/修改<span
                    class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="queryBook.jsp">查询图书信息</a></li>
                    <li class="current-page"><a
                      href="tableBook.jsp">图书列表</a></li>
                  </ul></li>
                <li><a><i class="fa fa-edit"></i> 添加图书信息 <span
                    class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="addBook.jsp">添加图书</a></li>
                    <li><a href="addAuthor.jsp">添加作者</a></li>
                  </ul></li>
              </ul>
            </div>
            <div class="menu_section">
              <h3>其他</h3>
              <ul class="nav side-menu">
                <li><a><i class="fa fa-info"></i> 帮助 <span
                    class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="help.jsp">帮助</a></li>
                    <li><a href="about.jsp">关于</a></li>
                  </ul></li>
              </ul>
            </div>

          </div>
          <!-- /sidebar menu -->

        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">
        <div class="nav_menu">
          <nav>
          <div class="nav toggle">
            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
          </div>

          <Ul class="nav navbar-nav navbar-right">
            <li class=""><a href="javascript:;"
              class="user-profile dropdown-toggle"
              data-toggle="dropdown" aria-expanded="false"> <img
                src="/library/static/images/administrator.png" alt="">Administrator
                <span class=" fa fa-angle-down"></span>
            </a>
              <ul class="dropdown-menu dropdown-usermenu pull-right">
                <li><a href="/library/logout.action"><i
                    class="fa fa-sign-out pull-right"></i> Log Out</a></li>
              </ul></li>
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
              <h3>图书查询/修改</h3>
            </div>
          </div>

          <div class="clearfix"></div>


          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
              <div class="x_title">
                <h2>
                  图书列表<small>点击作者名可查看作者信息</small> 
                </h2>
                <div class="clearfix"></div>
              </div>

              <div class="x_content">

<!--                 <p> -->
<!--                   Add class -->
<!--                   <code>bulk_action</code> -->
<!--                   to table for bulk actions options on row select -->
<!--                 </p> -->

                <div class="table-responsive">
                  <table
                    class="table table-striped jambo_table bulk_action"
                    style="width:99%"
                    id="tableBook">
                    <thead>
                      <tr class="headings">
                        <th class="column-title">ISBN</th>
                        <th class="column-title">书名</th>
                        <th class="column-title">作者</th>
                        <th class="column-title">出版社</th>
                        <th class="column-title">出版日期</th>
                        <th class="column-title">价格</th>
                        <th class="column-title no-link last"><span
                          class="nobr">操作</span></th>
                        <th class="bulk-actions" colspan="7"><a
                          class="antoo"
                          style="color: #fff; font-weight: 500;">Bulk
                            Actions ( <span class="action-cnt"> </span>
                            ) <i class="fa fa-chevron-down"></i>
                        </a></th>
                      </tr>
                    </thead>
                    
                    <tfoot>
                        <tr>
                            <th class="pending-search" attr="">ISBN</th>
                            <th class="pending-search" attr="value='<s:property value="bookName"/>'">书名</th>
                            <th class="pending-search" attr="value='<s:property value="authorName"/>'">作者</th>
                            <th class="pending-search" attr="value='<s:property value="publisher"/>'">出版社</th>
                            <th class="pending-search" attr="id='text-publish-date' value='<s:property value="publishDate"/>'">出版日期</th>
                            <th class="pending-search" attr="">价格</th>
                            <th></th> 
                        </tr>
                    </tfoot>

                    <tbody>
                    </tbody>
                  </table>
                </div>


              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- /page content -->

      <!-- footer content -->
      <footer>
      <div class="pull-right">图书管理系统</div>
      <div class="clearfix"></div>
      </footer>
      <!-- /footer content -->
    </div>
  </div>
  
  <div class="modal fade bs-example-modal-lg in" tabindex="-1" id="show-author-modal"
    role="dialog" aria-hidden="true"
    >
    <div class="modal-dialog modal-lg">
      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">
            <span aria-hidden="true">×</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">修改图书信息</h4>
        </div>
        <div class="modal-body">
          <form enctype="multipart/form-data"
            class="form-horizontal form-label-left" role="form" id="show-author-form">
    
            <div class="form-group">
              <label
                class="control-label col-md-3 col-sm-3 col-xs-12"
                for="name">作者名
              </label>
              <div class="col-md-6 col-sm-6 col-xs-12">
                <input type="text" id="name"
                  name="name"
                  class="form-control col-md-7 col-xs-12" required disabled="disabled"/>
              </div>
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
              <label for="age"
                class="control-label col-md-3 col-sm-3 col-xs-12">作者年龄</label>
              <div class="col-md-6 col-sm-6 col-xs-12">
                <input id="age"
                  class="form-control col-md-7 col-xs-12"
                  name="age" type="number" min="0" max="200" disabled="disabled"/> 
              </div>
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
              <label for="country"
                class="control-label col-md-3 col-sm-3 col-xs-12">国籍</label>
              <div class="col-md-6 col-sm-6 col-xs-12">
                <input type="text" id="country"
                  class="form-control col-md-7 col-xs-12"
                  name="country" disabled="disabled"/>
              </div>
              <div class="help-block with-errors"></div>
            </div>
     
          </form>


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default"
            data-dismiss="modal">关闭</button>
        </div>

      </div>
    </div>
  </div>
  
  
  <div class="modal fade bs-example-modal-lg in" tabindex="-1" id="modify-book-modal"
    role="dialog" aria-hidden="true"
    >
    <div class="modal-dialog modal-lg">
      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">
            <span aria-hidden="true">×</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">修改图书信息</h4>
        </div>
        <div class="modal-body">
            <form action="/library/tableBook.action" method="post" enctype="multipart/form-data"
              class="form-horizontal form-label-left" data-toggle="validator" role="form" id="modify-book-form"> 

              <div class="form-group">
                <label
                  class="control-label col-md-3 col-sm-3 col-xs-12"
                  for="ISBN">ISBN
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="input-group" style="margin:0;padding:0">
                    <input type="text" id="isbn"
                      name="ISBN"
                      class="form-control" required  disabled="disabled" />
                    <span class="input-group-btn">
                      <button type="button" class="btn btn-primary" style="margin-right:0" id="get-douban-info">使用豆瓣API获取书籍数据</button>
                    </span>
                  </div>
                </div>
                <div class="help-block with-errors"></div> 
              </div>
              <div class="form-group">
                <label
                  class="control-label col-md-3 col-sm-3 col-xs-12"
                  for="title">书名
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="title"
                    name="title"
                    class="form-control col-md-7 col-xs-12" required/>
                </div>
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="publisher"
                  class="control-label col-md-3 col-sm-3 col-xs-12">作者</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="input-group" style="margin:0;padding:0;width:100%"> 
                    <select class="js-states form-control" name="authorID" id="authorID" style="width:100%" required></select> 
                  </div>
                </div>
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="publisher"
                  class="control-label col-md-3 col-sm-3 col-xs-12">出版社</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="publisher"
                    class="form-control col-md-7 col-xs-12"
                    name="publisher" required/>
                </div>
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="publishDate"
                  class="control-label col-md-3 col-sm-3 col-xs-12">出版日期
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="publishDate" name="publishDate"
                    class="date-picker form-control col-md-7 col-xs-12" pattern="[0-9]+-[0-9]+-[0-9]+"
                    type="text" required/> 
                </div>
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="price"
                  class="control-label col-md-3 col-sm-3 col-xs-12">价格 
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="input-group" style="margin:0;padding:0">
                    <span class="input-group-addon">￥</span>
                    <input type="number" id="price"
                      name="price"
                      class="form-control col-md-7 col-xs-12" placeholder="e.g. 10.00" required step="0.01" />
                  </div>
                </div>
                <div class="help-block with-errors"></div>
              </div>
<!--               <div class="ln_solid"></div> -->
              <div class="form-group">
                <div
                  class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align:center">
                  <button class="btn btn-primary" type="reset" style="display:none">重置</button>
                  <button type="submit" class="btn btn-success" style="display:none">提交</button> 
                </div>
              </div>

            </form>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default"
            data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-primary" onclick="submit_modify_book_form()">保存</button>
        </div>

      </div>
    </div>
  </div>
  

  <!-- jQuery -->
  <script src="/library/static/js/jquery.min.js"></script>
  <!-- Bootstrap -->

  <script src="/library/static/js/bootstrap.min.js"></script>
  <!-- FastClick -->
  <script src="/library/static/js/fastclick.js"></script>
  <!-- NProgress -->
  <script src="/library/static/js/nprogress.js"></script>
  <!-- bootstrap-progressbar -->
  <script src="/library/static/js/bootstrap-progressbar.min.js"></script>
  <!-- iCheck -->
  <!-- <script src="/library/static/js/icheck.min.js"></script> -->
  <!-- bootstrap-daterangepicker -->
  <script src="/library/static/js/moment.min.js"></script>
  <script src="/library/static/js/daterangepicker.js"></script>
  <!-- bootstrap-wysiwyg -->
  <script src="/library/static/js/bootstrap-wysiwyg.min.js"></script>
  <script src="/library/static/js/jquery.hotkeys.js"></script>
  <script src="/library/static/js/prettify.min.js"></script>
  <!-- Switchery -->
  <script src="/library/static/js/switchery.min.js"></script>
  <!-- Select2 -->
  <script src="/library/static/js/select2.full.min.js"></script>
  <!-- Parsley -->
<%--   <script src="/library/static/js/parsley.min.js"></script> --%>
  <script src="/library/static/js/validator.min.js"></script> 
  <!-- Autosize -->
  <script src="/library/static/js/autosize.min.js"></script>
  <!-- jQuery autocomplete -->
  <script src="/library/static/js/jquery.autocomplete.min.js"></script>
  <!-- starrr -->
  <script src="/library/static/js/starrr.js"></script>

  <!-- Datatables -->
  <script src="/library/static/js/jquery.dataTables.min.js"></script>
  <script src="/library/static/js/dataTables.bootstrap.min.js"></script>
  <script src="/library/static/js/dataTables.buttons.min.js"></script>
  <script src="/library/static/js/buttons.bootstrap.min.js"></script>
  <script src="/library/static/js/buttons.flash.min.js"></script>
  <script src="/library/static/js/buttons.html5.min.js"></script>
  <script src="/library/static/js/buttons.print.min.js"></script>
  <script src="/library/static/js/dataTables.fixedHeader.min.js"></script>
  <script src="/library/static/js/dataTables.keyTable.min.js"></script>
  <script src="/library/static/js/dataTables.responsive.min.js"></script>
  <script src="/library/static/js/responsive.bootstrap.js"></script>
  <script src="/library/static/js/dataTables.scroller.min.js"></script>
  <script src="/library/static/js/jszip.min.js"></script>
  <script src="/library/static/js/pdfmake.min.js"></script>
  <script src="/library/static/js/vfs_fonts.js"></script>
  <script src="//cdn.datatables.net/plug-ins/1.10.16/api/fnReloadAjax.js"></script>

  <!-- Custom Theme Scripts -->
  <script src="/library/static/js/custom.min.js"></script>

  <script src="/library/static/js/non-common/tableBook.js"></script>
  
</body>
</html>
