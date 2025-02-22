SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes;
SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes;
SELECT nombre, apellido, edad FROM usuarios_lenguajes WHERE edad > 30;
SELECT nombre, apellido FROM usuarios_lenguajes WHERE lenguaje = "JavaScript";
SELECT nombre, apellido, edad FROM usuarios_lenguajes WHERE edad = 28;
SELECT nombre, apellido, email FROM usuarios_lenguajes WHERE email = "juan.gomez@example.com";
SELECT nombre, apellido FROM usuarios_lenguajes WHERE lenguaje = "Java" AND edad < 25;
SELECT COUNT(DISTINCT edad) AS total_edades FROM usuarios_lenguajes WHERE lenguaje = 'Java';
SELECT nombre, apellido, edad FROM usuarios_lenguajes WHERE lenguaje IS NULL;
SELECT nombre, apellido, edad FROM usuarios_lenguajes ORDER BY edad ASC LIMIT 1;
SELECT nombre, apellido, edad FROM usuarios_lenguajes ORDER BY edad DESC;
SELECT COUNT(edad) AS mayores_28 FROM usuarios_lenguajes WHERE edad > 28;
SELECT apellido FROM usuarios_lenguajes WHERE apellido LIKE "%a";
SELECT lenguaje, COUNT(*) AS popular FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY popular DESC LIMIT 1;
SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = "TypeScript";
SELECT COUNT(*) AS usuarios_phyton FROM usuarios_lenguajes WHERE lenguaje = "Python";
SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY nombre ASC;
SELECT nombre, apellido, email FROM usuarios_lenguajes WHERE email LIKE "%example%";
SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad BETWEEN 25 AND 35;
SELECT nombre, apellido, edad, lenguaje FROM usuarios_lenguajes WHERE lenguaje = "CSS" AND edad < 30;
SELECT nombre, apellido lenguaje, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY nombre, apellido;
SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;
SELECT CONCAT(nombre, " ", apellido) AS nombre_completo FROM usuarios_lenguajes;
SELECT COUNT(DISTINCT lenguaje) AS lenguaje_25 FROM usuarios_lenguajes WHERE edad > 25;
SELECT nombre, apellido, edad FROM usuarios_lenguajes WHERE edad IN (SELECT edad FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1) ORDER BY edad ASC;
SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE edad < 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;
SELECT nombre, apellido, lenguaje, email FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;
SELECT COUNT(*) AS apellido_G FROM usuarios_lenguajes WHERE apellido LIKE "G%";
SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE lenguaje LIKE "J%" ORDER BY LENGTH(lenguaje) ASC LIMIT 1;
SELECT nombre, apellido, edad, lenguaje FROM usuarios_lenguajes WHERE edad > 30 ORDER BY LENGTH(lenguaje) ASC LIMIT 1;
SELECT nombre, apellido lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje ASC;
SELECT COUNT(DISTINCT nombre) AS leng_20_25 FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL and edad BETWEEN 25 and 30;
SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE lenguaje != "SQL";
SELECT lenguaje, edad FROM usuarios_lenguajes WHERE edad > 30 ORDER BY LENGTH(lenguaje) DESC;
SELECT nombre, apellido, edad, (edad - (SELECT AVG(edad) FROM usuarios_lenguajes)) AS diferencia_edad_promedio FROM usuarios_lenguajes;
SELECT COUNT(nombre) AS cuantos_script FROM usuarios_lenguajes WHERE lenguaje LIKE "%Script%";
SELECT nombre, apellido, LENGTH(nombre) AS largo_nombre FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;
SELECT SUM(edad) AS suma_edad_total FROM usuarios_lenguajes;
SELECT COUNT(*) AS cuantos_28 FROM usuarios_lenguajes WHERE lenguaje LIKE "P%" AND edad < 28;