truncate table users cascade;

--USERS
insert into users values 
(default,'XXX123','maria','maria@agora','123','client');
insert into users values 
(default,'XY234Z','helena','helena@agora','456','client');
insert into users values 
(default,'ASD456','joana','joana@agora','789','seller');
insert into users values 
(default,'SDF123','mario','mario@agora','101','seller');
insert into users values 
(default,'QWE456','ricardo','ricardo@agora','112','evaluator');
--select * from users;


--SELLER
insert into seller values 
(default,'ASD456',8,'itau','22','2222-2');
insert into seller values 
(default,'SDF123',9,'bradesco','78','7878-7'); 
--select * from seller;


--EVALUATOR
insert into evaluator values 
(default,'QWE456','coins','brasil','sao paulo','rua das bromelias','santander','45','1111-8');
--select * from evaluator;


--CLIENT
insert into client values 
(default, 'XXX123', 'brasil', 'rio de janeiro',  'rua das flores', '1010', '111', '2027-10-01');
insert into client values 
(default, 'XY234Z', 'brasil', 'sao paulo', 'rua das margaridas', '2020', '222', '2031-10-01');
--select * from client;


--PRODUCT
insert into product values
(default, 1, 'ancient greek coin', 10002, 0.01, 0.01, 0.02, 5);
insert into product values
(default, 2, 'virgin mary statue', 20000, 0.3, 0.15, 0.5, 8);
--select * from product;


--EVALUATION
insert into evaluation values 
(default, 1, 1, 10, 'ancient coin present in the greek civilization', current_date::date);
--select * from evaluation;


--BUY ORDER
insert into buy_order values 
(default, 1, 1, 1, 10002);
insert into buy_order values 
(default, 2, 1, 1, 20000);
--select * from buy_order;

--SELLER RATING
insert into seller_rating values 
(default, 1, 2, 10, 'excelente!');
insert into seller_rating values 
(default, 1, 1, 7, 'delivered late');
-- select * from seller_rating sr; 



