--�s�WMember ��ƮɡA���ˬd�|���b��(Account)�O�_�s�b
--�]���N�s�W���覡�����w�s�{��
--�إߦAGoodStore DB��

create proc InsertMemberData
	@memID nchar(6),@name nvarchar(30),@gender bit,@mempoint int,
	@account nvarchar(12),@password nvarchar(20) 
as 
begin
	--�N��Ƽg�J�e�A���ˬd�|���b��(Account)�O�_�s�b
	declare @r nchar(6)

	select @r=MemberID from [Member]  where Account=@account

	if @r is null
		insert into [Member] values (@memID,@name,@gender,@mempoint,@account,@password,GETDATE() )
	else
		print '�|���b������'
end



--�s�W�|����ƮɡA���ε{���ݤ@�ߨϥθ�Ʈw�ݪ��w�s�{��

exec InsertMemberData 'M00002','test',0,0,'aaaaaaa','123456' --�i���\�s�W���
exec InsertMemberData 'M00002','test',0,0,'aaaaaaa','123456' --���|�s�W���