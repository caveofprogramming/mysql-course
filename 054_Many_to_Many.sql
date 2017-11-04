use CAVE_TEST;

create table product (id int primary key auto_increment, name varchar(50));

insert into product (name) values ('Electric cat groomer'), ('Automatic dog chaser'), ('Egg warmer');

create table person_product (person_id int not null, product_id int not null,  foreign key (person_id) references person(id),  foreign key (product_id) references product(id));

insert into person_product (person_id, product_id) values (1, 3), (4, 2), (1, 3), (1, 3), (2, 1), (3, 2);

select p.name, pp.product_id, pr.name from person p
join person_product pp on pp.person_id=p.id
join product pr on pr.id=pp.product_id LIMIT 0, 1000;
