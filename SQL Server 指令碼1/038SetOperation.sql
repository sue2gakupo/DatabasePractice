--集合運算
--聯集 union，交集 intersect，差集except

--上下連起來，會把重複的只取一次留下來
select 供應商 from 供應商
union
select 連絡人 from 客戶


select 供應商 from 供應商
union all
select 公司名稱 from 客戶

--只會留下一樣的
select 供應商 from 供應商
intersect
select 公司名稱 from 客戶

--把重複的直接刪掉，留下雙方沒重複的
select 供應商 from 供應商
except
select 公司名稱 from 客戶