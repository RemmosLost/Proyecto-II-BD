CREATE TABLE `per`.`productXcategory` (
  `id_product` INT NOT NULL,
  `id_category` INT NOT NULL,
  `creation_date` DATE NULL,
  `creation_user` VARCHAR(45) NULL,
  `last_update_date` DATE NULL,
  `last_update_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id_product`, `id_category`),
  UNIQUE INDEX `id_product_UNIQUE` (`id_product` ASC) VISIBLE,
  UNIQUE INDEX `id_category_UNIQUE` (`id_category` ASC) VISIBLE,
  CONSTRAINT `fk_pxc_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `per`.`product` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pxc_category`
    FOREIGN KEY (`id_category`)
    REFERENCES `per`.`category` (`id_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'Table that stores product and category information. (NXN relation)';
DROP TRIGGER IF EXISTS `per`.`productXcategory_BEFORE_INSERT`;

DELIMITER $$
USE `per`$$
CREATE DEFINER = CURRENT_USER TRIGGER `per`.`productXcategory_BEFORE_INSERT` BEFORE INSERT ON `productXcategory` FOR EACH ROW
BEGIN
IF NEW.creation_date IS NULL OR NEW.creation_user IS NULL THEN 
        SET NEW.creation_date = CURDATE();
        SET NEW.creation_user = SYSTEM_USER();
    END IF;
END$$
DELIMITER ;
DROP TRIGGER IF EXISTS `per`.`productXcategory_BEFORE_UPDATE`;

DELIMITER $$
USE `per`$$
CREATE DEFINER = CURRENT_USER TRIGGER `per`.`productXcategory_BEFORE_UPDATE` BEFORE UPDATE ON `productXcategory` FOR EACH ROW
BEGIN
IF NEW.last_update_date IS NULL OR NEW.last_update_user IS NULL THEN
        SET NEW.last_update_date = CURDATE();
        SET NEW.last_update_user = SYSTEM_USER();
END IF;
END$$
DELIMITER ;
