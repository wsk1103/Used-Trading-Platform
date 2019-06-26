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

c2c.sql使用AES加密，算法模式为ECB，  
密钥长度为128，密钥为1234567890123456  
补码方式AES/ECB/PKCS7Padding  

先在数据中创建名为c2c的数据库，使用Navicat for MySQL运行 c2c.sql文件创建表和导入数据

将图片解压到任意一个盘，然后配置Tomcat，将图片路径引用到本地配置的图片路径下。
![这里写图片描述](https://img-blog.csdn.net/20180701123649532?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dzazExMDM=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)