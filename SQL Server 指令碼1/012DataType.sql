--資料型態轉換
--cast(data as type)
--統計產品類別各有多少產品
select t.類別編號,t.類別名稱,cast(count(*) as varchar) +'種' as 數量
from 產品資料 as p inner join 產品類別 as t on p.類別編號=t.類別編號
group by t.類別編號,t.類別名稱

select *
from 產品類別

select distinct 類別編號
from 產品資料
----------------------------------------------------
--資料型態轉換及格式的問題 
select iif(送貨日期 is null,'尚未出貨',convert(varchar , 送貨日期 ,111)) as 送貨日期 --111是日期格式
from 訂貨主檔

select convert(varchar , 訂單日期 , 111) as 訂單日期,count(*) as 訂單數量
from 訂貨主檔
group by 訂單日期

--isnull() --判斷欄位有無空值，有空值就替換為條件
select isnull(convert(varchar , 送貨日期 , 111),'尚未出貨') as 送貨日期
from 訂貨主檔
