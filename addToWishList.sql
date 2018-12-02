DROP PROCEDURE IF EXISTS addToWishlist;

DELIMITER //
CREATE PROCEDURE addToWishlist(IN name_in VARCHAR(50), IN price_in INT, IN to_user_in VARCHAR(50), IN from_user_in VARCHAR(50),received_in BOOLEAN)
BEGIN
INSERT INTO wishlist(name, price, to_user, from_user, received) VALUES (name_in, price_in, to_user_in, from_user_in, received_in);
SELECT * FROM wishlist ORDER BY gift_id DESC LIMIT 1;
END//
DELIMITER ;