ALTER TABLE `per`.`product` 
DROP FOREIGN KEY `fk_product_favorite`;
ALTER TABLE `per`.`product` 
DROP COLUMN ` id_favorite`,
DROP INDEX `fk_product_favorite_idx` ;
;
