--instead trigger
--�C�Ӹ�ƪ��i�H��:
--�@�� instead of inserted trigger
--�@�� instead of deleted trigger
--�@�� instead of  trigger
--���i�H���\�h�� after trigger

select * from �Ȥ�

insert into �Ȥ�
values('AAAAA','�G�t��~�������q','���p�j','�~��','�x�_���������|��','05023','(03)123456','(03)123456')

insert into �Ȥ�
values('AAAAA','�G�t��~�������q','���p�j','�~��','�x�_���������|��','05023','(03)123456','(03)123456')

--�s�W�Ȥ��ƮɡA�Y�ӫȤ��Ƥw�s�b�A�h�i���ƭק�(insert��update)
create trigger add_CustomerIDCheck on �Ȥ� 
instead of insert
as
begin
--�p�G�o�{PK�s�b�A�h����ƭק�A�_�h���s�W

	declare  @CID nchar(5)
	select @CID=�Ȥ�s�� from �Ȥ�  --�n�`�N@CID�]�w�ܼƦW��
	where �Ȥ�s��=(select �Ȥ�s�� from inserted)

	if @CID !=''--�p�G�o�{PK�s�b
	begin
		update �Ȥ�
		set ���q�W��=inserted.���q�W��,�s���H=inserted.�s���H,�s���H¾��=inserted.�s���H¾��,
		�a�}=inserted.�a�},�l���ϸ�=inserted.�l���ϸ�,�q��=inserted.�q��,�ǯu�q��=inserted.�ǯu�q��
		from �Ȥ� inner join inserted on �Ȥ�.�Ȥ�s��=inserted.�Ȥ�s��
	end
	else  --�p�G�o�{PK���b�b
	begin
		--�i���Ʒs�W
		insert into �Ȥ�
		select * from inserted
	end
end



insert into �Ȥ�
values('AAAAA','eeee','���p�j','�~��','�x�_���������|��','42288','(03)123456','(03)123456')

insert into �Ȥ�
values('AAAAb','eeee','���p�j','�~��','�x�_���������|��','05023','(03)123456','(03)123456')





