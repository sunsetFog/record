# 演示数据库的操作
#创建一个名称为hsp_db01的数据库。[图形化和指令 演示]

#使用指令创建数据库
CREATE DATABASE hsp_db01;

#创建一个使用utf8字符集的hsp_db02数据库
CREATE DATABASE hsp_db02 CHARACTER SET utf8

#创建一个使用utf8字符集，并带校对规则的hsp_db03数据库
CREATE DATABASE hsp_db03 CHARACTER SET utf8 COLLATE utf8_bin
#校对规则 utf8_bin 区分大小 默认utf8_general_ci 不区分大小写


#查看当前数据库服务器中的所有数据库
SHOW DATABASES

#老师说明 在创建数据库,表的时候，为了规避关键字，可以使用反引号解决:  ``
#查看前面创建的hsp_db01数据库的定义信息
SHOW CREATE DATABASE `hsp_db01`


#删除数据库指令
DROP DATABASE hsp_db01




