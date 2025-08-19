-- --------------- EJERCICIO CONSULTAS SIMPLE ------------- -- 

select idfab, idproducto, descripcion, precio, (precio *1.16) as precio_con_IVA from productos;
select numpedido, fab, producto, cant, (importe/cant) as precio_unit, importe from pedidos;
select nombre, datediff(now(), contrato) as dias_trabajando, (2024 - edad) as year_nacimiento from empleados;

-- Ordenar filas-- ---- ----- ----- ----- ----- ----- -----
select * from clientes order by empleados_numemp;
select * from oficinas order by region, ciudad, oficina desc;
select * from pedidos order by fechapedido;


-- Seleccion de filas ----- ---- ---- ---- ---- ---- ---- ---- 
select * from  pedidos order by importe limit 4;
select numpedido, fab, producto, cant, (importe/cant) as precio_unit, importe from pedidos order by precio_unit desc limit 5;
select * from  pedidos order by importe limit 4;
select * from pedidos where MONTH(03);
select * from empleados where oficina is not null;
select * from oficinas  where dir is null;
select * from oficinas where region in ('norte','este') order by region desc;
select * from empleados where nombre like '%Julia%';
select * from productos where idproducto like '%x';




