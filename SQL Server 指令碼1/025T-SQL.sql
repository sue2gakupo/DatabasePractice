--T-SQL�{���]�p

print 'Hello World!'

select 'Hello World!' as AAA --���槹�|�O�@��table�����e�{

--���浲�G��H�W���O�ۦP
select tb1.*
from(select 'Hello World!' as AAA) as tb1

-----------------------------------------------------------
--�ܼ�
--1.�¶q���ܼ� 2.��ƪ���ܼ�

--�ŧideclare
--�ܼƦW�٫e���[�W@
declare @MyName nvarchar(20)='Jack Lee'

print @MyName

select @MyName

-----------------------------------------------------------

declare @Number int 
set @Number=654   
select @Number=321

print @Number
--T-SQL�����j�p�g

print @numBEr

-----------------------------------------------------------

declare @EmpName nvarchar(20)

select  @EmpName=�m�W
from ���u
where ���u�s��=1

print '���u�m�W:'+@EmpName
-----------------------------------------------------------

declare @salary money=50000
print '�z���~���O'+ cast(@salary as varchar)

declare @birthday datetime='2025-6-23'

print '�z���ͤ�:'+convert(varchar,@birthday,111)

-----------------------------------------------------------

declare @dDay datetime

select @dDay=�n�f���
from �q�f�D��
where �q�渹�X=10259
 
 print'�q�檺�n�f���:'+convert(varchar,@dDay,111)

 -----------------------------------------------------------

 declare @myTable table(
 [name] nvarchar(30),
 birthday datetime,
 tel varchar(20),
 note nvarchar(max)
 )

 insert into @myTable values('���H','2025-6-23','(07) 6553-2214','�i�H���ƭק�')

 insert into @myTable
 select �m�W,�X�ͤ��,�q�ܸ��X,���� from ���u

 select * from @myTable 
