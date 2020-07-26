ALTER TABLE review
ADD `id_calification` INT NOT NULL,
ADD INDEX `fk_calification_idx` (`id_calification` ASC) VISIBLE,
ADD CONSTRAINT `fk_review_calification` 
	FOREIGN KEY (`id_calification`) 
	REFERENCES `per`.`calification` (`id_calification`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;