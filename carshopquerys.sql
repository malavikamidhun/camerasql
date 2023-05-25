use Carshop;
show tables;
describe cars;
describe manufacturers;
select * from cars;
select * from manufacturers;

select carname,concat('INR',format((price*70),2)) from cars;

select c.carname,concat('KHR',format((c.price*4101.29),2)),m.ManufacturerName from cars c join manufacturers m on (c.manufacturerid=m.manufacturerid);

select carname,price from cars order by price desc limit 1;
select c.carname,m.ManufacturerName  from cars c join manufacturers m on (c.manufacturerid=m.manufacturerid) order by price desc limit 1;
select c.carname,m.ManufacturerName,c.price  from cars c join manufacturers m on (c.manufacturerid=m.manufacturerid) where ManufacturerName='Honda' or ManufacturerName='Toyota';
select c.*,m.* from cars c join manufacturers m on (c.manufacturerid=m.manufacturerid);
select count(carname),manufacturername from cars inner join manufacturers where cars.manufacturerid=manufacturers.manufacturerid group by manufacturername;
select manufacturername,avg(price) as 'avg price from manufacturer' from cars inner join manufacturers where cars.manufacturerid=manufacturers.manufacturerid group by manufacturername having avg(price)=35000;
select carname,price from cars where price=(select min(price) from cars);
select carname,price from cars where price=(select max(price) from cars);

update cars set price=price-(price*0.22) 