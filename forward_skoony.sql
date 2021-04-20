-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Skoony
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Skoony
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Skoony` DEFAULT CHARACTER SET utf8 ;
USE `Skoony` ;

-- -----------------------------------------------------
-- Table `Skoony`.`adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Skoony`.`adresse` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rue` VARCHAR(45) NOT NULL,
  `ville` VARCHAR(45) NOT NULL,
  `code_postal` INT NOT NULL,
  `geolocalisation` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Skoony`.`skooner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Skoony`.`skooner` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pseudo` VARCHAR(45) NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `adresse_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_skooner_adresse1_idx` (`adresse_id` ASC) VISIBLE,
  CONSTRAINT `fk_skooner_adresse1`
    FOREIGN KEY (`adresse_id`)
    REFERENCES `Skoony`.`adresse` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Skoony`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Skoony`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `administrateur` VARCHAR(45) NOT NULL,
  `collecteur` VARCHAR(45) NOT NULL,
  `preteur` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Skoony`.`evenement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Skoony`.`evenement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `adresse_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_evenement_adresse1_idx` (`adresse_id` ASC) VISIBLE,
  CONSTRAINT `fk_evenement_adresse1`
    FOREIGN KEY (`adresse_id`)
    REFERENCES `Skoony`.`adresse` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Skoony`.`participant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Skoony`.`participant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `activite` VARCHAR(45) NOT NULL,
  `role_id` INT NOT NULL,
  `evenement_id` INT NOT NULL,
  `skooner_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pariticipant_role1_idx` (`role_id` ASC) VISIBLE,
  INDEX `fk_pariticipant_evenement1_idx` (`evenement_id` ASC) VISIBLE,
  INDEX `fk_pariticipant_skooner1_idx` (`skooner_id` ASC) VISIBLE,
  CONSTRAINT `fk_pariticipant_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `Skoony`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pariticipant_evenement1`
    FOREIGN KEY (`evenement_id`)
    REFERENCES `Skoony`.`evenement` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pariticipant_skooner1`
    FOREIGN KEY (`skooner_id`)
    REFERENCES `Skoony`.`skooner` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
