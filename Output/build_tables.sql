CREATE TABLE category (
    category_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(50)
);


CREATE TABLE subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY,
    subcategory INT
);


CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);


CREATE TABLE campaign (
    cf_id INT,
    contact_id INT,
    company_name VARCHAR(100),
    description VARCHAR(500),
    goal INT,
    pledged INT,
    outcome VARCHAR(50),
    backers_count INT,
    currency VARCHAR(10),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(20),
    subcategory_id VARCHAR(20),
    PRIMARY KEY (cf_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);