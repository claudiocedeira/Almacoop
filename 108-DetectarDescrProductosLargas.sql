/* DETECTAR PRODUCTOS CON DESCRIPCIONES LARGAS */
select distinct Producto, len(Producto) from Pedido where len(Producto)>70
/* GENERAR INSERTS DE ABREVIATURAS */
select distinct 'insert ProductoAbreviatura values (''' + Producto + ''', ''' + Producto + ''')' from Pedido where len(Producto)>70