/* APLICAR ABREVIATURAS */
update Pedido set Pedido.Producto=ProductoAbreviatura.DescrAbreviada from Pedido
inner join ProductoAbreviatura on ProductoAbreviatura.DescrAlmacoop=Pedido.Producto

/* DETECTAR PRODUCTOS CON DESCRIPCIONES LARGAS */
select distinct Producto, len(Producto) from Pedido where len(Producto)>70

/* - AGREGAR PRODUCTOS CON DESCRIPCIONES LARGAS, A EXCEL DE ABREVIATURAS
   - ACTUALIZAR TABLA DE ABREVIATURAS
   - VOLVER A "APLICAR ABREVIATURAS" */
