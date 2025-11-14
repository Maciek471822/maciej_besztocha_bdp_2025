CREATE EXTENSION IF NOT EXISTS postgis;

DROP TABLE IF EXISTS poi;
DROP TABLE IF EXISTS roads;
DROP TABLE IF EXISTS buildings;

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    nazwa TEXT,
    geom GEOMETRY(Point)
);

CREATE TABLE roads (
    id   SERIAL PRIMARY KEY,
    nazwa TEXT,
    geom GEOMETRY(LineString)
);

CREATE TABLE buildings (
    id   SERIAL PRIMARY KEY,
    nazwa TEXT,
    geom GEOMETRY(Polygon)
);

INSERT INTO poi(nazwa, geom)
VALUES ('G', ST_Point(1,3.5) );

INSERT INTO poi(nazwa, geom)
VALUES ('H', ST_Point(5.5,1.5));

INSERT INTO poi(nazwa, geom)
VALUES ('I', ST_Point(9.5,6));

INSERT INTO poi(nazwa, geom)
VALUES ('J', ST_Point(6.5,6));

INSERT INTO poi(nazwa, geom)
VALUES ('K', ST_Point(6,9.5));


INSERT INTO poi(nazwa, geom)
VALUES ('K', ST_Point(6,9.5));
--SELECT id, nazwa, ST_ASTEXT(geom), geom  FROM poi

INSERT INTO roads(nazwa, geom)
VALUES ('RoadX', ST_GeomFromText('LINESTRING(0 4.5, 12 4.5)'));

INSERT INTO roads(nazwa, geom)
VALUES ('RoadY', ST_GeomFromText('LINESTRING(7.5 0, 7.5 10.5)'));


INSERT INTO buildings (nazwa, geom)
VALUES 
('BuildingA', ST_GeomFromText('POLYGON((8 4, 8 1.5, 10.5 1.5, 10.5 4, 8 4))')),
('BuildingB', ST_GeomFromText('POLYGON((4 7, 4 5, 6 5, 6 7, 4 7))')),
('BuildingC', ST_GeomFromText('POLYGON((3 8, 3 6, 5 6, 5 8, 3 8))')),
('BuildingD', ST_GeomFromText('POLYGON((9 9, 9 8, 10 8, 10 9, 9 9))')),
('BuildingF', ST_GeomFromText('POLYGON((1 2, 1 1, 2 1, 2 2, 1 2))'));


--SELECT id, nazwa, ST_ASTEXT(geom), geom  FROM buildings
--UNION ALL
--SELECT id, nazwa, ST_ASTEXT(geom), geom  FROM roads
--UNION ALL
--SELECT id, nazwa, ST_ASTEXT(geom), geom  FROM poi

--a)
--SELECT SUM(ST_Length(geom)) AS total_road_length FROM roads

--b)
--SELECT 
--	nazwa,
--    ST_AsText(geom)   AS wkt_geometria,
--    ST_Area(geom)     AS pole_powierzchni,
--    ST_Perimeter(geom) AS obwod
--FROM buildings WHERE nazwa = 'BuildingA';

--c)
--SELECT nazwa, ST_Area(geom) AS pole_powierzchni FROM buildings ORDER BY nazwa;


--d)
--SELECT nazwa, ST_Perimeter(geom) AS obwod FROM buildings ORDER BY ST_Area(geom) DESC LIMIT 2;



--e)
--SELECT ST_Distance(b.geom, p.geom) AS min_distance FROM buildings b, poi p WHERE b.nazwa = 'BuildingC' AND p.nazwa='K' LIMIT 1

--f)
--SELECT ST_Area( ST_Difference(c.geom, ST_Buffer(b.geom, 0.5) )) AS pole_czesci FROM buildings c, buildings b WHERE c.nazwa = 'BuildingC' AND b.nazwa = 'BuildingB';


--g)
--SELECT b.nazwa FROM buildings b, roads r
--WHERE r.nazwa = 'RoadX' AND ST_Y(ST_Centroid(b.geom)) > ST_YMin(r.geom);

--h)


SELECT 
    ST_Area(
        ST_SymDifference(b.geom, ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))'))
    ) AS pole_roznicy_symetrycznej FROM buildings b WHERE b.nazwa = 'BuildingC';









