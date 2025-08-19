SELECT * from oficinas;
select oficina from oficinas;
select nombre, oficina, contrato from empleados;
select idfab, idproducto, descripcion, precio from productos;
select idfab as fabricante, idproducto, descripcion, precio from productos;
select ciudad, region, (ventas-objetivo) as superavit from oficinas;
select idfab, idproducto, descripcion, (existencias * precio) as valoracicon from productos;
select nombre, month(contrato), year(contrato) from empleados;
select oficina, 'tiene ventas de ', ventas from oficinas;
select nombre, oficina, contrato from empleados order by oficina;
select nombre, oficina, contrato from empleados order by 2;
select nombre, numemp, oficina from empleados order by nombre desc;
select nombre, numemp, contrato from empleados order by contrato;
select nombre, numemp, ventas from empleados order by ventas;
select dir from oficinas;
select all dir from oficinas;
select distinct dir from oficinas;
select numemp, nombre from empleados order by contrato limit 2;
SELECT numemp, nombre FROM empleados ORDER BY contrato LIMIT 3;
select nombre from empleados where oficina = 12;
select nombre from empleados where oficina = 12 and edad > 30;
select numemp, nombre from empleados where ventas > cuota;
select numemp, nombre from empleados where contrato < '1998/01/01';
select numemp, nombre from empleados where year(contrato) < 1988;
select oficina from oficinas where ventas < objetivo * 0.8;
select oficina from  oficinas where dir = 108;
select numemp, nombre from empleados where ventas between 100000 and 500000;
select numemp, nombre from empleados where (ventas >= 100000) and (ventas<=500000);
select numemp, nombre, oficina from empleados where oficina in (12, 14, 16);
SELECT numemp, nombre FROM empleados WHERE (oficina = 12) OR (oficina = 14) OR (oficina = 16);
select numemp, nombre from empleados where nombre like 'luis%';
select numemp, nombre from empleados where nombre like '%luis%';
select numemp, nombre from empleados where nombre like '__a%';
-- ----- Consulta multitabla ------ --
select idfab, idproducto from productos where existencias  = 0 union all select fab, producto from pedidos where year(fechapedido) = 1990 order by idproducto;
select * from pedidos, clientes where pedidos.clie = clientes.numclie;
select * from pedidos inner join clientes on pedidos.clie = clientes.numclie;
select * from pedidos inner join productos on (pedidos.fab = productos.idfab) and (pedidos.producto = productos.idproducto);
SELECT * FROM (pedidos INNER JOIN clientes ON pedidos.clie = clientes.numclie) INNER JOIN empleados ON pedidos.rep = empleados.numemp;
SELECT * FROM (pedidos INNER JOIN clientes ON pedidos.clie = clientes.numclie) INNER JOIN empleados ON pedidos.rep = empleados.numemp;
select empleados.*, ciudad from empleados, oficinas where empleados.oficina = oficinas.oficina;
select empleados.*, ciudad from empleados inner join oficinas on empleados.oficina = oficinas.oficina;
select * from empleados left join oficinas on empleados.oficina = oficinas.oficina;
select * from empleados right join oficinas on empleados.oficina = oficinas.oficina;
SELECT * FROM clientes INNER JOIN (empleados LEFT JOIN oficinas ON empleados.oficina = oficinas.oficina) ON clientes.empleados_numemp = empleados.numemp;
-- ------- Consultas de Resumen --------- --
select sum(ventas) from oficinas;
select count(numemp) from empleados;
select count(*) from empleados;
select count(oficina) from empleados;
select (avg(ventas) * 3) + sum(cuota) from empleados;
select avg(sum(ventas)) from empleados; -- no correcto
select sum(ventas) from empleados where oficina  = 12;
select sum(empleados.ventas), max(objetivo) from empleados left join oficinas on empleados.oficina = oficinas.oficina;
select sum(ventas) from empleados; -- no funciona
select sum(ventas) from empleados group by oficina;
select oficina, sum(ventas) from empleados group by oficina;
select importe/cant, sum(importe) from pedidos group by importe/cant;
select importe/cant as precio, sum(importe) from pedidos group by precio;
select sum(importe), rep*10 from pedidos group by rep*10;
select sum(importe), rep from pedidos group by rep*10; -- incorrcto
select sum(ventas) from oficinas group by region, ciudad;
select oficina, sum(ventas) as ventas_totales from empleados group by oficina;
SELECT oficina FROM empleados GROUP BY oficina HAVING AVG(ventas) > 500000;







