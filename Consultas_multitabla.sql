select oficinas.oficina, oficinas.ciudad, empleados.numemp, empleados.nombre 
from oficinas inner join empleados on oficinas.oficina = empleados.oficina
where oficinas.region = 'este';

select oficinas.oficina, oficinas.ciudad, empleados.numemp, empleados.nombre 
from oficinas inner join empleados on oficinas.oficina = empleados.oficina
where oficinas.region = 'este';