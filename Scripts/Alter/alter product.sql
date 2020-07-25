ALTER TABLE product
ADD `username` VARCHAR(20) NOT NULL,
ADD INDEX `fk_username_idx` (`username` ASC) VISIBLE,
ADD CONSTRAINT `fk_username_product` 
	FOREIGN KEY (`username`) 
	REFERENCES `per`.`user` (`username`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;