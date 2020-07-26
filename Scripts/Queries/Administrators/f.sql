SELECT `c`.`name` as 'category name', MIN(`p`.`price`) as 'min amount', MAX(`p`.`price`) as 'max amount'
FROM `category` as `c`
INNER JOIN `product` as `p`
ON `c`.`id_product` = `p`.`id_product`
GROUP BY `c`.`name`