ALTER TABLE `per`.`shopping_car` 
DROP FOREIGN KEY `fk_shop_car_purchase`;
ALTER TABLE `per`.`shopping_car` 
DROP COLUMN `id_purchase`,
DROP INDEX `fk_shop_car_purchase_idx` ;