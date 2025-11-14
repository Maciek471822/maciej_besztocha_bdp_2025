DELETE FROM pracownicy p
USING pensja ps
WHERE p.id_pensji = ps.id_pensji
  AND ps.kwota < 1200;
