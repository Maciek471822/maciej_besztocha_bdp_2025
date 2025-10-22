SELECT pr.imie, pr.nazwisko, p.kwota AS pensja
FROM wynagrodzenie w
JOIN pracownicy pr ON pr.id_pracownika = w.id_pracownika
JOIN pensja p ON p.id_pensji = w.id_pensji
ORDER BY p.kwota ASC, pr.nazwisko, pr.imie;
