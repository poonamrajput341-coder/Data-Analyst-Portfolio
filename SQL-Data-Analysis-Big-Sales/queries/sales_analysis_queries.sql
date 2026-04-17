show tables;

select product,price,city from big_sales_practice_dataset;
select product,city,price from big_sales_practice_dataset;
select product,total_amount from big_sales_practice_dataset;
select * from big_sales_practice_dataset
where total_amount>10000;

select * from big_sales_practice_dataset
where total_amount > 10000
order by total_amount Desc;

select * from big_sales_practice_dataset
where category='Electronics'
order by category,total_amount desc;

select * from big_sales_practice_dataset
where total_amount>10000 and date >='2024-01-01';


select category,total_amount from big_sales_practice_dataset
where total_amount>10000;

select * from big_sales_practice_dataset
where price between 10000 and 50000 ;
select* from big_sales_practice_dataset
where city='delhi' and category='fashion';

select *from big_sales_practice_dataset
where product like 'shirt%';
select * from big_sales_practice_dataset;

select category,total_amount,
case  when total_amount <5000 then 'good'
      when total_amount <10000 then 'excellent'
      when total_amount <20000 then 'very good'
      else 'very good or more'
      end as 'total_amount'
      from big_sales_practice_dataset;


select product,sum(total_amount), avg(total_amount)
from big_sales_practice_dataset
group by product;

select category,sum(price), avg(price)
from big_sales_practice_dataset
group by  category ;

select city,sum(total_amount) as total_sales
from big_sales_practice_dataset
group by  city;

select date, sum(total_amount) as daily_sales
from big_sales_practice_dataset
group by date;

select category,city, sum(total_amount) as total_sales
from big_sales_practice_dataset
group by category,city;

select product,quantity,sum(total_amount) as total_sales
from big_sales_practice_dataset
group by product,quantity;

select category, avg(price) as avg_price
from big_sales_practice_dataset
group by category;

select city,count(*) as total_sales
from big_sales_practice_dataset
group by city;

select city,sum(total_amount)as total_sales
from big_sales_practice_dataset
group by city
having total_sales>10000;

select city,sum(total_amount)as total_sales
from big_sales_practice_dataset
group by city 
order by total_sales desc;

select city,sum(total_amount)as total_sales
from big_sales_practice_dataset
group by city 
order by total_sales desc
limit 1;

select product,sum(quantity) as total_quantity
from big_sales_practice_dataset
group by product
order by total_quantity desc
limit 3;
