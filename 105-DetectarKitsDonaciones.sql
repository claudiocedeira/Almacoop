/* DONACIONES P.CHAS */
declare @FechaEntrega datetime;
set @FechaEntrega='20201024'
select Vecine, Cantidad, Producto from Pedido 
where Local='Av. Gral. Benjamín Victorica 2642' and Entrega=@FechaEntrega and Producto like '%kit dona%'
/* TOTAL KITS DONACIONES */
select Local, sum(Importe) as Importe from Pedido 
where Local in ('Av. Gral. Benjamín Victorica 2642', 'Padilla 829', 'Cucha Cucha 2399 (Esquina Seguí)')
and Entrega=@FechaEntrega and Producto like '%kit dona%'
group by Local
union
select 'Total', sum(Importe) as Importe from Pedido 
where Local in ('Av. Gral. Benjamín Victorica 2642', 'Padilla 829', 'Cucha Cucha 2399 (Esquina Seguí)')
and Entrega=@FechaEntrega and Producto like '%kit dona%'
order by Local


