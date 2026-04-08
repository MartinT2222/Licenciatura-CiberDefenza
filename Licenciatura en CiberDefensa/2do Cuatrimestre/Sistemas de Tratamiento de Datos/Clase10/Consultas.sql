-- ============================================
-- TRABAJO PRÁCTICO 2 - CONSULTAS SQL EXPLICADAS
-- ============================================

-- Ejercicio 1: País con más tanques en 2025
-- Buscamos el país con mayor cantidad de tanques ese año.
SELECT c.name AS country, mv.value AS tanks
FROM metric_values mv
JOIN metrics m ON mv.metric_id = m.metric_id
JOIN countries c ON mv.country_id = c.country_id
WHERE m.code = 'land_tanks' AND mv.year = 2025
ORDER BY mv.value DESC
LIMIT 1;

-- Ejercicio 2: País con más aeronaves totales en 2025
-- Similar al anterior, pero usando la métrica de aeronaves.
SELECT c.name AS country, mv.value AS total_aircraft
FROM metric_values mv
JOIN metrics m ON mv.metric_id = m.metric_id
JOIN countries c ON mv.country_id = c.country_id
WHERE m.code = 'air_total_aircraft' AND mv.year = 2025
ORDER BY mv.value DESC
LIMIT 1;

-- Ejercicio 3: Porcentaje de cazas sobre aeronaves totales
-- Calculamos el porcentaje de cazas respecto al total de aeronaves.
SELECT c.name AS country,
       ROUND((f.value / a.value) * 100, 2) AS porcentaje_fighters
FROM metric_values f
JOIN metric_values a ON f.country_id = a.country_id AND f.year = a.year
JOIN metrics mf ON f.metric_id = mf.metric_id
JOIN metrics ma ON a.metric_id = ma.metric_id
JOIN countries c ON f.country_id = c.country_id
WHERE f.year = 2025 AND mf.code = 'air_fighters' AND ma.code = 'air_total_aircraft'
ORDER BY porcentaje_fighters DESC
LIMIT 1;

-- Ejercicio 4: Crecimiento en tanques de 2024 a 2025
-- Restamos los tanques de 2024 a los de 2025 para ver el crecimiento.
SELECT c.name AS country,
       (mv2025.value - mv2024.value) AS crecimiento_tanques
FROM metric_values mv2025
JOIN metric_values mv2024 ON mv2025.country_id = mv2024.country_id
JOIN metrics m ON mv2025.metric_id = m.metric_id
JOIN countries c ON mv2025.country_id = c.country_id
WHERE mv2025.year = 2025 AND mv2024.year = 2024 AND m.code = 'land_tanks'
ORDER BY crecimiento_tanques DESC
LIMIT 1;

-- Ejercicio 5: Top 5 países con más personal activo en 2025
-- Ordenamos por cantidad de personal activo y mostramos los 5 primeros.
SELECT c.name AS country, mv.value AS personal_activo
FROM metric_values mv
JOIN metrics m ON mv.metric_id = m.metric_id
JOIN countries c ON mv.country_id = c.country_id
WHERE m.code = 'man_active' AND mv.year = 2025
ORDER BY mv.value DESC
LIMIT 10;

-- Ejercicio 6: Personal activo per cápita en 2025
-- Calculamos cuántos activos hay por millón de habitantes.
SELECT c.name AS country,
       ROUND((act.value / pop.value) * 1000000, 2) AS activo_por_millon
FROM metric_values act
JOIN metric_values pop ON act.country_id = pop.country_id AND act.year = pop.year
JOIN metrics m1 ON act.metric_id = m1.metric_id
JOIN metrics m2 ON pop.metric_id = m2.metric_id
JOIN countries c ON act.country_id = c.country_id
WHERE act.year = 2025 AND m1.code = 'man_active' AND m2.code = 'pop_total'
ORDER BY activo_por_millon DESC
LIMIT 1;

-- Ejercicio 7: Países con más cazas que el promedio global
-- Comparamos cada país con el promedio mundial de cazas.
SELECT c.name AS country, mv.value AS air_fighters
FROM metric_values mv
JOIN metrics m ON mv.metric_id = m.metric_id
JOIN countries c ON mv.country_id = c.country_id
WHERE m.code = 'air_fighters' AND mv.year = 2025
  AND mv.value > (
    SELECT AVG(value)
    FROM metric_values
    WHERE year = 2025 AND metric_id = m.metric_id
  );

-- Ejercicio 8: Diferencia entre cazas de Brasil y el promedio global
-- Calculamos cuántos cazas tiene Brasil por encima o debajo del promedio.
SELECT 
  (SELECT value FROM metric_values mv
   JOIN metrics m ON mv.metric_id = m.metric_id
   JOIN countries c ON mv.country_id = c.country_id
   WHERE m.code = 'air_fighters' AND mv.year = 2025 AND c.name = 'Brazil') 
  - 
  (SELECT AVG(value) FROM metric_values mv
   JOIN metrics m ON mv.metric_id = m.metric_id
   WHERE m.code = 'air_fighters' AND mv.year = 2025) 
  AS diferencia_cazas;

-- Ejercicio 9: Países con personal activo superior al promedio
-- Filtramos los países que tienen más personal activo que el promedio mundial.
SELECT c.name AS country, mv.value AS man_active
FROM metric_values mv
JOIN metrics m ON mv.metric_id = m.metric_id
JOIN countries c ON mv.country_id = c.country_id
WHERE m.code = 'man_active' AND mv.year = 2025
  AND mv.value > (
    SELECT AVG(value)
    FROM metric_values
    WHERE year = 2025 AND metric_id = m.metric_id
  );

-- Ejercicio 10: Países de América sin datos de defensa en 2025
-- Buscamos países de la región "Americas" que no tengan datos de presupuesto de defensa.
SELECT c.name AS country
FROM countries c
LEFT JOIN metric_values mv 
  ON c.country_id = mv.country_id 
  AND mv.year = 2025
LEFT JOIN metrics m 
  ON mv.metric_id = m.metric_id 
  AND m.code = 'fin_defense_budget_usd'
WHERE c.region = 'Americas'
  AND mv.value IS NULL;






--consultas de datos



-- ME trae todos las tablas(campos) de la base de datos
SHOW TABLES;

-- ME describe la tabla countries
DESCRIBE countries;

-- ME selecciona todo de la tabla countries
SELECT countries.name AS country_name
FROM country_name;





-- Consultas del Parcial 
SELECT 
    c.name AS country,
    mv.value AS air_fighters_2025
FROM metric_values mv
JOIN metrics m 
    ON m.metric_id = mv.metric_id
JOIN countries c 
    ON c.country_id = mv.country_id
WHERE m.code = 'air_fighters'
  AND mv.year = 2025
  AND mv.value > (
        SELECT AVG(mv2.value)
        FROM metric_values mv2
        JOIN metrics m2 
            ON m2.metric_id = mv2.metric_id
        WHERE m2.code = 'air_fighters'
          AND mv2.year = 2025
    )
ORDER BY mv.value DESC;


SELECT 
    c.name AS country,
    mv2025.value - mv2024.value AS aumento_reservas
FROM countries c
JOIN metric_values mv2024 
    ON c.country_id = mv2024.country_id
JOIN metrics m24 
    ON mv2024.metric_id = m24.metric_id
JOIN metric_values mv2025 
    ON c.country_id = mv2025.country_id
JOIN metrics m25 
    ON mv2025.metric_id = m25.metric_id
WHERE 
    m24.code = 'fin_forex_gold_usd'
    AND mv2024.year = 2024
    AND m25.code = 'fin_forex_gold_usd'
    AND mv2025.year = 2025
ORDER BY aumento_reservas DESC;
