--Ĳ�o�{��Trigger
--�P�w�s�{�Ǥ@�ˬO�@�ӹw���g�n��Ĳ�o����
--�����L�k�����I�s����A�ӬO�b�Y�Ӯɾ��I�ۤvĲ�o����
--�@��O�Φb��Y�Ӹ�Ƨ���Insert�BUpdate�BDelete����i��Ĳ�o

--�b����Insert�BUpdate�BDelete�o�T�ط|���Ƴy�����ܪ�DML��
--�q���榨�\��commit�A�����|�g�L�@�s���K���ˬd�A�u�O�ڭ̬ݤ����Ӥw


--�إ߳f�B���q��ƪ�Trigger�A�Ψ�Ū�XInserted

alter trigger getInsertedTable on �f�B���q
after insert  --�b����insert�o�ӫ��O����A�bcommit���e
as 
begin
	select * from Inserted
end


insert into �f�B���q(�f�B���q�s�� ,�f�B���q�W��, �q��) values (100,'�f�B111','(08)8210171')



create trigger getUpdateDataTable on �Ȥ�
after update  --�b����insert�o�ӫ��O����A�bcommit���e
as 
begin
	select '�s��',* from Inserted
	union all
	select '�ª�',* from Deleted
end

update �Ȥ�
set �s���H='A�p�j',�s���H¾��='�����g�z'
where �Ȥ�s��='ALFKI'
--------------------------------------
select * from �Ȥ�
union
select * from �Ȥ� --union�G���p���A�|�⭫�Ƹ�Ʀ���
--------------------------------------
alter trigger getUpdateEmployeeDataTable on ���u
after update
as
begin
	select '�s�W',* from inserted
	union all
	select '�ק�',* from deleted
end

update ���u
set �W='Jane'
where ���u�s��=1
--------------------------------------