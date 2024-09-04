select
	u.user_name as vendedor,
	p.product_name,
	seller_rating.seller_note as score
from seller_rating
join seller 
	on seller.seller_id = seller_rating.seller_id 
join users u 
	on u.user_document = seller.user_document 
join product p 
	on p.seller_id = seller.seller_id 
order by 
	seller_note desc
limit 2