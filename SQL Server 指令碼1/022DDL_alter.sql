--alter�ק��ƪ��w�q�A�����n�b�J��������ϥ�

--�bProduct��ƪ�[�W�[]�@��CateID�����
alter table [Product]
      add CateID nchar(2) not null


--�إ�Product��ƪ�PCategory��ƪ��������p
alter table[Product]
      add foreign key(CateID) references Category(CateID)


 --�إ�OrderDetail��ƪ�PProduct��ƪ��������p
alter table[OrderDetail]
      add foreign key(ProductID) references [Product](ProductID) on delete cascade--cascade�N�O�إ����p�ʡA�q�`���O�q���q����ӷ|�� 


 --���]�b�t�άI�@�������ݨD�ܧ�A�n�NMemberPoint���R��
 --�o�ɭn��Drop�٬Oalter
alter table[Member]
      drop column MemberPoint
  --��o�Ӹ�ƪ��ܧ����ɡA�N�|�X�{�̩ۨʪ����~
  --�b�̩ۨʥ��Ѱ������L�k�R��MemberPoint


  --�]���ڭ̥���������default constraint,�A�R��MemberPoint���
alter table [Member]
      drop constraint  DF__Member__CreatedD__3C69FB99

alter table[Member]
      drop column MemberPoint
