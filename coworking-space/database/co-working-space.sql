-- MySQL Script generated by MySQL Workbench
-- Sat Sep 17 21:26:45 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET
@OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET
@OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET
@OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema coworkingdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coworkingdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coworkingdb` DEFAULT CHARACTER SET utf8;
USE
`coworkingdb` ;

-- -----------------------------------------------------
-- Table `coworkingdb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `coworkingdb`.`user`;

CREATE TABLE IF NOT EXISTS `coworkingdb`.`user`
(
    `id`
    INT
    NOT
    NULL
    AUTO_INCREMENT,
    `firstname`
    VARCHAR
(
    45
) NOT NULL,
    `lastname` VARCHAR
(
    45
) NOT NULL,
    `email` VARCHAR
(
    45
) NOT NULL,
    `password` VARCHAR
(
    45
) NOT NULL,
    `role` TINYINT NOT NULL,
    PRIMARY KEY
(
    `id`
),
    UNIQUE INDEX `email_UNIQUE`
(
    `email` ASC
) VISIBLE,
    UNIQUE INDEX `id_UNIQUE`
(
    `id` ASC
) VISIBLE)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coworkingdb`.`place`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `coworkingdb`.`place`;

CREATE TABLE IF NOT EXISTS `coworkingdb`.`place`
(
    `id`
    INT
    NOT
    NULL
    AUTO_INCREMENT,
    `description`
    VARCHAR
(
    45
) NOT NULL,
    `nr` VARCHAR
(
    45
) NOT NULL,
    PRIMARY KEY
(
    `id`
),
    UNIQUE INDEX `idplace_UNIQUE`
(
    `id` ASC
) VISIBLE)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coworkingdb`.`reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `coworkingdb`.`reservation`;

CREATE TABLE IF NOT EXISTS `coworkingdb`.`reservation`
(
    `id`
    INT
    NOT
    NULL
    AUTO_INCREMENT,
    `start_date`
    TIMESTAMP
    NOT
    NULL,
    `end_date`
    TIMESTAMP
    NOT
    NULL,
    `place_id`
    INT
    NOT
    NULL,
    `user_id`
    INT
    NOT
    NULL,
    PRIMARY
    KEY
(
    `id`
),
    UNIQUE INDEX `id_UNIQUE`
(
    `id` ASC
) VISIBLE,
    INDEX `fk_reservation_place_idx`
(
    `place_id` ASC
) VISIBLE,
    INDEX `fk_reservation_user1_idx`
(
    `user_id` ASC
) VISIBLE,
    CONSTRAINT `fk_reservation_place`
    FOREIGN KEY
(
    `place_id`
)
    REFERENCES `coworkingdb`.`place`
(
    `id`
)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_reservation_user1`
    FOREIGN KEY
(
    `user_id`
)
    REFERENCES `coworkingdb`.`user`
(
    `id`
)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


SET
SQL_MODE=@OLD_SQL_MODE;
SET
FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET
UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;