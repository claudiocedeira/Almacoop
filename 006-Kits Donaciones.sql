select Vecine, Cantidad, Producto from Pedido 
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega='20200926' and Producto like '%kit dona%'

select sum(Cantidad) as Cantidad, Producto, sum(Importe) as Importe from Pedido 
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega='20200926' and Producto like '%kit dona%'
group by Producto
