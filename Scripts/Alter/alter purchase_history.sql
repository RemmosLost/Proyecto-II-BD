ALTER TABLE purhcase_history
ADD `id_purchase` int NOT NULL,
ADD `buyer` VARCHAR(20) NOT NULL,
ADD INDEX `fk_purchase_idx` (`id_purchase` ASC) VISIBLE,
ADD INDEX `fk_buyer_idx` (`buyer` ASC) VISIBLE,
ADD CONSTRAINT `fk_purchase_purchase_history` 
	FOREIGN KEY (`id_purchase`) 
	REFERENCES `per`.`purchase` (`id_purchase`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_buyer_purhcase_history` 
	FOREIGN KEY (`buyer`) 
	REFERENCES `per`.`user` (`username`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;