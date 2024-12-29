select *
from sales 
where amount > 2000 and boxes <100 ;

select  p.Salesperson, count(*) as 'count of shipment'
from sales s
join people p on s.spid= p.spid
where SaleDate between '-2022-01-01-' and '2022-01-31'
group by p.Salesperson;

select pr. Product, sum(boxes)
from products pr
join sales s on s.pid= pr.pid
where pr.product in ('Milk Bars', 'Eclairs')
group by pr.product;

select pr. Product, sum(boxes), s.SaleDate
from products pr
join sales s on s.pid= pr.pid
where pr.product in ('Milk Bars', 'Eclairs') 
and s.SaleDate between '2022-01-01' and '2022-01-07'
group by pr.product, s.saledate;

select *
from sales s
where Customers >100 and boxes >100;

select saledate,
case when dayname(saledate)=2 then 'wesnesday shipment'
else  'no wesnesday shipment' end  'W shipment'
from sales
where customers >100 and boxes > 100;

select distinct p.salesperson
from people p
join sales s on s.spid =p.spid
where saledate between'2022-01-01' and '2022-01-07';

select  p.salesperson
from people p
where p.spid not in (select distinct p.salesperson
from people p
join sales s on s.spid =p.spid
where saledate between'2022-01-01' and '2022-01-07');



