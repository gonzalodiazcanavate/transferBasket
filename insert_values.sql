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
SELECT p.id, 500000, '2018-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2018-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1500000, '2019-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2019-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2500000, '2020-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2020-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 2800000, '2021-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2021-07-01'
  );

  INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1300000, '2022-07-01'
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

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 12500000, '2025-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2025-07-01'
  );

INSERT INTO "values" (player_id, value, date)
SELECT p.id, 1000000, '2026-07-01'
FROM players p
JOIN clubs c ON c.id = p.club_id
WHERE c.name = 'Real Madrid'
  AND p.name = 'Facundo' AND p.second_name = 'Campazzo'
  AND NOT EXISTS (
    SELECT 1 FROM "values" v
    WHERE v.player_id = p.id AND v.date = '2026-07-01'
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
