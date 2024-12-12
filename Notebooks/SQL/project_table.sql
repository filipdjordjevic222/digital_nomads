CREATE DATABASE IF NOT EXISTS project;

USE project;


DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather`(
    `country` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `jan` DECIMAL(5,2) NOT NULL,  
    `feb` DECIMAL(5,2) NOT NULL,
    `mar` DECIMAL(5,2) NOT NULL,
    `apr` DECIMAL(5,2) NOT NULL,
    `may` DECIMAL(5,2) NOT NULL,
    `jun` DECIMAL(5,2) NOT NULL,
    `jul` DECIMAL(5,2) NOT NULL,
    `aug` DECIMAL(5,2) NOT NULL,
    `sep` DECIMAL(5,2) NOT NULL,
    `oct` DECIMAL(5,2) NOT NULL,
    `nov` DECIMAL(5,2) NOT NULL,
    `dec` DECIMAL(5,2) NOT NULL,
    PRIMARY KEY(`country`, `city`)
);


DROP TABLE IF EXISTS `crime_rate`;
CREATE TABLE `crime_rate`(
    `country` VARCHAR(255) NOT NULL,
    `crime_index` BIGINT NOT NULL,
    `population` BIGINT NOT NULL,
    PRIMARY KEY(`country`)
);


DROP TABLE IF EXISTS `nomad_visa`;
CREATE TABLE `nomad_visa`(
    `country` VARCHAR(255) NOT NULL,
    `taxes` VARCHAR(255) NULL,
    `tax-free_period` VARCHAR(255) NULL,
    `internet_speed` BIGINT NOT NULL,
    `min_income` BIGINT NULL,
    PRIMARY KEY(`country`)
);


DROP TABLE IF EXISTS `cost_of_living_countries`;
CREATE TABLE `cost_of_living_countries`(
    `country` VARCHAR(255) NOT NULL,
    `rent_index` BIGINT NOT NULL,
    `groceries_index` BIGINT NOT NULL,
    `local_purchasing_power` BIGINT NOT NULL,
    PRIMARY KEY(`country`)
);


ALTER TABLE `cost_of_living_countries` 
    ADD CONSTRAINT `cost_of_living_countries_country_foreign`
    FOREIGN KEY(`country`) REFERENCES `weather`(`country`);

-- Add foreign key from crime_rate to weather
ALTER TABLE `crime_rate` 
    ADD CONSTRAINT `crime_rate_country_foreign`
    FOREIGN KEY(`country`) REFERENCES `weather`(`country`);

-- Add foreign key from nomad_visa to crime_rate
ALTER TABLE `nomad_visa`
    ADD CONSTRAINT `nomad_visa_country_foreign` 
    FOREIGN KEY(`country`) REFERENCES `crime_rate`(`country`);

-- Add foreign key from cost_of_living_countries to nomad_visa
ALTER TABLE `cost_of_living_countries`
    ADD CONSTRAINT `cost_of_living_countries_nomad_visa_foreign`
    FOREIGN KEY(`country`) REFERENCES `nomad_visa`(`country`);

