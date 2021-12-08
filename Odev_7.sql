-- 1) film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.

Select rating from film
group by rating;

-- 2) film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.

Select replacement_cost, count(replacement_cost) from film
group by replacement_cost
having count(replacement_cost) >50;

-- 3) customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?

Select store_id, count(store_id) from customer
group by store_id;

-- 4)  city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.

Select country_id, count(*) FROM city
group by country_id
order by COUNT(*) desc
limit 1;
