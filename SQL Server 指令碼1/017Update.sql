--��s���
--update
--update�@���u���@�Ӹ�ƪ�
--���i�H�@����s1~N�����

update �f�B���q
set �q��='08-8888888',�f�B���q�W��='�v�t'
where �f�B���q�s��=5

update �Ȥ�
set �s���H='���j�j',�s���H¾��='�~�ȧU�z'
where �Ȥ�s��='KPPTR'

------------------------------------
--��B�z�L100�i�H�W�q�檺���u�A�������[�W�u�Ծġv��Ӧr

update ���u
set ����=����+',�Ծ�'
where ���u�s�� in(
select ���u�s�� from �q�f�D��
group by ���u�s��
having Count(*)>=100)


--��q���B�z�q�檺���u�A�������[�W�u���Ρv��Ӧr
update ���u
set ����=����+',����'
from �q�f�D�� as o right outer join ���u as e on o.���u�s��=e.���u�s��
where o.���u�s�� is null

select *
from �q�f�D�� as o right outer join ���u as e on o.���u�s��=e.���u�s��
where o.���u�s�� is null