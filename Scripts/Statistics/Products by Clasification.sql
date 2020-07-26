CREATE VIEW product_by_clasification AS
	SELECT 
		`c`.`id_category` as `Category ID`,
		`c`.`name` as `Category Name`, 
		(SELECT COUNT(`pxc`.`id_product`) WHERE `pxc`.`id_category` = `Category ID`) as `Quantity`, 
        (SELECT COUNT(`pxc`.`id_product`) WHERE `pxc`.`id_category` = `Category ID`) / (SELECT count(`id_product`) FROM `product`) * 100 as `Porcent`
	FROM `category` as `c`
	INNER JOIN `productxcategory` as `pxc`
	ON `pxc`.`id_category` = `c`.`id_category`;