--��ƫ��A�ഫ
--cast(data as type)
--�έp���~���O�U���h�ֲ��~
select t.���O�s��,t.���O�W��,cast(count(*) as varchar) +'��' as �ƶq
from ���~��� as p inner join ���~���O as t on p.���O�s��=t.���O�s��
group by t.���O�s��,t.���O�W��

select *
from ���~���O

select distinct ���O�s��
from ���~���
----------------------------------------------------
--��ƫ��A�ഫ�ή榡�����D 
select iif(�e�f��� is null,'�|���X�f',convert(varchar , �e�f��� ,111)) as �e�f��� --111�O����榡
from �q�f�D��

select convert(varchar , �q���� , 111) as �q����,count(*) as �q��ƶq
from �q�f�D��
group by �q����

--isnull() --�P�_��즳�L�ŭȡA���ŭȴN����������
select isnull(convert(varchar , �e�f��� , 111),'�|���X�f') as �e�f���
from �q�f�D��
