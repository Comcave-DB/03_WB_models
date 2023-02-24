SELECT *
FROM mydb.cats
INNER JOIN mydb.servants ON mydb.cats.id = mydb.servants.cats_id
INNER JOIN mydb.purchases ON mydb.servants.id = mydb.purchases.servants_id
INNER JOIN mydb.products ON mydb.purchases.products_id = mydb.products.id
;

SELECT
	CONCAT(servant_name, " kauft ",cat_name, " ", product_name, "!") AS "Meine Katze liebt Lachs"
FROM mydb.cats
INNER JOIN mydb.servants ON mydb.cats.id = mydb.servants.cats_id
INNER JOIN mydb.purchases ON mydb.servants.id = mydb.purchases.servants_id
INNER JOIN mydb.products ON mydb.purchases.products_id = mydb.products.id
WHERE product_name LIKE "%Lachs%"
;