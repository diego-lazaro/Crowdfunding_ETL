-- Create category table, import, and verify import
CREATE TABLE category (
    category_id VARCHAR(5)   NOT NULL,
    category VARCHAR(20)   NOT NULL,
    PRIMARY KEY (category_id)
);

SELECT * FROM category;

-- Create subcategory table, import, and verify import
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10)   NOT NULL,
    subcategory VARCHAR(20)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

SELECT * FROM subcategory;

-- Create contacts table, import, and verify import
CREATE TABLE contacts (
    contact_id INTEGER   NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(50),
    PRIMARY KEY (contact_id)
);

SELECT * FROM contacts;

-- Create campaign table, import, and verify import\
DROP TABLE campaign;

CREATE TABLE campaign (
    cf_id INTEGER   NOT NULL,
    contact_id INTEGER   NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(80) NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(10)   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR(5) NOT NULL,
    currency VARCHAR(5)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(5)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;
