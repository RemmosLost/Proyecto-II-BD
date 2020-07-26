CREATE TABLE `per`.`calification` (
  `id_calification` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(10) CHECK (type in ('buyer','seller')),
  `total` INT NULL,
  `username` VARCHAR(20) NOT NULL,
  `creation_date` DATE NULL,
  `creation_user` VARCHAR(45) NULL,
  `last_update_date` DATE NULL,
  `last_update_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id_calification`),
  UNIQUE INDEX `id_calification_UNIQUE` (`id_calification` ASC) VISIBLE,
  INDEX `fk_username_idx` (`username` ASC) VISIBLE,
  CONSTRAINT `fk_username_calification` 
	FOREIGN KEY (`username`) 
	REFERENCES `per`.`user` (`username`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION)
  COMMENT = 'Table that stores calification information.';
  DROP TRIGGER IF EXISTS `per`.`canton_BEFORE_INSERT`;

DELIMITER $$
USE `per`$$
CREATE DEFINER = CURRENT_USER TRIGGER `per`.`calification_BEFORE_INSERT` BEFORE INSERT ON `calification` FOR EACH ROW
BEGIN
IF NEW.creation_date IS NULL OR NEW.creation_user IS NULL THEN 
        SET NEW.creation_date = CURDATE();
        SET NEW.creation_user = SYSTEM_USER();
    END IF;
END$$
DELIMITER ;
DROP TRIGGER IF EXISTS `per`.`calification_BEFORE_UPDATE`;

DELIMITER $$
USE `per`$$
CREATE DEFINER = CURRENT_USER TRIGGER `per`.`calification_BEFORE_UPDATE` BEFORE UPDATE ON `calification` FOR EACH ROW
BEGIN
IF NEW.last_update_date IS NULL OR NEW.last_update_user IS NULL THEN
        SET NEW.last_update_date = CURDATE();
        SET NEW.last_update_user = SYSTEM_USER();
END IF;
END$$
DELIMITER ;