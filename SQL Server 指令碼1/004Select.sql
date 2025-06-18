--like運算子(模糊查詢)
--%:代表0~n個任意字元 =access的*
--_:代表個任意1字元   =access的?
--[]:放在中括號裡的任一個字

select*
from 訂貨主檔
where 收貨人 like '陳%'


select*
from 訂貨主檔
where 收貨人 like '[陳林王李趙]%'

--^反篩選，排除姓氏為'陳林王李趙'的收貨人
select*
from 訂貨主檔
where 收貨人 like '[^陳林王李趙]%'

----------------------
--between...and...

select*
from 產品資料
where 單價>=10 and 單價<=20

select*
from 產品資料
where 單價 between 10 and 20 -- >=10 <=20

----------------------
--in:在該表單中有符合篩選條件的都會被呈現出來

select*
from 客戶
where 連絡人職稱 in ('董事長','業務','研發生員','aaa')


--找出所有在1968年以後出生且住在北平東路的男員工，按照雇用日期遞增排序
select*
from 員工
where  year(出生日期)>= '1968'and 地址 like '%北平東路%' and 稱呼='先生'
order by 雇用日期

