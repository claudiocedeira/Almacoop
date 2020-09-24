select distinct Vecine 
from Pedido 
where Local='Av. Gral. Benjamín Victorica 2642'
and Vecine not in (select Nombre from Vecine)
