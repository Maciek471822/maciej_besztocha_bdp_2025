SELECT p.stanowisko, COUNT(*) AS liczba_pracownikow
FROM wynagrodzenie w
JOIN pensja p ON p.id_pensji = w.id_pensji
GROUP BY p.stanowisko
ORDER BY liczba_pracownikow DESC, p.stanowisko;
