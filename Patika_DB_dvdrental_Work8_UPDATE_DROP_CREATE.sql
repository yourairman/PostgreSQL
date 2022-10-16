--1- test veritabanınızda employee isimli sütun bilgileri 
--id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE DATABASE [test] TABLE [employee] VALUE ( 
	id SERIAL PRIMARY KEY,
	name varchar(50) NOT NULL,
	birthday DATE,
	email varchar(100),
	)


--2-Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--[GÖRSEL]

insert into MOCK_DATA (id, name, birthday, email) values (1, 'Milly', '4/21/1927', 'mcondon0@sbwire.com');
insert into MOCK_DATA (id, name, birthday, email) values (2, 'Gus', '1/29/1948', 'gnussen1@squidoo.com');
insert into MOCK_DATA (id, name, birthday, email) values (3, 'Kalle', '12/20/1933', 'kstickler2@globo.com');
insert into MOCK_DATA (id, name, birthday, email) values (4, 'Carlo', '8/2/2017', 'cjozsef3@hhs.gov');
insert into MOCK_DATA (id, name, birthday, email) values (5, 'Camel', '9/6/1949', 'cmcnirlan4@pinterest.com');
insert into MOCK_DATA (id, name, birthday, email) values (6, 'Megan', null, 'mlydall5@economist.com');
insert into MOCK_DATA (id, name, birthday, email) values (7, 'Tildi', '4/4/1907', 'tcrosgrove6@ted.com');
insert into MOCK_DATA (id, name, birthday, email) values (8, 'Valerye', '1/12/1980', 'veasey7@kickstarter.com');
insert into MOCK_DATA (id, name, birthday, email) values (9, 'Garold', '1/5/1975', 'gbuxcey8@w3.org');
insert into MOCK_DATA (id, name, birthday, email) values (10, 'Rufus', '2/24/1995', 'rserck9@goodreads.com');
insert into MOCK_DATA (id, name, birthday, email) values (11, 'Robina', '3/2/1997', 'rtatersalea@infoseek.co.jp');
insert into MOCK_DATA (id, name, birthday, email) values (12, 'Alix', '4/6/2005', 'aadvanib@wikimedia.org');
insert into MOCK_DATA (id, name, birthday, email) values (13, 'Berget', '8/10/1979', 'bgentiryc@businessinsider.com');
insert into MOCK_DATA (id, name, birthday, email) values (14, 'Darin', '11/25/1985', 'dgonneld@1688.com');
insert into MOCK_DATA (id, name, birthday, email) values (15, 'Annabelle', '7/4/1916', 'ahansemanne@a8.net');
insert into MOCK_DATA (id, name, birthday, email) values (16, 'Myrta', null, 'mtalboyf@google.nl');
insert into MOCK_DATA (id, name, birthday, email) values (17, 'Brandie', '9/3/1949', 'bladymang@blogger.com');
insert into MOCK_DATA (id, name, birthday, email) values (18, 'Albert', '11/7/1991', 'asamwyseh@usda.gov');
insert into MOCK_DATA (id, name, birthday, email) values (19, 'Janina', '8/28/1942', 'jwintringhami@myspace.com');
insert into MOCK_DATA (id, name, birthday, email) values (20, 'Welby', null, 'wcreamj@facebook.com');
insert into MOCK_DATA (id, name, birthday, email) values (21, 'Dun', '7/4/2005', 'dhallk@hostgator.com');
insert into MOCK_DATA (id, name, birthday, email) values (22, 'Myrah', '5/19/1925', 'mwalburnl@cmu.edu');
insert into MOCK_DATA (id, name, birthday, email) values (23, 'Brit', '4/13/2003', 'boharem@rediff.com');
insert into MOCK_DATA (id, name, birthday, email) values (24, 'Heddie', '1/10/2003', 'hbrambilln@ucsd.edu');
insert into MOCK_DATA (id, name, birthday, email) values (25, 'Reggy', '4/13/1976', 'rtruslero@ted.com');
insert into MOCK_DATA (id, name, birthday, email) values (26, 'Delmar', '3/21/1912', 'dblamphinp@last.fm');
insert into MOCK_DATA (id, name, birthday, email) values (27, 'Bertie', '7/26/1966', 'bfassmanq@google.com.br');
insert into MOCK_DATA (id, name, birthday, email) values (28, 'Percy', '7/27/1906', 'pbloser@free.fr');
insert into MOCK_DATA (id, name, birthday, email) values (29, 'Jordana', '9/15/1907', 'jblockeys@t.co');
insert into MOCK_DATA (id, name, birthday, email) values (30, 'Riccardo', '9/5/1903', 'rhelliert@wordpress.com');
insert into MOCK_DATA (id, name, birthday, email) values (31, 'Ange', '3/10/1953', 'abreawoodu@oracle.com');
insert into MOCK_DATA (id, name, birthday, email) values (32, 'Rudiger', '3/10/2002', 'rperingv@dailymotion.com');
insert into MOCK_DATA (id, name, birthday, email) values (33, 'Ossie', '7/19/1937', 'oerangyw@t.co');
insert into MOCK_DATA (id, name, birthday, email) values (34, 'Adelina', '8/21/1949', 'adadamox@omniture.com');
insert into MOCK_DATA (id, name, birthday, email) values (35, 'Helene', '4/19/1908', 'hcopnally@vk.com');
insert into MOCK_DATA (id, name, birthday, email) values (36, 'Joscelin', '6/11/1901', 'jtoweyz@auda.org.au');
insert into MOCK_DATA (id, name, birthday, email) values (37, 'Rudolph', '5/31/1910', 'rkingston10@yandex.ru');
insert into MOCK_DATA (id, name, birthday, email) values (38, 'Danny', '11/17/1989', 'dosbaldeston11@blogs.com');
insert into MOCK_DATA (id, name, birthday, email) values (39, 'Mariska', '8/27/1946', 'mmattson12@guardian.co.uk');
insert into MOCK_DATA (id, name, birthday, email) values (40, 'Britni', '6/16/1914', 'bbolstridge13@naver.com');
insert into MOCK_DATA (id, name, birthday, email) values (41, 'Karel', null, 'kgoldsack14@flavors.me');
insert into MOCK_DATA (id, name, birthday, email) values (42, 'Elnora', '11/26/1955', 'eklimkowski15@51.la');
insert into MOCK_DATA (id, name, birthday, email) values (43, 'Agnese', '11/29/1951', 'agorhardt16@tumblr.com');
insert into MOCK_DATA (id, name, birthday, email) values (44, 'Felipa', null, 'frandals17@hubpages.com');
insert into MOCK_DATA (id, name, birthday, email) values (45, 'Ardyth', null, 'aolehane18@symantec.com');
insert into MOCK_DATA (id, name, birthday, email) values (46, 'Ludwig', null, 'lrogier19@tmall.com');
insert into MOCK_DATA (id, name, birthday, email) values (47, 'Hadlee', null, 'hrandles1a@umn.edu');
insert into MOCK_DATA (id, name, birthday, email) values (48, 'Janos', '2/17/1905', 'jabbes1b@goo.gl');
insert into MOCK_DATA (id, name, birthday, email) values (49, 'Arabelle', '12/14/1941', 'asetter1c@microsoft.com');
insert into MOCK_DATA (id, name, birthday, email) values (50, 'Sephira', '5/20/1977', 'sbromell1d@wunderground.com');

--3-Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE FROM employee
SET  name = 'Abdulkadir GUR',
        birthday = '1998-02-25',
        email = 'kadirgur70@gmail.com'
        WHERE  id BETWEEN 1 AND 5
RETURNING *;

--4-Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.


DELETE FROM employee
        WHERE  id BETWEEN 1 AND 5
RETURNING *;