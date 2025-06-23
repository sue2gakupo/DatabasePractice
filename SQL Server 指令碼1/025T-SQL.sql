--T-SQL程式設計

print 'Hello World!'

select 'Hello World!' as AAA --執行完會是一個table視窗呈現

--執行結果跟以上指令相同
select tb1.*
from(select 'Hello World!' as AAA) as tb1

-----------------------------------------------------------
--變數
--1.純量值變數 2.資料表值變數

--宣告declare
--變數名稱前面加上@
declare @MyName nvarchar(20)='Jack Lee'

print @MyName

select @MyName

-----------------------------------------------------------

declare @Number int 
set @Number=654   
select @Number=321

print @Number
--T-SQL不分大小寫

print @numBEr

-----------------------------------------------------------

declare @EmpName nvarchar(20)

select  @EmpName=姓名
from 員工
where 員工編號=1

print '員工姓名:'+@EmpName
-----------------------------------------------------------

declare @salary money=50000
print '您的薪水是'+ cast(@salary as varchar)

declare @birthday datetime='2025-6-23'

print '您的生日:'+convert(varchar,@birthday,111)

-----------------------------------------------------------

declare @dDay datetime

select @dDay=要貨日期
from 訂貨主檔
where 訂單號碼=10259
 
 print'訂單的要貨日期:'+convert(varchar,@dDay,111)

 -----------------------------------------------------------

 declare @myTable table(
 [name] nvarchar(30),
 birthday datetime,
 tel varchar(20),
 note nvarchar(max)
 )

 insert into @myTable values('王禧','2025-6-23','(07) 6553-2214','可以重複修改')

 insert into @myTable
 select 姓名,出生日期,電話號碼,附註 from 員工

 select * from @myTable 
