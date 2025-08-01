--情境：在新增訂單時，使用者不能自己鍵入訂單編號，因此必須由系統自己按照編號規則產生一個訂單編號
--在資料庫建立一個函數，使其在新增訂單資料時能透過函數抓到一個訂單編號

--建立名為「getOrderID」的函數
--其功能為新增訂單時呼叫此函數自動取得一個新的訂單編號
--訂單編號的編碼規則為訂單當天日期西元年月日(8碼)+4碼流水號
--(例如202412212015為2024/12/21第2015張訂單的編號)
--(例如202506270001為2025/06/27第1張訂單的編號)


--所以需要設計 1.日期 跟 2.跟流水號 兩個功能


alter function fnGetOrderID()
	returns nchar(12)

as
begin
	--取得當天日期年月日(8碼)
	declare @today char(8)=convert(varchar,getdate(),112) 

	--四碼流水號產生規則
	--1.抓今天最後一張訂單號碼+1
	declare @lastID nchar(12),@newID nchar(12)

	select top 1 @lastID=OrderID
	from [Order]
	where convert(varchar,OrderDate,112)=@today
	order by OrderDate desc



	--2.若今天沒有任何訂單則為'0001'
if @lastID is null
	set @newID=@today+'0001'
else
	set @newID = cast(cast (@lastID as bigint)+1 as nchar)

	return @newID
end
	-----------------------------------------------
	--測試
print dbo.fnGetOrderID()

insert into [order] values( dbo.getOrderID(),getdate(),'M00001','金大明','adfdfdf')