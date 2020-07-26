CREATE VIEW sellers_by_gender AS
	SELECT 
		`g`.`id_gender` as `Gender ID`,
        `g`.`name` as `Gender Name`, 
		(SELECT COUNT(`person`.`id_gender`) WHERE `person`.`id_gender` = `Gender ID`) as `Quantity`,
        (SELECT COUNT(`person`.`id_gender`) WHERE `person`.`id_gender` = `Gender ID`) / (SELECT COUNT(DISTINCT(`username`)) FROM `product`) * 100 as `Porcent`
    FROM `product` as `p`
    INNER JOIN `user` as `u`
    ON `p`.`username` = `u`.`username`
    INNER JOIN `person`
    ON `person`.`id_person` = `u`.`id_person`
    INNER JOIN `gender` as `g`
    ON `g`.`id_gender` = `person`.`id_gender`