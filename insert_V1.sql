-- ================================================================
-- PAÍS
-- ================================================================
INSERT INTO countries (name, nationality)
VALUES 
  ('España', 'Española'),
  ('Estados Unidos', 'Estadounidense'),
  ('Canadá', 'Canadiense'),
  ('Serbia', 'Serbia'),
  ('Croacia', 'Croata'),
  ('República Checa', 'Checa'),
  ('Lituania', 'Lituana'),
  ('Letonia', 'Letón'),
  ('Suecia', 'Sueca'),
  ('Senegal', 'Senegalesa'),
  ('Mali', 'Maliense'),
  ('Cabo Verde', 'Caboverdiana'),
  ('Angola', 'Angoleña'),
  ('Polonia', 'Polaca'),
  ('Italia', 'Italiana'),
  ('Francia', 'Francés'),
  ('Alemania', 'Alemana'),
  ('China', 'China'),
  ('Brasil', 'Brasileña'),
  ('Argentina', 'Argentina'),
  ('Uruguay', 'Uruguaya'),
  ('República Dominicana', 'Dominicana'),
  ('Bosnia y Herzegovina', 'Bosnia y Herzegovina'),
  ('Finlandia', 'Finlandesa'),
  ('Ucrania', 'Ucraniana'),
  ('Georgia', 'Georgiana')
ON CONFLICT (name) DO NOTHING;

-- ================================================================
-- LIGA (Liga Endesa)
-- ================================================================
INSERT INTO leagues (country_id, name)
SELECT
  c.id,
  'Liga Endesa'
FROM countries c
WHERE c.name = 'España'
  AND NOT EXISTS (
    SELECT 1
    FROM leagues l
    WHERE l.name = 'Liga Endesa'
      AND l.country_id = c.id
  );

-- ================================================================
-- CLUBES LIGA ENDESA 2025-26
-- (uno por uno con WHERE NOT EXISTS para que sea idempotente)
-- Nota: ajustados nombres para cuadrar con la liga actual,
-- incluyendo Recoletas Salud San Pablo Burgos.
-- ================================================================

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'BAXI Manresa',
  'Pavelló Nou Congost',
  'Manresa',
  5000,
  '1931-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'BAXI Manresa');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Casademont Zaragoza',
  'Pabellón Príncipe Felipe',
  'Zaragoza',
  10744,
  '2002-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Casademont Zaragoza');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'C. B. Gran Canaria',
  'Gran Canaria Arena',
  'Las Palmas de Gran Canaria',
  11500,
  '1963-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'C. B. Gran Canaria');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Força Lleida',
  'Pabellón Barris Nord',
  'Lérida',
  6000,
  '2012-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Força Lleida');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'F. C. Barcelona',
  'Palau Blaugrana',
  'Barcelona',
  7585,
  '1926-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'F. C. Barcelona');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Club Joventut Badalona',
  'Palacio Mun. De Deportes de Badalona',
  'Badalona',
  12760,
  '1930-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Club Joventut Badalona');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'La Laguna Tenerife',
  'Pabellón Insular Santiago Martín',
  'San Cristóbal de La Laguna',
  5100,
  '1939-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'La Laguna Tenerife');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Bàsquet Girona',
  'Fontajau',
  'Gerona',
  5500,
  '2014-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Bàsquet Girona');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Covirán Granada',
  'Palacio Municipal de Deportes',
  'Granada',
  9000,
  '2012-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Covirán Granada');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Real Madrid',
  'Movistar Arena',
  'Madrid',
  17500,
  '1931-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Real Madrid');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Río Breogán',
  'Pazo dos Deportes',
  'Lugo',
  5310,
  '1966-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Río Breogán');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Baskonia',
  'Fernando Buesa Arena',
  'Vitoria',
  15504,
  '1959-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Baskonia');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Surne Bilbao Basket',
  'Bilbao Arena',
  'Bilbao',
  10014,
  '2000-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Surne Bilbao Basket');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Unicaja Málaga',
  'Martín Carpena',
  'Málaga',
  11300,
  '1977-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Unicaja Málaga');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'UCAM Murcia',
  'Palacio de los Deportes de Murcia',
  'Murcia',
  7348,
  '1985-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'UCAM Murcia');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Valencia Basket',
  'Pabellón Municipal Fuente San Luis',
  'Valencia',
  8500,
  '1986-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Valencia Basket');

-- Reemplazamos Leyma Coruña por el club actual Recoletas Burgos
INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'Recoletas Salud San Pablo Burgos',
  'Coliseum Burgos',
  'Burgos',
  9604,
  '1994-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Recoletas Salud San Pablo Burgos');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id)
SELECT
  'MoraBanc Andorra',
  'Polideportivo de Andorra',
  'Andorra la Vieja',
  5000,
  '1970-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa')
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'MoraBanc Andorra');

-- ================================================================
-- JUGADORES LIGA ENDESA 2025-26 (EJEMPLOS COMPLETOS)
-- Datos simplificados: edad, stats, etc. genéricos
-- ================================================================

-- FC BARCELONA (ACB: "Barça")
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Juan', 'Núñez', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Juani', 'Marcos', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Nico', 'Laprovittola', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Tomas', 'Satoransky', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Darío', 'Brizuela', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Kevin', 'Punter', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Joel', 'Parra', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Myles', 'Cale', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Will', 'Clyburn', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Miles', 'Norris', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Tornike', 'Shengelia', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Jan', 'Vesely', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Willy', 'Hernangómez', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
   NULL, 'Youssoupha', 'Fall', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- BASKONIA
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Matteo', 'Spagnolo', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Rafa', 'Villar', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Trent', 'Forrest', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Hamidou', 'Diallo', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Markus', 'Howard', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Rodions', 'Kurucs', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Tadas', 'Sedekerskis', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Timothé', 'Luwawu-Cabarrot', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Clément', 'Frisch', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Luka', 'Samanic', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Mamadi', 'Diakite', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Baskonia'),
   NULL, 'Khalifa', 'Diop', 25, FALSE, 0.00, FALSE, '2000-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

   -- REAL MADRID
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES

-- ANDRÉS FELIZ
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Andrés', 'Feliz', 26, FALSE, 86.0, TRUE, '1997-08-12', 'Base',
 11.2, 'Santo Domingo (Rep. Dominicana)', 'Sano', 1.86,
 3.1, 4.8, 1.2, 45.0, 36.5, 3),

-- FACUNDO CAMPAZZO
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Facundo', 'Campazzo', 33, TRUE, 88.0, TRUE, '1991-03-23', 'Base',
 12.8, 'Córdoba (Argentina)', 'Sano', 1.81,
 3.0, 7.4, 1.5, 46.0, 37.0, 2.4),

-- THÉO MALEDON
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Théo', 'Maledon', 23, FALSE, 91.0, TRUE, '2001-06-12', 'Base',
 8.7, 'Rouen (Francia)', 'Sano', 1.93,
 2.8, 3.9, 0.9, 44.0, 34.0, 3.1),

-- SERGIO LLULL
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Sergio', 'Llull', 37, TRUE, 92.0, TRUE, '1987-11-15', 'Escolta',
 7.9, 'Mahón (España)', 'Sano', 1.90,
 1.3, 2.1, 0.5, 43.0, 35.5, 2.9),

-- ALBERTO ABALDE
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Alberto', 'Abalde', 29, FALSE, 95.0, TRUE, '1995-12-15', 'Alero',
 6.4, 'Ferrol (España)', 'Sano', 2.02,
 2.4, 1.9, 0.7, 48.0, 37.0, 2.6),

-- DAVID KRAMER
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'David', 'Kramer', 27, FALSE, 95.0, TRUE, '1997-01-14', 'Alero',
 5.1, 'Myjava (Eslovaquia)', 'Sano', 1.98,
 2.0, 1.2, 0.6, 44.0, 33.0, 2.1),

-- GABRIEL DECK
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Gabriel', 'Deck', 29, FALSE, 105.0, TRUE, '1995-02-08', 'Alero',
 11.0, 'Colonia Dora (Argentina)', 'Sano', 1.98,
 4.6, 2.3, 0.8, 54.0, 30.5, 2),

-- GABRIELE PROCIDA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Gabriele', 'Procida', 22, FALSE, 92.0, TRUE, '2002-06-01', 'Alero',
 7.2, 'Como (Italia)', 'Sano', 2.00,
 2.1, 1.0, 0.9, 47.0, 37.5, 1.4),

-- MARIO HEZONJA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Mario', 'Hezonja', 29, FALSE, 102.0, TRUE, '1995-02-25', 'Alero',
 13.4, 'Dubrovnik (Croacia)', 'Sano', 2.03,
 4.8, 1.9, 1.0, 49.0, 38.0, 2.2),

-- CHUMA OKEKE
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Chuma', 'Okeke', 26, FALSE, 104.0, TRUE, '1998-08-18', 'Ala_Pivót',
 6.3, 'Atlanta, Georgia (EE.UU.)', 'Sano', 2.03,
 3.5, 1.4, 0.9, 45.0, 34.0, 4),

-- IZAN ALMANSA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Izan', 'Almansa', 19, FALSE, 102.0, TRUE, '2005-06-07', 'Ala_Pivót',
 4.9, 'Murcia (España)', 'Sano', 2.08,
 4.0, 0.9, 0.6, 52.0, 25.0, 2.4),

-- TREY LYLES
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Trey', 'Lyles', 29, FALSE, 111.0, TRUE, '1995-11-05', 'Ala_Pivót',
 9.7, 'Saskatoon (Canadá)', 'Sano', 2.06,
 5.2, 1.4, 0.5, 47.0, 36.0, 2.9),

-- USMAN GARUBA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Usman', 'Garuba', 23, FALSE, 104.0, TRUE, '2002-03-09', 'Ala_Pivót',
 6.1, 'Madrid (España)', 'Sano', 2.03,
 5.8, 1.8, 1.1, 56.0, 28.0, 3.7),

-- BRUNO FERNANDO
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Bruno', 'Fernando', 26, FALSE, 109.0, TRUE, '1998-08-15', 'Pivót',
 8.4, 'Luanda (Angola)', 'Sano', 2.08,
 5.9, 1.0, 0.7, 63.0, 0.0, 2.15),

-- WALTER TAVARES
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Walter', 'Tavares', 32, FALSE, 127.0, TRUE, '1992-03-22', 'Pivót',
 10.1, 'Maio (Cabo Verde)', 'Sano', 2.20,
 7.8, 1.1, 0.8, 66.0, 0.0, 3.6);


-- ================================================================
-- JUGADORES BAXI MANRESA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Hugo', 'Benitez', 25, FALSE, 85.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Mario', 'Saint-Supery', 21, FALSE, 82.00, FALSE, '2004-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Guillem', 'Jou', 27, FALSE, 90.00, FALSE, '1998-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.95, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Santiago', 'Vescovi', 25, FALSE, 86.00, FALSE, '2000-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.91, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Armel', 'Traore', 23, FALSE, 95.00, FALSE, '2002-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.03, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Alex', 'Reyes', 30, FALSE, 96.00, FALSE, '1995-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.02, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Musa', 'Sagnia', 23, FALSE, 98.00, FALSE, '2002-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.04, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Emanuel', 'Cate', 28, FALSE, 110.00, FALSE, '1997-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.07, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Bodian', 'Massa', 27, FALSE, 108.00, FALSE, '1998-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
   NULL, 'Amida', 'Brimah', 31, FALSE, 112.00, FALSE, '1994-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES CASADEMONT ZARAGOZA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Marco', 'Spissu', 30, FALSE, 82.00, FALSE, '1995-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.84, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Trae', 'Bell-Haynes', 29, FALSE, 82.00, FALSE, '1996-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Santi', 'Yusta', 28, FALSE, 90.00, FALSE, '1997-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Jordan', 'Bone', 27, FALSE, 84.00, FALSE, '1998-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Dylan', 'Osetkowski', 29, FALSE, 104.00, FALSE, '1996-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.03, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Devin', 'Robinson', 30, FALSE, 100.00, FALSE, '1995-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.03, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Youssouf', 'Traore', 18, FALSE, 100.00, FALSE, '2007-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
   NULL, 'Jahlil', 'Okafor', 29, FALSE, 120.00, FALSE, '1996-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.08, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES C. B. GRAN CANARIA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
   NULL, 'Andrew', 'Albicy', 35, FALSE, 80.00, FALSE, '1990-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.78, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
   NULL, 'Nico', 'Brussino', 32, FALSE, 96.00, FALSE, '1993-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
   NULL, 'Ben', 'Lammers', 29, FALSE, 103.00, FALSE, '1996-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.08, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
   NULL, 'Ethan', 'Happel', 27, FALSE, 102.00, FALSE, '1998-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.06, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
   NULL, 'Ferrán', 'Bassas', 32, FALSE, 82.00, FALSE, '1993-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.81, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
   NULL, 'AJ', 'Slaughter', 34, FALSE, 87.00, FALSE, '1991-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.91, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES FORÇA LLEIDA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Força Lleida'),
   NULL, 'Albert', 'Lafuente', 25, FALSE, 80.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.85, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Força Lleida'),
   NULL, 'Joaquín', 'Rodríguez', 27, FALSE, 84.00, FALSE, '1998-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Força Lleida'),
   NULL, 'Mark', 'Hughes', 28, FALSE, 90.00, FALSE, '1997-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.93, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Força Lleida'),
   NULL, 'Michael', 'Carrera', 32, FALSE, 99.00, FALSE, '1993-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Força Lleida'),
   NULL, 'Mateo', 'Diaz', 24, FALSE, 92.00, FALSE, '2001-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Força Lleida'),
   NULL, 'Karamo', 'Jawara', 31, FALSE, 104.00, FALSE, '1994-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.06, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES CLUB JOVENTUT BADALONA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Club Joventut Badalona'),
   NULL, 'Guillem', 'Vives', 32, FALSE, 84.00, FALSE, '1993-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.92, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Club Joventut Badalona'),
   NULL, 'Andrés', 'Feliz', 28, FALSE, 87.00, FALSE, '1997-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Club Joventut Badalona'),
   NULL, 'Pep', 'Busquets', 27, FALSE, 86.00, FALSE, '1998-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.96, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Club Joventut Badalona'),
   NULL, 'Kameron', 'Taylor', 30, FALSE, 95.00, FALSE, '1995-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Club Joventut Badalona'),
   NULL, 'Henry', 'Ellenson', 28, FALSE, 104.00, FALSE, '1997-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.08, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Club Joventut Badalona'),
   NULL, 'Ante', 'Tomic', 38, FALSE, 112.00, FALSE, '1987-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.17, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES LA LAGUNA TENERIFE
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'La Laguna Tenerife'),
   NULL, 'Marcelinho', 'Huertas', 42, FALSE, 82.00, FALSE, '1983-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.91, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'La Laguna Tenerife'),
   NULL, 'Bruno', 'Fitipaldo', 34, FALSE, 80.00, FALSE, '1991-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.86, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'La Laguna Tenerife'),
   NULL, 'Jaime', 'Fernández', 32, FALSE, 86.00, FALSE, '1993-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.87, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'La Laguna Tenerife'),
   NULL, 'Sasu', 'Salin', 34, FALSE, 89.00, FALSE, '1991-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.93, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'La Laguna Tenerife'),
   NULL, 'Aaron', 'Doornekamp', 39, FALSE, 98.00, FALSE, '1986-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'La Laguna Tenerife'),
   NULL, 'Gio', 'Shermadini', 36, FALSE, 114.00, FALSE, '1989-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.16, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES BÀSQUET GIRONA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Bàsquet Girona'),
   NULL, 'Quino', 'Colom', 36, FALSE, 86.00, FALSE, '1989-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Bàsquet Girona'),
   NULL, 'Ike', 'Iroegbu', 30, FALSE, 88.00, FALSE, '1995-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Bàsquet Girona'),
   NULL, 'Pato', 'Garino', 32, FALSE, 95.00, FALSE, '1993-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Bàsquet Girona'),
   NULL, 'Eric', 'Vila', 27, FALSE, 102.00, FALSE, '1998-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.03, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Bàsquet Girona'),
   NULL, 'Roko', 'Prkacin', 23, FALSE, 102.00, FALSE, '2002-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Bàsquet Girona'),
   NULL, 'Jaume', 'Sorolla', 28, FALSE, 110.00, FALSE, '1997-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.11, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES COVIRÁN GRANADA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Covirán Granada'),
   NULL, 'Lluis', 'Costa', 31, FALSE, 81.00, FALSE, '1994-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.83, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Covirán Granada'),
   NULL, 'Dejan', 'Todorovic', 32, FALSE, 92.00, FALSE, '1993-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Covirán Granada'),
   NULL, 'Pere', 'Tomàs', 35, FALSE, 96.00, FALSE, '1990-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Covirán Granada'),
   NULL, 'Jacobo', 'Díaz', 28, FALSE, 100.00, FALSE, '1997-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.04, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Covirán Granada'),
   NULL, 'Artur', 'Konontsuk', 24, FALSE, 101.00, FALSE, '2001-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.04, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Covirán Granada'),
   NULL, 'Mike', 'Daum', 29, FALSE, 108.00, FALSE, '1996-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.06, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES RÍO BREOGÁN
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Río Breogán'),
   NULL, 'Sergi', 'García', 27, FALSE, 82.00, FALSE, '1998-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.93, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Río Breogán'),
   NULL, 'Bamba', 'Fall', 29, FALSE, 103.00, FALSE, '1996-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.13, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Río Breogán'),
   NULL, 'Juan', 'Fernández', 24, FALSE, 99.00, FALSE, '2001-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.06, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Río Breogán'),
   NULL, 'Scott', 'Bamforth', 35, FALSE, 90.00, FALSE, '1990-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES SURNE BILBAO BASKET
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Surne Bilbao Basket'),
   NULL, 'Agustín', 'Ubal', 22, FALSE, 82.00, FALSE, '2003-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Surne Bilbao Basket'),
   NULL, 'Melwin', 'Pantzar', 25, FALSE, 85.00, FALSE, '2000-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Surne Bilbao Basket'),
   NULL, 'Alex', 'Reyes', 30, FALSE, 96.00, FALSE, '1995-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.02, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Surne Bilbao Basket'),
   NULL, 'Felipe', 'Dos Anjos', 27, FALSE, 115.00, FALSE, '1998-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.18, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES UNICAJA MÁLAGA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Unicaja Málaga'),
   NULL, 'Alberto', 'Díaz', 31, FALSE, 82.00, FALSE, '1994-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Unicaja Málaga'),
   NULL, 'Kendrick', 'Perry', 33, FALSE, 82.00, FALSE, '1992-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.83, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Unicaja Málaga'),
   NULL, 'Tyler', 'Kalinic', 27, FALSE, 94.00, FALSE, '1998-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.02, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Unicaja Málaga'),
   NULL, 'Will', 'Thomas', 39, FALSE, 104.00, FALSE, '1986-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.03, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Unicaja Málaga'),
   NULL, 'Yankuba', 'Sima', 29, FALSE, 110.00, FALSE, '1996-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.11, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES UCAM MURCIA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
   NULL, 'Dylan', 'Ennis', 33, FALSE, 89.00, FALSE, '1992-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
   NULL, 'Jonah', 'Radebaugh', 29, FALSE, 88.00, FALSE, '1996-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
   NULL, 'Howard', 'Sant-Roos', 34, FALSE, 95.00, FALSE, '1991-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
   NULL, 'Kaiser', 'Gates', 28, FALSE, 100.00, FALSE, '1997-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.03, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
   NULL, 'Toni', 'Nakic', 27, FALSE, 100.00, FALSE, '1998-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
   NULL, 'Devontae', 'Cacok', 29, FALSE, 110.00, FALSE, '1996-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.03, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES VALENCIA BASKET
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Valencia Basket'),
   NULL, 'Darius', 'Thompson', 30, FALSE, 86.00, FALSE, '1995-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.93, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Valencia Basket'),
   NULL, 'Stefan', 'Jovic', 34, FALSE, 87.00, FALSE, '1991-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Valencia Basket'),
   NULL, 'Kameron', 'Taylor', 30, FALSE, 95.00, FALSE, '1995-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.98, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Valencia Basket'),
   NULL, 'Omari', 'Moore', 25, FALSE, 92.00, FALSE, '2000-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.96, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Valencia Basket'),
   NULL, 'Jaime', 'Pradilla', 24, FALSE, 104.00, FALSE, '2001-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Valencia Basket'),
   NULL, 'Nate', 'Reuvers', 26, FALSE, 106.00, FALSE, '1999-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.08, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Valencia Basket'),
   NULL, 'Brandon', 'Davies', 34, FALSE, 113.00, FALSE, '1991-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.08, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES RECOLETAS SALUD SAN PABLO BURGOS
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'Recoletas Salud San Pablo Burgos'),
   NULL, 'Raulzinho', 'Neto', 33, FALSE, 82.00, FALSE, '1992-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.85, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Recoletas Salud San Pablo Burgos'),
   NULL, 'Alex', 'Barreras', 26, FALSE, 84.00, FALSE, '1999-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Recoletas Salud San Pablo Burgos'),
   NULL, 'Marc', 'García', 31, FALSE, 88.00, FALSE, '1994-01-01', 'Escolta',
   0.00, 'Desconocido', 'Sano', 1.97, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Recoletas Salud San Pablo Burgos'),
   NULL, 'Deividas', 'Gailius', 35, FALSE, 95.00, FALSE, '1990-01-01', 'Alero',
   0.00, 'Desconocido', 'Sano', 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'Recoletas Salud San Pablo Burgos'),
   NULL, 'Yannick', 'Nzosa', 22, FALSE, 100.00, FALSE, '2003-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.08, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- ================================================================
-- JUGADORES MORABANC ANDORRA
-- ================================================================
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
  ((SELECT id FROM clubs WHERE name = 'MoraBanc Andorra'),
   NULL, 'Jean', 'Montero', 22, FALSE, 80.00, FALSE, '2003-01-01', 'Base',
   0.00, 'Desconocido', 'Sano', 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'MoraBanc Andorra'),
   NULL, 'Tyson', 'Pérez', 29, FALSE, 98.00, FALSE, '1996-01-01', 'Ala_Pivót',
   0.00, 'Desconocido', 'Sano', 2.02, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
  ((SELECT id FROM clubs WHERE name = 'MoraBanc Andorra'),
   NULL, 'Moussa', 'Diagne', 31, FALSE, 110.00, FALSE, '1994-01-01', 'Pivót',
   0.00, 'Desconocido', 'Sano', 2.11, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

   -- ================================================================
-- NACIONALIDADES DE JUGADORES DEL REAL MADRID (ACB)
-- Tabla: players_nationalities
-- Campos: id,  player_id, country_id
-- ================================================================

INSERT INTO player_nationalities (player_id, country_id)
VALUES
  ((SELECT id FROM players WHERE name = 'Andrés' AND second_name = 'Feliz'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'República Dominicana')),

  ((SELECT id FROM players WHERE name = 'Facundo' AND second_name = 'Campazzo'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Argentina')),

  ((SELECT id FROM players WHERE name = 'Théo' AND second_name = 'Maledon'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Francia')),

  ((SELECT id FROM players WHERE name = 'Sergio' AND second_name = 'Llull'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'España')),

  ((SELECT id FROM players WHERE name = 'Alberto' AND second_name = 'Abalde'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'España')),

  ((SELECT id FROM players WHERE name = 'David' AND second_name = 'Kramer'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Alemania')),

  ((SELECT id FROM players WHERE name = 'Gabriel' AND second_name = 'Deck'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Argentina')),

  ((SELECT id FROM players WHERE name = 'Gabriele' AND second_name = 'Procida'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Italia')),

  ((SELECT id FROM players WHERE name = 'Mario' AND second_name = 'Hezonja'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Croacia')),

  ((SELECT id FROM players WHERE name = 'Chuma' AND second_name = 'Okeke'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Estados Unidos')),

  ((SELECT id FROM players WHERE name = 'Izan' AND second_name = 'Almansa'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'España')),

  ((SELECT id FROM players WHERE name = 'Trey' AND second_name = 'Lyles'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Canadá')),

  ((SELECT id FROM players WHERE name = 'Usman' AND second_name = 'Garuba'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'España')),

  ((SELECT id FROM players WHERE name = 'Bruno' AND second_name = 'Fernando'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Angola')),

  ((SELECT id FROM players WHERE name = 'Walter' AND second_name = 'Tavares'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1),
   (SELECT id FROM countries WHERE name = 'Cabo Verde'));

-- ================================================================
-- HISTORIAL DE VALORES JUGADORES REAL MADRID
-- Tabla: "values" (player_id, value, date)
-- ================================================================

-- Helper: para no repetir, siempre:
--   FROM players p
--   JOIN clubs c ON c.id = p.club_id
--   WHERE c.name = 'Real Madrid' AND p.name = '...' AND p.second_name = '...'


-- 1) ANDRÉS FELIZ
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 800000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Andrés' AND p.second_name = 'Feliz'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 900000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Andrés' AND p.second_name = 'Feliz'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1100000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Andrés' AND p.second_name = 'Feliz'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 2) FACU CAMPAZZO
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2500000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2800000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 3000000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 3) THÉO MALEDON
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1200000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Théo' AND p.second_name = 'Maledon'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1400000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Théo' AND p.second_name = 'Maledon'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1600000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Théo' AND p.second_name = 'Maledon'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 4) SERGIO LLULL
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1800000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Sergio' AND p.second_name = 'Llull'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1700000, '2023-07-01'   -- ligera bajada por edad
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Sergio' AND p.second_name = 'Llull'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1500000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Sergio' AND p.second_name = 'Llull'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 5) ALBERTO ABALDE
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1300000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Alberto' AND p.second_name = 'Abalde'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1500000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Alberto' AND p.second_name = 'Abalde'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1700000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Alberto' AND p.second_name = 'Abalde'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 6) DAVID KRAMER
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1000000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'David' AND p.second_name = 'Kramer'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1200000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'David' AND p.second_name = 'Kramer'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1400000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'David' AND p.second_name = 'Kramer'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 7) GABRIEL DECK
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2000000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Gabriel' AND p.second_name = 'Deck'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2200000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Gabriel' AND p.second_name = 'Deck'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2300000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Gabriel' AND p.second_name = 'Deck'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 8) GABRIELE PROCIDA
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 900000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Gabriele' AND p.second_name = 'Procida'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1100000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Gabriele' AND p.second_name = 'Procida'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1300000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Gabriele' AND p.second_name = 'Procida'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 9) MARIO HEZONJA
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2200000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Mario' AND p.second_name = 'Hezonja'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2400000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Mario' AND p.second_name = 'Hezonja'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2600000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Mario' AND p.second_name = 'Hezonja'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 10) CHUMA OKEKE
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1300000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Chuma' AND p.second_name = 'Okeke'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1500000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Chuma' AND p.second_name = 'Okeke'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1700000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Chuma' AND p.second_name = 'Okeke'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 11) IZAN ALMANSA
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 700000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Izan' AND p.second_name = 'Almansa'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 900000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Izan' AND p.second_name = 'Almansa'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1200000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Izan' AND p.second_name = 'Almansa'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 12) TREY LYLES
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1600000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Trey' AND p.second_name = 'Lyles'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1700000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Trey' AND p.second_name = 'Lyles'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1800000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Trey' AND p.second_name = 'Lyles'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 13) USMAN GARUBA
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1500000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Usman' AND p.second_name = 'Garuba'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1800000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Usman' AND p.second_name = 'Garuba'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2100000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Usman' AND p.second_name = 'Garuba'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 14) BRUNO FERNANDO
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1300000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Bruno' AND p.second_name = 'Fernando'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1500000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Bruno' AND p.second_name = 'Fernando'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1700000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Bruno' AND p.second_name = 'Fernando'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );


-- 15) WALTER TAVARES
INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2500000, '2022-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Walter' AND p.second_name = 'Tavares'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2022-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2800000, '2023-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Walter' AND p.second_name = 'Tavares'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2023-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 3200000, '2024-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Walter' AND p.second_name = 'Tavares'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2024-07-01'
  );

  -- =========================================================
-- HISTORIAL DE SALARIOS – REAL MADRID (ACB)
-- Tabla: salaries
-- Campos: id, salary, date, player_id
-- =========================================================

INSERT INTO salaries (salary, date, player_id) VALUES
-- Andres Féliz
(850000, '2023-07-01', (SELECT id FROM players WHERE name = 'Andrés' AND second_name = 'Feliz'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(890000, '2024-07-01', (SELECT id FROM players WHERE name = 'Andrés' AND second_name = 'Feliz'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(935000, '2025-07-01', (SELECT id FROM players WHERE name = 'Andrés' AND second_name = 'Feliz'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Facu Campazzo
(2200000, '2023-07-01', (SELECT id FROM players WHERE name = 'Facundo' AND second_name = 'Campazzo'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(2310000, '2024-07-01', (SELECT id FROM players WHERE name = 'Facundo' AND second_name = 'Campazzo'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(2420000, '2025-07-01', (SELECT id FROM players WHERE name = 'Facundo' AND second_name = 'Campazzo'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Théo Maledon
(780000, '2023-07-01', (SELECT id FROM players WHERE name = 'Théo' AND second_name = 'Maledon'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(820000, '2024-07-01', (SELECT id FROM players WHERE name = 'Théo' AND second_name = 'Maledon'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(860000, '2025-07-01', (SELECT id FROM players WHERE name = 'Théo' AND second_name = 'Maledon'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Sergio Llul
(1800000, '2023-07-01', (SELECT id FROM players WHERE name = 'Sergio' AND second_name = 'Llull'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1890000, '2024-07-01', (SELECT id FROM players WHERE name = 'Sergio' AND second_name = 'Llull'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1985000, '2025-07-01', (SELECT id FROM players WHERE name = 'Sergio' AND second_name = 'Llull'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Alberto Abalde
(950000, '2023-07-01', (SELECT id FROM players WHERE name = 'Alberto' AND second_name = 'Abalde'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1000000, '2024-07-01', (SELECT id FROM players WHERE name = 'Alberto' AND second_name = 'Abalde'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1050000, '2025-07-01', (SELECT id FROM players WHERE name = 'Alberto' AND second_name = 'Abalde'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- David Kramer
(1200000, '2023-07-01', (SELECT id FROM players WHERE name = 'David' AND second_name = 'Kramer'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1260000, '2024-07-01', (SELECT id FROM players WHERE name = 'David' AND second_name = 'Kramer'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1320000, '2025-07-01', (SELECT id FROM players WHERE name = 'David' AND second_name = 'Kramer'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Gabriel Peck
(1500000, '2023-07-01', (SELECT id FROM players WHERE name = 'Gabriel' AND second_name = 'Deck'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1575000, '2024-07-01', (SELECT id FROM players WHERE name = 'Gabriel' AND second_name = 'Deck'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1650000, '2025-07-01', (SELECT id FROM players WHERE name = 'Gabriel' AND second_name = 'Deck'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Gabriele Procida
(700000, '2023-07-01', (SELECT id FROM players WHERE name = 'Gabriele' AND second_name = 'Procida'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(735000, '2024-07-01', (SELECT id FROM players WHERE name = 'Gabriele' AND second_name = 'Procida'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(770000, '2025-07-01', (SELECT id FROM players WHERE name = 'Gabriele' AND second_name = 'Procida'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Mario Hezonja
(3000000, '2023-07-01', (SELECT id FROM players WHERE name = 'Mario' AND second_name = 'Hezonja'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(3150000, '2024-07-01', (SELECT id FROM players WHERE name = 'Mario' AND second_name = 'Hezonja'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(3300000, '2025-07-01', (SELECT id FROM players WHERE name = 'Mario' AND second_name = 'Hezonja'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Chuma Okeke
(650000, '2023-07-01', (SELECT id FROM players WHERE name = 'Chuma' AND second_name = 'Okeke'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(680000, '2024-07-01', (SELECT id FROM players WHERE name = 'Chuma' AND second_name = 'Okeke'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(715000, '2025-07-01', (SELECT id FROM players WHERE name = 'Chuma' AND second_name = 'Okeke'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Izan Almansa
(900000, '2023-07-01', (SELECT id FROM players WHERE name = 'Izan' AND second_name = 'Almansa'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(945000, '2024-07-01', (SELECT id FROM players WHERE name = 'Izan' AND second_name = 'Almansa'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(990000, '2025-07-01', (SELECT id FROM players WHERE name = 'Izan' AND second_name = 'Almansa'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Trey Lyles
(1100000, '2023-07-01', (SELECT id FROM players WHERE name = 'Trey' AND second_name = 'Lyles'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1155000, '2024-07-01', (SELECT id FROM players WHERE name = 'Trey' AND second_name = 'Lyles'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(1210000, '2025-07-01', (SELECT id FROM players WHERE name = 'Trey' AND second_name = 'Lyles'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Usman Garuba
(800000, '2023-07-01', (SELECT id FROM players WHERE name = 'Usman' AND second_name = 'Garuba'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(840000, '2024-07-01', (SELECT id FROM players WHERE name = 'Usman' AND second_name = 'Garuba'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(880000, '2025-07-01', (SELECT id FROM players WHERE name = 'Usman' AND second_name = 'Garuba'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Bruno Fernando
(450000, '2023-07-01', (SELECT id FROM players WHERE name = 'Bruno' AND second_name = 'Fernando'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(475000, '2024-07-01', (SELECT id FROM players WHERE name = 'Bruno' AND second_name = 'Fernando'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(500000, '2025-07-01', (SELECT id FROM players WHERE name = 'Bruno' AND second_name = 'Fernando'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),

-- Walter Tavares
(3500000, '2023-07-01', (SELECT id FROM players WHERE name = 'Walter' AND second_name = 'Tavares'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(3675000, '2024-07-01', (SELECT id FROM players WHERE name = 'Walter' AND second_name = 'Tavares'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(3850000, '2025-07-01', (SELECT id FROM players WHERE name = 'Walter' AND second_name = 'Tavares'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1));


-- ================================================================
-- HISTORIAL DE TRASPASOS / CESIONES JUGADORES REAL MADRID (ACB)
-- Tabla: transfers
-- Campos: value, date, type, origin_id, destiny_id, player_id
-- ================================================================

-- 1) FACUNDO CAMPAZZO
-- Traspaso desde UCAM Murcia a Real Madrid (2014)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  500000,                             -- valor ficticio
  '2014-07-15',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Facundo'
  AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2014-07-15'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );

-- Cesión de Real Madrid a BAXI Manresa (2016)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2016-09-01',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  (SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
  p.id
FROM players p
WHERE p.name = 'Facundo'
  AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2016-09-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'BAXI Manresa')
  );

-- Vuelta de cesión: BAXI Manresa -> Real Madrid (2017)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2017-07-01',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Facundo'
  AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2017-07-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );


-- 2) DZNAN MUSA
-- Traspaso desde Río Breogán a Real Madrid (2022)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  750000,
  '2022-07-10',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'Río Breogán'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Dzanan'
  AND p.second_name = 'Musa'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2022-07-10'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );

-- Cesión de Real Madrid a Valencia Basket (2023)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2023-09-01',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  (SELECT id FROM clubs WHERE name = 'Valencia Basket'),
  p.id
FROM players p
WHERE p.name = 'Dzanan'
  AND p.second_name = 'Musa'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2023-09-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Valencia Basket')
  );

-- Vuelta de cesión: Valencia Basket -> Real Madrid (2024)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2024-07-01',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Valencia Basket'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Dzanan'
  AND p.second_name = 'Musa'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2024-07-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );


-- 3) MARIO HEZONJA
-- Traspaso desde Baskonia a Real Madrid (2022)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  900000,
  '2022-07-05',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'Baskonia'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Mario'
  AND p.second_name = 'Hezonja'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2022-07-05'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );

-- Cesión de Real Madrid a Unicaja Málaga (2023)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2023-10-01',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  (SELECT id FROM clubs WHERE name = 'Unicaja Málaga'),
  p.id
FROM players p
WHERE p.name = 'Mario'
  AND p.second_name = 'Hezonja'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2023-10-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Unicaja Málaga')
  );

-- Vuelta de cesión: Unicaja Málaga -> Real Madrid (2024)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2024-06-30',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Unicaja Málaga'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Mario'
  AND p.second_name = 'Hezonja'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2024-06-30'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );


-- 4) GUERSCHON YABUSELE
-- Traspaso desde BAXI Manresa a Real Madrid (2021)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  650000,
  '2021-07-20',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Guerschon'
  AND p.second_name = 'Yabusele'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2021-07-20'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );

-- Cesión de Real Madrid a MoraBanc Andorra (2022)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2022-09-01',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  (SELECT id FROM clubs WHERE name = 'MoraBanc Andorra'),
  p.id
FROM players p
WHERE p.name = 'Guerschon'
  AND p.second_name = 'Yabusele'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2022-09-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'MoraBanc Andorra')
  );

-- Vuelta de cesión: MoraBanc Andorra -> Real Madrid (2023)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2023-07-01',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'MoraBanc Andorra'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Guerschon'
  AND p.second_name = 'Yabusele'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2023-07-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );


-- 5) WALTER TAVARES
-- Traspaso desde C. B. Gran Canaria a Real Madrid (2017)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  1000000,
  '2017-11-07',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Walter'
  AND p.second_name = 'Tavares'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2017-11-07'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );

-- Cesión de Real Madrid a Río Breogán (2018)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2018-09-15',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  (SELECT id FROM clubs WHERE name = 'Río Breogán'),
  p.id
FROM players p
WHERE p.name = 'Walter'
  AND p.second_name = 'Tavares'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2018-09-15'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Río Breogán')
  );

-- Vuelta de cesión: Río Breogán -> Real Madrid (2019)
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  0,
  '2019-06-30',
  'cesion',
  (SELECT id FROM clubs WHERE name = 'Río Breogán'),
  (SELECT id FROM clubs WHERE name = 'Real Madrid'),
  p.id
FROM players p
WHERE p.name = 'Walter'
  AND p.second_name = 'Tavares'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2019-06-30'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
  );
