select Producto, sum(Cantidad) as Cantidad, convert(varchar(10),convert(numeric(17,2),sum(Importe)/sum(Cantidad))) as Precio, sum(Importe) as Importe 
into #Shizen
from Pedido 
where Producto like '%Shizen%' 
and Entrega='20200926'
group by Producto order by Producto
select * from #Shizen
union
select 'TOTALES', sum(Cantidad), '', sum(Importe) from #Shizen
drop table #Shizen
