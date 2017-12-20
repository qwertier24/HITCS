<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登录 - 图书管理系统</title>

    <!-- Bootstrap -->
    <link href="/library/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/library/static/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/library/static/css/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/library/static/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/library/static/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>图书管理系统</h1>
              <div>
                <input type="text" class="form-control" placeholder="用户名(演示用，任意即可)" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="密码（演示用，任意即可）" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="login.action" >登录</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />

                <div>
                  <p>©2017 All Rights Reserved. <br /> 图书管理系统 <br /> based on Gentelella Alela! which is a Bootstrap 3 template.</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
