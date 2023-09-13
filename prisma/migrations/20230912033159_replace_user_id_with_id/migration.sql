/*
  Warnings:

  - The primary key for the `Image` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `image_id` on the `Image` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Image" DROP CONSTRAINT "Image_pkey",
DROP COLUMN "image_id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Image_pkey" PRIMARY KEY ("id");
