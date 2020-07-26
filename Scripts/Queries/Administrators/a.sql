DELIMITER $$
CREATE PROCEDURE top_sellers(in n int)
BEGIN
	SELECT `product`.`username`, count(`product`.`username`) as quantity
    FROM `purchase`
    INNER JOIN `shopping_car`
    ON `purchase`.`id_shopping_car` = `shopping_car`.`is_shopping_car`
    INNER JOIN `productxshopping_car`
    ON `shopping_car`.`id_shopping_car` = `productxshopping_car`.`id_shopping_car`
    INNER JOIN `product`
    ON `productxshopping_car`.`id_product` = `product`.`id_product`
    GROUP BY `product`.`username`
    ORDER BY quantity DESC
    LIMIT n;
END $$
DELIMITER ;