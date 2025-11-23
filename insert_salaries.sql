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
(2200000, '2023-07-01', (SELECT id FROM players WHERE name = 'Facu' AND second_name = 'Campazzo'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(2310000, '2024-07-01', (SELECT id FROM players WHERE name = 'Facu' AND second_name = 'Campazzo'
      AND club_id = (SELECT id FROM clubs WHERE name = 'Real Madrid')
    LIMIT 1)),
(2420000, '2025-07-01', (SELECT id FROM players WHERE name = 'Facu' AND second_name = 'Campazzo'
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