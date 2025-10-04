-- Insertar País
INSERT INTO countries (name, nationality)
VALUES ('España', 'Española')
RETURNING id;

-- Suponemos que devuelve id = 1

-- Insertar Liga
INSERT INTO leagues (country_id, name)
VALUES (1, 'Liga Endesa')
RETURNING id;

-- Suponemos que devuelve id = 1

-- Insertar Club
INSERT INTO clubs (league_id, name, pitch, city, capacity, start_date, titles)
VALUES (
  1,
  'Real Madrid',
  'WiZink Center',
  'Madrid',
  17300,
  '1931-03-22',
  36
)
RETURNING id;

-- Suponemos que devuelve id = 1

-- Insertar Jugadores (quinteto titular 2023/24: Campazzo, Musa, Hezonja, Yabusele, Tavares)
INSERT INTO players (
  club_id, selection_id, name, second_name, age, is_captain, value, weight,
  is_international, birth_date, position, pp, birth_place, health, height,
  rp, ap, sp, shot_pct, threes_pct, fp
) VALUES
(1, NULL, 'Facundo', 'Campazzo', 33, true, 2500000, 84.0, true, '1991-03-23', 'Base', 12.50, 'Córdoba, Argentina', 'Sano', 1.80, 2.50, 6.80, 1.40, 45.50, 36.00, 18.50),
(1, NULL, 'Dzanan', 'Musa', 25, false, 2000000, 98.0, true, '1999-05-08', 'Escolta', 14.20, 'Bihac, Bosnia', 'Sano', 2.05, 3.20, 2.50, 1.10, 48.20, 38.40, 19.70),
(1, NULL, 'Mario', 'Hezonja', 29, false, 1800000, 102.0, true, '1995-02-25', 'Alero', 13.80, 'Dubrovnik, Croacia', 'Sano', 2.03, 4.50, 2.00, 1.20, 46.30, 39.10, 18.40),
(1, NULL, 'Guerschon', 'Yabusele', 28, false, 2200000, 122.0, true, '1995-12-17', 'Ala_Pivót', 11.90, 'Dreux, Francia', 'Sano', 2.01, 5.10, 2.20, 1.00, 47.10, 35.20, 17.90),
(1, NULL, 'Walter', 'Tavares', 32, false, 3000000, 120.0, true, '1992-03-22', 'Pivót', 10.50, 'Maio, Cabo Verde', 'Sano', 2.20, 8.50, 1.30, 0.60, 65.40, 0.00, 20.10)
RETURNING id;

-- Suponemos que devuelve ids del 1 al 5

-- Insertar en plantilla (clubs_squad)
INSERT INTO clubs_squad (club_id, player_id, signin_date, contract_end, salary, value, number)
VALUES
(1, 1, '2023-07-01', '2026-06-30', 2500000, 2500000, 7),
(1, 2, '2022-07-01', '2025-06-30', 2000000, 2000000, 31),
(1, 3, '2022-07-01', '2025-06-30', 1800000, 1800000, 11),
(1, 4, '2021-07-01', '2024-06-30', 2200000, 2200000, 28),
(1, 5, '2017-07-01', '2025-06-30', 3000000, 3000000, 22);
