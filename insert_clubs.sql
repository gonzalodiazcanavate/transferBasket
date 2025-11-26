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

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'BAXI Manresa',
  'Pavelló Nou Congost',
  'Manresa',
  5000,
  '1931-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '1-BaxiManresa.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'BAXI Manresa');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Casademont Zaragoza',
  'Pabellón Príncipe Felipe',
  'Zaragoza',
  10744,
  '2002-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '2-CasademontZaragoza.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Casademont Zaragoza');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'C. B. Gran Canaria',
  'Gran Canaria Arena',
  'Las Palmas de Gran Canaria',
  11500,
  '1963-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '3-CBGranCanaria.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'C. B. Gran Canaria');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Força Lleida',
  'Pabellón Barris Nord',
  'Lérida',
  6000,
  '2012-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '4-Lleida.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Força Lleida');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'F. C. Barcelona',
  'Palau Blaugrana',
  'Barcelona',
  7585,
  '1926-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '5-Barcelona.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'F. C. Barcelona');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Club Joventut Badalona',
  'Palacio Mun. De Deportes de Badalona',
  'Badalona',
  12760,
  '1930-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '6-Badalona.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Club Joventut Badalona');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'La Laguna Tenerife',
  'Pabellón Insular Santiago Martín',
  'San Cristóbal de La Laguna',
  5100,
  '1939-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '7-LaLagunaTenerife.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'La Laguna Tenerife');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Bàsquet Girona',
  'Fontajau',
  'Gerona',
  5500,
  '2014-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '8-BasquetGirona.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Bàsquet Girona');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Covirán Granada',
  'Palacio Municipal de Deportes',
  'Granada',
  9000,
  '2012-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '9-CoviranGranada.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Covirán Granada');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Real Madrid',
  'Movistar Arena',
  'Madrid',
  17500,
  '1931-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '10-RealMadrid.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Real Madrid');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Río Breogán',
  'Pazo dos Deportes',
  'Lugo',
  5310,
  '1966-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '11-RioBreogan.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Río Breogán');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Baskonia',
  'Fernando Buesa Arena',
  'Vitoria',
  15504,
  '1959-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '12-Baskonia.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Baskonia');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Surne Bilbao Basket',
  'Bilbao Arena',
  'Bilbao',
  10014,
  '2000-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '13-BilbaoBasket.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Surne Bilbao Basket');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Unicaja Málaga',
  'Martín Carpena',
  'Málaga',
  11300,
  '1977-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '14-Unicaja.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Unicaja Málaga');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'UCAM Murcia',
  'Palacio de los Deportes de Murcia',
  'Murcia',
  7348,
  '1985-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '15-UcamMurcia.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'UCAM Murcia');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Valencia Basket',
  'Pabellón Municipal Fuente San Luis',
  'Valencia',
  8500,
  '1986-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '16-ValenciaBasket.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Valencia Basket');

-- Reemplazamos Leyma Coruña por el club actual Recoletas Burgos
INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'Recoletas Salud San Pablo Burgos',
  'Coliseum Burgos',
  'Burgos',
  9604,
  '1994-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '17-Burgos.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'Recoletas Salud San Pablo Burgos');

INSERT INTO clubs (name, pitch, city, capacity, start_date, titles, league_id, image_url)
SELECT
  'MoraBanc Andorra',
  'Polideportivo de Andorra',
  'Andorra la Vieja',
  5000,
  '1970-01-01',
  0,
  (SELECT id FROM leagues WHERE name = 'Liga Endesa'),
  '18-MorabancAndorra.png'
WHERE NOT EXISTS (SELECT 1 FROM clubs WHERE name = 'MoraBanc Andorra');
