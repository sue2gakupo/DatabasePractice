--��Ʋέp
--�E�X���
--count()

select count(���u�s��) as ���u�H��
from ���u

select count(*)�q���`��
from �q�f�D��

select count(�e�f���) as �w�X�f�q��ƶq
from �q�f�D��

--���X�f�q�浧��
select count(*) as �w�X�f�q��ƶq
from �q�f�D��
where �e�f��� is null

--sum()
select sum(�w�s�q) as �w�s�`�q
from ���~���

select *,���*�ƶq*(1-�馩) as �p�p 
from �q�f����

select sum(���*�ƶq*(1-�馩)) as ���~��~�B
from �q�f����

--avg
select avg(���) as �������
from ���~���

--max()
select max(���) as �̰����
from ���~���

--min()
select min(���) as �̧C���
from ���~���



select sum(���)�������, avg(���)�������, max(���)�̰����,
min(���)�̧C���, count(*)���~����
from ���~���

select sum(���) as �������,avg(���) as �������,max(���) as �̰����,
min(���)as �̧C���,count(*) as ���~����
from ���~���

select ���O�s��, sum(���) as �������,avg(���) as �������,max(���) as �̰����,
min(���)as �̧C���,count(*) as ���~����
from ���~���
group by ���O�s��