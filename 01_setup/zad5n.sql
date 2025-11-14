SELECT p.stanowisko,
       SUM(pensja.kwota) AS suma_wynagrodzen
FROM pracownicy p
JOIN pensja ON p.id_pensji = pensja.id_pensji
GROUP BY p.stanowisko;
