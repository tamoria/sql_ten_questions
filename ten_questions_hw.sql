-- Question 1: How many actors are there with the last name ‘Wahlberg’?
select last_name
from actor
where last_name = 'Wahlberg';
	-- Answer: Two actors has the last name, Wahlberg.

-- Question 2: How many payments were made between $3.99 and $5.99?
select amount
from payment
where amount between 3.99 and 5.99
order by amount desc;
	-- Answer: Two payments were made between $3.99 and $5.99.

-- Question 3: What film does the store have the most of? (search in inventory)
select film_id, count(film_id)
from inventory 
group by film_id;

select film_id, count(film_id)
from inventory
group by film_id 
having count(film_id) >= 8;

select title, film_id
from film
where film_id = 350;

	-- Answer: Garden Island

-- Question 4: How many customers have the last name ‘William’?
select last_name, customer_id
from customer
where last_name = 'William';

select * from customer;

select last_name, customer_id
from customer
where last_name = 'Williams';

	-- Answer there are no customers with the last name 'William'. Though, there are three with the last name, 'Williams'.

-- Question 5: What store employee (get the id) sold the most rentals?
select * from rental

select count(staff_id), staff_id
from rental
group by staff_id;

select first_name, last_name
from staff
where staff_id = 1;

	Answer: Mike Hillyer sold the most rentals.
	
-- Question 6: How many different district names are there?
select count(distinct district)
from address

	-- Answer: 377

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(actor_id)
from film_actor
group by film_id
having count(actor_id) >= 15;

select title
from film
where film_id = 508;

	-- Answer: The film with the most actors in it is, 'Lambs Cincinatti'.

-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select last_name, store_id
from customer
where last_name like '__%es' and store_id = 1;

	-- Answer: 13 names end with 'es' at store_id 1.

-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select count(rental_id), customer_id, count(amount)
from payment
group by customer_id
having count(rental_id) > 250 and customer_id between 380 and 430;

	-- Answer: Zero

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?

select count(distinct rating)
from film

select count(film_id), rating
from film
group by rating

	-- Answer: There are five rating categories. The rating, PG-13 has the most movies total. 




	
	
	
	
	
	
	
	
	

