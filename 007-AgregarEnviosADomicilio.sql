insert into Pedido (PedidoNro, Entrega, Vecine, Email, Telefono, DomicilioEnvio, Comuna, Local, Producto, Cantidad, Precio, Importe, Convenio, EnvioNro)
select distinct 0 as PedidoNro, Entrega, Vecine, Email, Telefono, DomicilioEnvio, Comuna, Local, 'ENVÍO A DOMICILIO' as Producto, 1 as Cantidad, 150 as Precio, 150 as Importe, Convenio, EnvioNro from Pedido
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega='20200926' and EnvioNro<>1000
