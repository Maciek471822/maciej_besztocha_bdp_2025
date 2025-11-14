SELECT p.stanowisko,
       COUNT(w.id_premii) AS liczba_premii
FROM pracownicy p
JOIN wynagrodzenia w ON p.id_pracownika = w.id_pracownika
WHERE w.id_premii IS NOT NULL
GROUP BY p.stanowisko;
