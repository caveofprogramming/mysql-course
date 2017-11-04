
DROP DATABASE IF EXISTS CAVE_ART_SHOP;
CREATE DATABASE CAVE_ART_SHOP;
USE CAVE_ART_SHOP;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address_line_1` varchar(45) NOT NULL,
  `address_line_2` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `region` varchar(45) DEFAULT NULL,
  `country` varchar(45) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `registered` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `artworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(250) NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `materials` varchar(100) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_artworks_category1_idx` (`category_id`),
  CONSTRAINT `fk_artworks_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artworks_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `sold_at` datetime NOT NULL,
  `sale_price` decimal(6,2) NOT NULL,
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `shipped_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sales_artworks_idx` (`artworks_id`),
  KEY `fk_sales_customers1_idx` (`customers_id`),
  CONSTRAINT `fk_sales_artworks` FOREIGN KEY (`artworks_id`) REFERENCES `artworks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_customers1` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
