# PostgreSQL
What's PostgreSQL? And Queries

---<b>Work 1</b>--</br>
--1
SELECT title,description FROM film;
--2
SELECT title,length FROM film WHERE length>60 AND length<75;
--3
SELECT * FROM film WHERE rental_rate=0.99 AND replacement_cost=12.99 OR replacement_cost=28.99;
--4
SELECT last_name FROM customer WHERE first_name='Mary';
--5
SELECT * FROM film WHERE NOT length>50 AND rental_rate=2.99 OR rental_rate=4.99;

<img src="postegreSQL_dvdrental_Work1_patika.dev.jpeg" alt="And, Or use" width="100%" height="100%">

---<b>Work 2</b>--</br>


<img src="postegreSQL_dvdrental_Work2_patika.dev.jpeg" alt="And, Or use" width="100%" height="100%">
