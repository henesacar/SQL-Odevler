-- 1) film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.

Select title from film
where title ILIKE '%n' 
order by length desc
limit 5;


-- 2) film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.

select title from film
where title ilike '%n'
order by length
offset 5
limit 5;

-- 3) customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

select last_name,store_id from customer
where store_id=1
order by last_name desc
limit 4;
