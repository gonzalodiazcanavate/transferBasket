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
  rp, ap, sp, shot_pct, threes_pct, fp, image_url
) VALUES

-- ANDRÉS FELIZ
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Andrés', 'Feliz', 26, FALSE, 86.0, TRUE, '1997-08-12', 'Base',
 11.2, 'Santo Domingo (Rep. Dominicana)', 'Sano', 1.86,
 3.1, 4.8, 1.2, 45.0, 36.5, 3, '27-FelizAndres.jpg'),

-- FACUNDO CAMPAZZO
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Facundo', 'Campazzo', 33, TRUE, 88.0, TRUE, '1991-03-23', 'Base',
 12.8, 'Córdoba (Argentina)', 'Sano', 1.81,
 3.0, 7.4, 1.5, 46.0, 37.0, 2.4, '28-CampazzoFacu.jpg'),

-- THÉO MALEDON
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Théo', 'Maledon', 23, FALSE, 91.0, TRUE, '2001-06-12', 'Base',
 8.7, 'Rouen (Francia)', 'Sano', 1.93,
 2.8, 3.9, 0.9, 44.0, 34.0, 3.1, '29-MaledonTheo.jpg'),

-- SERGIO LLULL
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Sergio', 'Llull', 37, TRUE, 92.0, TRUE, '1987-11-15', 'Escolta',
 7.9, 'Mahón (España)', 'Sano', 1.90,
 1.3, 2.1, 0.5, 43.0, 35.5, 2.9, '30-LlulSergio.jpg'),

-- ALBERTO ABALDE
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Alberto', 'Abalde', 29, FALSE, 95.0, TRUE, '1995-12-15', 'Alero',
 6.4, 'Ferrol (España)', 'Sano', 2.02,
 2.4, 1.9, 0.7, 48.0, 37.0, 2.6, '31-AbaldeAlberto.jpg'),

-- DAVID KRAMER
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'David', 'Kramer', 27, FALSE, 95.0, TRUE, '1997-01-14', 'Alero',
 5.1, 'Myjava (Eslovaquia)', 'Sano', 1.98,
 2.0, 1.2, 0.6, 44.0, 33.0, 2.1, '32-KramerDavid.jpg'),

-- GABRIEL DECK
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Gabriel', 'Deck', 29, FALSE, 105.0, TRUE, '1995-02-08', 'Alero',
 11.0, 'Colonia Dora (Argentina)', 'Sano', 1.98,
 4.6, 2.3, 0.8, 54.0, 30.5, 2, '33-DeckGabriel.jpg'),

-- GABRIELE PROCIDA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Gabriele', 'Procida', 22, FALSE, 92.0, TRUE, '2002-06-01', 'Alero',
 7.2, 'Como (Italia)', 'Sano', 2.00,
 2.1, 1.0, 0.9, 47.0, 37.5, 1.4, '34-ProcidaGabrielle.jpg'),

-- MARIO HEZONJA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Mario', 'Hezonja', 29, FALSE, 102.0, TRUE, '1995-02-25', 'Alero',
 13.4, 'Dubrovnik (Croacia)', 'Sano', 2.03,
 4.8, 1.9, 1.0, 49.0, 38.0, 2.2, '35-Hezonja-Mario.jpg'),

-- CHUMA OKEKE
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Chuma', 'Okeke', 26, FALSE, 104.0, TRUE, '1998-08-18', 'Ala_Pivót',
 6.3, 'Atlanta, Georgia (EE.UU.)', 'Sano', 2.03,
 3.5, 1.4, 0.9, 45.0, 34.0, 4, '36-OkekeChuma.jpg'),

-- IZAN ALMANSA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Izan', 'Almansa', 19, FALSE, 102.0, TRUE, '2005-06-07', 'Ala_Pivót',
 4.9, 'Murcia (España)', 'Sano', 2.08,
 4.0, 0.9, 0.6, 52.0, 25.0, 2.4, '37-AlmansaIzan.jpg'),

-- TREY LYLES
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Trey', 'Lyles', 29, FALSE, 111.0, TRUE, '1995-11-05', 'Ala_Pivót',
 9.7, 'Saskatoon (Canadá)', 'Sano', 2.06,
 5.2, 1.4, 0.5, 47.0, 36.0, 2.9, '38-TreyLyles.jpg'),

-- USMAN GARUBA
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Usman', 'Garuba', 23, FALSE, 104.0, TRUE, '2002-03-09', 'Ala_Pivót',
 6.1, 'Madrid (España)', 'Sano', 2.03,
 5.8, 1.8, 1.1, 56.0, 28.0, 3.7, '39-GarubaUsman.jpg'),

-- BRUNO FERNANDO
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Bruno', 'Fernando', 26, FALSE, 109.0, TRUE, '1998-08-15', 'Pivót',
 8.4, 'Luanda (Angola)', 'Sano', 2.08,
 5.9, 1.0, 0.7, 63.0, 0.0, 2.15, '40-FernandoBruno.jpg'),

-- WALTER TAVARES
((SELECT id FROM clubs WHERE name = 'Real Madrid'),
 NULL, 'Walter', 'Tavares', 32, FALSE, 127.0, TRUE, '1992-03-22', 'Pivót',
 10.1, 'Maio (Cabo Verde)', 'Sano', 2.20,
 7.8, 1.1, 0.8, 66.0, 0.0, 3.6, '41-TavaresWalter.jpg');


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
