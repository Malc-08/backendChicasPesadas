USE olga_franco_lenceria;

INSERT INTO products(product_name,color,price,size,stock,image_url,fk_category_id,category_category_id) VALUES
("Body Damon","Wine with black",799.99,"Small",30,"https://i.ibb.co/jgs6Sbf/IMG-4137.jpg",1,1),
("Body Carmina","Black",799.99,"Medium",20,"https://i.ibb.co/jgs6Sbf/IMG-4138.jpg",1,1),
("Bustier Ale","Pink with yellow",799.99,"Large",35,"https://i.ibb.co/jgs6Sbf/IMG-4138.jpg",2,2),
("Set Angel","White",799.99,"Small",33,"https://i.ibb.co/jgs6Sbf/IMG-4139.jpg",3,3),
("Set Daniela","Green with Lilac",799.99,"Small",26,"https://i.ibb.co/yR9j0J8/s1kq1j77mst8vqvfc20220201221112.jpg",3,3),
("Set Cordelia","Black",799.99,"Small",31, "https://i.ibb.co/GCn184F/sxpmyquavfoaf687m20220201221112.jpg",3,3),
("Set Vedette","Beige",799.99,"Medium",38,"https://i.ibb.co/L5GxZ2v/sr57xve5cmzww2lg220220201214724.jpg",3,3),
("Set Catalina","Black",799.99,"Large",21,"https://i.ibb.co/XkXJB9r/sr1lai7zpb3vwv2ng20220201214725.jpg",3,3),
("Set Florentina","Beige with black",799.99,"ExtraLarge",31,"https://i.ibb.co/2s7K83W/sn5p795h8ytyrn0ov20220201221112.jpg",3,3),
("Set Susan","Orange with green",799.99,"Medium",30,"https://i.ibb.co/qszwrr6/sox32n6aza5ex17ch20220201221112.jpg",3,3)
;
 


INSERT INTO category(category_name,description) VALUES
("Bodys","Ropa ajustada que cubre todo el torso"), -- 1
("Bustiers","Prenda ajustada que cubre el busto y la cintura"), -- 2
("Sets","Conjuntos de ropa coordinados"), -- 3
("Swimwear","Ropa para nadar y actividades acuáticas"), -- 4
("Activewear","Ropa diseñada para actividades físicas y deportivas") -- 5
;

INSERT INTO users(user_name, user_lastname, email, password, phone, address, register_date_time) VALUES 
('Juan', 'Pérez', 'juan.perez@example.com', 'password123', '555-1234', '123 Calle Principal', '2024-07-28 10:00:00'),
('María', 'García', 'maria.garcia@example.com', 'password456', '555-5678', '456 Avenida Secundaria', '2024-07-28 11:00:00'),
('Carlos', 'Hernández', 'carlos.hernandez@example.com', 'password789', '555-9012', '789 Bulevar Tercero', '2024-07-28 12:00:00'),
('Ana', 'López', 'ana.lopez@example.com', 'password321', '555-3456', '1010 Calle Cuarta', '2024-07-28 13:00:00'),
('Luis', 'Martínez', 'luis.martinez@example.com', 'password654', '555-7890', '1111 Avenida Quinta', '2024-07-28 14:00:00'),
('Elena', 'Gómez', 'elena.gomez@example.com', 'password987', '555-2345', '1212 Bulevar Sexto', '2024-07-28 15:00:00')
;

INSERT INTO stock(fk_product_id,stock_quantity,update_date,products_product_id) VALUES
(1, 123, '2024-09-10 09:00:00', 1),
(2, 125, '2024-10-05 14:00:00', 2),
(3, 1788, '2024-11-20 10:00:00', 3),
(4, 1565, '2024-11-22 11:00:00', 4),
(5, 563, '2024-11-20 10:00:00', 5)

;

 
INSERT INTO orders(fk_user_id,order_date, status, fk_product_id,users_users_id) VALUES 
(1,'2024-05-26 14:02:00', "pending", 1,1),
(2,'2024-03-23 10:00:00', "pending", 2,2),
(3,'2024-02-12 07:00:00', "pending", 3,2),
(4,'2024-02-20 19:23:00', "pending", 4,1),
(5,'2024-01-20 08:12:00', "pending", 5,2)
;
 


INSERT INTO privileges(privilege) VALUES
('Read Access'),
('Write Access'),
('Execute Access'),
('Admin Access')
;

INSERT INTO privileges_has_users(privileges_privileges_id,users_users_id) VALUES
(1,1),
(2,1),
(3,2),
(4,1),
(4,3)
;


INSERT INTO orders_has_products(orders_id,products_id) VALUES
(1,9),
(1,7),
(2,5),
(1,3),
(3,10)
;
