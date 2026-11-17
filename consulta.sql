-- Por cada carrera: cantidad de estudiantes, promedio general y edad promedio,
-- solo para carreras con más de 2 estudiantes.
SELECT
    carrera,
    COUNT(*)                AS cantidad_estudiantes,
    ROUND(AVG(promedio), 2) AS promedio_general,
    ROUND(AVG(edad), 2)     AS edad_promedio
FROM estudiantes
GROUP BY carrera
HAVING COUNT(*) > 2
ORDER BY cantidad_estudiantes DESC;
