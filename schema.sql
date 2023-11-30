drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

CREATE TABLE contacts (
	contact_id INT,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(255)
);

CREATE TABLE category (
	category_id varchar(30),
	category varchar(30)
);

CREATE TABLE subcategory (
	subcategory_id varchar(30),
	subcategory varchar(30)	
);

CREATE TABLE campaign (
	cf_id INT,
	contact_id INT,
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
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
