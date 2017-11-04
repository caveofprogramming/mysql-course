DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `band` varchar(50) NOT NULL,
  `song` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

alter table music add index idx_band(band);
alter table music drop index idx_band;
