--like�B��l(�ҽk�d��)
--%:�N��0~n�ӥ��N�r�� =access��*
--_:�N��ӥ��N1�r��   =access��?
--[]:��b���A���̪����@�Ӧr

select*
from �q�f�D��
where ���f�H like '��%'


select*
from �q�f�D��
where ���f�H like '[���L������]%'

--^�Ͽz��A�ư��m��'���L������'�����f�H
select*
from �q�f�D��
where ���f�H like '[^���L������]%'

----------------------
--between...and...

select*
from ���~���
where ���>=10 and ���<=20

select*
from ���~���
where ��� between 10 and 20 -- >=10 <=20

----------------------
--in:�b�Ӫ�椤���ŦX�z����󪺳��|�Q�e�{�X��

select*
from �Ȥ�
where �s���H¾�� in ('���ƪ�','�~��','��o�ͭ�','aaa')


--��X�Ҧ��b1968�~�H��X�ͥB��b�_���F�����k���u�A���Ӷ��Τ�����W�Ƨ�
select*
from ���u
where  year(�X�ͤ��)>= '1968'and �a�} like '%�_���F��%' and �٩I='����'
order by ���Τ��

