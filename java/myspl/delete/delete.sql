-- delete 语句演示

--  删除表中名称为’老妖怪’的记录。
DELETE FROM staff
	WHERE `name` = '小妖怪';
	
--  删除表中所有记录, 老师提醒，一定要小心
DELETE FROM staff;

-- Delete语句不能删除某一列的值（可使用update 设为 null 或者 ''）
UPDATE staff SET job = '' WHERE `name` = '小妖怪';

-- 批量删除
DELETE FROM `staff` WHERE id IN(1,2);

SELECT * FROM staff

-- 要删除这个表，判断表存在就删除
DROP TABLE staff;
DROP TABLE IF EXISTS staff;