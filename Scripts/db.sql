create database MovieDB
 

CREATE TABLE Directors
(
id int primary key  IDENTITY(1,1),
Name nvarchar(MAX),
is_deleted bit,
creation_date nvarchar(Max)
);



CREATE TABLE Ratings
(
id int primary key  IDENTITY(1,1),
Name nvarchar(MAX),
is_deleted bit,
creation_date nvarchar(Max)
);

CREATE TABLE Movies
(
id int primary key  IDENTITY(1,1),
Name nvarchar(MAX),
Publish_date nvarchar(MAX),
creation_date nvarchar(Max),
director_id int,
rating_id int,
is_deleted bit,
foreign key (director_id) references Directors(id),
foreign key (rating_id) references Ratings(id) 
);
