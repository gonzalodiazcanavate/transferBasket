/*
  Warnings:

  - You are about to drop the column `value` on the `players` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "clubs" ADD COLUMN     "image_url" VARCHAR(255);

-- AlterTable
ALTER TABLE "countries" ADD COLUMN     "image_url" VARCHAR(255);

-- AlterTable
ALTER TABLE "leagues" ADD COLUMN     "image_url" VARCHAR(255);

-- AlterTable
ALTER TABLE "players" DROP COLUMN "value",
ADD COLUMN     "image_url" VARCHAR(255);

-- AlterTable
ALTER TABLE "selections" ADD COLUMN     "image_url" VARCHAR(255);

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "image_url" VARCHAR(255);
