SELECT 
	p.product_id,
	p.product_name,
	p.model_year,
	p.list_price,
	c.category_id,
	c.

FROM [production].[products] p;
JOIN [production].[categories] c
ON p.category_id = c.category_id
JOIN [production].[brands] b
ON p.brand_id = b.brand_id