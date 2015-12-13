本项目基于Python 2.7.5与Django 1.8.7制作。

如需测试，请使用较新版支持HTML5的浏览器访问http://www.qwertier.cn:8000/

如果由于特殊原因，必须使用本地服务器测试，请在Python 2.7.x与Django 1.8.x环境下按以下步骤进行：
1.打开/runserver.bat，且保持其运行。
2.使用较新版支持HTML5的浏览器访问127.0.0.1:8000页面
3.进行测试
4.测试结束后关闭runserver.bat

PS:如端口被其他程序占用请重新选择端口。

本项目结构如下:
├─core           存放py代码
├─static         存放静态资源
│  ├─css
│  ├─fonts
│  ├─img
│  └─js
└─templates      存放html文件
