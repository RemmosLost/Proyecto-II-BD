ALTER TABLE user
ADD `id_person` int NOT NULL,
ADD INDEX `fk_person_idx` (`id_person` ASC) VISIBLE,
ADD CONSTRAINT `fk_user_person` 
	FOREIGN KEY (`id_person`) 
	REFERENCES `per`.`person` (`id_person`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;