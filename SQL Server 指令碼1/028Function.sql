--�ۭq���(function)


--��f������O��user���A�ӬO�I�s��Ʀ۰ʭp����o��f����
print getdate()

declare @OrderDate datetime=getdate()

print '�U�q���:'+ convert(varchar,@OrderDate,111)

set @OrderDate+=30

print '��f���:'+ convert(varchar,@OrderDate,111)
-----------------------------------------------
--����W�ٵ��j�h�Ƴ��O�ۤv���W���A�ҥH�ݭn�[��fn�b�e����ܳo�ӵ{���O���
--�I�s��ƨ��o��f�����A�åH�r�ꪺ�κA�^��
alter function fnGetDeadline()
  returns varchar(10)
as
begin  --����{
   return convert(varchar,getdate()+30,111)
end --����}

-----------------------------------------------
print '��f���:' + dbo.fnGetDeadline() --dbo�N�O���o�Ӹ�Ʈw������Gdatabase object
-----------------------------------------------


--�d�ҡG�i�H�ǰѼƪ�function

create function fnGetDeadlinebyOrderDate(@date datetime)
  returns varchar(10)
as
begin 
   return convert(varchar,@date+30,111)
end 

-----------------------------------------------

print '��f���:' + dbo.fnGetDeadlinebyOrderDate('2025-7/20')

-----------------------------------------------
--�ΫȤ᪺�s���d�Ȥ᪺�W��

alter function fnGetCNameByID(@id char(5)) --���Ѽ�
returns varchar(40)

as
begin
	if @id='' or @id is null
	return'���ˬd�Ȥ�N�X'
--�bfunction���e���ˬd�O���O�ŭȡA�o�˴N�������ŭȶi���Ʈw�̭��ˬd���O�귽
	declare @CName varchar(40) --���ܼ�

	select @CName=���q�W��
	from �Ȥ�
	where �Ȥ�s��=@id

	if @CName is null
    return '�d�L�ӫȤ���'

	return @CName
end
-----------------------------------------------
print dbo.fnGetCNameByID('')
-----------------------------------------------
--�ΫȤ��ƶi������r�d��

create function fnGetCustomerListByKeyword(@keyword nvarchar(20))
	returns table

return
	(select *
	from �Ȥ�
	where ���q�W�� like '%'+@keyword+'%' or �s���H like '%'+@keyword+'%' 
	or �a�} like '%'+@keyword+'%' or �s���H¾�� like '%'+@keyword+'%')
--����r�j�M�A�q�|����켴
-----------------------------------------------

select *
from dbo.fnGetCustomerListByKeyword('����')







