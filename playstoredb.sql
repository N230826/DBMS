CREATE DATABASE playstoredb;
USE playstoredb;
CREATE TABLE DEVELOPERS (
DeveloperID INT primary key,
DeveloperName VARCHAR(60) NOT NULL,
Country VARCHAR(30) ,
FoundedYear INT );

INSERT INTO DEVELOPERS(DeveloperID,DeveloperName,Country,FoundedYear) VALUES
(101,'Google LLC','USA',1998),
(102,'Meta Platforms','USA',2004),
(103,'Spotify AB','Sweden',2006),
(104,'canva Pty Ltd','Australia',2012),
(105,'BYJUS','India',2011);

insert into developers(developerid,developername,country,foundedyear) values
(106,'OpenAI','USA',2015);

select * from developers

CREATE TABLE publishers(
PublisherID INT primary key,
PublisherName VARCHAR(60),
HeadOffice VARCHAR(60),
SupportEmail VARCHAR(60)
);

INSERT INTO publishers(PublisherID,PublisherName,HeadOffice,SupportEmail) VALUES
(201,'Google Play','California','support@google.com'),
(202,'Samsung Galary Store','Seoul','support@google.com'),
(203,'Huawel App Gallery','Shenzhen','support@google.com'),
(204,'Amazon Appstore','Seattle','support@google.com');
select * from publishers;

update publishers set supportemail='support@samsung.com' where publisherid=202;

create table categories(
categroyID INT primary key,
CategoryNAme VARCHAR(40),
minimumAge INT);
select * from categories;

insert into categories (categroyID,CategoryNAme,minimumAge)
values(301,'education',3),
(302,'Production',3),
(303,'Music',12),
(304,'Social',13),
(305,'gaming',16);
insert into categories (categroyID,CategoryNAme,minimumAge)
values 
(306,'Artifical Intelligence',12);
delete from categories where categroyid=303;

create table apps(
AppID int primary key,
AppName VARCHAR(60),
DeveloperID int ,
PublisherID int,
categroyID int,
Rating Decimal(2,1),
Downloads int ,
Price decimal(6,2));

select * from apps;
insert into apps (AppID,AppName,DeveloperID ,PublisherID,categroyID,Rating,Downloads,Price)
values
(1001,'Google classroom',101,201,301,4.6,500000000,0),
(1002,'Google keep',101,201,302,4.5,1000000000,0),
(1003,'Instagram',102,201,304,4.4,500000000,0),
(1004,'Spotify',103,201,303,4.5,1000000000,0),
(1005,'Canva',104,201,302,4.7,500000000,0),
(1006,'BYJUS Learning',105,201,301,4.3,1000000000,299),
(1007,'Candy Crush',102,204,305,4.6,1000000000,0),
(1008,'Temple Run',104,203,305,4.2,500000000,0);

insert  into apps (AppID,AppName,DeveloperID ,PublisherID,categroyID,Rating,Downloads,Price)
values(1009,'Chatgpt',104,203,305,4.2,500000000,0);

insert  into apps (AppID,AppName,DeveloperID ,PublisherID,categroyID,Rating,Downloads,Price)
values(1010,'claude',104,203,305,4.2,500000000,0),
(1011,'jiohostar',104,203,305,4.2,100000000,299);

update apps set price=199 where appid=1006;
update apps set Rating=4.5 where AppID=1008;

delete from developers where developerid=105;


