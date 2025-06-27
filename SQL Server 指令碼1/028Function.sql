--自訂函數(function)


--交貨日期不是由user手填，而是呼叫函數自動計算取得交貨期限
print getdate()

declare @OrderDate datetime=getdate()

print '下訂日期:'+ convert(varchar,@OrderDate,111)

set @OrderDate+=30

print '交貨日期:'+ convert(varchar,@OrderDate,111)
-----------------------------------------------
--物件名稱絕大多數都是自己取名的，所以需要加個fn在前面表示這個程式是函數
--呼叫函數取得交貨期限，並以字串的形態回傳
alter function fnGetDeadline()
  returns varchar(10)
as
begin  --等於{
   return convert(varchar,getdate()+30,111)
end --等於}

-----------------------------------------------
print '交貨日期:' + dbo.fnGetDeadline() --dbo就是指這個資料庫的物件：database object
-----------------------------------------------


--範例：可以傳參數的function

create function fnGetDeadlinebyOrderDate(@date datetime)
  returns varchar(10)
as
begin 
   return convert(varchar,@date+30,111)
end 

-----------------------------------------------

print '交貨日期:' + dbo.fnGetDeadlinebyOrderDate('2025-7/20')

-----------------------------------------------
--用客戶的編號查客戶的名稱

alter function fnGetCNameByID(@id char(5)) --→參數
returns varchar(40)

as
begin
	if @id='' or @id is null
	return'請檢查客戶代碼'
--在function的前先檢查是不是空值，這樣就不用讓空值進到資料庫裡面檢查浪費資源
	declare @CName varchar(40) --→變數

	select @CName=公司名稱
	from 客戶
	where 客戶編號=@id

	if @CName is null
    return '查無該客戶資料'

	return @CName
end
-----------------------------------------------
print dbo.fnGetCNameByID('')
-----------------------------------------------
--用客戶資料進行關鍵字查詢

create function fnGetCustomerListByKeyword(@keyword nvarchar(20))
	returns table

return
	(select *
	from 客戶
	where 公司名稱 like '%'+@keyword+'%' or 連絡人 like '%'+@keyword+'%' 
	or 地址 like '%'+@keyword+'%' or 連絡人職稱 like '%'+@keyword+'%')
--關鍵字搜尋，從四個欄位撈
-----------------------------------------------

select *
from dbo.fnGetCustomerListByKeyword('高雄')







