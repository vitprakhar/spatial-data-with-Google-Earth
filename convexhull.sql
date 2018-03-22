CREATE TABLE USCLOC
(NAME VARCHAR(15), LOCATION geometry);

INSERT INTO USCLOC(NAME,LOCATION) VALUES
('Nupac',ST_GeomFromText('POINT(-118.282684 34.031846)')),
('Exposition-Vermont',ST_GeomFromText('POINT(-118.293387 34.0180606)')),
('Vermont-Jefferson',ST_GeomFromText('POINT(-118.294050 34.025635)')),
('Jefferson-Figueroa',ST_GeomFromText('POINT(-118.282522 34.022263)')),
('Figueroa- Exposition',ST_GeomFromText('POINT(-118.283894 34.0191765)')),
('Marshall',ST_GeomFromText('POINT(-118.285678 34.018979)')),
('Viterbi',ST_GeomFromText('POINT(-118.288811 34.020740)')),
('KingHall',ST_GeomFromText('POINT(-118.288210 34.024350)')),
('Leavey',ST_GeomFromText('POINT(-118.282780 34.021782)'));
SELECT ST_AsText(ST_ConvexHull(ST_Collect(location))) FROM USCLOC;