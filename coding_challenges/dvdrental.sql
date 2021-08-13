
--1. Display the number of unique inventory rented and the total number of inventory rented
--Column => unique_inventory_rented, total_inventory_rented
select 
	inventory_id as unique_inventory_rented
	,count(inventory_id) as total_inventory_rented
from rental
group by inventory_id;


--2. List all the films of Dan Torn and Dan Streep. Sort by film_title alphabetical order
--  Column => film_title, release_year, and rating, and actor_full_name.

-- make placeholder table for films with fullname of actor
drop table if exists temp_actor_names_and_films;

select 
	a.film_id
	,b.first_name
	,b.last_name
	,concat(first_name, ' ', last_name) as actor_full_name
into temp_actor_names_and_films
from film_actor a
left join actor b
on a.actor_id=b.actor_id;

--make placeholder table to extract title
drop table if exists temp_actor_names_and_film_titles;

select 
	a.film_id
	,b.first_name
	,b.last_name
	,a.title as film_title
	,a.release_year
	,a.rating
	,b.actor_full_name
into temp_actor_names_and_film_titles
from film a
left join temp_actor_names_and_films b
on a.film_id=b.film_id

--filter need for activity 2
select 
	film_title
	,release_year
	,rating
	,actor_full_name
from temp_actor_names_and_film_titles
where UPPER(actor_full_name)='DAN TORN' or UPPER(actor_full_name)='DAN STREEP'

--3. List all Comedy films of all actors whose last names start with 'D'. Sort by actor_full_name alphabetical order
--   Column => actor_full_name, film_title, category_name

--make placeholder table for actors with films and categories
drop table if exists temp_actor_names_and_film_categories;

select 
	a.* 
	,c.name
into temp_actor_names_and_film_categories
from temp_actor_names_and_film_titles a
left join film_category b
on a.film_id=b.film_id
left join category c
on b.category_id=c.category_id;

--filter for activity 3
select 
	actor_full_name
	,film_title
	,name as category_name
from temp_actor_names_and_film_categories
where UPPER(name)='COMEDY'
and last_name like 'D%'
order by actor_full_name asc;

--4. Determine the potential number of customers a store staff would serve (count the number of customer in the same country as the staff)
--   Column => staff_full_name, customer_count

--placeholder table for full address

drop table if exists temp_full_address;

select 
	a.address_id
	,a.address
	,a.district
	,a.city_id
	,b.city
	,b.country_id
	,c.country
into temp_full_address
from address a
left join city b
on a.city_id=b.city_id
left join country c
on b.country_id=c.country_id

--placeholder table for visited stores by customers
drop table if exists temp_visited_stores_of_customers;

select 
	a.*
	,b.address_id as address_id_of_store
into temp_visited_stores_of_customers
from customer a
left join store b
on a.store_id=b.store_id;

--placeholder table for customer count
drop table if exists temp_customer_count;

select 
	store_id
	,count(*) as customer_count
into temp_customer_count
from temp_visited_stores_of_customers
group by store_id

select 
	concat(a.first_name, ' ', a.last_name) as staff_full_name
	,b.customer_count
from staff a
left join temp_customer_count b
on a.store_id=b.store_id


--5.  Find the most popular film category per store (determined by the number of rentals)
-- Column => store_id, film_count, category_name

--make place holder table containing store id, film count and category name

drop table if exists temp_rentals_with_category;

select 
	a.* 
	,b.film_id
	,b.store_id
	,c.category_id
	,d.name
into temp_rentals_with_category
from rental a
left join inventory b
on a.inventory_id=b.inventory_id
left join film_category c
on b.film_id=c.film_id
left join category d
on c.category_id=d.category_id

--item 5 answer: union only the top film category for each store
(select 
	store_id
	,count(*) as film_count
	,name as category_name
from temp_rentals_with_category
where store_id=1
group by store_id,name
order by count(*) desc
limit 1)
union
(select 
	store_id
	,count(*) as film_count
	,name as category_name
from temp_rentals_with_category
where store_id=2
group by store_id,name
order by count(*) desc
limit 1);


--6. Rank the top 5 actors per country (determined by the number rentals) sort by most popular to least popular
-- Column => country, actor_full_name, actor_rank, rent_count

--get top 5 rentals per address
select 
	c.country
	,a.film_id
	,count(*) as rent_count
into temp_top_5_films_AU
from temp_rentals_with_category a
left join store b
on a.store_id=b.store_id
left join temp_full_address c
on b.address_id=c.address_id
where upper(country)='AUSTRALIA'
group by c.country,a.film_id
order by count(*) desc
limit 5

--get top 5 rentals per address
select 
	c.country
	,a.film_id
	,count(*) as rent_count
into temp_top_5_films_CAN
from temp_rentals_with_category a
left join store b
on a.store_id=b.store_id
left join temp_full_address c
on b.address_id=c.address_id
where upper(country)='CANADA'
group by c.country,a.film_id
order by count(*) desc
limit 5

--union the two addresses along with top 5 actors
(select 
	a.country
	,b.actor_full_name
	,a.rent_count
from temp_top_5_films_AU a
left join temp_actor_names_and_film_titles b
on a.film_id=b.film_id)
UNION
(select 
	a.country
	,b.actor_full_name
	,a.rent_count
from temp_top_5_films_CAN a
left join temp_actor_names_and_film_titles b
on a.film_id=b.film_id)
order by rent_count desc;
