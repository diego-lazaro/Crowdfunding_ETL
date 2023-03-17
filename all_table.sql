---- Create campaign table
CREATE TABLE campaign (
	"cf_id" INT   NOT NULL,
	"contact_id"	INT   NOT NULL,
	"company_name" VARCHAR(50)   NOT NULL,
	"description" VARCHAR(80)   NOT NULL,
	"goal" FLOAT   NOT NULL,	
	"pledged" FLOAT   NOT NULL,	
	"outcome" VARCHAR(10)   NOT NULL,	
	"backers_count" INT   NOT NULL,	
	"country" VARCHAR(5)   NOT NULL,	
	"currency" VARCHAR(5)   NOT NULL,	
	"launched_date" DATE   NOT NULL,	
	"end_date" DATE   NOT NULL,	
	"category_id" VARCHAR(5)   NOT NULL,	
	"subcategory_id" VARCHAR(10)   NOT NULL,
	CONSTRAINT "pk_campaign" PRIMARY KEY (
        "goal","pledged"
	)
	
);
SELECT
---- Create category table

CREATE TABLE category (
	"category_id" VARCHAR(30),
	"category" VARCHAR(30),
	CONSTRAINT pk_category PRIMARY KEY (
		"category_id", "category"
	)

);

---- Create subcategorty table

CREATE TABLE subcategory (
	"subcategory_id" VARCHAR(30),
	"subcategory" VARCHAR(30),
	CONSTRAINT pk_subcategory PRIMARY KEY (
		"subcategory_id", 
	)
);

---- Create contacts table

CREATE TABLE contact (
	"contact_id" INT NOT NULL,
	"first_name" INT NOT NULL,
	"last_name" INT NOT NULL,
	"email" INT NOT NULL,
	CONSTRAINT pk_contacts PRIMARY KEY (
		"contact_id"
	
	)
);
