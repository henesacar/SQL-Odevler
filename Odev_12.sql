-- 1) film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

Select * from film
where length > (select AVG(length) from film)
order by length;

-- 2) film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

Select count(*) from film
where rental_rate = (select MAX(rental_rate) from film);

-- 3) film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

Select * from film
where (rental_rate,replacement_cost) = any
(select min(rental_rate),min(replacement_cost) from film);

-- 4) payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer_id,first_name,last_name,(SELECT COUNT(*) FROM payment p WHERE p.customer_id = c.customer_id) as payment FROM customer c
order by payment;
