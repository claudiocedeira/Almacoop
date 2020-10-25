declare @FechaEntrega datetime;
set @FechaEntrega='20201024'
select EnvioNro, Vecine, convert(int, sum((Cantidad-CantidadFaltante)*Precio)) from Pedido
where Local='Av. Gral. Benjamín Victorica 2642'
and Entrega=@FechaEntrega
group by EnvioNro, Vecine
order by EnvioNro, Vecine
