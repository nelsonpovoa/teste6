create table users(
      id int NOT NULL,
      username varchar(100) not null,
      passwd varchar(40) not null,
      enabled int not null,
      CONSTRAINT users_id_pkey PRIMARY KEY (id)
);


create table authorities(
    id int not null,
    username varchar(40) not null,
    authority varchar(40) not null,
    CONSTRAINT authorities_id_pkey PRIMARY KEY (id)
);

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);


 
insert into users values (1, 'nelson', '1234', 1);
insert into authorities values (1, 'nelson', 'write');

insert into customer values(1, 'nelsonpovoa@gmail.com', '1111', 'admin');

INSERT INTO `customer` (`id`, `email`, `pwd`, `role`)
 VALUES (2, 'johndoe@example.com', '54321', 'admin');
 