DELIMITER $$
CREATE PROCEDURE top_worst_califications(in n int)
BEGIN
	SELECT `username`,  `total` as calification
    FROM `calification`
    GROUP by `username`
	ORDER BY `total` ASC
    LIMIT n;
END $$
DELIMITER ;