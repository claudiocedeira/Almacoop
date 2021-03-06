declare @FechaEntrega datetime;
set @FechaEntrega='20201107'
select distinct case when Pedido.DomicilioEnvio <> '' then 'DOMICILIO' else 'LOCAL' end as TipoDespacho, case when Pedido.DomicilioEnvio <> '' then '' else '1000' end as Envio,  Pedido.Vecine, case when Pedido.DomicilioEnvio <> '' then isnull(Vecine.Domicilio, '') else '' end as Domicilio
from Pedido 
left outer join Vecine on Vecine.Nombre=Pedido.Vecine
where Local='Av. Gral. Benjamín Victorica 2642'
and Entrega=@FechaEntrega
order by TipoDespacho, Vecine
