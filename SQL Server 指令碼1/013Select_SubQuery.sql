--�l�d��(Sub Query)
--�d�ߪ������~���䦳��
--�l�d�߭n��b�p�A���̭�


--�d�ߤj�ث��x�_�o��Ȥ᪺�q����
select * from �q�f�D��
where �Ȥ�s��='�n�d�ߪ��Ȥ�'

--���z�L�Ȥ��ƪ�A�Q�ΫȤ�W�٬d��Ȥ�s��
select �Ȥ�s�� from �Ȥ�
where ���q�W��='�j�ث��x�_'

--�ϥΤl�d��
select * from �q�f�D��
where �Ȥ�s��=(select �Ȥ�s�� from �Ȥ�
where ���q�W��='�j�ث��x�_')


--�d�߼B�Ѥ��o����u�B�z�L���Ҧ��q����
select * from ���u
where ���u�s��='�B�Ѥ������u�s��'

--���z�L���u��ƪ�A�Q�έ��u�m�W�d����u�s��
select ���u�s�� from ���u
where �m�W='�B�Ѥ�'

--�l�d��
select * from ���u
where ���u�s��=(select ���u�s�� from ���u
where �m�W='�B�Ѥ�')

--�d�߼B�Ѥ��o����u�B�z�L���Ҧ��q����(�X�֬d��inner join)
select * from �q�f�D�� as o inner join ���u as e
on o.���u�s��=e.���u�s��  
where e.�m�W='�B�Ѥ�'

--�d�ߤj�ث��x�_�o��Ȥ᪺�q����(�X�֬d��inner join)
select o.* 
from �q�f�D�� as o inner join �Ȥ� as c
on o.�Ȥ�s��=c.�Ȥ�s��
where c.���q�W��='�j�ث��x�_'

--��ΦX�֬d�ߴN���Τl�d��
---------------------------------------------------------------------
--�d�߭��ǰӫ~������j������ӫ~���������

select avg(���)
from ���~���

select *
from ���~���
where ���>28.8663

select *
from ���~���
where ���>(select avg(���)
from ���~���)


--�X�֬d�ߪ��g�k
--�ۧڦX�֡G�@�w�n���O�W�A�ӥB���i�H���ƨ��W

--77*77-77(���ƪ�)=5852�����

select *
from ���~��� as p inner join ���~��� as p2
on p.���~�s��!=p2.���~�s��

select p.���~�s��,p.���~,p.���
from ���~��� as p inner join ���~��� as p2
on p.���~�s��!=p2.���~�s��
group by p.���~�s��,p.���~,p.���
having p.���>avg(p2.���)


select p.���~�s��,p.���~,p.���
from ���~��� as p,���~��� as p2
where p.���~�s��!=p2.���~�s��
group by p.���~�s��,p.���~,p.���
having p.���>avg(p2.���)

--cross join(���d��n�B��)
select p.���~�s��,p.���~,p.���
from ���~��� as p cross join ���~��� as p2
group by p.���~�s��,p.���~,p.���
having p.���>avg(p2.���)

---------------------------------------------------------------------
--���ǫȤ�R�L�ަ�
--�D�d�߫Ȥ�
--�z�L�q��έq����Ӭd�߰ӫ~
--�ߤ@�u���O�ަ�
--�z�L���~��Ƨ��ަ׽s��

--�Ȥ�U�q��
--�q��]�t�ӫ~
--�ӫ~���ӫ~�W��

--in�o�ͦb�h�Ȫ��B���
select * from �Ȥ�
where �Ȥ�s�� in(
select �Ȥ�s�� from �q�f�D��
where �q�渹�X in (
select �q�渹�X from �q�f����
where ���~�s�� in (
select ���~�s�� from ���~���
where ���~='�ަ�')))


select distinct* from �Ȥ� as c 
inner join �q�f�D�� as o on c.�Ȥ�s��=o.�Ȥ�s��
inner join �q�f���� as od on o.�q�渹�X=od.�q�渹�X
inner join ���~��� as p on od.���~�s��=p.���~�s��
where p.���~='�ަ�'

--���ǭ��u�B�z�L�Ȥ�W�٬��u���H�귽�v���q��

select * from �q�f�D��

select * from ���u
where ���u�s�� in(select distinct ���u�s�� from �q�f�D��
where �Ȥ�s�� in (select �Ȥ�s�� from �Ȥ�
where ���q�W��='���H�귽'))
--distinct �h�����ƶ�


--exists�B��l(�򥻤W�u�Φb�l�d��)
--�Φb�p���
--�����Ӹ�ƶ��X��ƬO�_�ۤ��s�b
--�d�߭��ǫȤ�U�L�q��
select * from �Ȥ� as c 
where exists 
(select * from �q�f�D�� as o where c.�Ȥ�s��=o.�Ȥ�s��)








