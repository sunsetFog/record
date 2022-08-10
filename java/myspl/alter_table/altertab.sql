#修改表的操作练习

# 添加列
-- 1.员工表staff的上增加一个image列，varchar类型，加注释(要求在resume后面)。
ALTER TABLE staff 
	ADD image VARCHAR(32) NOT NULL DEFAULT '' COMMENT '--注释--'
	AFTER RESUME
	
-- 2.添加多列
ALTER TABLE `staff` ADD (
`hua` VARCHAR(255),
`qian` INT
);
	
	
DESC staff -- 显示表结构，可以查看表的所有列

# 修改列
-- 1.修改job列，使其长度为60。
ALTER TABLE staff 
	MODIFY job VARCHAR(60) NOT NULL DEFAULT ''
-- 2.修改job列添加默认值	
ALTER TABLE `staff` ALTER `job` SET DEFAULT '6'	
-- 3.修改job列删除默认值	
ALTER TABLE `staff` ALTER `job` DROP DEFAULT
-- 4.列名name修改为user_name
ALTER TABLE staff 
	CHANGE `name` `user_name` VARCHAR(64) NOT NULL DEFAULT ''
		
	
--  删除image列。
ALTER TABLE staff
	DROP image

# 修改表	
-- 1.表名改为employee。
RENAME TABLE staff TO employee

-- 2.修改表的字符集为utf8 
ALTER TABLE staff CHARACTER SET utf8

	
DESC staff
