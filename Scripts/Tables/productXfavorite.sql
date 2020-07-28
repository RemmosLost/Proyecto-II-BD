CREATE TABLE `productxfavorite` (
  `id_product` int NOT NULL,
  `id_favorite` int NOT NULL,
  `creation_date` date DEFAULT NULL,
  `creation_user` varchar(45) DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `last_update_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_favorite`),
  UNIQUE KEY `id_produc_UNIQUE` (`id_product`),
  UNIQUE KEY `id_favorite_UNIQUE` (`id_favorite`),
  CONSTRAINT `fk_pxf_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  CONSTRAINT `fk_pxf_favorite` FOREIGN KEY (`id_favorite`) REFERENCES `favorite` (`id_favorite`)) 
  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table that stores product and favorite information. (NXN relation)'
