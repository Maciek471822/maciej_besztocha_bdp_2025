SELECT p.stanowisko,
       AVG(p.kwota) AS sr,
       MIN(p.kwota) AS min,
       MAX(p.kwota) AS max
FROM wynagrodzenie w
JOIN pensja p ON p.id_pensji = w.id_pensji
WHERE p.stanowisko ILIKE 'kierownik'
GROUP BY p.stanowisko;
