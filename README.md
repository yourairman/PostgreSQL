# PostgreSQL
What's PostgreSQL? And Queries

---<b>Work 1</b>--WHERE, AND uses--</br>
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

---<b>Work 2</b>--BETWEEN, IN uses--</br>

--1</br>
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;</br>
--2</br>
SELECT first_name,last_name FROM actor WHERE first_name IN ('Penelope','Nick','Ed') OR last_name IN ('Penelope','Nick','Ed');</br>
--3</br>
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);</br>


<img src="postegreSQL_dvdrental_Work2_patika.dev.jpg" alt="And, Or use" width="100%" height="100%">
