--selcet 
--from 
--where
--group by
--having
--order by


--1. �иռg�@�X�֬d�ߡA�d�ߥX�q�ʤ�����b1996�~7��ë��w�e�f�覡���u�ֻ��v�����q�椧�q�f���Ӹ�ơA
--�æC�X �q�渹�X�B���~���O�W�١B���~�W�١B���~�q�ʳ���B���~�q�ʼƶq�B���~�����p�p�B�Ȥ�s���B�Ȥ�W�١B
--���f�H�W�r�B�q�ʤ���B�B�z�q����u���m�W�B�f�B���q�B�����ӦW�� ����ƶ��ءA
--�䤤���~�����p�p�ХH�|�ˤ��J�p��ܾ�Ʀ�C

--����ѪR
--�q�ʤ���b1996�~7�� 
--�e�f�覡:�ֻ� 
--�q�f����

select o.�q�渹�X,t.���O�W��,p.���~,od.��� ,od.�ƶq ,round(od.���*(1-od.�馩)*od.�ƶq,0) as �p�p,
c.�Ȥ�s��,c.���q�W�� as �Ȥ�W��,o.���f�H,o.�q����,e.�m�W,d.�f�B���q�W��,s.������
from �f�B���q as d 
inner join (���~���O as t 
inner join (���u as e 
inner join(������ as s 
inner join (�Ȥ� as c 
inner join (���~��� as p 
inner join (�q�f���� as od 
inner join �q�f�D�� as o 
on od.�q�渹�X=o.�q�渹�X) --�q�o�̲Ĥ@�h�}�l���~�g
on p.���~�s��=od.���~�s��) 
on c.�Ȥ�s��=o.�Ȥ�s��)
on s.�����ӽs��=p.�����ӽs��)
on e.���u�s��=o.���u�s��)
on t.���O�s��=p.���O�s��)
on d.�f�B���q�s��=o.�e�f�覡
where o.�q���� between '1996-7-1' and '1996-7-31' and d.�f�B���q�W��='�ֻ�'


--2. �иռg�@�X�֬d�ߡA�d�߫Ȥ�u�s�s�Ȧ�v���~�өҭq�ʪ��Ҧ����~�A�òέp�X�U�ز��~���q�ʼƶq
--��X��߬��Ȥ�s���B���q�W�١B�p���H�B���~�W�١B�q�ʼƶq

select c.�Ȥ�s��,c.���q�W��,c.�s���H,p.���~,sum(od.�ƶq) as �q�ʼƶq
from �q�f���� as od 
inner join �q�f�D�� as o on od.�q�渹�X=o.�q�渹�X
inner join �Ȥ� as c on o.�Ȥ�s��=c.�Ȥ�s��
inner join ���~��� as p on od.���~�s��=p.���~�s��
where c.���q�W��='�s�s�Ȧ�'
group by c.�Ȥ�s��,c.���q�W��,c.�s���H,p.���~



--3. �ЧQ��exists�B��l�t�X�l�d�ߦ��A��X���ǫȤ�q���U�L�q��A�æC�X�Ȥ᪺�Ҧ����C
--(���i�Ψ�in�B��A�礣�i�ΦX�֬d�ߦ�) 

select * from �Ȥ� as c 
where not exists 
(select * from �q�f�D�� as o where c.�Ȥ�s��=o.�Ȥ�s��)



--4. �ЧQ��in�B��l�t�X�l�d�ߦ��A�d�߭��ǭ��u���B�z�L�q��A�æC�X���u�����u�s���B�m�W�B¾�١B�����������X�B
--�������C(���i�Ψ�exists�B��A�礣�i�ΦX�֬d�ߦ�) 

select ���u�s��,�m�W,¾��,�����������X 
from ���u
where ���u�s�� in(select distinct ���u�s�� from �q�f�D��)



--5. �ЦX�֬d�߻P�l�d�ߨ�ؼg�k�A�C�X1998�~��(�ݭn�q�f�D��)�Ҧ��Q�q�ʹL�����~��ơA�æC�X���~���Ҧ����A�B�̲��~�s���Ѥp��j�ƧǡC
--(�g�X�֬d�߮ɤ��o�Υ���l�d�ߦ��A�g�l�d�߮ɤ��o�Υ���X�֬d�ߦ�)

select distinct p.*
from ���~��� as p 
inner join �q�f���� as od on p.���~�s��=od.���~�s��
inner join �q�f�D�� as o on od.�q�渹�X=o.�q�渹�X
where o.�q���� between '1998-01-01'and '1998-12-31'
order by p.���~�s��

select * from ���~���
where ���~�s�� in (select ���~�s�� from �q�f����
where �q�渹�X in (select �q�渹�X from �q�f�D��
where �q���� between '1998-01-01'and '1998-12-31'))



