CREATE KEYSPACE IF NOT EXISTS meteo
WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor': 3 };

USE meteo;

CREATE TABLE IF NOT EXISTS donnees (
    id_station text PRIMARY KEY,
    latitude float,
    longitude float,
    horodatage timestamp,
    temperature float,
    humidite float
);

INSERT INTO donnees
            (id_station, latitude, longitude, horodatage, temperature, humidite)
        VALUES ('Telecom Saint-Etienne', 45.452364, 4.387815, '2019-06-06 11:05:36', 20.5, 0.38);

INSERT INTO donnees
            (id_station, latitude, longitude, horodatage, temperature, humidite)
        VALUES ('Telecom Saint-Etienne', 45.452364, 4.387815, '2019-06-06 11:05:36', 20.5, 0.38);

INSERT INTO donnees
            (id_station, latitude, longitude, horodatage, temperature, humidite)
        VALUES ('Telecom Saint-Etienne', 45.452364, 4.387815, '2018-12-25 07:00:00', 1.2, 0.66);

INSERT INTO donnees
            (id_station, latitude, longitude, horodatage, temperature, humidite)
        VALUES ('Tour Eiffel', 48.858376, 2.294469, '2019-05-25 06:10:25', 25.5, 0.25);

INSERT INTO donnees
            (id_station, latitude, longitude, horodatage, temperature, humidite)
        VALUES ('Googleplex', 37.421981, -122.084198, '2019-06-22 01:05:36', 15.2, 0.05);

INSERT INTO donnees
            (id_station, latitude, longitude, horodatage, temperature, humidite)
        VALUES ('Pentagon', 38.872058, -77.056389, '2019-06-01 09:37:58', 30.1, 0.18);



SELECT * FROM donnees WHERE id_station = 'Telecom Saint-Etienne';

CREATE INDEX ON donnees(horodatage);

SELECT * FROM donnees WHERE id_station = 'Telecom Saint-Etienne' AND horodatage >= '2019-01-01 00:00:00' AND horodatage < '2019-06-23 00:00:00';