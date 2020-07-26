SELECT `c`.`name` as 'category name', `p`.`name` as 'product name', `p`.`price`
FROM `category` as `c`
INNER JOIN `product` as `p`
ON `c`.`id_product` = `p`.`id_product`
GROUP BY `c`.`name`
ORDER BY `p`.`price` DESC
