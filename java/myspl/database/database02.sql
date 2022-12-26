#练习 : database03.sql 备份hsp_db02 和 hsp_db03 库中的数据，并恢复

#备份, 要在Dos下执行mysqldump指令其实在----mysql安装目录\bin
#这个备份的文件，就是对应的sql语句
# mysqldump -u 用户名 -p -B 数据库1 数据库2 数据库n > d:\\文件名.sql
mysqldump -u root -p -B db_news > d:\\backups.sql



#恢复数据库(注意：进入Mysql命令行再执行)    bin目录 》管理终端
SOURCE d:\\backups.sql;

#第二个恢复方法， 直接将bak.sql的内容放到查询编辑器中，执行
# 在SQLyog执行: 文件---打开backups.sql，全选执行查询，root@localhost右键刷新




