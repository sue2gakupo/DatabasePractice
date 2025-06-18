--刪除資料
--Delete
--Delete一次只能對一個資料表做
--但可以一次刪除1~N筆資料

delete from 貨運公司
where 貨運公司名稱=10

delete from 員工
where 員工編號 in(select)
