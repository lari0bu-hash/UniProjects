-- Llenado de tablas con datos --
INSERT INTO proveedor (rfc, nombre, calle, num, ciudad, cp, pag_web) VALUES
('PROV001', 'Bimbo', 'Revolucion', '10', 'Guadalajara', 45678, 'www.bimbo.com'),
('PROV002', 'Coca Cola', 'Av Ciclones', '20', 'Zapopan', 34567, 'www.cocacola.com'),
('PROV003', 'Barcel', 'Montes de Oca', '30', 'CDMX', 14967, 'www.barcel.com'),
('PROV004', 'Sabritas', 'Rosas de la Pradera', '40', 'Guadalajara', 45678, 'www.sabritas.com'),
('PROV005', 'Bonafont', 'Fuentes de Ortiz', '50', 'Monterrey', 90123, 'www.bonafont.com'),
('PROV006', 'Jumex', 'Valles Verdes', '60', 'CDMX', 14967, 'www.jumex.com'),
('PROV007', 'Tia Rosa', 'Jardines', '70', 'Zapopan', 34567, 'www.tiarosa.com'),
('PROV008', 'Sello Rojo', 'Manantiales', '80', 'Zapopan', 34567, 'www.sellorojo.com'),
('PROV009', 'Moderna', 'Villas de Sevilla', '90', 'Monterrey', 90123, 'www.moderna.com'),
('PROV010', 'Credo', 'Suecia', '100', 'CDMX', 14967, 'www.credo.com');

INSERT INTO telefono (area, numero, proveedor_rfc) VALUES
(33, 1234567, 'PROV001'),
(55, 2345678, 'PROV002'),
(81, 3456789, 'PROV003'),
(44, 4567890, 'PROV004'),
(33, 5678901, 'PROV005'),
(55, 6789012, 'PROV006'),
(81, 7890123, 'PROV007'),
(44, 8901234, 'PROV008'),
(33, 9012345, 'PROV009'),
(55, 1230123, 'PROV010');

DELETE FROM cliente;

INSERT INTO cliente (rfc, nombre, ap, am, calle, num, colonia, ciudad, cp, area_tel, num_tel) VALUES
('CLI001', 'Juan', 'Pérez', 'López', 'Independencia', '123', 'Centro', 'Guadalajara', 45678, 33, 1234567),
('CLI002', 'María', 'Gómez', 'Hernández', 'La Paz', '456', 'Santa Fe', 'Zapopan', 34567, 33, 2345678),
('CLI003', 'Luis', 'Martínez', 'Ramírez', 'Reforma', '789', 'Del Valle', 'CDMX', 14967, 55, 3456789),
('CLI004', 'Ana', 'Fernández', 'García', 'Juárez', '101', 'Oblatos', 'Guadalajara', 45678, 33, 4567890),
('CLI005', 'Carlos', 'López', 'Sánchez', 'Insurgentes', '202', 'Roma', 'Monterrey', 90123, 81, 5678901),
('CLI006', 'Mónica', 'Hernández', 'Pérez', 'Allende', '303', 'Chapultepec', 'CDMX', 14967, 55, 6789012),
('CLI007', 'Pedro', 'Ramírez', 'Luna', 'Madero', '404', 'Providencia', 'Zapopan', 34567, 33, 7890123),
('CLI008', 'Elena', 'Jiménez', 'Cruz', 'Revolución', '505', 'Manantiales', 'Zapopan', 34567, 33, 8901234),
('CLI009', 'Roberto', 'Sánchez', 'Vega', 'Victoria', '606', 'San Nicolás', 'Monterrey', 90123, 81, 9012345),
('CLI010', 'Laura', 'García', 'Mendoza', 'Patria', '707', 'Polanco', 'CDMX', 14967, 55, 1230123);

DELETE FROM categoria;

INSERT INTO categoria (id, nombre, descripcion) VALUES
(1, 'Panadería', 'Productos de panadería y repostería'),
(2, 'Bebidas', 'Refrescos, jugos y aguas embotelladas'),
(3, 'Botanas', 'Snacks y productos similares'),
(4, 'Salsas', 'Salsas y condimentos'),
(5, 'Ingredientes', 'Ingredientes para cocina y repostería');

DELETE FROM producto;

INSERT INTO producto (id, nombre, precio, stock, categoria_id) VALUES
(1, 'Pan Integral', 25.50, 40, 1),    -- Categoría: Panadería
(2, 'CocaCola 600ml', 15.00, 55, 2),  -- Categoría: Bebidas
(3, 'Chips Jalapeño', 16.00, 20, 3), -- Categoría: Botanas
(4, 'Doritos Nachos', 12.50, 40, 3),   -- Categoría: Botanas
(5, 'Agua 1L', 8.00, 300, 2), -- Categoría: Bebidas
(6, 'Jugo de Manzana', 20.00, 80, 2),  -- Categoría: Bebidas
(7, 'Conchas', 50.00, 16, 1), -- Categoría: Panadería
(8, 'Leche Entera 1L', 18.00, 20, 2),   -- Categoría: Salsas
(9, 'Harina de Trigo', 35.00, 90, 5), -- Categoría: Ingredientes
(10, 'Adobera queso Oaxaca', 37.00, 25, 5); -- Categoría: Ingredientes

DELETE FROM compra;

INSERT INTO compra (id, fecha, monto_final, proveedor_rfc) VALUES
(1, '2024-10-01', 5000.00, 'PROV001'), -- Bimbo
(2, '2024-10-02', 8000.50, 'PROV002'), -- Coca Cola
(3, '2024-10-03', 3000.75, 'PROV003'), -- Barcel
(4, '2024-10-04', 4500.25, 'PROV004'), -- Sabritas
(5, '2024-10-05', 2500.00, 'PROV005'), -- Bonafont
(6, '2024-10-06', 6200.00, 'PROV006'), -- Jumex
(7, '2024-10-07', 7100.40, 'PROV007'), -- Tía Rosa
(8, '2024-10-08', 4000.00, 'PROV008'), -- Sello Rojo
(9, '2024-10-09', 3200.60, 'PROV009'), -- Moderna
(10, '2024-10-10', 5200.90, 'PROV010'); -- Credo`monto final`compra

DELETE FROM venta;

INSERT INTO venta (id, fecha, monto_final, cliente_rfc) VALUES
(1, '2024-10-01', 750.50, 'CLI001'), -- Cliente 1
(2, '2024-10-02', 1250.00, 'CLI002'), -- Cliente 2
(3, '2024-10-03', 500.00, 'CLI003'), -- Cliente 3
(4, '2024-10-04', 1000.75, 'CLI004'), -- Cliente 4
(5, '2024-10-05', 870.25, 'CLI005'), -- Cliente 5
(6, '2024-10-06', 2100.00, 'CLI006'), -- Cliente 6
(7, '2024-10-07', 980.50, 'CLI007'), -- Cliente 7
(8, '2024-10-08', 3050.00, 'CLI008'), -- Cliente 8
(9, '2024-10-09', 1500.40, 'CLI009'), -- Cliente 9
(10, '2024-10-10', 670.90, 'CLI010'); -- Cliente 10

DELETE FROM compraXproducto;

INSERT INTO compraXproducto (compra_id, producto_id, monto_total, precio_compra, cant) VALUES
(1, 1, 1000.00, 50.00, 20), -- Relación compra 1 y producto 1
(1, 2, 1500.00, 75.00, 20), -- Relación compra 1 y producto 2
(2, 3, 2000.00, 100.00, 20), -- Relación compra 2 y producto 3
(2, 4, 4000.50, 80.01, 50), -- Relación compra 2 y producto 4
(3, 5, 1500.75, 75.04, 20), -- Relación compra 3 y producto 5
(3, 6, 1500.00, 50.00, 30), -- Relación compra 3 y producto 6
(4, 7, 3000.25, 100.00, 30), -- Relación compra 4 y producto 7
(5, 8, 2500.00, 125.00, 20), -- Relación compra 5 y producto 8
(6, 9, 4200.00, 210.00, 20), -- Relación compra 6 y producto 9
(7, 10, 7100.40, 142.01, 50); -- Relación compra 7 y producto 10

DELETE FROM productoXventa;

INSERT INTO productoXventa (producto_id, venta_id, cant, monto_total) VALUES
(1, 1, 2, 150.00), -- Producto 1 en venta 1
(2, 1, 1, 200.00), -- Producto 2 en venta 1
(3, 2, 3, 600.00), -- Producto 3 en venta 2
(4, 2, 2, 500.00), -- Producto 4 en venta 2
(5, 3, 1, 300.00), -- Producto 5 en venta 3
(6, 3, 2, 200.00), -- Producto 6 en venta 3
(7, 4, 4, 800.00), -- Producto 7 en venta 4
(8, 5, 1, 870.25), -- Producto 8 en venta 5
(9, 6, 10, 2000.00), -- Producto 9 en venta 6
(10, 7, 5, 900.00); -- Producto 10 en venta 7

-- Consultas --
SELECT * FROM proveedor;
SELECT * FROM telefono;
SELECT * FROM categoria;
SELECT * FROM producto;
SELECT * FROM cliente;
SELECT * FROM compra;
SELECT * FROM venta;
SELECT * FROM compraxproducto;
SELECT * FROM productoxventa;
SELECT T.area as AREA,T.numero as NUMERO,P.nombre as PROVEEDOR FROM telefono T JOIN proveedor P on T.proveedor_rfc = P.rfc;
SELECT PP.nombre as NOMBRE, PP.precio as PRECIO, PP.stock as STOCK, C.nombre as CATEGORIA
FROM producto PP JOIN categoria C ON PP.categoria_id = C.id;
SELECT 
    c.id AS FOLIO,
    c.fecha AS FECHA,
    c.monto_final AS TOTAL,
    p.nombre AS PRODUCTO,
    cxp.cant AS CANT,
    cxp.precio_compra AS PRECIO,
    cxp.monto_total AS IMPORTE
FROM 
    compra c
JOIN 
    compraXproducto cxp ON c.id = cxp.compra_id
JOIN 
    producto p ON cxp.producto_id = p.id;
    -- Actualizamos los valores del monto total de la compra -- 
    UPDATE compra c
SET c.monto_final = (
    SELECT SUM(cxp.monto_total)
    FROM compraXproducto cxp
    WHERE cxp.compra_id = c.id
);
UPDATE venta v
SET v.monto_final = (
    SELECT SUM(pxv.monto_total)
    FROM productoXventa pxv
    WHERE pxv.venta_id = v.id
);
SELECT 
    v.id AS FOLIO,
    v.fecha AS FECHA,
    v.monto_final AS TOTAL,
    p.nombre AS PRODUCTO,
    pxv.cant AS CANT,
    p.precio AS PRECIO,
    pxv.monto_total AS IMPORTE
FROM 
    venta v
INNER JOIN 
    productoXventa pxv ON v.id = pxv.venta_id
INNER JOIN 
    producto p ON pxv.producto_id = p.id
ORDER BY 
    v.id, p.id;













