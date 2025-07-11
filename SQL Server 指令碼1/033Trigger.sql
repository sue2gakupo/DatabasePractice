--觸發程序Trigger
--與預存程序一樣是一個預先寫好的觸發執行
--但它無法直接呼叫執行，而是在某個時機點自己觸發執行
--一般是用在對某個資料夾做Insert、Update、Delete之後進行觸發

--在執行Insert、Update、Delete這三種會對資料造成改變的DML時
--從執行成功到commit，中間會經過一連串精密的檢查，只是我們看不見而已


--建立貨運公司資料表的Trigger，用來讀出Inserted

alter trigger getInsertedTable on 貨運公司
after insert  --在執行insert這個指令之後，在commit之前
as 
begin
	select * from Inserted
end


insert into 貨運公司(貨運公司編號 ,貨運公司名稱, 電話) values (100,'貨運111','(08)8210171')



create trigger getUpdateDataTable on 客戶
after update  --在執行insert這個指令之後，在commit之前
as 
begin
	select '新的',* from Inserted
	union all
	select '舊的',* from Deleted
end

update 客戶
set 連絡人='A小姐',連絡人職稱='公關經理'
where 客戶編號='ALFKI'
--------------------------------------
select * from 客戶
union
select * from 客戶 --union：取聯集，會把重複資料扣除
--------------------------------------
alter trigger getUpdateEmployeeDataTable on 員工
after update
as
begin
	select '新增',* from inserted
	union all
	select '修改',* from deleted
end

update 員工
set 名='Jane'
where 員工編號=1
--------------------------------------