ALTER TABLE `per`.`product` 
DROP FOREIGN KEY `fk_product_shopping_car`;
ALTER TABLE `per`.`product` 
DROP COLUMN ` id_shopping_car`,
DROP INDEX `fk_product_shopping_car` ;
;
