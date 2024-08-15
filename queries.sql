-- autori me me se shumti libra 
SELECT  author_id, COUNT(*) AS book_count
FROM  booklibrary.books
GROUP BY  author_id
ORDER BY  book_count DESC LIMIT 1;

-- libri me i shtrenjt tek me i liri
SELECT books.title , books.price 
FROM booklibrary.books
ORDER BY books.price DESC;

-- produkti qe nuk eshte ne stok
SELECT books.title , books.stock
FROM booklibrary.books
WHERE books.stock = 0;

-- orderi me i madh	
SELECT orders.id, orders.total 
FROM booklibrary.orders
ORDER BY orders.total DESC LIMIT 1;

-- autori me me ae shumti stock te librav

SELECT authors.name, 
    SUM(books.stock) AS total_stock
FROM  authors
JOIN  books ON authors.id = books.author_id
GROUP BY authors.id
ORDER BY total_stock DESC LIMIT 1;

