-- Insertar registros en la tabla `editorial`
INSERT INTO `editorial` (`CIF`, `nombre`, `pais`, `col`, `calle`, `num`, `postal`)
VALUES
('E001', 'Editorial Alfa', 'España', 'Centro', 'Gran Via', '23', 28013),
('E002', 'Editorial Beta', 'México', 'Centro', 'Reforma', '100', 06030),
('E003', 'Editorial Gama', 'Argentina', 'Recoleta', 'Callao', '250', 1023),
('E004', 'Editorial Delta', 'España', 'Salamanca', 'Serrano', '89', 28006),
('E005', 'Editorial Omega', 'Colombia', 'Chapinero', '7ma', '12', 110231),
('E006', 'Editorial Epsilon', 'Chile', 'Providencia', 'Las Condes', '102', 7500000),
('E007', 'Editorial Zeta', 'Perú', 'Miraflores', 'Larco', '60', 15074),
('E008', 'Editorial Lambda', 'Uruguay', 'Punta Carretas', 'Ellauri', '200', 11300),
('E009', 'Editorial Kappa', 'Bolivia', 'La Paz', 'Montes', '321', 5900);

-- Insertar registros en la tabla `libro`
INSERT INTO `libro` (`ISBN`, `titulo`, `num_paginas`, `tema`, `fecha_publica`, `editorial_CIF`)
VALUES
('9781234567897', 'Aprende SQL', 300, 'Educación', '2020-05-12', 'E001'),
('9789876543210', 'Guía de MySQL', 250, 'Educación', '2019-03-22', 'E002'),
('9780123456789', 'Bases de datos avanzadas', 500, 'Tecnología', '2021-07-15', 'E003'),
('9783214569870', 'Python para principiantes', 150, 'Educación', '2018-11-30', 'E004'),
('9784567891234', 'JavaScript Moderno', 450, 'Tecnología', '2022-04-01', 'E005'),
('9786541237890', 'Machine Learning con Python', 550, 'Tecnología', '2020-10-10', 'E006'),
('9787894561230', 'Algoritmos y estructuras', 320, 'Ciencia', '2021-01-20', 'E007'),
('9783217896541', 'Desarrollo Web Avanzado', 275, 'Tecnología', '2020-09-25', 'E008'),
('9789873216548', 'Inteligencia Artificial', 400, 'Tecnología', '2021-06-18', 'E009');

-- Insertar registros en la tabla `autor`
INSERT INTO `autor` (`pasaporte`, `nombre`, `ap`, `col`, `calle`, `num`, `postal`, `pais`, `fecha_nacimiento`)
VALUES
('A001', 'Juan', 'Perez', 'Centro', 'Sol', '1', 28013, 'España', '1980-04-20'),
('A002', 'Ana', 'Martinez', 'Condesa', 'Amsterdam', '300', 06170, 'México', '1985-10-10'),
('A003', 'Luis', 'Fernandez', 'Belgrano', 'Juramento', '50', 1428, 'Argentina', '1975-12-05'),
('A004', 'Carla', 'Rodriguez', 'Las Condes', 'Rosario Norte', '80', 7500000, 'Chile', '1990-03-15'),
('A005', 'Miguel', 'Lopez', 'Miraflores', 'Av Larco', '45', 15074, 'Perú', '1983-09-28'),
('A006', 'Sofia', 'Jimenez', 'Recoleta', 'Callao', '150', 1023, 'Argentina', '1992-07-18'),
('A007', 'Carlos', 'Dominguez', 'Salamanca', 'Velazquez', '100', 28006, 'España', '1988-11-05'),
('A008', 'Lucia', 'Santos', 'Chapinero', '7ma', '200', 110231, 'Colombia', '1991-05-22'),
('A009', 'Roberto', 'Gomez', 'Punta Carretas', '21 de Setiembre', '300', 11300, 'Uruguay', '1985-02-14');

-- Insertar registros en la tabla `socio`
INSERT INTO `socio` (`pasaporte`, `num_socio`, `nombre`, `ap`, `col`, `calle`, `num`, `postal`, `fecha_nacimiento`)
VALUES
('S001', 'S123', 'Carlos', 'Ramirez', 'Norte', 'Primavera', '45', 7000, '1990-06-15'),
('S002', 'S456', 'Laura', 'Gonzalez', 'Sur', 'Otoño', '78', 8000, '1992-08-25'),
('S003', 'S789', 'Mariana', 'Lopez', 'Centro', 'Verano', '22', 9000, '1988-03-10'),
('S004', 'S321', 'Ricardo', 'Sanchez', 'Este', 'Invierno', '101', 10000, '1989-12-12'),
('S005', 'S654', 'Elena', 'Morales', 'Norte', 'Otoño', '56', 7500, '1994-09-09'),
('S006', 'S987', 'Gabriel', 'Cruz', 'Sur', 'Verano', '99', 8500, '1985-04-22'),
('S007', 'S147', 'Lucia', 'Reyes', 'Centro', 'Primavera', '15', 6800, '1991-11-19'),
('S008', 'S258', 'Fernando', 'Garcia', 'Este', 'Otoño', '250', 7200, '1990-02-05'),
('S009', 'S369', 'Julieta', 'Alvarez', 'Oeste', 'Verano', '78', 8800, '1986-06-30');

-- Insertar registros en la tabla `escribe`
INSERT INTO `escribe` (`libro_ISBN`, `autor_pasaporte`, `fecha_escritura`)
VALUES
('9781234567897', 'A001', '2020-01-01'),
('9789876543210', 'A002', '2019-01-01'),
('9780123456789', 'A003', '2021-01-01'),
('9783214569870', 'A004', '2018-06-15'),
('9784567891234', 'A005', '2022-03-10'),
('9786541237890', 'A006', '2020-08-22'),
('9787894561230', 'A007', '2021-02-17'),
('9783217896541', 'A008', '2020-07-11'),
('9789873216548', 'A009', '2021-04-08');

-- Insertar registros en la tabla `colabora`
INSERT INTO `colabora` (`autor_pasaporte`, `autor_pasaporte1`, `año_primera_colaboracion`)
VALUES
('A001', 'A002', '2021-05-01'),
('A002', 'A003', '2022-07-01'),
('A003', 'A004', '2020-08-01'),
('A004', 'A005', '2019-09-01'),
('A005', 'A006', '2020-06-01'),
('A006', 'A007', '2021-03-01'),
('A007', 'A008', '2022-01-01'),
('A008', 'A009', '2021-10-01'),
('A009', 'A001', '2022-12-01');

-- Insertar registros en la tabla `ejemplar`
INSERT INTO `ejemplar` (`num_ejemplar`, `fecha_compra`, `precio`, `libro_ISBN`)
VALUES
('EJ001', '2022-01-10', 45.00, '9781234567897'),
('EJ002', '2023-02-20', 55.00, '9789876543210'),
('EJ003', '2023-03-15', 60.00, '9780123456789'),
('EJ004', '2021-04-12', 35.00, '9783214569870'),
('EJ005', '2022-05-30', 40.00, '9784567891234'),
('EJ006', '2020-09-25', 50.00, '9786541237890'),
('EJ007', '2021-11-08', 65.00, '9787894561230'),
('EJ008', '2020-06-10', 70.00, '9783217896541'),
('EJ009', '2023-07-20', 55.00, '9789873216548');

-- Insertar registros en la tabla `saca`
INSERT INTO `saca` (`ejemplar_num_ejemplar`, `ejemplar_libro_ISBN`, `socio_pasaporte`, `fecha_entrega`)
VALUES
('EJ001', '9781234567897', 'S001', '2023-03-25'),
('EJ002', '9789876543210', 'S002', '2023-04-10'),
('EJ003', '9780123456789', 'S003', '2023-05-15'),
('EJ004', '9783214569870', 'S004', '2022-06-20'),
('EJ005', '9784567891234', 'S005', '2023-07-05'),
('EJ006', '9786541237890', 'S006', '2021-08-12'),
('EJ007', '9787894561230', 'S007', '2022-09-30'),
('EJ008', '9783217896541', 'S008', '2021-10-22'),
('EJ009', '9789873216548', 'S009', '2023-11-03');
