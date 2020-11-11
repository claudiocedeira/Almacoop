declare @FechaEntrega datetime
set @FechaEntrega='20201107'
select Local, sum(Importe) as 'Total($)' from Pedido where Entrega=@FechaEntrega group by Local order by sum(Importe) desc
