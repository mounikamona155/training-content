create database RestaurantDb;

-- comment 
create table Restaurants(
    [Id] int IDENTITY(1,1),-- PRIMARY KEY, --An identity column is a numeric column in a table that is automatically populated with an integer value each time a row is inserted.
    [Name] varchar not null ,
    [Cuisine]	varchar default('unknown'),
    [OpenTime]	time, --hh:mm:ss [00:00:00 to 23:59:59]
    [CloseTime]	time,
    [Phone]	varchar,-- check([Phone] is not null or [Email] is not null),
    [Website]	varchar,
    [Email]	varchar ,
    [Zipcode]	varchar not null,
    --PRIMARY KEY (Id, Name) -- candidate key
    CONSTRAINT [PK_RestaurantId] PRIMARY KEY(Id)
);

-- alter table Restaurants drop constraint PK__Restaura__5523B4480FD40661
alter table Restaurants
    add CONSTRAINT [PK_RestaurantId] PRIMARY KEY(Id)
-- create index search
--     on Restaurants (Cuisine, zipcode)

CREATE table Users(
    [username] varchar,
    [password] VARCHAR,
    PRIMARY KEY (username)
);

create table [Reviews](
    [Id]	int IDENTITY(1,1),
    [OverallRating]	float not null,
    [Comment]	varchar(max),
    [TasteRating]	int not null,
    [AmbienceRating]	int not null,
    [ServiceRating]	int not null,
    [RestaurantId]	Int , -- Foreign Key from Restaurants table
    [username]	varchar , -- Foreign Key from Users table
    CONSTRAINT [FK_RestaurantId] FOREIGN KEY([RestaurantId]) REFERENCES Restaurants,
    CONSTRAINT [FK_Users_Username] FOREIGN KEY(username) REFERENCES Users,
    CONSTRAINT [PK_ReviewsId] PRIMARY KEY(Id)
);

drop table Reviews