-- Data manipulation queries

-- USERS

-- view all users
SELECT * FROM users;

-- view one user
SELECT * FROM users
WHERE userID = :userID;

-- update a user
UPDATE users
SET addressID = :addressID , firstName = :firstName , lastName = :lastName , email = :email , passwordHash = :passwordHash , birthDate = :birthDate , storeCredits = :storeCredits
WHERE userID = :userID;

-- delete a user
DELETE FROM users
WHERE userID = :userID;


-- REVIEWS

-- view all reviews
SELECT * FROM reviews;

-- view reviews for a single product
SELECT * FROM reviews
WHERE productID = :productID;

-- update a review
UPDATE reviews
SET productID = :productID , userID = :userID , stars = :stars , reviewText = :reviewText , datePosted = :datePosted , lastUpdated = :lastUpdated
WHERE reviewID = :reviewID;

-- delete a review
DELETE FROM reviews
WHERE reviewID = :reviewID;


-- TAGS

-- view all tags
SELECT * FROM tags;

-- update a tag
UPDATE tags
SET tagName = :tagName
WHERE tagID = :tagID;

-- delete a tag
DELETE FROM tags
WHERE tagID = :tagID;


-- PRODUCTS_TAGS

-- view all products_tags
SELECT * FROM products_tags;

-- view all tags for a single product
SELECT tags.tagName FROM products_tags
LEFT JOIN tags ON products_tags.tagID = tags.tagID
WHERE productID = :productID;

-- update a products_tags
UPDATE products_tags
SET productID = :newProductID, tagID = :newTagID
WHERE productID = :productID AND tagID = :tagID;

-- delete a products_tags
DELETE FROM products_tags
WHERE productID = :productID AND tagID = :tagID;


-- USERS_PRODUCTS

-- view all users_products
SELECT * FROM users_products;

-- view all products in a users carts
SELECT * FROM users_products
WHERE userID = :userID;

-- update quantity of item in user cart
UPDATE users_products
SET userID = :userID, productID = :productID, quantity = :quantity
WHERE userID = :userID AND productID = :productID;

-- delete an item from user cart
DELETE FROM users_products
WHERE userID = :userID AND productID = :productID;


--Products

--Create
INSERT INTO products
    (userID, description, name, imageURL, price, datePosted, lastUpdated)
VALUES
    (0, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pharetra dui leo, id imperdiet eros scelerisque tempor. Etiam vitae magna vitae nulla sagittis fringilla a sed libero. Nunc nisi nulla, egestas ut fermentum placerat, volutpat ac justo. Suspendisse luctus imperdiet purus non tempor.", "Cryptocurrency Web App React JS Template", "/images/sample/template-1.jpg", 60, "2021-07-15","2021-07-15"),

--Read 1

SELECT * from products where productID = 1;

--Read All
SELECT * from products;

--Update


--Delete