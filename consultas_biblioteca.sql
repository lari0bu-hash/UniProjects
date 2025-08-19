SELECT * FROM autor INNER JOIN escribe ON autor.pasaporte = escribe.autor_pasaporte
INNER JOIN libro ON escribe.libro_ISBN = ;


SELECT * FROM autor INNER JOIN colabora ON autor.pasaporte = colabora.autor_pasaporte 
INNER JOIN autor colaborador ON colabora.autor_pasaporte1 = colaborador.pasaporte;

SELECT socio.nombre, socio.ap, libro.titulo, autor.nombre, autor.ap FROM socio INNER JOIN saca on socio.pasaporte = saca.socio_pasaporte
INNER JOIN ejemplar ON saca.ejemplar_num_ejemplar = ejemplar.num_ejemplar
AND saca.ejemplar_libro_ISBN = ejemplar.libro_ISBN INNER JOIN libro 
ON libro.ISBN = ejemplar.libro_ISBN INNER JOIN escribe ON escribe.libro_ISBN = libro.ISBN
inner JOIN autor ON autor.pasaporte = escribe.autor_pasaporte;
