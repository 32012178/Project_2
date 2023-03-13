CREATE TABLE category (
    category_id VARCHAR(20) PRIMARY KEY NOT NULL,
    category VARCHAR(50) NOT NULL
);


CREATE TABLE subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY NOT NULL,
    subcategory VARCHAR NOT NULL
);


CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);


CREATE TABLE campaign (
    cf_id INT primary key NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(500) NOT NULL,
    goal VARCHAR(100) NOT NULL,
    pledged VARCHAR(100) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
	country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(20) NOT NULL,
    subcategory_id VARCHAR(20) NOT NULL
    );


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


-- Data from csv files are imported to corresponding postgresql tables by using import/export function 
select * from campaign
select * from category
select * from subcategory
select * from contacts
