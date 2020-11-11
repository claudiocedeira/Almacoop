declare @FechaEntrega datetime;
set @FechaEntrega='20201107'
select convert(varchar(3), sum(CantidadFaltante)) + ' ' + Producto from Pedido 
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega=@FechaEntrega and CantidadFaltante<>0
group by Producto
