--alter修改資料表的定義，必須要在既有的物件使用

--在Product資料表中[增加]一個CateID的欄位
alter table [Product]
      add CateID nchar(2) not null


--建立Product資料表與Category資料表之間的關聯
alter table[Product]
      add foreign key(CateID) references Category(CateID)


 --建立OrderDetail資料表與Product資料表之間的關聯
alter table[OrderDetail]
      add foreign key(ProductID) references [Product](ProductID) on delete cascade--cascade就是建立關聯性，通常都是訂單跟訂單明細會做 


 --假設在系統施作期間有需求變更，要將MemberPoint欄位刪除
 --這時要用Drop還是alter
alter table[Member]
      drop column MemberPoint
  --當這個資料表變更執行時，將會出現相依性的錯誤
  --在相依性未解除之間無法刪除MemberPoint


  --因此我們必須先移除default constraint,再刪除MemberPoint欄位
alter table [Member]
      drop constraint  DF__Member__CreatedD__3C69FB99

alter table[Member]
      drop column MemberPoint
