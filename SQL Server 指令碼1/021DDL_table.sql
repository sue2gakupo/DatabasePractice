--建立資料夾

create table[Product](
ProductID nchar(5) not null primary key,
ProductName nvarchar(40) not null,
Price money not null check(Price>=0),
[Description] nvarchar(200),
Picture nvarchar(12) not null,
CreateDateID datetime not null default getdate() 
)