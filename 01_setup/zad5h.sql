SELECT pr.imie, pr.nazwisko, g.liczba_godzin
FROM wynagrodzenie w
JOIN pracownicy pr ON pr.id_pracownika = w.id_pracownika
JOIN godziny g ON g.id_godziny = w.id_godziny
WHERE g.liczba_godzin > 160
  AND w.id_premii IS NULL
ORDER BY g.liczba_godzin DESC;
