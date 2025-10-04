-- CreateEnum
CREATE TYPE "transfer_type" AS ENUM ('traspaso', 'cesion');

-- CreateEnum
CREATE TYPE "positions" AS ENUM ('Base', 'Escolta', 'Alero', 'Ala_Pivót', 'Pivót');

-- CreateTable
CREATE TABLE "countries" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(64) NOT NULL,
    "nationality" VARCHAR(64) NOT NULL,

    CONSTRAINT "countries_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "leagues" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(64) NOT NULL,
    "country_id" INTEGER NOT NULL,

    CONSTRAINT "leagues_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clubs" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(64) NOT NULL,
    "pitch" VARCHAR(64) NOT NULL,
    "city" VARCHAR(32) NOT NULL,
    "capacity" INTEGER NOT NULL,
    "start_date" DATE NOT NULL,
    "titles" INTEGER NOT NULL,
    "league_id" INTEGER NOT NULL,

    CONSTRAINT "clubs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "selections" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(64) NOT NULL,
    "country_id" INTEGER NOT NULL,

    CONSTRAINT "selections_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "players" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(64) NOT NULL,
    "second_name" VARCHAR(255) NOT NULL,
    "age" INTEGER NOT NULL,
    "is_captain" BOOLEAN NOT NULL,
    "value" INTEGER NOT NULL,
    "weight" DECIMAL(5,2) NOT NULL,
    "is_international" BOOLEAN NOT NULL,
    "birth_date" DATE NOT NULL,
    "position" "positions" NOT NULL,
    "pp" DECIMAL(4,2) NOT NULL,
    "birth_place" VARCHAR(64) NOT NULL,
    "health" VARCHAR(45) NOT NULL,
    "height" DECIMAL(4,2) NOT NULL,
    "rp" DECIMAL(4,2) NOT NULL,
    "ap" DECIMAL(4,2) NOT NULL,
    "sp" DECIMAL(4,2) NOT NULL,
    "shot_pct" DECIMAL(5,2) NOT NULL,
    "threes_pct" DECIMAL(5,2) NOT NULL,
    "fp" DECIMAL(4,2) NOT NULL,
    "club_id" INTEGER,
    "selection_id" INTEGER,

    CONSTRAINT "players_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clubs_squad" (
    "id" SERIAL NOT NULL,
    "signin_date" DATE NOT NULL,
    "contract_end" DATE NOT NULL,
    "salary" INTEGER NOT NULL,
    "value" INTEGER NOT NULL,
    "number" INTEGER NOT NULL,
    "club_id" INTEGER NOT NULL,
    "player_id" INTEGER NOT NULL,

    CONSTRAINT "clubs_squad_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "league_editions" (
    "id" SERIAL NOT NULL,
    "edition" VARCHAR(30) NOT NULL,
    "league_id" INTEGER NOT NULL,
    "winner_id" INTEGER NOT NULL,

    CONSTRAINT "league_editions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "league_clubs" (
    "id" SERIAL NOT NULL,
    "league_edition_id" INTEGER NOT NULL,
    "club_id" INTEGER NOT NULL,

    CONSTRAINT "league_clubs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "player_nationalities" (
    "id" SERIAL NOT NULL,
    "player_id" INTEGER NOT NULL,
    "country_id" INTEGER NOT NULL,

    CONSTRAINT "player_nationalities_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "salaries" (
    "id" SERIAL NOT NULL,
    "salary" INTEGER NOT NULL,
    "date" DATE NOT NULL,
    "player_id" INTEGER NOT NULL,

    CONSTRAINT "salaries_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "transfers" (
    "id" SERIAL NOT NULL,
    "value" INTEGER NOT NULL,
    "date" DATE NOT NULL,
    "type" "transfer_type" NOT NULL,
    "origin_id" INTEGER,
    "destiny_id" INTEGER NOT NULL,
    "player_id" INTEGER NOT NULL,

    CONSTRAINT "transfers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "values" (
    "id" SERIAL NOT NULL,
    "value" INTEGER NOT NULL,
    "date" DATE NOT NULL,
    "player_id" INTEGER NOT NULL,

    CONSTRAINT "values_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "users" (
    "username" VARCHAR(32) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "users_pkey" PRIMARY KEY ("username")
);

-- CreateIndex
CREATE UNIQUE INDEX "countries_name_key" ON "countries"("name");

-- CreateIndex
CREATE UNIQUE INDEX "selections_name_key" ON "selections"("name");

-- CreateIndex
CREATE UNIQUE INDEX "selections_country_id_key" ON "selections"("country_id");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- AddForeignKey
ALTER TABLE "leagues" ADD CONSTRAINT "leagues_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "countries"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clubs" ADD CONSTRAINT "clubs_league_id_fkey" FOREIGN KEY ("league_id") REFERENCES "leagues"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "selections" ADD CONSTRAINT "selections_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "countries"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "players" ADD CONSTRAINT "players_club_id_fkey" FOREIGN KEY ("club_id") REFERENCES "clubs"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "players" ADD CONSTRAINT "players_selection_id_fkey" FOREIGN KEY ("selection_id") REFERENCES "selections"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clubs_squad" ADD CONSTRAINT "clubs_squad_club_id_fkey" FOREIGN KEY ("club_id") REFERENCES "clubs"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "clubs_squad" ADD CONSTRAINT "clubs_squad_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "league_editions" ADD CONSTRAINT "league_editions_league_id_fkey" FOREIGN KEY ("league_id") REFERENCES "leagues"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "league_editions" ADD CONSTRAINT "league_editions_winner_id_fkey" FOREIGN KEY ("winner_id") REFERENCES "clubs"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "league_clubs" ADD CONSTRAINT "league_clubs_league_edition_id_fkey" FOREIGN KEY ("league_edition_id") REFERENCES "league_editions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "league_clubs" ADD CONSTRAINT "league_clubs_club_id_fkey" FOREIGN KEY ("club_id") REFERENCES "clubs"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "player_nationalities" ADD CONSTRAINT "player_nationalities_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "player_nationalities" ADD CONSTRAINT "player_nationalities_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "countries"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "salaries" ADD CONSTRAINT "salaries_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transfers" ADD CONSTRAINT "transfers_origin_id_fkey" FOREIGN KEY ("origin_id") REFERENCES "clubs"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transfers" ADD CONSTRAINT "transfers_destiny_id_fkey" FOREIGN KEY ("destiny_id") REFERENCES "clubs"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transfers" ADD CONSTRAINT "transfers_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "values" ADD CONSTRAINT "values_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "players"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
