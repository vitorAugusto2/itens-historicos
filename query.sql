SELECT
	u.user_name AS vendedor,
	p.product_name,
	seller_rating.seller_note AS score
FROM seller_rating
JOIN seller 
	ON seller.seller_id = seller_rating.seller_id 
JOIN users u 
	ON u.user_document = seller.user_document 
JOIN product p 
	ON p.seller_id = seller.seller_id 
ORDER BY
	seller_note DESC
LIMIT 2
