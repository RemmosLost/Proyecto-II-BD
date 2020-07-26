SELECT `ph`.`buyer`,`product`.`name` as 'Product Name', `category`.`name` as 'Category Name', `product`.`price`
FROM `purchase_history` as `ph`
INNER JOIN `purchase`
ON `ph`.`id_purchase` = `purchase`.`id_purchase`
INNER JOIN `shopping_car`
ON `purchase`.`id_shopping_car` = `shopping_car`.`id_shopping_car`
INNER JOIN `productxshopping_car`
ON `shopping_car`.`id_shopping_car` = `productxshopping_car`.`id_shopping_car`
INNER JOIN `product`
ON `productxshopping_car`.`id_product` = `product`.`id_product`
INNER JOIN `category`
ON `product`.`id_product` = `category`.`id_product`
WHERE `product`.`price` >= 1000;