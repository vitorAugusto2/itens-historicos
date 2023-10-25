drop table if exists users cascade;
create table users(
	user_id INT GENERATED ALWAYS AS IDENTITY,
	user_document text not null,
	user_name text null,
	user_email text null,
	user_password text null,
	user_type text null,
	primary key (user_document)
);


drop table if exists seller cascade;
create table seller(
	seller_id INT GENERATED ALWAYS AS IDENTITY,
	user_document text not null,
	seller_rating_avg float null,
	bank_account text null,
	account_agency text null,
	account_number text null,
	primary key (seller_id),
		constraint fk_seller_user
			foreign key(user_document)
				references users(user_document)
);


drop table if exists evaluator cascade;
create table evaluator(
	evaluator_id INT GENERATED ALWAYS AS IDENTITY,
	user_document text not null,
	evaluator_specialty text null,
	address_country text null,
	address_city text null,
	address_street text null,
	bank_account text null,
	account_agency text null,
	account_number text null,
	primary key (evaluator_id),
		constraint fk_evaluator_user
			foreign key(user_document)
				references users(user_document)
);


drop table if exists client cascade;
create table client(
	client_id INT GENERATED ALWAYS AS IDENTITY,
	user_document text not null,
	address_country text null,
	address_city text null,
	address_street text null,
	credit_card_number text null,
	security_cod text null,
	validity_date date null,
	primary key (client_id),
	constraint fk_client_user
		foreign key(user_document)
			references users(user_document)
);


drop table if exists product cascade;
create table product (
	product_id INT GENERATED ALWAYS AS IDENTITY,
	seller_id INT not null,
	product_name text null,
	product_value_dollars float null,
	product_width_meters float null,
	product_length_meters  float null,
	product_weight_kilogram float null,
	inventory_quantity int null,
	primary key (product_id),
	constraint fk_seller_product
		foreign key(seller_id)
			references seller(seller_id)
);


drop table if exists evaluation cascade;
create table evaluation(
	evaluation_id INT GENERATED ALWAYS AS IDENTITY,
	evaluator_id int not null,
	product_id int not null,
	evaluation_score float null,
	evaluation_desc text null,
	evaluation_created_date timestamp not null default CURRENT_TIMESTAMP,
	primary key (evaluation_id),
	constraint fk_evaluator_evaluation
		foreign key(evaluator_id)
			references evaluator(evaluator_id),
	constraint fk_evaluator_product
		foreign key(product_id)
			references product(product_id)
);


drop table if exists buy_order cascade;
create table buy_order(
	buy_order_id INT GENERATED ALWAYS AS IDENTITY,
	product_id int not null,
	client_id int not null,
	product_quantity int null,
	order_price float null,
	primary key (buy_order_id),
	constraint fk_client_order
		foreign key(client_id)
			references client(client_id),
	constraint fk_product_order
		foreign key(product_id)
			references product(product_id)
);


drop table if exists seller_rating cascade;
create table seller_rating(
	seller_rating_id INT GENERATED ALWAYS AS IDENTITY,
	seller_id int not null,
	buy_order_id int not null,
	seller_note int not null,
	seller_comment text null,
	primary key (seller_rating_id),
	constraint fk_rating_seller
		foreign key(seller_id)
			references seller(seller_id),
	constraint fk_rating_order
		foreign key(buy_order_id)
			references buy_order(buy_order_id)
	
);