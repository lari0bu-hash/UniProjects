-- (A) Proveedores por orden alfabeticco--
SELECT * FROM proveedor order by nombre;
-- (B) --
select * FROM proveedor where ciudad = 'Ameca' order by nombre;
-- (C) --
SELECT proveedor_nombre, pieza_nombre from suministra;
-- (D) --
SELECT proveedor_nombre FROM suministra where pieza_nombre = 'Bujia';
-- (E) --
SELECT nombre, categoria_categoria FROM pieza;
-- (F) --
SELECT nombre from pieza where categoria_categoria = 'Electronica';
-- (G) --
SELECT * FROM pieza order by categoria_categoria;

