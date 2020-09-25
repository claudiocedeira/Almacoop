update Pedido set Pedido.Producto=ProductoAbreviatura.DescrAbreviada from Pedido
inner join ProductoAbreviatura on ProductoAbreviatura.DescrAlmacoop=Pedido.Producto
