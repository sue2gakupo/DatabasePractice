--�b�i���u�j��ƪ���X�Ҧ��k���u����ưO���C 
select * 
from ���u
where �٩I='�p�j'

--�b�i���u�j��ƪ���X�Ҧ��b1968�~(�t)�H��X�ͪ���ưO���C
select *
from ���u
where �X�ͤ��>= '1968/1/1' --'1968-1-1'

--�b�i�q�f�D�ɡj��ƪ��X�e�f���������x�_���ΰ���������ưO���C 
select*
from �q�f�D��
where �e�f�a�} like '%��%��%��%' or �e�f�a�} like '%�x%�_%��%'or �e�f�a�} like '%�O%�_%��%'
--��Ǭd�ߡGwhere�e�f�a�} in ('�x�_��','������') 
--or�|�ɭP�į�U��

--�b�i���~��ơj��ƪ���X�w�s�q�̦h���e6�W��ưO���C
select top 6 with ties *
from ���~���
order by �w�s�q desc

--�b�i�q�f���ӡj��ƪ��X�q�渹�X10847�@�]�t���ǲ��~�C
select ���~�s�� 
from �q�f����
where �q�渹�X=10847

--�b�i�q�f���ӡj��ƪ��X�q�椤�]�t�W�L5�ز��~����ưO���C
select �q�渹�X,count(*) as ���~����
from �q�f����
group by �q�渹�X
having count(*)>5

--�p��i���~��ơj��ƪ����O����2�����~��ƥ�������C
select avg(���) as �������
from ���~���
where ���O�s��=2

--�b�i���~��ơj��ƪ���X�w�s�q�p��w���s�q�A�B�|���i����ʪ����~��ưO���C
select*
from ���~���
where �w�s�q<�w���s�q and �w�q�ʶq=0

--�b�i�Ȥ�j��ƪ���X���q�W�٥]�t�u�t�v�B�u�͡v�B�u���v�B�u�ѡv�B�u���v�B�u���v�B�u���v�B�u�~�v�B�u�ߡv���r����ưO���C 
select *
from �Ȥ�
where ���q�W�� like '%[�t�ͱ��Ѥ������~��]%'

--�b�A����ƪ���X�q�ʲ��~�ƶq����20~30�󪺸�ưO���C
select*
from �q�f����
where �ƶq between 20 and 30 

--�b�i�q�f�D�ɡj��ƪ���X�|�����e�f������O����ơC
select*
from �q�f�D��
where �e�f��� is null

--�b�i�q�f���ӡj��ƪ���ܥX�q�渹�X10263�Ҧ����~������p�p�C
select *,���*�ƶq*(1-�馩) as �p�p 
from �q�f����
where �q�渹�X=10263

--�Q�Ρi���~��ơj��ƪ��ơA�έp�X�C�@�Ө�����(tips:�H�����Ӭ��s��)�U���ѤF�X�˲��~�C 
select �����ӽs��,count(*) �������ӫ~
from ���~���
group by �����ӽs��

--�Q�Ρi�q�f�D�ɡj��ƪ��ơA�έp�X�C�@��Ȥ�Q�C�@����u�ҪA�Ȧ��ơC
select �Ȥ�s��, ���u�s��,count(*) �Q�A�Ȫ�����
from �q�f�D��
group by �Ȥ�s��, ���u�s��


--�Q�Ρi�q�f���ӡj��ƪ��ơA�έp�X�U���ӫ~��������
--���P�����P��ƶq�A�öȦC�X�����P��ƶq�j��10����
--�ơA�B�N��ƨ̲��~�s���Ѥp��j�ƧǡC 
select ���~�s��,avg(�ƶq)�����P��q,avg(���)�������
from �q�f����
group by  ���~�s��
having avg(�ƶq)>10
order by  ���~�s��



