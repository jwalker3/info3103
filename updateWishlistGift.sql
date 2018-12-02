DROP PROCEDURE IF EXISTS updateWishListGift;

DELIMITER //
CREATE PROCEDURE updateWishlistGift(IN gift_id_in INT, IN name_in VARCHAR(50), IN price_in INT, IN to_user_in VARCHAR(50), IN from_user_in VARCHAR(50), IN received_in BOOLEAN)
BEGIN
UPDATE wishlist
SET name=name_in, price=price_in, to_user=to_user_in, from_user=from_user_in, received=received_in
WHERE gift_id=gift_id_in;
SELECT * FROM wishlist WHERE gift_id=gift_id_in;
END//
DELIMITER ;