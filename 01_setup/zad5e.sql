SELECT *
FROM pracownicy
WHERE nazwisko ILIKE '%n%'
  AND imie ILIKE '%a';
