--建立資料夾

--訂單資料表
create table[Product](
ProductID nchar(5) not null primary key,
ProductName nvarchar(40) not null,
Price money not null check(Price>=0),
[Description] nvarchar(200),
Picture nvarchar(12) not null,
CreateDateID datetime not null default getdate() 
)

--會員資料表
create table[Member](
MemberID nchar(6) not null primary key,
[Name] nvarchar(30) not null,
Gender bit not null,
--位元資料是放1個位元的大小
MemberPoint int not null,
Account nvarchar(12) not null unique,
--儲存為唯一值
Password nvarchar(20) not null,
CreatedDate datetime not null default getdate()
)

--訂單資料表
create table[Order](
OrderID nchar (12) not null primary key, --colume level
OrderDate datetime not null default getdate(),
MemberID nchar (6) not null, 
ContactName nvarchar (30) not null, 
ContactAddress nvarchar (100) not null, 
foreign key(MemberID) references [Member](MemberID) --table level
)

