--instead trigger
--每個資料表都可以有:
--一個 instead of inserted trigger
--一個 instead of deleted trigger
--一個 instead of  trigger
--但可以有許多個 after trigger

select * from 客戶

insert into 客戶
values('AAAAA','二川實業有限公司','陳小姐','業務','台北市忠孝路四號','05023','(03)123456','(03)123456')

insert into 客戶
values('AAAAA','二川實業有限公司','陳小姐','業務','台北市忠孝路四號','05023','(03)123456','(03)123456')

--新增客戶資料時，若該客戶資料已存在，則進行資料修改(insert→update)
create trigger add_CustomerIDCheck on 客戶 
instead of insert
as
begin
--如果發現PK存在，則做資料修改，否則做新增

	declare  @CID nchar(5)
	select @CID=客戶編號 from 客戶  --要注意@CID設定變數名稱
	where 客戶編號=(select 客戶編號 from inserted)

	if @CID !=''--如果發現PK存在
	begin
		update 客戶
		set 公司名稱=inserted.公司名稱,連絡人=inserted.連絡人,連絡人職稱=inserted.連絡人職稱,
		地址=inserted.地址,郵遞區號=inserted.郵遞區號,電話=inserted.電話,傳真電話=inserted.傳真電話
		from 客戶 inner join inserted on 客戶.客戶編號=inserted.客戶編號
	end
	else  --如果發現PK不在在
	begin
		--進行資料新增
		insert into 客戶
		select * from inserted
	end
end



insert into 客戶
values('AAAAA','eeee','陳小姐','業務','台北市忠孝路四號','42288','(03)123456','(03)123456')

insert into 客戶
values('AAAAb','eeee','陳小姐','業務','台北市忠孝路四號','05023','(03)123456','(03)123456')





