-- E-commerce Database Schema (Entity Relationship Diagram Database)

-- 1. brand
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL
);

-- 2. product_category
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- 3. color
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL
);

-- 4. size_category
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_name VARCHAR(100) NOT NULL
);

-- 5. size_option
CREATE TABLE size_option (
    size_id INT AUTO_INCREMENT PRIMARY KEY,
    size_name VARCHAR(50) NOT NULL,
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- 6. product
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- 7. product_item
CREATE TABLE product_item (
    product_item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    stock_quantity INT DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- 8. product_variation
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- 9. product_image
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 10. attribute_category
CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- 11. attribute_type
CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    attribute_name VARCHAR(100) NOT NULL,
    attribute_category_id INT,
    data_type ENUM('text', 'number', 'boolean') NOT NULL,
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id)
);

-- 12. product_attribute
CREATE TABLE product_attribute (
    product_attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_type_id INT,
    value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

