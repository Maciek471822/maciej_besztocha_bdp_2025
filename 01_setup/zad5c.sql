SELECT DISTINCT w.id_pracownika
FROM wynagrodzenie w
JOIN pensja p ON p.id_pensji = w.id_pensji
WHERE w.id_premii IS NULL
  AND p.kwota > 2000;
