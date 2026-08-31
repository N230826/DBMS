use playstoredb;

select distinct a.developerid from apps a 
left join developers d 
on a.developerid=d.developerid where d.developerid is null;

insert into developers(developerid,developername,country,foundedyear) values
(105,'AI','US',2016);

alter table apps add constraint fk_apps_developers 
foreign key (developerid) 
references developers(developerid);

select distinct a.publisherid from apps a
left join publishers p
on a.publisherid=p.publisherid where p.publisherid is null;

alter table apps  add constraint fk_publisher
foreign key (publisherid)
references publishers (publisherid);

select distinct a.categroyid from apps a
left join categories c
on a.categroyid=c.categroyid where c.categroyid is null;

insert into categories (categroyID,CategoryNAme,minimumAge)
values 
(303,'Artifical Intelligence',12);

alter table apps add constraint fk_category
foreign key (categroyid) 
references categories (categroyid);


select * from apps where rating>4.5;
select * from apps where price=0;
select * from categories where categoryid=305;

select * from apps where downloads>500000000;
select * from apps where rating between 4.3 and 4.7;
select * from apps where price in(0,299);
select * from apps where appname like 'G%';
select * from apps where appname like '%google%';
select * from apps where rating>4.0 and downloads>500000000;
select * from apps where categroyid=301 or categroyid=305;
 
select * from apps where appname not like 'g%';
select * from apps where rating<4.5 or downloads>100000000;
select * from developers ;
select * from apps where price between 0 and 300;
select * from apps where publisherid=201 or publisherid=204;
insert  into apps (AppID,AppName,DeveloperID ,PublisherID,categroyID,Rating,Downloads,Price)
values(1099,'Chatgpt',109,203,305,4.2,500000000,0);
select * from apps where categroyid not like 305;