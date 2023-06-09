--create category table
CREATE TABLE category(
    category_id VARCHAR(7) PRIMARY KEY,
    categories VARCHAR(40) NOT NULL
);

SELECT * FROM category;

--create subcategory table
CREATE TABLE subcategory(
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategories VARCHAR(40) NOT NULL
);

SELECT * FROM subcategory;

--create contacts table
CREATE TABLE contacts(
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    email VARCHAR NOT NULL
);

SELECT * FROM contacts;

--create campaign table
CREATE TABLE campaign(
    cf_id VARCHAR(10) NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(40) NOT NULL,
    description VARCHAR NOT NULL,
    goal FLOAT(15) NOT NULL, 
    pledged FLOAT(15) NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(7) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM campaign;