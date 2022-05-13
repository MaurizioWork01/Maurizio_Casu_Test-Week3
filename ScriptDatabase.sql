create database pizzeriaDaLuigi;

create table Pizza
(
IdPizza INTEGER,
Nome VARCHAR(20),
Prezzo DECIMAL,
constraint PK_IdPizza primary key (IdPizza),
constraint CHK_PizzaPrice check (Prezzo > 0)
);

create table Ingrediente
(
IdIngrediente INTEGER,
Nome VARCHAR(20),
Costo DECIMAL,
Scorte INTEGER
constraint PK_IdIngrediente primary key (IdIngrediente),
constraint CHK_IngredientPrice check (Costo > 0),
constraint CHK_IngredientStock check (Scorte >= 0)
);

create table PizzaIngrediente
(
IdPizza INTEGER constraint FK_IdPizza foreign key references Pizza(IdPizza),
IdIngrediente INTEGER constraint FK_IdIngrediente foreign key references Ingrediente(IdIngrediente)
constraint PK_RicettaPizza primary key (IdPizza, IdIngrediente)
);

insert into Pizza (IdPizza, Nome, Prezzo) values ('1','MARGHERITA','5');
insert into Pizza (IdPizza, Nome, Prezzo) values ('2','BUFALA','7');
insert into Pizza (IdPizza, Nome, Prezzo) values ('3','DIAVOLA','6');
insert into Pizza (IdPizza, Nome, Prezzo) values ('4','QUATTRO STAGIONI','6.50');
insert into Pizza (IdPizza, Nome, Prezzo) values ('5','PORCINI','7');
insert into Pizza (IdPizza, Nome, Prezzo) values ('6','DIONISO','8');
insert into Pizza (IdPizza, Nome, Prezzo) values ('7','ORTOLANA','8');
insert into Pizza (IdPizza, Nome, Prezzo) values ('8','PATATE E SALSICCIA','6');
insert into Pizza (IdPizza, Nome, Prezzo) values ('9','POMODORINI','6');
insert into Pizza (IdPizza, Nome, Prezzo) values ('10','QUATTRO FORMAGGI','7.50');
insert into Pizza (IdPizza, Nome, Prezzo) values ('11','CAPRESE','7.50');
insert into Pizza (IdPizza, Nome, Prezzo) values ('12','ZEUS','7.50');

insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('1','Pomodoro','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('2','Mozzarella','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('3','Mozzarella di bufala','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('4','Spianata piccante','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('5','Funghi','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('6','Carciofi','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('7','Prosciutto Cotto','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('8','Olive','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('9','Funghi Porcini','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('10','Stracchino','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('11','Speck','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('12','Rucola','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('13','Grana','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('14','Verdure di stagione','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('15','Patate','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('16','Salsiccia','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('17','Ricotta','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('18','Provola','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('19','Gorgonzola','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('20','Pomodoro Fresco','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('21','Basilico','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('22','Bresaola','1','3');
insert into Ingrediente (IdIngrediente, Nome, Costo, Scorte) values ('23','Cipolla','1','3');




insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('1','1');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('2','1');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('3','1');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('4','1');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('5','1');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('6','1');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('7','1');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('1','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('3','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('4','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('5','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('6','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('7','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('8','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('9','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('10','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('11','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('12','2');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('2','3');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('3','4');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('4','5');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('4','6');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('4','7');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('4','8');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('5','9');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('6','10');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('6','11');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('6','12');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('12','12');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('6','13');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('10','13');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('7','14');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('8','15');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('8','16');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('9','17');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('10','18');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('10','19');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('11','20');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('11','21');
insert into PizzaIngrediente (IdPizza, IdIngrediente) values ('12','22');

update PizzaIngrediente set IdPizza = '5' where IdPizza = '4' and IdIngrediente = '9';


--1.Estrarre tutte le pizze con prezzo superiore a 6 euro
select p.Nome, p.Prezzo from Pizza p
where p.Prezzo >6;

--2.Estrarre la pizza/le pizze più costosa/e
select p.Nome, p.Prezzo from Pizza p
where p.Prezzo = (select Max(p.Prezzo) from Pizza p);


--3.Estrarre le pizze «bianche»
select p.Nome, p.Prezzo from Pizza p
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where p.Nome not in 
(select p.Nome from Pizza p 
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where i.Nome = 'Pomodoro')
group by p.Nome, p.Prezzo;


--4.Estrarre le pizze che contengono funghi (di qualsiasi tipo)
select p.Nome, p.Prezzo from Pizza p
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where i.Nome like '%Funghi%';


--1.Inserimento di una nuova pizza (parametri: nome, prezzo)

create procedure InserisciPizza
@codicePizza INTEGER,
@nome VARCHAR(20),
@prezzo DECIMAL
as
insert into Pizza values(@codicePizza, @nome, @prezzo)
go

exec InserisciPizza 13, 'Pugliese', '6'
select * from Pizza;

--2.Assegnazione di un ingrediente a una pizza (parametri: nome pizza, nome ingrediente)
create procedure AssegnaIngrediente
@nomePizza VARCHAR(20),
@nomeIngrediente VARCHAR (20)
as
begin 
	begin try
		declare @idPizza INTEGER
		select @idPizza=p.IdPizza from Pizza p where p.Nome=@nomePizza

		declare @idIngrediente INTEGER
		select  @idIngrediente=i.IdIngrediente from Ingrediente i where i.Nome=@nomeIngrediente

		insert into PizzaIngrediente values (@idPizza,@idIngrediente)
	end try
	begin catch
		select ERROR_LINE() as riga, ERROR_MESSAGE() as messaggio
	end catch
end
go
exec AssegnaIngrediente 'Pugliese','Cipolla';

--3.Aggiornamento del prezzo di una pizza (parametri: nome pizza e nuovo prezzo)
create procedure AggiornamentoPrezzoPizza
@nomePizza VARCHAR(20),
@nuovoPrezzo DECIMAL
as
		update Pizza set Prezzo = @nuovoPrezzo where Nome = @nomePizza;
		
go
exec AggiornamentoPrezzoPizza 'Pugliese', 7;

--4.Eliminazione di un ingrediente da una pizza (parametri: nome pizza, nome ingrediente)
create procedure EliminaIngrediente
@nomePizza VARCHAR(20),
@nomeIngrediente VARCHAR(20)
as
begin 
	begin try
		declare @idPizza INTEGER
		select @idPizza=p.IdPizza from Pizza p where p.Nome=@nomePizza

		declare @idIngrediente INTEGER
		select  @idIngrediente=i.IdIngrediente from Ingrediente i where i.Nome=@nomeIngrediente

		delete from PizzaIngrediente where IdPizza = @idPizza and IdIngrediente = @idIngrediente
	end try
	begin catch
		select ERROR_LINE() as riga, ERROR_MESSAGE() as messaggio
	end catch
end
go
exec EliminaIngrediente 'Pugliese','Cipolla';

--5.Incremento del 10% del prezzo delle pizze contenenti un ingrediente(parametro: nome ingrediente) INCOMPLETO
create procedure AumentoPrezzo
@nomeIngrediente VARCHAR(20)
as
	update Pizza p set p.Prezzo =  
go


--Tabella listino pizze
create function ListinoPizze()
returns table
as
return
select p.Nome, p.Prezzo 
from Pizza p 
go

select * from dbo.ListinoPizze()

--2.Tabella listino pizze ( prezzo) contenenti un ingrediente (parametri nome ingrediente)
create function ListinoPizzeIngrediente(@nomeIngrediente VARCHAR(20))
returns table
as
return
select p.Nome, p.Prezzo 
from Pizza p 
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where i.Nome like @nomeIngrediente;
go

select * from dbo.ListinoPizzeIngrediente('Funghi')


--3.Tabella listino pizze ( prezzo) che non contengono un certo ingrediente(parametri nome ingrediente)
create function ListinoPizzeSenzaIngrediente(@nomeIngrediente VARCHAR(20))
returns table
as
return 
select p.Nome, p.Prezzo from Pizza p
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where p.Nome not in 
(select p.Nome from Pizza p 
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where i.Nome like @nomeIngrediente)
group by p.Nome, p.Prezzo;
go

select * from dbo.ListinoPizzeSenzaIngrediente('Funghi')

--4.Calcolo numero pizze contenenti un ingrediente (parametri nome ingrediente)
create function NumeroPizzeConIngrediente(@nomeIngrediente VARCHAR(20))
returns int
as begin
return COUNT(p.Nome) FROM Pizza p
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where i.Nome like @nomeIngrediente;
go



--5.Calcolo numero pizze che non contengono un ingrediente (parametri codice ingrediente)

create function NumeroPizzeSenzaIngrediente(@nomeIngrediente VARCHAR(20))
returns int 
as begin 
return 
select COUNT(*) from Pizza p
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where p.Nome not in 
(select p.Nome from Pizza p 
join PizzaIngrediente pi on p.IdPizza = pi.IdPizza
join Ingrediente i on pi.IdIngrediente = i.IdIngrediente
where i.Nome like @nomeIngrediente)
group by p.Nome, p.Prezzo;
go



select * from Pizza;
select * from Ingrediente;
select * from PizzaIngrediente;





