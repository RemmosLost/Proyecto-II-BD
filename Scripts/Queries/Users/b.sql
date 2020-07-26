DELIMITER $$
CREATE PROCEDURE history_purhcase_time(in months int)
BEGIN
	SELECT `id_purchase`, `creation_date`
	FROM `purchase_history`
	WHERE TIMESTAMPDIFF(MONTH, `creation_date`, CURDATE()) <= months;
END $$
DELIMITER ;