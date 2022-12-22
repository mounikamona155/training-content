create database RestaurantDb;
Go

-- comment 
create table Restaurants(
    [Id] int IDENTITY(1,1),-- PRIMARY KEY, --An identity column is a numeric column in a table that is automatically populated with an integer value each time a row is inserted.
    [Name] varchar(25) not null ,
    [Cuisine]	varchar(25) default('unknown'),
    [OpenTime]	time, --hh:mm:ss [00:00:00 to 23:59:59]
    [CloseTime]	time,
    [Phone]	varchar(10),-- check([Phone] is not null or [Email] is not null),
    [Website]	varchar(20),
    [Email]	varchar(20) ,
    [Zipcode]	varchar(6) not null,
    --PRIMARY KEY (Id, Name) -- candidate key
    CONSTRAINT [PK_RestaurantId] PRIMARY KEY(Id)
);
Go

alter table restaurants
    alter column [Website] VARCHAR(25)

-- alter table Restaurants drop constraint PK__Restaura__5523B4480FD40661
--alter table Restaurants
-- add CONSTRAINT [PK_RestaurantId] PRIMARY KEY(Id)
-- create index search
--     on Restaurants (Cuisine, zipcode)

CREATE table Users(
    [username] varchar(50),
    [password] VARCHAR(max),
    PRIMARY KEY (username)
);
Go
create table [Reviews](
    [Id]	int IDENTITY(1,1),
    [OverallRating]	float not null,
    [Comment]	varchar(max),
    [TasteRating]	int not null,
    [AmbienceRating]	int not null,
    [ServiceRating]	int not null,
    [RestaurantId]	Int , -- Foreign Key from Restaurants table
    [username]	varchar(50) , -- Foreign Key from Users table
    CONSTRAINT [FK_RestaurantId] FOREIGN KEY([RestaurantId]) REFERENCES Restaurants,
    CONSTRAINT [FK_Users_Username] FOREIGN KEY(username) REFERENCES Users,
    CONSTRAINT [PK_ReviewsId] PRIMARY KEY(Id)
);

-- DML Commands 
--INSERT, UPDATE, DELETE
insert into restaurants(Name, Cuisine, OpenTime,CloseTime,Phone,Website,Email,Zipcode) values 
('Starbucks','Cafe','07:00:00', '22:00:00','876543210','https://starbucks.com','contact@starbucks.com', '110001'),
('Cafe Coffee Day','Cafe','07:00:00', '22:00:00','7654321900','https://ccd.com','contact@ccd.com', '250110'),
('Udipi','South Indian','12:00:00', '22:00:00','876543210','https://udipi.com','', '900001')

delete from Restaurants
where id = 8

update restaurants 
set zipcode ='110110', email = 'contactus@mcdonalds.com'
where name = 'McDonalds'

go

select Name,Cuisine, Phone, zipcode, website, email from Restaurants
select * from Reviews
select * from users


drop table reviews
drop table users

insert into users 
values 
('pushpinder', 'Password123'),
('Fred', 'Password')

insert into reviews(OverallRating,Comment,TasteRating,AmbienceRating,ServiceRating,RestaurantId,username)
VALUES
(3.9,'tasty food but low quality veggies',4, 4, 1, 9, 'pushpinder')

-- SELECT -> DQL

-- drop table Reviews