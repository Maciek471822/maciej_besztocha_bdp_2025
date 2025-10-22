SELECT SUM(p.kwota + COALESCE(pm.kwota,0)) AS suma_wynagrodzen
FROM wynagrodzenie w
JOIN pensja p ON p.id_pensji = w.id_pensji
LEFT JOIN premia pm ON pm.id_premii = w.id_premii;
