--�y�{����
--if/else

--�p�G����120�H�W����140�����R�b��
--140�����H�W�R����
--120�����H�U�K��


declare @height int
set @height=130

if @height>=140
begin 
   print'����'
end
else if @height>=120
   print'�b��'

else
print '�K��'

-----------------------------------------------------------
--case
select ���u�s��,�m�W,�W��,iif(�٩I='�p�j','�k��','�k��') as �ʧO from ���u



--²��case
select ���u�s��,�m�W,�٩I,
case �٩I
when '�p�j' then'�k��'
when '����' then'�k��'
else 'N/A'
end as �ʧO

from ���u


--�j�Mcase(�h���|���)

declare @result nvachar(5)
set @result=
case 
when@height>= then '����'
when@height>= then '����'
