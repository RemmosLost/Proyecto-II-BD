DELIMITER $$
CREATE PROCEDURE top_buyers(in n int)
BEGIN
	SELECT `buyer`, count(`buyer`) as quantity
    FROM `purchase_history`
    GROUP BY `buyer`
    ORDER BY quantity DESC
    LIMIT n;
END $$
DELIMITER ;