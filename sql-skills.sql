insert into artist (name)
values
	('Jon B'), ('Herbie Hancock'), ('Pat Metheny');

select name from artist
where name in('AC/DC', 'Black Sabbath', 'Metallica', 'Pearl Jam', 'Simply Red')
order by name;
------------------
select first_name, last_name from employee
where city ilike 'Calgary';

select first_name, last_name from employee
where reports_to = 2;

select count(city) from employee
where city ilike 'Lethbridge';
-----------------
select count(billing_country) from invoice
where billing_country ilike 'usa';

select max(total) from invoice;
select min(total) from invoice;

select * from invoice
where total > 5;

select count(total) from invoice
where total < 5;

select sum(total) from invoice;

-----------------

select * from invoice i join invoice_line l
on i.invoice_id = l.invoice_id
where l.unit_price > 0.99;

select i.invoice_date, c.first_name, c.last_name, i.total from invoice i join customer c
on i.customer_id = c.customer_id;

select c.first_name, c.last_name, e.first_name "Rep. First Name", e.last_name from customer c join employee e
on c.support_rep_id = e.employee_id;

select al.title, ar.name from album al join artist ar
on al.artist_id = ar.artist_id;