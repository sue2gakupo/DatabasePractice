--DDL Trigger
--insert update delete ==>DML
--Create alter drop ==>DDL

--要把這個資料庫裡所有的table 都設定成唯讀
create trigger readOnlyTable on database 
for drop_table,alter_table
as
begin
rollback
end

drop table 客戶2 --因為已設立唯讀，所以沒辦法刪掉

---------------------------------------------
--停用資料庫Trigger
disable trigger readOnlyTable on database

--?用資料庫Trigger
enable trigger readOnlyTable on database

--停用資料表上的Trigger
disable trigger getUpdateDataTable on 客戶

--?用資料表上的Trigger
enable trigger getUpdateDataTable on 客戶
