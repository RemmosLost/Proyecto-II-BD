ALTER TABLE per.purchase 
	DROP FOREIGN KEY fk_purchase_purc_history;

ALTER TABLE per.purchase 
DROP COLUMN id_purchase_history,
DROP INDEX fk_purchase_purc_history_idx ;

ALTER TABLE per.purchase
	ADD `id_shopping_car` int NOT NULL,
	ADD INDEX `fk_shopping_car_idx` (`id_shopping_car` ASC) VISIBLE,
	ADD CONSTRAINT `fk_shopping_car_purchase` 
	FOREIGN KEY (`id_shopping_car`) 
		REFERENCES `per`.`shopping_car` (`id_shopping_car`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;