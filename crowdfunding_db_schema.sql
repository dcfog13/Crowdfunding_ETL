drop table contacts;
drop table category;
drop table subcategory;
drop table campaign;

CREATE TABLE campaign (
	cf_id INT,
	contact_id INT UNIQUE,
	company_name varchar(255),
	description varchar(255),
	goal float,
	pledged float,
	outcome varchar(30),
	backers_count INT,
	country varchar(30),
	currency varchar(30),
	launched_date date,
	end_date date,
	category_id varchar(30),
	subcategory_id varchar(30),
	PRIMARY KEY (cf_id)
);

CREATE TABLE contacts (
	contact_id INT,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(255),
	FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);

CREATE TABLE category (
	category_id varchar(30) PRIMARY KEY,
	category varchar(30)
);

CREATE TABLE subcategory (
	subcategory_id varchar(30) PRIMARY KEY,
	subcategory varchar(30)
);

SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory

COPY campaign FROM 'C:\Users\Devin\Desktop\School\Bootcamp\Module_13\Project-2\Resources\campaign.csv' WITH CSV HEADER;
COPY contacts FROM 'C:\Users\Devin\Desktop\School\Bootcamp\Module_13\Project-2\Resources\contacts.csv' WITH CSV HEADER;
COPY category FROM 'C:\Users\Devin\Desktop\School\Bootcamp\Module_13\Project-2\Resources\category.csv' WITH CSV HEADER;
COPY subcategory FROM 'C:\Users\Devin\Desktop\School\Bootcamp\Module_13\Project-2\Resources\subcategory.csv' WITH CSV HEADER;

SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
