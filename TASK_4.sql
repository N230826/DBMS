use playstoredb;

select count(appname) as no_of_apps from apps;
select avg(rating) as average_rating from apps;
select max(rating) as highest_rating from apps;
select min(rating) as lowest_rating from apps;
select count(downloads) from apps;
select * from apps order by rating desc;

select categroyid,count(*) from apps group by categroyid;
select categroyid,avg(rating) from apps group by categroyid;
select min(price) as minnimum_price ,max(price) as maximum_price from apps;
select downloads from apps order by downloads desc;
select developerid,count(*) from apps group by developerid;
select categroyid,count(*) from apps group by categroyid having count(*)>1;

select count(downloads) as no_of_downloads from apps
group by developerid;
select avg(rating) as average_rating from apps 
group by publisherid;
select appname,count(*) from apps
group by developerid 
having count(*)>1;
select developerid,count(*) as applicationcount from apps 
group by devloperid 
having count(*)>1;
select categroyid ,avg(rating) as AverageRating from apps
group by categroyid
having avg(rating)>4.3;
select categroyid,count(*) as applicationcount from apps 
group by categroyid
order by applicationcount desc;

