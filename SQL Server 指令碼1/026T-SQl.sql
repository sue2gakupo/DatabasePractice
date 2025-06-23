--流程控制
--if/else

--如果身高120以上未滿140公分買半票
--140公分以上買全票
--120公分以下免票


declare @height int
set @height=130

if @height>=140
begin 
   print'全票'
end
else if @height>=120
   print'半票'

else
print '免票'

-----------------------------------------------------------
--case
select 員工編號,姓名,名稱,iif(稱呼='小姐','女性','男性') as 性別 from 員工



--簡單case
select 員工編號,姓名,稱呼,
case 稱呼
when '小姐' then'女性'
when '先生' then'男性'
else 'N/A'
end as 性別

from 員工


--搜尋case(多路徑選擇)

declare @result nvachar(5)
set @result=
case 
when@height>= then '全票'
when@height>= then '全票'
