--drop

drop table [Member]  --�o�̷|�o�ͰѦҧ���ʭ�����D

--1.����Member�POrder���������p(�R���� Order��ƪ�W��F.K�������)
alter table [Order]
      drop constraint FK__Order__MemberID__403A8C7D


--2.�R��[Member]��Ʈw
drop table[Member]

-------------------------------
--�R����Ӹ�Ʈw
drop database GoodStore


--�L�k�R����Ʈw�AGPT�Ѫk
alter database GoodStore   --�w��W�� GoodStore ����Ʈw���ק�C
set single_user            --�N��Ʈw�Ҧ��אּ�u��@�ϥΪ̼Ҧ��v�A�u���\�@�ӤH�s�u�C
with  rollback immediate   --�j��_�ثe�Ҧ��ϥΪ̪��s�u�P����A���ޥL�̦b������A�����ߨ褤�_�æ^�u�]rollback�^�C
--ROLLBACK�]�^�u�^
--SQL ���B�z����]Transaction�^�ɪ��@������ʧ@�C²��ӻ��A�N�O**�u�����٨S��������Ʈw�ާ@�v**
--����ƫ�_���٨S�ܧ󤧫e�����A�C
drop database GoodStore   


--GPT�}��
use master;
go

-- ? �T�{��Ʈw�O�_�s�b
if exists (select name from sys.databases where name = N'GoodStore')
begin
    print '?? ���b������ single_user �Ҧ��ý�X�Ҧ��ϥΪ�...'

    -- ��X�Ҧ��ϥΪ̡A�]����@�ϥΪ̼Ҧ�
    alter database goodstore set single_user with rollback immediate;

    print '??? ���b�R����Ʈw goodstore...'

    -- �R����Ʈw
    drop database goodstore;

    print '? goodstore ��Ʈw�w���\�R���C'
end

else
begin
    print '?? ��Ʈw goodstore ���s�b�A�L�ݧR���C'
end

