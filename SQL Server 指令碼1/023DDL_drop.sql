--drop

drop table [Member]  --這裡會發生參考完整性限制的問題

--1.移除Member與Order之間的關聯(刪除掉 Order資料表上的F.K條件約束)
alter table [Order]
      drop constraint FK__Order__MemberID__403A8C7D


--2.刪除[Member]資料庫
drop table[Member]

-------------------------------
--刪除整個資料庫
drop database GoodStore


--無法刪除資料庫，GPT解法
alter database GoodStore   --針對名為 GoodStore 的資料庫做修改。
set single_user            --將資料庫模式改為「單一使用者模式」，只允許一個人連線。
with  rollback immediate   --強制中斷目前所有使用者的連線與交易，不管他們在做什麼，全部立刻中斷並回滾（rollback）。
--ROLLBACK（回滾）
--SQL 中處理交易（Transaction）時的一個關鍵動作。簡單來說，就是**「取消還沒完成的資料庫操作」**
--讓資料恢復到還沒變更之前的狀態。
drop database GoodStore   


--GPT腳本
use master;
go

-- ? 確認資料庫是否存在
if exists (select name from sys.databases where name = N'GoodStore')
begin
    print '?? 正在切換為 single_user 模式並踢出所有使用者...'

    -- 踢出所有使用者，設為單一使用者模式
    alter database goodstore set single_user with rollback immediate;

    print '??? 正在刪除資料庫 goodstore...'

    -- 刪除資料庫
    drop database goodstore;

    print '? goodstore 資料庫已成功刪除。'
end

else
begin
    print '?? 資料庫 goodstore 不存在，無需刪除。'
end

