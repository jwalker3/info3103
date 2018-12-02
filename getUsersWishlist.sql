DELIMITER //
DROP PROCEDURE IF EXISTS getUserWishlist //

CREATE PROCEDURE getUserWishlist(IN user_id_in VARCHAR(50))
BEGIN
  SELECT * FROM wishlist WHERE to_user=user_id_in;
END //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS getGiftsReceived //

CREATE PROCEDURE getGiftsRecieved(IN user_id_in VARCHAR(50))
BEGIN
  SELECT * FROM wishlist WHERE to_user=user_id_in AND received=1;
END //
DELIMITER ;