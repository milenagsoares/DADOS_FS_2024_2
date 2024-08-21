create database lojaEletronicos;
use lojaEletronicos;

create table Usuário(
id INT PRIMARY KEY,
nome varchar(30),
email varchar(50)
);

insert into Usuário(id, nome, email)
values(1,'Alice', 'alice@hotmail.com');

insert into Usuário(id, nome, email)
values(2,'Alana', 'alana@hotmail.com');

insert into Usuário(id, nome, email)
values(3,'Milena', 'milena@hotmail.com');

insert into Usuário(id, nome, email)
values (4, 'Fernando', 'fernando@hotmail.com');

insert into Usuário(id, nome, email)
values (5, 'Fernanda', 'fernanda@hotmail.com');

create table produto(
id_produto INT PRIMARY KEY,
nome_produto varchar(30),
preco decimal(10,2)
);

insert into produto(id_produto, nome_produto, preco)
values (1, 'Notebook', 3000.00);

insert into produto(id_produto, nome_produto, preco)
values (2, 'Tablet', 450.00);

insert into produto(id_produto, nome_produto, preco)
values (3, 'Smartphone', 1200.00);

insert into produto(id_produto, nome_produto, preco)
values (4, 'Headphones', 150.00);

insert into produto(id_produto, nome_produto, preco)
values (5, 'Mouse', 50.00);

create table pedido(
id INT PRIMARY KEY,
Data date,
id_Usuário INT,
FOREIGN KEY (id_Usuário) REFERENCES Usuário(id)
);

INSERT INTO Pedido (id, Data, id_Usuário) 
VALUES (1, '2024-08-01', 1);

INSERT INTO Pedido (id, Data, id_Usuário) 
VALUES (2, '2024-08-02', 2);

INSERT INTO Pedido (id, Data, id_Usuário) 
VALUES (3, '2024-08-03', 3);

INSERT INTO Pedido (id, Data, id_Usuário) 
VALUES (4, '2024-08-04', 4);

INSERT INTO Pedido (id, Data, id_Usuário) 
VALUES (5, '2024-08-05', 5);


create table categoria(
id INT PRIMARY KEY, 
nome text, 
descrição text

);

INSERT INTO categoria (id, nome, descrição) 
VALUES (1, 'Eletrônicos', 'Dispositivos eletrônicos e acessórios');

INSERT INTO categoria (id, nome, descrição) 
VALUES (2, 'Computadores', 'notebooks, desktops e acessórios');

INSERT INTO categoria (id, nome, descrição) 
VALUES (3, 'Telefonia', 'Smartphones e acessórios');

INSERT INTO categoria (id, nome, descrição) 
VALUES (4, 'Áudio', 'Headphones, alto-falantes e sistemas de som');

INSERT INTO Categoria (ID, Nome, Descrição) 
VALUES (5, 'Periféricos', 'Acessórios como mouse, teclado e outros');

select * from Usuário;
select nome_produto from produto;


SELECT id_usuário, COUNT(*) AS TotalPedidosPorUsuario 
FROM pedido 
GROUP BY id_Usuário;

UPDATE produto
SET preco = preco * 1.10
WHERE id_produto IN (SELECT id_produto FROM produto_categoria
 WHERE id_categoria = 2);
