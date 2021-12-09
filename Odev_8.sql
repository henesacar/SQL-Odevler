-- 1) test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

create table employee
(id serial primary key,
name varchar(50) not null,
birthday DATE, 
email varchar(100)
);

-- 3) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

update employee
set 
name = 'Homer',
email = 'homer@simpsons.com'
where name='Jodi';

update employee
set 
name = 'Reaper',
email = 'eveyrywhere@lastbreath.com'
where id=50;

update employee
set 
name = 'Joe Everyman',
email = 'eveyrybody@humanity.com'
where id between 40 and 45;

-- 4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

delete from  employee
where id < 6

delete from  employee
where email = null;

delete from  employee
where birthday <= '19800101';

