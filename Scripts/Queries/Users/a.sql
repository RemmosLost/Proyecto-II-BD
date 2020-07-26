DELIMITER $$
CREATE PROCEDURE search_product(in product VARCHAR(20))
BEGIN
	SELECT `id_product`, `name`
    FROM `product`
    WHERE `name` LIKE CONCAT(product,'%')
    OR `name` LIKE CONCAT('%', product);
END $$
DELIMITER ;