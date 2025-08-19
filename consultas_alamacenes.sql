SELECT * FROM almacenes;
SELECT * FROM cajas WHERE valor > 1500;
SELECT contenido FROM cajas;
SELECT AVG(valor) as ValorMedio FROM cajas;
SELECT almacenes_codigo, AVG(valor) as ValorMedio FROM cajas GROUP BY almacenes_codigo;
SELECT almacenes_codigo, AVG(valor) as ValorMedio FROM cajas GROUP BY almacenes_codigo HAVING ValorMedio>1500;
SELECT C.num_referencia, A.lugar from cajas as C inner join almacenes as A where C.almacenes_codigo = A.codigo;
select A.codigo, count(C.num_referencia) as CantidadCajas from almacenes A inner join cajas C where A.codigo = C.almacenes_codigo group by A.codigo;
select A.codigo,A.capacidad, count(C.num_referencia) as CantidadCajas from almacenes A inner join cajas C where A.codigo = C.almacenes_codigo group by A.codigo HAVING CantidadCajas>A.capacidad;
SELECT C.num_referencia, A.lugar FROM cajas C inner join almacenes A on A.codigo = C.almacenes_codigo WHERE A.lugar = 'Almacen Central';
INSERT INTO almacen.almacenes (codigo, lugar, capacidad) VALUES (5, 'Monterrey', 3);
INSERT INTO almacen.cajas (num_referencia, contenido, valor, almacenes_codigo) VALUES ('H5RT', 'Papel', 200, 2);
SELECT *, (valor*0.85) AS ValorRebajado FROM cajas;
DELETE FROM cajas WHERE valor < 100;




