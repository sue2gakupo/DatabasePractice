--�~���X�֬d��

select *
from �q�f�D�� as o right join ���u as e on o.���u�s��=e.���u�s��

select distinct ���u�s��
from �q�f�D��
order by ���u�s��

select ���u�s��
from ���u

--��X�q���B�z�q�檺���u���
select e.* --�u�C�X���u���
from �q�f�D�� as o right join ���u as e on o.���u�s��=e.���u�s��
where o.�q�渹�X is null


--��X�q���U�L�q�檺�Ȥ���
select c.* --�u�C�X�Ȥ���
from �q�f�D�� as o right join �Ȥ� as c on o.�Ȥ�s��=c.�Ȥ�s��
where o.�q�渹�X is null

--��X�q���Q�R�L���ӫ~���(�L��ƥX�{��ܩҦ����~�����Q�R�L)
select *
from ���~��� as p left outer join �q�f���� as od on p.���~�s��=od.���~�s��
where od.���~�s�� is null
