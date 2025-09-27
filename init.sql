-- -----------------------------------------------------
-- Schema basket
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS basket;
SET search_path TO basket;

-- -----------------------------------------------------
-- Definición de tipos personalizados
-- -----------------------------------------------------
CREATE TYPE transfer_type AS ENUM ('traspaso', 'cesión');
CREATE TYPE positions AS ENUM ('Base', 'Escolta', 'Alero', 'Ala Pivót', 'Pivót');
-- -----------------------------------------------------
-- Table countries
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS countries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL UNIQUE,
  nationality VARCHAR(64) NOT NULL
);

-- -----------------------------------------------------
-- Table leagues
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS leagues (
  id SERIAL PRIMARY KEY,
  country_id INT NOT NULL,
  name VARCHAR(64) NOT NULL,
  CONSTRAINT fk_leagues_country FOREIGN KEY (country_id)
    REFERENCES countries (id)
);

-- -----------------------------------------------------
-- Table clubs
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS clubs (
  id SERIAL PRIMARY KEY,
  league_id INT NOT NULL,
  name VARCHAR(64) NOT NULL,
  pitch VARCHAR(64) NOT NULL,
  city VARCHAR(32) NOT NULL,
  capacity INT NOT NULL,
  start_date DATE NOT NULL,
  titles INT NOT NULL,
  CONSTRAINT fk_clubs_league FOREIGN KEY (league_id)
    REFERENCES leagues (id)
);

-- -----------------------------------------------------
-- Table selections
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS selections (
  id SERIAL PRIMARY KEY,
  country_id INT NOT NULL UNIQUE,
  name VARCHAR(64) NOT NULL UNIQUE,
  CONSTRAINT fk_selections_country FOREIGN KEY (country_id)
    REFERENCES countries (id)
);

-- -----------------------------------------------------
-- Table players
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS players (
  id SERIAL PRIMARY KEY,
  club_id INT NULL,
  selection_id INT NULL,
  name VARCHAR(64) NOT NULL,
  second_name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  is_captain BOOLEAN NOT NULL,
  value BIGINT NOT NULL,
  weight DECIMAL(5,2) NOT NULL,
  is_international BOOLEAN NOT NULL,
  birth_date DATE NOT NULL,
  position positions NOT NULL,
  pp DECIMAL(4,2) NOT NULL,
  birth_place VARCHAR(64) NOT NULL,
  health VARCHAR(45) NOT NULL,
  height DECIMAL(4,2) NOT NULL,
  rp DECIMAL(4,2) NOT NULL,
  ap DECIMAL(4,2) NOT NULL,
  sp DECIMAL(4,2) NOT NULL,
  shot_pct DECIMAL(5,2) NOT NULL,
  threes_pct DECIMAL(5,2) NOT NULL,
  fp DECIMAL(4,2) NOT NULL,
  CONSTRAINT fk_players_club FOREIGN KEY (club_id)
    REFERENCES clubs (id),
  CONSTRAINT fk_players_selection FOREIGN KEY (selection_id)
    REFERENCES selections (id)
);

-- -----------------------------------------------------
-- Table clubs_squad
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS clubs_squad (
  id SERIAL PRIMARY KEY,
  club_id INT NOT NULL,
  player_id INT NOT NULL,
  signin_date DATE NOT NULL,
  contract_end DATE NOT NULL,
  salary BIGINT NOT NULL,
  value BIGINT NOT NULL,
  number SMALLINT NOT NULL,
  CONSTRAINT fk_squad_club FOREIGN KEY (club_id)
    REFERENCES clubs (id),
  CONSTRAINT fk_squad_player FOREIGN KEY (player_id)
    REFERENCES players (id)
);

-- -----------------------------------------------------
-- Table league_editions
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS league_editions (
  id SERIAL PRIMARY KEY,
  winner_id INT NOT NULL,
  league_id INT NOT NULL,
  edition VARCHAR(30) NOT NULL,
  CONSTRAINT fk_edition_league FOREIGN KEY (league_id)
    REFERENCES leagues (id),
  CONSTRAINT fk_edition_winner FOREIGN KEY (winner_id)
    REFERENCES clubs (id)
);

-- -----------------------------------------------------
-- Table league_clubs
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS league_clubs (
  id SERIAL PRIMARY KEY,
  league_edition_id INT NOT NULL,
  club_id INT NOT NULL,
  CONSTRAINT fk_leagueclubs_edition FOREIGN KEY (league_edition_id)
    REFERENCES league_editions (id),
  CONSTRAINT fk_leagueclubs_club FOREIGN KEY (club_id)
    REFERENCES clubs (id)
);

-- -----------------------------------------------------
-- Table player_nationalities
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS player_nationalities (
  id SERIAL PRIMARY KEY,
  player_id INT NOT NULL,
  country_id INT NOT NULL,
  CONSTRAINT fk_nat_player FOREIGN KEY (player_id)
    REFERENCES players (id),
  CONSTRAINT fk_nat_country FOREIGN KEY (country_id)
    REFERENCES countries (id)
);

-- -----------------------------------------------------
-- Table salaries
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS salaries (
  id SERIAL PRIMARY KEY,
  player_id INT NOT NULL,
  salary BIGINT NOT NULL,
  date DATE NOT NULL,
  CONSTRAINT fk_salary_player FOREIGN KEY (player_id)
    REFERENCES players (id)
);

-- -----------------------------------------------------
-- Table transfers
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS transfers (
  id SERIAL PRIMARY KEY,
  origin_id INT NULL,
  destiny_id INT NOT NULL,
  player_id INT NOT NULL,
  value BIGINT NOT NULL,
  date DATE NOT NULL,
  type transfer_type NOT NULL,
  CONSTRAINT fk_transfer_origin FOREIGN KEY (origin_id)
    REFERENCES clubs (id),
  CONSTRAINT fk_transfer_destiny FOREIGN KEY (destiny_id)
    REFERENCES clubs (id),
  CONSTRAINT fk_transfer_player FOREIGN KEY (player_id)
    REFERENCES players (id)
);

-- -----------------------------------------------------
-- Table values
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS values (
  id SERIAL PRIMARY KEY,
  player_id INT NOT NULL,
  value BIGINT NOT NULL,
  date DATE NOT NULL,
  CONSTRAINT fk_value_player FOREIGN KEY (player_id)
    REFERENCES players (id)
);

-- -----------------------------------------------------
-- Table users
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
  username VARCHAR(32) PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT ck_users_email_format
  CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')
);
