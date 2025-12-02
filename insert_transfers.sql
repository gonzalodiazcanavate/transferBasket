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

-- ================================================================
-- TRASPASOS HACIA LOS NUEVOS CLUBES (Francia + Alemania)
-- ================================================================


-- 1) ANTOINE DIARRA → ASVEL Lyon-Villeurbanne
-- Origen: BAXI Manresa
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  250000,
  '2022-08-10',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'BAXI Manresa'),
  (SELECT id FROM clubs WHERE name = 'ASVEL Lyon-Villeurbanne'),
  p.id
FROM players p
WHERE p.name = 'Antoine' AND p.second_name = 'Diarra'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2022-08-10'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'ASVEL Lyon-Villeurbanne')
  );


-- 2) LUCAS MONTCLAIR → Monaco Basket
-- Origen: Casademont Zaragoza
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  600000,
  '2023-07-18',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'Casademont Zaragoza'),
  (SELECT id FROM clubs WHERE name = 'Monaco Basket'),
  p.id
FROM players p
WHERE p.name = 'Lucas' AND p.second_name = 'Montclair'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2023-07-18'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Monaco Basket')
  );


-- 3) MATHIEU KELLER → SIG Strasbourg
-- Origen: C. B. Gran Canaria
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  180000,
  '2022-09-01',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'C. B. Gran Canaria'),
  (SELECT id FROM clubs WHERE name = 'SIG Strasbourg'),
  p.id
FROM players p
WHERE p.name = 'Mathieu' AND p.second_name = 'Keller'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2022-09-01'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'SIG Strasbourg')
  );


-- 4) JOHANN REUTER → Bayern Munich
-- Origen: Força Lleida
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  320000,
  '2023-06-25',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'Força Lleida'),
  (SELECT id FROM clubs WHERE name = 'Bayern Munich'),
  p.id
FROM players p
WHERE p.name = 'Johann' AND p.second_name = 'Reuter'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2023-06-25'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Bayern Munich')
  );


-- 5) FELIX WAGNER → Alba Berlin
-- Origen: F. C. Barcelona
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  400000,
  '2023-08-03',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'F. C. Barcelona'),
  (SELECT id FROM clubs WHERE name = 'Alba Berlin'),
  p.id
FROM players p
WHERE p.name = 'Felix' AND p.second_name = 'Wagner'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2023-08-03'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Alba Berlin')
  );


-- 6) MARCEL HOFFMANN → Telekom Baskets Bonn
-- Origen: UCAM Murcia
INSERT INTO transfers (value, date, type, origin_id, destiny_id, player_id)
SELECT
  530000,
  '2024-07-12',
  'traspaso',
  (SELECT id FROM clubs WHERE name = 'UCAM Murcia'),
  (SELECT id FROM clubs WHERE name = 'Telekom Baskets Bonn'),
  p.id
FROM players p
WHERE p.name = 'Marcel' AND p.second_name = 'Hoffmann'
  AND NOT EXISTS (
    SELECT 1 FROM transfers t
    WHERE t.player_id = p.id
      AND t.date = '2024-07-12'
      AND t.destiny_id = (SELECT id FROM clubs WHERE name = 'Telekom Baskets Bonn')
  );
