# 基于SSM的校园二手交易平台
basice of SSM  
详情查看：https://blog.csdn.net/wsk1103/article/details/80214238  

Java版本：1.8   
数据库：MySQL  
框架：Spring + Spring MVC + MyBatis  
服务器：Tomcat  
前端解析框架：Thymeleaf  
开发工具：Idea 2017  
版本管理工具：Maven  
版本控制工具：GitHub  
下载地址：https://download.csdn.net/download/wsk1103/10395604  

参考地址：https://blog.csdn.net/wsk1103/article/details/80214238

搭建数据库
MySQL
driver=com.mysql.jdbc.Driver
url=jdbc:mysql://localhost:3306/c2c
username=root
password=123456
initiaSize=0
maxActive=20
maxIdle=20
minIdle=1
maxWait=60000
、

先在数据中创建名为c2c的数据库，使用Navicat for MySQL运行 c2c.sql文件创建表和导入数据

将图片解压到任意一个盘，然后配置Tomcat，将图片路径引用到本地配置的图片路径下。  
![这里写图片描述](https://img-blog.csdn.net/2018070112373963?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dzazExMDM=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)