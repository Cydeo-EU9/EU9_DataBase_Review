CREATE TABLE testTable(
    ID integer primary key,
    Name varchar(25),
    FamilyName varchar(25),
    age integer
);

select * from testTable;

insert into testTable values (1,'Mike','Stone',52);
insert into testTable values (2,'Rachel','Stone',48);

update testTable
set age = 53
where ID = 1;

delete  from testTable
where id=2;

alter table testTable rename to family;

select * from family;

Truncate Table family; -- deleting all the date in the table, not the table

drop table family; -- deleting the table itself

--create a table name laptops, with id, brand, color, price

create table laptop(
    id integer primary key ,
    brand varchar(25),
    color varchar(25),
    price integer
);

-- 1. (1, 'hp' , 'black', 1500)
-- 2. (2, 'msi', 'grey', 1300)
-- 3. (3, 'dell', 'black', 1600)
-- 4. (4, 'hp', 'white', 1300)
-- 5. (5, 'macbook', 'white', 1800)

insert into laptop values (1, 'hp' , 'black', 1500);
insert into laptop values (2, 'msi', 'grey', 1300);
insert into laptop values (3, 'dell', 'black', 1600);
insert into laptop values (4, 'hp', 'white', 1300);
insert into laptop values (5, 'macbook', 'white', 1800);

select * from laptop;

create table phones(
                       id_number integer primary key ,
                       brand varchar(25),
                       color varchar(25),
                       price integer
);

select * from phones;

-- 16. insert phones table belwo values
-- -- 1. (1, 'samsung' , 'black', 700)
-- -- 2. (2, 'dell', 'grey', 1000)
-- -- 3. (3, 'msi', 'black', 800)
-- -- 4. (4, 'iphone', 'white', 1100)

insert into phones values (1, 'samsung', 'black', 700);
insert into phones values (2, 'dell', 'grey', 1000);
insert into phones values (3, 'msi', 'black', 800);
insert into phones values (4, 'iphone', 'white', 1100);

select * from phones;

--update dell price to 1500
update laptop
set price = 1500
where id=3;

select * from laptop;

-- delete macbook from laptops table
delete from laptop
where id=5;

delete from laptop
where brand='macbook';

update laptop
set color=null
where id=4;

update laptop
set color=''
where id=3;


-- change table name to laptops
alter table laptop rename to laptops;
select * from laptops;

