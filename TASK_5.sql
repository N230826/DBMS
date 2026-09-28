use playstoredb;

update apps
set rating=4.9
where appid=1002;
commit;
select * from apps;
set autocommit=0;
update apps
set price=399
where appid=1006;
rollback;
insert into apps values (1012,'Snapchat',102,203,302,4.5,500000000,0);
commit;
select * from developers;
insert into developers values ('108','chatgpt-astra6','USA',2026);
rollback;
update apps
set rating=4.9
where appid=1011;
savepoint rating_update;

select * from apps;
update apps
set rating=4.7
where appid=1001;
savepoint after_classroom;
update apps
set rating=4.6
where appid=1005;

update apps
set rating=4.6
where appid=1003;
rollback to after_classroom;
insert into apps values(1013,'youtube',102,203,304,4.5,500000000,0);
savepoint youtube;
update apps set price=999 where appid=1013;
rollback to youtube;

create user 'labuser'@'localhost' identified by '1234';
grant select on playstoredb.apps 
to 'labuser'@'localhost';
grant select,insert on playstoredb.apps
to 'labuser'@'localhost';
revoke insert on playstoredb.apps
from 'labuser'@'localhost';

update apps
set rating=4.6
where appid=1003;
savepoint after_insta;
update apps
set rating=4.7
where appid=1011;
rollback to after_insta;

insert into categories values
(10,'education',18);
savepoint educ;
insert into categories values
(311,'education',18);
rollback to educ;
select * from categories;
grant select,insert,update
 on playstoredb.apps to 'labuser'@'localhost';
revoke update on playstoredb.apps
from 'labuser'@'localhost';

grant select
 on playstoredb.developers to 'labuser'@'localhost';
 commit;