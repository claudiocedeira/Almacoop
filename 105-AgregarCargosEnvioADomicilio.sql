declare @FechaEntrega datetime;
set @FechaEntrega='20201107'
insert into Pedido (PedidoNro, Entrega, Vecine, Email, Telefono, DomicilioEnvio, Comuna, Local, Producto, Cantidad, Precio, Importe, Convenio, EnvioNro, CantidadFaltante)
select distinct 0 as PedidoNro, Entrega, Vecine, Email, Telefono, DomicilioEnvio, Comuna, Local, 'ENVÍO A DOMICILIO' as Producto, 1 as Cantidad, 150 as Precio, 150 as Importe, Convenio, EnvioNro, 0 from Pedido
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega=@FechaEntrega and EnvioNro<>1000
and Vecine not in ('Romero, Mariana', 'Trozzoli, Hugo')
