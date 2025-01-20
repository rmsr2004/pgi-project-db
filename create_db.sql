CREATE TABLE users (
	id		 bigint AUTO_INCREMENT,
	first_name	 text NOT NULL,
	last_name	 text NOT NULL,
	age		 smallint NOT NULL,
	genre	 smallint NOT NULL,
	email	 text NOT NULL,
	user_password	 text NOT NULL,
	phone_number varchar(512) NOT NULL,
	user_type	 boolean NOT NULL,
	image	 text,
	PRIMARY KEY(id)
);

CREATE TABLE buyers (
	student_number bigint NOT NULL,
	description	 text,
	user_id	 bigint,
	PRIMARY KEY(user_id)
);

CREATE TABLE advertisements (
	id		 bigint AUTO_INCREMENT,
	title		 text NOT NULL,
	description	 text NOT NULL,
	price		 int NOT NULL,
	is_available	 boolean NOT NULL,
	conditions	 text NOT NULL,
	owner_name	 text NOT NULL,
	owner_description	 text NOT NULL,
	owner_image	 text NOT NULL,
	address_street	 text NOT NULL,
	address_number	 smallint NOT NULL,
	address_zip_code text NOT NULL,
	address_city	 text NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE images (
	id				 bigint AUTO_INCREMENT,
	link			 text NOT NULL,
	address_id bigint NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE admin (
	user_id bigint,
	PRIMARY KEY(user_id)
);

ALTER TABLE buyers ADD UNIQUE (student_number);
ALTER TABLE buyers ADD CONSTRAINT buyers_fk1 FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE images ADD CONSTRAINT images_fk1 FOREIGN KEY (address_id) REFERENCES advertisements(id);
ALTER TABLE admin ADD CONSTRAINT admin_fk1 FOREIGN KEY (user_id) REFERENCES users(id);


