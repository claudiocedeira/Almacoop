declare @FechaEntrega datetime
set @FechaEntrega='20200926'
declare @Proveedor varchar(30)
set @Proveedor='Porteñitos'
select 0 as TipoItem, Producto, sum(Cantidad) as Cantidad, convert(varchar(10),convert(numeric(17,2),sum(Importe)/sum(Cantidad))) as Precio, sum(Importe) as Importe 
into #proveedor
from Pedido 
where Producto like '%'+@Proveedor+'%' 
and Entrega=@FechaEntrega
group by Producto
insert #proveedor select 1, 'TOTALES', sum(Cantidad), '', sum(Importe) from #proveedor
select Producto, Cantidad, Precio, Importe from #Shizen order by TipoItem, Producto
drop table #proveedor
