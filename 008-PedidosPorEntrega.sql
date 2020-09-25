declare @FechaEntrega datetime;
set @FechaEntrega='20200926'
select case when Pedido.DomicilioEnvio <> '' then 'DOMICILIO' else 'LOCAL' end as TipoDespacho, Pedido.EnvioNro, Pedido.Vecine, '2' as TipoReg, 
Convert(varchar(10), Pedido.Cantidad) as Q, '' as DONA, Pedido.Producto, Convert(varchar(10), Pedido.Precio) as 'P.U.', Pedido.Importe as Imp
from Pedido 
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega=@FechaEntrega and Producto<>'ENVÍO A DOMICILIO'
union
select case when Pedido.DomicilioEnvio <> '' then 'DOMICILIO' else 'LOCAL' end as TipoDespacho, Pedido.EnvioNro, Pedido.Vecine, '3' as TipoReg, 
Convert(varchar(10), Pedido.Cantidad) as Q, '' as DONA, Pedido.Producto, Convert(varchar(10), Pedido.Precio) as 'P.U.', Pedido.Importe as Imp
from Pedido 
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega=@FechaEntrega and Producto='ENVÍO A DOMICILIO'
union
select distinct case when Pedido.EnvioNro = 1000 then 'LOCAL' else 'DOMICILIO' end as TipoDespacho, Pedido.EnvioNro, Pedido.Vecine, '1', case when Pedido.EnvioNro = 1000 then Pedido.Vecine + ' - ' + isnull(Vecine.telefono, '') else 'Envío ' + Convert(varchar(10), Pedido.EnvioNro) + ' - ' + Pedido.Vecine + ' - ' + isnull(Vecine.telefono, '') + ' - ' + isnull(Vecine.Domicilio, '') end, '', '', '', (select sum(Importe) from Pedido P where P.EnvioNro=Pedido.EnvioNro and P.Vecine=Pedido.Vecine)
from Pedido 
left outer join Vecine on Vecine.Nombre=Pedido.Vecine
where Local='Av. Gral. Benjamín Victorica 2642'
and Entrega=@FechaEntrega
order by TipoDespacho, EnvioNro, Vecine, TipoReg, Producto

