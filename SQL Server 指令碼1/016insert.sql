--�s�W���
--insert into
--insert �@���u���@�Ӹ�ƪ�
--���i�H�@���s�W1~N�����

--insert into ��ƪ�(���1,���2,���3,....)values(��1,��2,��3,....)
--�ѧO��� identity-�ߤ@�ѧO =access ���۰ʽs��
--�f�B���q�s�����}���ѧO�W��A�ҥH�f�B���q���s���i�H�۰ʽs��

insert into �f�B���q(�f�B���q�W��,�q��)
values('�f�B','(08)5623314')

--�@���s�W1~N�����
insert into �f�B���q(�f�B���q�W��,�q��)
values('�f�B','(08)5623314'),
('�f�B','(08)5623314'),
('�f�B','(08)5623314'),
('�f�B','(08)5623314'),
('�f�B','(08)5623314'),
('�f�B','(08)5623314')

--�Y�u��f�B���q�W�٨S��q��
insert into �f�B���q(�f�B���q�W��)
values ('�f�B')

insert into �f�B���q(�f�B���q�W��,�q��)
values ('�f�B','')

--�ٲ��欰�W�٪��g�k
--�Ȫ����ǭn�ӭ���ƪ���춶��
--�@����쳣�n����

insert into �Ȥ� 
values ('KPPTR','���̼�F���p','�B�p�g','�d�i�H��','�e��ϳͱۥ|��105��','806','07-8210171',null)

----------------------------------------
--�ƻs�Ȥ��ƪ����t�@�Ӹ�ƪ���x�s
--select...into...(�����O�ȯ�藍�s�b����ƪ��s�W)
--�ƻs���u��ƪ�,�t�s���u���u2�v��ƪ�

select* into ���u2
from ���u

select* into �Ȥ�2
from �Ȥ�

--insert into...select....(�����O�ȯ��w�s�b����ƪ��s�W�A�C����@���N�W�[����ƨ��ƪ�)
insert into �Ȥ�2
select* from �Ȥ�