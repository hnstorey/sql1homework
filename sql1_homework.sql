-- Question 1
select * from actor

select FIRST_NAME,LAST_NAME
from actor
where LAST_NAME = 'Wahlberg';

-- Question 2
select * from payment;

select count(amount) from payment where amount between 3.99 and 5.99;

-- Question 3
select * from inventory;

select film_id, count(inventory_id)
from inventory
group by film_id order by count(inventory_id) desc;

-- Question 4
select * from customers;

select *
from customers
where last_name = 'Williams';


-- Question 5
select * from rental;

select staff_id, count(staff_id)
from rental
group by staff_id
order by count(staff_id) desc;

-- Question 6
select * from address;

select count(distinct district)
from address;

-- Question 7

select * from film_actor;

select film_id, count(film_id)
from film_actor
group by film_id order by count(film_id) desc;

-- Question 8
select first_name, last_name, store_id 
from customer
where last_name like '%_es'
order by store_id asc;

select * from film;

-- Question 10
select rating, count(rating)
from film
group by rating
order by count(rating) desc;

-- Question 9 [I went through several different attempts at this. I think the last one was my successful one.]
select customer_id, amount, count(amount)
from payment
where customer_id > 380 and customer_id < 430
group by amount, customer_id
order by amount desc;

select amount, count(amount)
from payment
where customer_id > 380 and customer_id < 430
group by amount
order by count(amount) desc;
