
-- 1
INSERT INTO `weather` (`country`, `city`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`)
VALUES
('Argentina', 'Buenos Aires', 24.9, 23.6, 21.9, 17.9, 14.5, 11.7, 11.0, 12.8, 14.6, 17.9, 20.7, 23.3),
('Colombia', 'Bogotá', 14.3, 14.5, 14.9, 14.9, 15.0, 14.5, 14.6, 14.1, 14.3, 14.3, 14.4, 14.6),
('Estonia', 'Tallinn', -2.9, -3.6, -0.6, 4.8, 10.2, 14.5, 17.6, 16.5, 12.0, 6.5, 2.0, -0.9),
('Georgia', 'Tbilisi', 1.2, 2.7, 6.6, 12.2, 17.4, 21.3, 24.5, 24.1, 19.6, 13.7, 7.8, 3.2),
('Mexico', 'Mexico City', 14.6, 15.9, 18.1, 19.6, 20.0, 19.4, 18.2, 18.3, 18.0, 17.1, 16.3, 15.0),
('Philippines', 'Manila', 26.7, 27.4, 28.7, 30.1, 30.0, 29.3, 28.5, 28.3, 28.4, 28.4, 28.0, 27.0),
('Portugal', 'Lisbon', 11.6, 12.7, 14.9, 15.9, 18.0, 21.2, 23.1, 23.5, 22.1, 18.8, 15.0, 12.4),
('Serbia', 'Belgrade', 1.4, 3.1, 7.6, 12.9, 18.1, 21.0, 23.0, 22.7, 18.0, 12.9, 7.1, 2.7),
('Spain', 'Madrid', 6.3, 7.9, 11.2, 12.9, 16.7, 22.2, 25.6, 25.1, 20.9, 15.1, 9.9, 6.9),
('Thailand', 'Bangkok', 27.0, 28.3, 29.5, 30.5, 29.9, 29.5, 29.0, 28.8, 28.3, 28.1, 27.8, 26.5),
('Uruguay', 'Montevideo', 23.0, 22.5, 20.6, 17.2, 14.0, 11.1, 10.9, 11.7, 13.4, 16.0, 18.6, 21.3),
('Vietnam', 'Hanoi', 16.4, 17.2, 20.0, 23.9, 27.4, 28.9, 29.2, 28.6, 27.5, 24.9, 21.5, 18.2);


-- 2


INSERT INTO `crime_rate` (`country`, `crime_index`, `population`)
VALUES
('Argentina', 63.82, 45773884),
('Colombia', 56.87, 52085168),
('Estonia', 23.71, 1322765),
('Georgia', 23.38, 3728282),
('Mexico', 54.19, 128455567),
('Philippines', 42.46, 117337368),
('Portugal', 29.91, 10247605),
('Serbia', 38.1, 7149077),
('Spain', 33.32, 47519628),
('Thailand', 39.35, 71801279),
('Uruguay', 51.73, 3423108),
('Vietnam', 46.19, 98858950);

-- 3
INSERT INTO `nomad_visa` (`country`, `taxes`, `tax-free_period`, `internet_speed`, `min_income`)
VALUES
('Argentina', '0%', 'Full visa length', 111.23, 2500),
('Colombia', '19%', 'Six months', 125.86, 684),
('Estonia', '20%', 'No tax free period', 103.48, 3500),
('Georgia', '20%', 'Six months', 30.28, 2000),
('Mexico', '30%', 'No tax free period', 77.07, 2595),
('Philippines', '0%', 'Full visa length', 88, 2000),
('Portugal', '20%', 'Six months', 205.11, 3548),
('Serbia', '10%', 'Six months', 69, 3500),
('Spain', '15%', 'Six months', 248.25, 2140),
('Thailand', '5-35%', 'Six months', 100, NULL), 
('Uruguay', '0%', 'Full visa length', 177.74, NULL), 
('Vietnam', NULL , NULL, 70, NULL); 

-- 4
INSERT INTO `cost_of_living_countries` (`country`, `rent_index`, `groceries_index`, `local_purchasing_power`)
VALUES
('Argentina', 7.6, 29.7, 41.5),
('Colombia', 8.6, 30.3, 33.7),
('Estonia', 15.0, 46.4, 80.4),
('Georgia', 13.7, 33.3, 35.3),
('Mexico', 15.5, 43.4, 45.4),
('Philippines', 7.1, 35.0, 33.3),
('Portugal', 24.0, 43.8, 56.9),
('Serbia', 12.4, 36.0, 50.2),
('Spain', 22.9, 46.0, 92.1),
('Thailand', 11.2, 40.5, 40.8),
('Uruguay', 13.8, 52.1, 56.3),
('Vietnam', 9.0, 33.9, 40.5);
