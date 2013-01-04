SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `soigan` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `soigan` ;

-- -----------------------------------------------------
-- Table `soigan`.`user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT ,
  `user` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `date` DATETIME NULL ,
  `lasttime` TIMESTAMP NULL ,
  `avatar` VARCHAR(45) NULL ,
  `sign` TEXT NULL ,
  `ip` VARCHAR(45) NULL ,
  `rang` VARCHAR(45) NULL ,
  `mail` VARCHAR(45) NULL ,
  `barre` VARCHAR(45) NULL ,
  `age` VARCHAR(45) NULL ,
  `sexe` INT NULL ,
  PRIMARY KEY (`iduser`) )
ENGINE = CSV;


-- -----------------------------------------------------
-- Table `soigan`.`news`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`news` (
  `idnews` INT NOT NULL AUTO_INCREMENT ,
  `titre` VARCHAR(45) NULL ,
  `contenus` TEXT NULL ,
  `date` DATETIME NULL ,
  `iduser` INT NULL ,
  `photo` VARCHAR(45) NULL ,
  `statut` VARCHAR(45) NULL ,
  PRIMARY KEY (`idnews`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soigan`.`user_has_news`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`user_has_news` (
  `user_id` INT NOT NULL ,
  `news_id` INT NOT NULL ,
  PRIMARY KEY (`user_id`, `news_id`) ,
  INDEX `fk_user_has_news_news1_idx` (`news_id` ASC) ,
  INDEX `fk_user_has_news_user_idx` (`user_id` ASC) )
ENGINE = CSV;


-- -----------------------------------------------------
-- Table `soigan`.`commentaire`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`commentaire` (
  `idcommentaire` INT NOT NULL AUTO_INCREMENT ,
  `id_user` INT NULL ,
  `id_news` INT NULL ,
  `contenus` TEXT NULL ,
  `date` DATETIME NULL ,
  PRIMARY KEY (`idcommentaire`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soigan`.`staff`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`staff` (
  `idstaff` INT NOT NULL AUTO_INCREMENT ,
  `rang` VARCHAR(45) NULL ,
  `id_user` INT NULL ,
  `password` VARCHAR(45) NULL ,
  PRIMARY KEY (`idstaff`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soigan`.`forum`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`forum` (
  `idforum` INT NOT NULL AUTO_INCREMENT ,
  `titreforum` VARCHAR(45) NULL ,
  `description` VARCHAR(45) NULL ,
  `statut` INT NULL ,
  PRIMARY KEY (`idforum`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soigan`.`topic`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`topic` (
  `idtopic` INT NOT NULL AUTO_INCREMENT ,
  `auteur` VARCHAR(45) NULL ,
  `titre` VARCHAR(45) NULL ,
  `date` DATETIME NULL ,
  `contentenus` TEXT NULL ,
  `idforum` INT NULL ,
  `statut` INT NULL ,
  PRIMARY KEY (`idtopic`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soigan`.`table2`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`table2` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soigan`.`message`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`message` (
  `idmessage` INT NOT NULL AUTO_INCREMENT ,
  `auteur` VARCHAR(45) NULL ,
  `contenus` TEXT NULL ,
  `date` DATETIME NULL ,
  `idtopic` INT NULL ,
  `statut` INT NULL ,
  PRIMARY KEY (`idmessage`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soigan`.`mp`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `soigan`.`mp` (
  `idmp` INT NOT NULL AUTO_INCREMENT ,
  `auteur` VARCHAR(45) NULL ,
  `destinataire` VARCHAR(45) NULL ,
  `date` DATETIME NULL ,
  `objet` VARCHAR(45) NULL ,
  `contenus` VARCHAR(45) NULL ,
  `statut` VARCHAR(45) NULL ,
  PRIMARY KEY (`idmp`) )
ENGINE = InnoDB;

USE `soigan` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
