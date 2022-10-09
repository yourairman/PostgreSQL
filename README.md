#<h3> PostgreSQL </h3>
What's PostgreSQL? And Queries

---<b>Work 1</b>--<i>WHERE, AND uses</i>--</br>
--1</br>
SELECT title,description FROM film;</br>
--2</br>
SELECT title,length FROM film WHERE length>60 AND length<75;</br>
--3</br>
SELECT * FROM film WHERE rental_rate=0.99 AND replacement_cost=12.99 OR replacement_cost=28.99;</br>
--4</br>
SELECT last_name FROM customer WHERE first_name='Mary';</br>
--5</br>
SELECT * FROM film WHERE NOT length>50 AND rental_rate=2.99 OR rental_rate=4.99;</br>
</br>
<img src="postegreSQL_dvdrental_Work1_patika.dev.jpg" alt="And, Or use" width="100%" height="100%"></br>

---<b>Work 2</b>--<b><i>BETWEEN, IN uses</i></b>--</br>

--1</br>
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;</br>
--2</br>
SELECT first_name,last_name FROM actor WHERE first_name IN ('Penelope','Nick','Ed') OR last_name IN ('Penelope','Nick','Ed');</br>
--3</br>
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);</br>


<img src="postegreSQL_dvdrental_Work2_patika.dev.jpg" alt="And, Or use" width="100%" height="100%">

---<b>Work 3</b>--<b><i>LIKE, ILIKE uses</i></b>--</br>

--1 country tablosunda bulunan country 
--sütunundaki ülke isimlerinden 'A' karakteri 
--ile başlayıp 'a' karakteri 
--ile sonlananları sıralayınız.
SELECT * FROM country WHERE country LIKE 'A%a';

--2 country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.

SELECT * FROM country WHERE country LIKE '%_____n';

--3 film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.

SELECT * FROM film WHERE title ILIKE '%t' OR title ILIKE 't%';

--4 film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

SELECT * FROM film WHERE title LIKE 'C%' AND LENGTH>90 AND rental_rate=2.99;

<img src="postegreSQL_dvdrental_Work3_patika.dev.jpg" alt="And, Or use" width="100%" height="100%"></br>


--LIKE yerine ~~ (iki tane tilda)
--ILIKE YERİNE ~~* (iki tane tilda ve yıldız)
--NOT LIKE yerine !~~ (ünlem ve iki tane tilda)
--ILIKE YERİNE !~~*	 (ünlem, iki tane tilda ve yıldız)  kullanılabilir


---<b>Work 4</b>--<b><i>DISTINCT, COUNT uses</i></b>--</br>

<img src="postegreSQL_dvdrental_Work5_patika.dev.jpg" alt="Distinct, And use" width="100%" height="100%"></br>

--1 film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.</br>
SELECT DISTINCT replacement_cost FROM film;</br>
--2 film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?</br>
SELECT COUNT (DISTINCT  replacement_cost) FROM film;</br>
--3 film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?</br>
SELECT * FROM film WHERE title LIKE 'T%' AND rating='G';</br>
--4 country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?</br>
SELECT COUNT (country) FROM country WHERE country LIKE '_____';</br>
--5 city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?</br>
SELECT COUNT (city) FROM city WHERE city ILIKE '%r';</br>

---<b>Work 5</b>--<b><i>ORDER BY, LIMIT, OFFSET uses</i></b>--</br>

<img src="postegreSQL_dvdrental_Work5_patika.dev.jpg" alt="Distinct, And use" width="100%" height="100%"></br>

---<b>Work 6</b>--<h3><i>AGGREGATE FUNCTIONS</i></h3>--</br>

<img src="postegreSQL_dvdrental_Work6_patika.dev.jpg" alt="AGGREGATE FUNCTIONS - MAX, MIN, SUM, AVG, COUNT" width="100%" height="100%"></br>

--1-film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?</br>

SELECT ROUND(AVG(rental_rate),2) FROM film;</br>

--2-film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?</br>
SELECT COUNT(title) FROM film WHERE title LIKE 'C%';</br>

--3-film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?</br>

SELECT MAX(length) FROM film WHERE rental_rate IN(0.99);</br>

--4-film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?</br>
SELECT COUNT(DISTINCT(replacement_cost)) FROM film WHERE replacement_cost>150;</br>

---<b>Work 7</b>--<b><i>GROUP BY, HAVING uses</i></b>--</br>


--1-film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.</br>
SELECT rating, count(*) FROM film GROUP BY rating;</br>
--2-film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.</br>

SELECT replacement_cost, count(*) FROM film GROUP BY replacement_cost HAVING count(replacement_cost) >50;</br>
--3-customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? </br>
SELECT store_id , COUNT(*) FROM customer GROUP BY store_id;</br>
--4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.</br>
SELECT  country_id, count(city) from city	Group by country_id	ORDER BY COUNT(city_id) DESC Limit 1 ;</br>

<img src="postegreSQL_dvdrental_Work7_patika.dev.jpg" alt="GROUP BY, HAVING USES" width="100%" height="100%"></br>

