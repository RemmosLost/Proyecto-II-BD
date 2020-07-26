SELECT `p`.`username`, `p`.`id_product`, `p`.`name`
FROM `purchase`
INNER JOIN `shopping_car`
ON `purchase`.`id_shopping_car` = `shopping_car`.`id_shopping_car`
INNER JOIN `productxshopping_car` as `pxs`
ON `shopping_car`.`id_shopping_car` = `pxs`.`id_shopping_car`
INNER JOIN `product` as `p`
ON `pxs`.`id_product` = `p`.`id_product`