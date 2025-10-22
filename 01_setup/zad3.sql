CREATE TABLE ksiegowosc.godziny( id_godziny INT PRIMARY KEY, data DATE, liczba_godzin INT, id_pracownika INT REFERENCES ksiegowosc.pracownicy);
CREATE TABLE ksiegowosc.pensja( id_pensji INT PRIMARY KEY, stanowisko VARCHAR(255), kwota INT);
CREATE TABLE ksiegowosc.premia( id_premii INT PRIMARY KEY, rodzaj VARCHAR(255), kwota INT );
CREATE TABLE ksiegowosc.wynagrodzenie( id_wynagrodzenia INT PRIMARY KEY, data DATE ,id_pracownika INT REFERENCES ksiegowosc.pracownicy, id_godziny INT REFERENCES ksiegowosc.godziny, id_pensji INT REFERENCES ksiegowosc.pensja, id_premii INT REFERENCES ksiegowosc.premia );

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Dane pracowników';
COMMENT ON TABLE ksiegowosc.godziny IS 'Godziny pracy';
COMMENT ON TABLE ksiegowosc.premia IS 'Przyznana premie';
COMMENT ON TABLE ksiegowosc.wynagrodzenia IS 'Podsumowanie wynagrodzenia';
