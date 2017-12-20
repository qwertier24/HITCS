package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class queryBook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html lang=\"zh\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<!-- Meta, title, CSS, favicons, etc. -->\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("<title>查询书籍 - 图书管理系统</title>\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap -->\r\n");
      out.write("<link href=\"/library/static/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- Font Awesome -->\r\n");
      out.write("<link href=\"/library/static/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- NProgress -->\r\n");
      out.write("<link href=\"/library/static/css/nprogress.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- iCheck -->\r\n");
      out.write("<!--  <link href=\"../vendors/iCheck/skins/flat/green.css\" rel=\"stylesheet\"> -->\r\n");
      out.write("<!-- bootstrap-wysiwyg -->\r\n");
      out.write("<link href=\"/library/static/css/prettify.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- Select2 -->\r\n");
      out.write("<link href=\"/library/static/css/select2.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- Switchery -->\r\n");
      out.write("<link href=\"/library/static/css/switchery.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- starrr -->\r\n");
      out.write("<link href=\"/library/static/css/starrr.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- bootstrap-daterangepicker -->\r\n");
      out.write("<link href=\"/library/static/css/daterangepicker.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<!-- Custom Theme Style -->\r\n");
      out.write("<link href=\"/library/static/css/custom.min.css\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"nav-md\">\r\n");
      out.write("  <div class=\"container body\">\r\n");
      out.write("    <div class=\"main_container\">\r\n");
      out.write("      <div class=\"col-md-3 left_col\">\r\n");
      out.write("        <div class=\"left_col scroll-view\">\r\n");
      out.write("          <div class=\"navbar nav_title\" style=\"border: 0;\">\r\n");
      out.write("            <a href=\"/library/queryBook.action\" class=\"site_title\"><i\r\n");
      out.write("              class=\"fa fa-book\"></i> <span>图书管理系统</span></a>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"clearfix\"></div>\r\n");
      out.write("\r\n");
      out.write("          <!-- menu profile quick info -->\r\n");
      out.write("          <div class=\"profile clearfix\">\r\n");
      out.write("            <div class=\"profile_pic\">\r\n");
      out.write("              <img src=\"/library/static/images/administrator.png\"\r\n");
      out.write("                alt=\"...\" class=\"img-circle profile_img\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"profile_info\">\r\n");
      out.write("              <span>Welcome,</span>\r\n");
      out.write("              <h2>Administrator</h2>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- /menu profile quick info -->\r\n");
      out.write("\r\n");
      out.write("          <br />\r\n");
      out.write("\r\n");
      out.write("          <!-- sidebar menu -->\r\n");
      out.write("          <div id=\"sidebar-menu\"\r\n");
      out.write("            class=\"main_menu_side hidden-print main_menu\">\r\n");
      out.write("            <div class=\"menu_section\">\r\n");
      out.write("              <h3>图书管理</h3>\r\n");
      out.write("              <ul class=\"nav side-menu\">\r\n");
      out.write("                <li><a><i class=\"fa fa-table\"></i> 图书查询/修改<span\r\n");
      out.write("                    class=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("                  <ul class=\"nav child_menu\">\r\n");
      out.write("                    <li class=\"current-page\"><a href=\"queryBook.jsp\">查询图书信息</a></li>\r\n");
      out.write("                    <li><a href=\"tableBook.jsp\">图书列表</a></li>\r\n");
      out.write("                  </ul></li>\r\n");
      out.write("                <li><a><i class=\"fa fa-edit\"></i> 添加图书信息 <span\r\n");
      out.write("                    class=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("                  <ul class=\"nav child_menu\">\r\n");
      out.write("                    <li><a href=\"addBook.jsp\">添加图书</a></li>\r\n");
      out.write("                    <li><a href=\"addAuthor.jsp\">添加作者</a></li>\r\n");
      out.write("                  </ul></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"menu_section\">\r\n");
      out.write("              <h3>其他</h3>\r\n");
      out.write("              <ul class=\"nav side-menu\">\r\n");
      out.write("                <li><a><i class=\"fa fa-info\"></i> 帮助 <span class=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("                  <ul class=\"nav child_menu\">\r\n");
      out.write("                    <li><a href=\"help.action\">帮助</a></li>\r\n");
      out.write("                    <li><a href=\"about.action\">关于</a></li>\r\n");
      out.write("                  </ul></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- /sidebar menu -->\r\n");
      out.write("          \r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <!-- top navigation -->\r\n");
      out.write("      <div class=\"top_nav\">\r\n");
      out.write("        <div class=\"nav_menu\">\r\n");
      out.write("          <nav>\r\n");
      out.write("          <div class=\"nav toggle\">\r\n");
      out.write("            <a id=\"menu_toggle\"><i class=\"fa fa-bars\"></i></a>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <Ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("            <li class=\"\"><a href=\"javascript:;\"\r\n");
      out.write("              class=\"user-profile dropdown-toggle\"\r\n");
      out.write("              data-toggle=\"dropdown\" aria-expanded=\"false\"> <img\r\n");
      out.write("                src=\"/library/static/images/administrator.png\" alt=\"\">Administrator\r\n");
      out.write("                <span class=\" fa fa-angle-down\"></span>\r\n");
      out.write("            </a>\r\n");
      out.write("              <ul class=\"dropdown-menu dropdown-usermenu pull-right\">\r\n");
      out.write("                <li><a href=\"/library/logout.action\"><i\r\n");
      out.write("                    class=\"fa fa-sign-out pull-right\"></i> Log Out</a></li>\r\n");
      out.write("              </ul></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          </nav>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- /top navigation -->\r\n");
      out.write("\r\n");
      out.write("      <!-- page content -->\r\n");
      out.write("      <div class=\"right_col\" role=\"main\">\r\n");
      out.write("        <div class=\"\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"page-title\">\r\n");
      out.write("            <div class=\"title_left\">\r\n");
      out.write("              <h3>图书查询</h3>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"clearfix\"></div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-12 col-sm-12 col-xs-12\">\r\n");
      out.write("              <div class=\"x_panel\">\r\n");
      out.write("                <div class=\"x_title\">\r\n");
      out.write("                  <h2>\r\n");
      out.write("                                  查询图书信息 <small>空白项即为“不指定”</small>\r\n");
      out.write("                  </h2>\r\n");
      out.write("                  <div class=\"clearfix\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"x_content\">\r\n");
      out.write("                  <br />\r\n");
      out.write("                  <form action=\"/library/tableBook.action\" method=\"post\" enctype=\"multipart/form-data\"\r\n");
      out.write("                    class=\"form-horizontal form-label-left\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label\r\n");
      out.write("                        class=\"control-label col-md-3 col-sm-3 col-xs-12\"\r\n");
      out.write("                        for=\"authorName\">作者姓名 \r\n");
      out.write("                      </label>\r\n");
      out.write("                      <div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n");
      out.write("                        <input type=\"text\" id=\"authorName\"\r\n");
      out.write("                          name=\"authorName\"\r\n");
      out.write("                          class=\"form-control col-md-7 col-xs-12\" />\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label\r\n");
      out.write("                        class=\"control-label col-md-3 col-sm-3 col-xs-12\"\r\n");
      out.write("                        for=\"bookName\">书名 \r\n");
      out.write("                      </label>\r\n");
      out.write("                      <div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n");
      out.write("                        <input type=\"text\" id=\"bookName\"\r\n");
      out.write("                          name=\"bookName\"\r\n");
      out.write("                          class=\"form-control col-md-7 col-xs-12\" />\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label for=\"publisher\"\r\n");
      out.write("                        class=\"control-label col-md-3 col-sm-3 col-xs-12\">出版社</label>\r\n");
      out.write("                      <div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n");
      out.write("                        <input type=\"text\" id=\"publisher\"\r\n");
      out.write("                          class=\"form-control col-md-7 col-xs-12\"\r\n");
      out.write("                          name=\"publisher\" />\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label for=\"publishDate\"\r\n");
      out.write("                        class=\"control-label col-md-3 col-sm-3 col-xs-12\">出版日期 \r\n");
      out.write("                      </label>\r\n");
      out.write("                      <div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n");
      out.write("                        <input type=\"text\" id=\"publishDate\" name=\"publishDate\"\r\n");
      out.write("                          class=\"date-picker form-control col-md-7 col-xs-12\"\r\n");
      out.write("                          type=\"text\" />\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"ln_solid\"></div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <div\r\n");
      out.write("                        class=\"col-md-6 col-sm-6 col-xs-12 col-md-offset-3\" style=\"text-align:center\">\r\n");
      out.write("                        <button class=\"btn btn-primary\" type=\"reset\">重置</button>\r\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-success\">提交</button>\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                  </form>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <!-- /page content -->\r\n");
      out.write("\r\n");
      out.write("      <!-- footer content -->\r\n");
      out.write("      <footer>\r\n");
      out.write("      <div class=\"pull-right\">图书管理系统</div>\r\n");
      out.write("      <div class=\"clearfix\"></div>\r\n");
      out.write("      </footer>\r\n");
      out.write("      <!-- /footer content -->\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <!-- jQuery -->\r\n");
      out.write("  <script src=\"/library/static/js/jquery.min.js\"></script>\r\n");
      out.write("  <!-- Bootstrap -->\r\n");
      out.write("  <script src=\"/library/static/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <!-- FastClick -->\r\n");
      out.write("  <script src=\"/library/static/js/fastclick.js\"></script>\r\n");
      out.write("  <!-- NProgress -->\r\n");
      out.write("  <script src=\"/library/static/js/nprogress.js\"></script>\r\n");
      out.write("  <!-- bootstrap-progressbar -->\r\n");
      out.write("  <script src=\"/library/static/js/bootstrap-progressbar.min.js\"></script>\r\n");
      out.write("  <!-- iCheck -->\r\n");
      out.write("  <!-- <script src=\"/library/static/js/icheck.min.js\"></script> -->\r\n");
      out.write("  <!-- bootstrap-daterangepicker -->\r\n");
      out.write("  <script src=\"/library/static/js/moment.min.js\"></script>\r\n");
      out.write("  <script src=\"/library/static/js/daterangepicker.js\"></script>\r\n");
      out.write("  <!-- bootstrap-wysiwyg -->\r\n");
      out.write("  <script src=\"/library/static/js/bootstrap-wysiwyg.min.js\"></script>\r\n");
      out.write("  <script src=\"/library/static/js/jquery.hotkeys.js\"></script>\r\n");
      out.write("  <script src=\"/library/static/js/prettify.min.js\"></script>\r\n");
      out.write("  <!-- jQuery Tags Input -->\r\n");
      out.write("  <script src=\"/library/static/js/jquery.tagsinput.js\"></script>\r\n");
      out.write("  <!-- Switchery -->\r\n");
      out.write("  <script src=\"/library/static/js/switchery.min.js\"></script>\r\n");
      out.write("  <!-- Select2 -->\r\n");
      out.write("  <script src=\"/library/static/js/select2.full.min.js\"></script>\r\n");
      out.write("  <!-- Parsley -->\r\n");
      out.write("  <script src=\"/library/static/js/parsley.min.js\"></script>\r\n");
      out.write("  <!-- Autosize -->\r\n");
      out.write("  <script src=\"/library/static/js/autosize.min.js\"></script>\r\n");
      out.write("  <!-- jQuery autocomplete -->\r\n");
      out.write("  <script src=\"/library/static/js/jquery.autocomplete.min.js\"></script>\r\n");
      out.write("  <!-- starrr -->\r\n");
      out.write("  <script src=\"/library/static/js/starrr.js\"></script>\r\n");
      out.write("  <!-- Custom Theme Scripts -->\r\n");
      out.write("  <script src=\"/library/static/js/custom.min.js\"></script>\r\n");
      out.write("   \r\n");
      out.write("  <script src=\"/library/static/js/non-common/queryBook.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
