DELIMITER $$
CREATE PROCEDURE top_best_califications(in n int)
BEGIN
	SELECT `username`,  `total` as calification
    FROM `calification`
    GROUP by `username`
	ORDER BY `total` DESC
    LIMIT n;
END $$
DELIMITER ;