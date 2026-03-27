create table autobus (
  id int not null,
  modelo varchar(10) not null,
  placa varchar(9) not null,
  unique(placa),
  primary key(id)
);

insert into autobus values(1,'LEITO','ABC 123');
insert into autobus (placa, modelo, id) values ('ABC 456', 'VOLVO',3);
drop table autobus;

create table asiento (
  id int not null,
  numero varchar(2) not null,
  precio int not null default 20,
  autobus_id int not null,
  primary (id, autobus_id),
  foreign key(autobus_id) references autobus(id)
);
insert into asiento (id, numero,autobus_id) 
values (1,'12',1);
insert into asiento (id, numero,autobus_id) 
values (2,'5',1);

select * from asiento;
select precio, numero from asiento;
