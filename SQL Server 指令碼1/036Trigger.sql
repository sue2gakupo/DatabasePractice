--DDL Trigger
--insert update delete ==>DML
--Create alter drop ==>DDL

--�n��o�Ӹ�Ʈw�̩Ҧ���table ���]�w����Ū
create trigger readOnlyTable on database 
for drop_table,alter_table
as
begin
rollback
end

drop table �Ȥ�2 --�]���w�]�߰�Ū�A�ҥH�S��k�R��

---------------------------------------------
--���θ�ƮwTrigger
disable trigger readOnlyTable on database

--?�θ�ƮwTrigger
enable trigger readOnlyTable on database

--���θ�ƪ�W��Trigger
disable trigger getUpdateDataTable on �Ȥ�

--?�θ�ƪ�W��Trigger
enable trigger getUpdateDataTable on �Ȥ�
