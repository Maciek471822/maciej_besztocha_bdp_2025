SELECT DISTINCT w.id_pracownika
FROM wynagrodzenie w
JOIN pensja p ON p.id_pensji = w.id_pensji
WHERE p.kwota > 1000;
