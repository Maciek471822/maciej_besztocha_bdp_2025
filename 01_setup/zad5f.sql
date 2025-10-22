SELECT pr.imie,
       pr.nazwisko,
       GREATEST(SUM(g.liczba_godzin) - 160, 0) AS nadgodziny
FROM pracownicy pr
JOIN godziny g ON g.id_pracownika = pr.id_pracownika
GROUP BY pr.id_pracownika, pr.imie, pr.nazwisko
ORDER BY pr.nazwisko, pr.imie;
