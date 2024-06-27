-- crowdfunding_db

-- Drop existing tables if they exist
drop table if exists contacts cascade;
drop table if exists category cascade;
drop table if exists subcategory cascade;
drop table if exists campaign cascade;

-- Create a table for contacts and assign data types, constraints, and primary keys
Create table contacts(
    contact_id varchar(50) not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(50) not null,
	constraint "primary_contacts" primary key ("contact_id")
);

-- Create a table for category and assign data types, constraints and primary keys
Create table category (
    category_id varchar(50) not null,
    category varchar(50) not null,
        constraint "primary_category" primary key ("category_id")
);

-- Create a table for subcategory and assign data types, constraints, and primary keys
Create table subcategory (
	subcategory_id varchar(50) not null,
	subcategory varchar(50) not null,
		constraint "primary_subcategory" primary key ("subcategory_id")
);

-- Create a table for campaign and assign data types, constraints, and primary keys
Create table campaign (
	cf_id varchar(50) not null,
	contact_id varchar(50) not null,
	company_name varchar(50) not null,
	description text not null,
	goal float not null,
	pledged float not null,
	outcome varchar(50) not null,
	backers_count integer not null,
	country varchar(50) not null,
	currency varchar (50) not null,
	launch_date date not null,
	end_date date not null,
	category_id varchar(50) not null,
	subcategory_id varchar(50) not null,
		constraint "primary_campaign" primary key (cf_id),
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);


SELECT * 
FROM contacts;
SELECT * 
FROM category;
SELECT * 
FROM subcategory;
SELECT * 
FROM campaign;