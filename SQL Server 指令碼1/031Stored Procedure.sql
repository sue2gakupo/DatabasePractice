--�w�s�{�ǡGStored Procedure
--�N�q�G�w���g�n���@�q�{���A���ݭn�ɦA���楦�A�D�`�������
--��Ƴq�`�Φb�n���o�@�Ӧ^�ǭȡA�w�s�{�ǳq�`�u�O����@�q�{��


--�إߤ@�ӹw�s�{��
create procedure getOrderListWithOtherData
as
begin
	
SELECT          �q�f�D��.�q�渹�X, �Ȥ�.���q�W�� AS �Ȥ�W��, ���~���.���~ AS �~�W, �q�f����.���, �q�f����.�ƶq, 
                            �q�f����.�馩, ���~���O.���O�W��, �q�f�D��.�q����, �q�f�D��.�n�f���, �q�f�D��.�e�f���, 
                            ���u.�m�W AS ���u�m�W,�q�f����.���* �q�f����.�ƶq*(1- �q�f����.�馩) as �p�p
FROM              �q�f���� INNER JOIN
                            �q�f�D�� ON �q�f����.�q�渹�X = �q�f�D��.�q�渹�X INNER JOIN
                            ���~��� ON �q�f����.���~�s�� = ���~���.���~�s�� INNER JOIN
                            �Ȥ� ON �q�f�D��.�Ȥ�s�� = �Ȥ�.�Ȥ�s�� INNER JOIN
                            ���u ON �q�f�D��.���u�s�� = ���u.���u�s�� INNER JOIN
                            ���~���O ON ���~���.���O�s�� = ���~���O.���O�s��
end

-----------------------------
--����w�s�{��
execute getOrderListWithOtherData
exec getOrderListWithOtherData
-----------------------------

--�إߤ@�Ӧ��Ѽƪ��w�s�{�Ǫ���
--�ǤJ�q�渹�X�A�Y�i�d�߸ӭq����
create procedure getOrderListWithOtherDataByOrderID
	@oid char(5)
as
begin
	
SELECT          �q�f�D��.�q�渹�X, �Ȥ�.���q�W�� AS �Ȥ�W��, ���~���.���~ AS �~�W, �q�f����.���, �q�f����.�ƶq, 
                            �q�f����.�馩, ���~���O.���O�W��, �q�f�D��.�q����, �q�f�D��.�n�f���, �q�f�D��.�e�f���, 
                            ���u.�m�W AS ���u�m�W,�q�f����.���* �q�f����.�ƶq*(1- �q�f����.�馩) as �p�p
FROM              �q�f���� INNER JOIN
                            �q�f�D�� ON �q�f����.�q�渹�X = �q�f�D��.�q�渹�X INNER JOIN
                            ���~��� ON �q�f����.���~�s�� = ���~���.���~�s�� INNER JOIN
                            �Ȥ� ON �q�f�D��.�Ȥ�s�� = �Ȥ�.�Ȥ�s�� INNER JOIN
                            ���u ON �q�f�D��.���u�s�� = ���u.���u�s�� INNER JOIN
                            ���~���O ON ���~���.���O�s�� = ���~���O.���O�s��
where			�q�f�D��.�q�渹�X=@oid


end
-----------------------------

exec getOrderListWithOtherDataByOrderID 10291