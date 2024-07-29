-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema olga_franco_lenceria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema olga_franco_lenceria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `olga_franco_lenceria` DEFAULT CHARACTER SET utf8 ;
USE `olga_franco_lenceria` ;

-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`category` (
  `category_id` BIGINT NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE INDEX `category_id_UNIQUE` (`category_id` ASC) VISIBLE,
  UNIQUE INDEX `category_name_UNIQUE` (`category_name` ASC) VISIBLE,
  UNIQUE INDEX `description_UNIQUE` (`description` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`products` (
  `product_id` BIGINT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(100) NOT NULL,
  `price` DECIMAL(8,2) NOT NULL,
  `size` VARCHAR(50) NOT NULL,
  `color` VARCHAR(50) NOT NULL,
  `stock` INT NULL,
  `image_url` VARCHAR(200) NULL,
  `fk_category_id` BIGINT NOT NULL,
  `category_category_id` BIGINT NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE INDEX `product_id_UNIQUE` (`product_id` ASC) VISIBLE,
  INDEX `fk_products_category1_idx` (`category_category_id` ASC) VISIBLE,
  CONSTRAINT `fk_products_category1`
    FOREIGN KEY (`category_category_id`)
    REFERENCES `olga_franco_lenceria`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`users` (
  `users_id` BIGINT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(50) NOT NULL,
  `user_lastname` VARCHAR(50) NULL,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `register_date_time` DATETIME NOT NULL,
  PRIMARY KEY (`users_id`),
  UNIQUE INDEX `users_id_UNIQUE` (`users_id` ASC) VISIBLE,
  UNIQUE INDEX `password_UNIQUE` (`password` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`stock` (
  `stock_id` BIGINT NOT NULL AUTO_INCREMENT,
  `fk_product_id` BIGINT NOT NULL,
  `stock_quantity` INT NULL,
  `update_date` DATETIME NOT NULL,
  `products_product_id` BIGINT NOT NULL,
  PRIMARY KEY (`stock_id`, `products_product_id`),
  UNIQUE INDEX `stock_id_UNIQUE` (`stock_id` ASC) VISIBLE,
  INDEX `fk_stock_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_stock_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `olga_franco_lenceria`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`orders` (
  `order_id` BIGINT NOT NULL,
  `fk_user_id` BIGINT NOT NULL,
  `order_date` TIMESTAMP NOT NULL,
  `status` VARCHAR(50) NOT NULL,
  `fk_product_id` BIGINT NOT NULL,
  `users_users_id` BIGINT NOT NULL,
  PRIMARY KEY (`order_id`, `users_users_id`),
  UNIQUE INDEX `order_id_UNIQUE` (`order_id` ASC) VISIBLE,
  UNIQUE INDEX `fk_user_id_UNIQUE` (`fk_user_id` ASC) VISIBLE,
  INDEX `fk_orders_users1_idx` (`users_users_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_users1`
    FOREIGN KEY (`users_users_id`)
    REFERENCES `olga_franco_lenceria`.`users` (`users_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`orders_has_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`orders_has_products` (
  `orders_id` BIGINT NOT NULL,
  `products_id` BIGINT NOT NULL,
  PRIMARY KEY (`orders_id`, `products_id`),
  INDEX `fk_orders_has_products_products1_idx` (`products_id` ASC) VISIBLE,
  INDEX `fk_orders_has_products_orders_idx` (`orders_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_has_products_orders`
    FOREIGN KEY (`orders_id`)
    REFERENCES `olga_franco_lenceria`.`orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_has_products_products1`
    FOREIGN KEY (`products_id`)
    REFERENCES `olga_franco_lenceria`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`privileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`privileges` (
  `privileges_id` BIGINT NOT NULL,
  `privilege` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`privileges_id`),
  UNIQUE INDEX `privilege_UNIQUE` (`privilege` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `olga_franco_lenceria`.`privileges_has_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olga_franco_lenceria`.`privileges_has_users` (
  `privileges_privileges_id` BIGINT NOT NULL,
  `users_users_id` BIGINT NOT NULL,
  PRIMARY KEY (`privileges_privileges_id`, `users_users_id`),
  INDEX `fk_privileges_has_users_users1_idx` (`users_users_id` ASC) VISIBLE,
  INDEX `fk_privileges_has_users_privileges1_idx` (`privileges_privileges_id` ASC) VISIBLE,
  CONSTRAINT `fk_privileges_has_users_privileges1`
    FOREIGN KEY (`privileges_privileges_id`)
    REFERENCES `olga_franco_lenceria`.`privileges` (`privileges_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_privileges_has_users_users1`
    FOREIGN KEY (`users_users_id`)
    REFERENCES `olga_franco_lenceria`.`users` (`users_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
