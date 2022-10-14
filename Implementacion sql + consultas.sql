--Creación de BD Empresa
Create DataBase Empresa
go
--Activando la BD Empresa
Use Empresa
go
--Creación de Tablas: Categoria, Proveedor, Marca y Articulo
Create Table Categoria(
	Id_Categoria     Int Identity(100,100) Not Null Primary Key, 
	Categoria        Varchar(30) Default 'Almacenamiento'			
	)
	Go
Create Table Proveedor(
	Id_Proveedor     Int Identity(12,10) Not Null Primary Key,
	Proveedor        Varchar(50) Not Null,
	Telefono         Char(10) Not Null,
	Distritos        Varchar(25) Default 'Surco',
	RUC              Char(11) Unique Check(Len(RUC)=11),
	PagWeb           Varchar(60),
	)
	Go
Create Table Marca(
	Id_Marca         Int Identity(101,1) Not Null Primary Key,    
	Marca            Varchar(20),
	)
Go
Create Table Articulo(
	Id_Articulo      Char(5) Not Null Primary Key,
	Articulo         Varchar(35) Not Null,
	Id_Marca         Int Foreign Key References Marca(Id_Marca) Default 108, 
	Modelo           Varchar(40) Not Null,
	Id_Categoria     Int Foreign Key References Categoria(Id_Categoria),
	Id_Proveedor     Int Foreign Key References Proveedor(Id_Proveedor),
	Stock            Int Check(Stock>=20),
	Fingreso         DateTime Default Getdate(),
	Precio           Money Check (Precio<=1200)
	)
Go
--- SET DATE FORMAT A DIA/MES/AÑO 
set dateformat DMY
GO
--Inserción de Datos en la Tablas: Categoria, Proveedor, Marca y Articulo
Insert Categoria(Categoria)  Values('Almacenamiento')
Insert Categoria(Categoria)  Values('Ingreso')
Insert Categoria(Categoria)  Values('Salida')
Insert Categoria(Categoria)  Values('Proceso')
Insert Categoria(Categoria)  Values('Otro')
GO
Insert Proveedor(Proveedor,Telefono,RUC,PagWeb) Values('Omega S.A.','433-2145',98798778987,'www.omega.com.pe')
Insert Proveedor(Proveedor,Telefono,Distritos,RUC,PagWeb) Values('Computech SRL','968-98987','Lima',87898754645,'')
Insert Proveedor(Proveedor,Telefono,Distritos,RUC,PagWeb) Values('Grupo Leafar S.A.','536-2569','Lima',98795468978,'')
Insert Proveedor(Proveedor,Telefono,RUC,PagWeb) Values('Megatronic S.A.','987-65988',98798532697,'www.megatrinic.com.pe')
Insert Proveedor(Proveedor,Telefono,Distritos,Ruc,PagWeb) Values('Data System SRL','332-7525','Lince',99995648987,'')
Insert Proveedor(Proveedor,Telefono,Distritos,Ruc,PagWeb) Values('Alpha SRL','336-8789','Lince',96549878987,'')
Insert Proveedor(Proveedor,Telefono,Ruc,PagWeb) Values('Prima S.A.','978-895458',92316448983,'www.prima.com.pe')
GO
Insert Marca(Marca) Values('Entel')
Insert Marca(Marca) Values('Ginius')
Insert Marca(Marca) Values('Toshiba')
Insert Marca(Marca) Values('Dell')
Insert Marca(Marca) Values('Kingston')
Insert Marca(Marca) Values('LG')
Insert Marca(Marca) Values('Sony')
Insert Marca(Marca) Values('Samsung')
Insert Marca(Marca) Values('Imation')
Insert Marca(Marca) Values('Epson')
Insert Marca(Marca) Values('Canon')
GO
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) values ('A-001', 'MICROPROCESADOR', 101 ,'PENTIUM IV 2,5 GB' ,400 ,12 ,65 ,'01/03/2022', 155.00)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-002','Mouse',102,'3BOOTNES',200,22,62,'2/03/2022',10)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-003','Mouse',103,'OPTICO',200,32,43,'3/03/2022',15)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-004','Teclado',104,'121TECLAS',200,42,54,'4/03/2022',25)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-005','Memoria USB',105,'128 GB',500,52,65,'5/03/2022',35)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-006','Memoria USB',106,'256 GB',500,62,72,'10/04/2022',45)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-007','Disco duro',107,'80 GB',100,72,121,'11/04/2022',185)
Insert Articulo(Id_Articulo,Articulo,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-008','Grabador','64MMX',500,12,95,'12/04/2022',85)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-009','Monitor',109,'21 PULG.',300,22,46,'13/04/2022',150)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-010','Monitor',110,'5 PULG.',300,32,88,'14/04/2022',120)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-011','Microprocesador',111,'CELERON 5,0 GB',400,42,97,'15/04/2022',250)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-012','Teclado',101,'KB -2971',200,52,70,'2/05/2022',15)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-013','CD',102,'R-720 MB',100,62,80,'3/05/2022',2.5)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-014','CD',103,'RW-690MB',100,72,90,'4/05/2022',2)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-015','CD',104,'RW-10GB',100,12,44,'5/05/2022',4.5)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-016','Impresora',110,'ESTYLUS COL 800',300,22,65,'6/05/2022',385)
Insert Articulo(Id_Articulo,Articulo,Id_Marca,Modelo,Id_Categoria,Id_Proveedor,Stock,Fingreso,Precio) Values('A-017','Impresora',111,'JT-230',300,32,96,'7/05/2022',578)
GO
---- Selects de las tablas ----

	select * from Categoria
	Select * From Proveedor
	Select * From Marca
	Select * From Articulo

--Lista de artículos ordenados por precio en forma descendente
--Articulo Marca Modelo Categoría Precio
		
	select Articulo,Marca,Modelo,Categoria,Precio from categoria as c
		inner join Articulo	as a
			on c.Id_Categoria = a.Id_Categoria
		inner join Marca as m
			on m.Id_Marca = a.Id_Marca
				order by precio desc
		
--Artículos cuyo precio es mayor a $20 
--Articulo Marca Modelo Proveedor Precio
	
	select Articulo,Marca,Modelo,proveedor,Precio from proveedor as p
		inner join Articulo	as a
			on a.Id_proveedor = p.Id_Proveedor
		inner join Marca as m
			on m.Id_Marca = a.Id_Marca
				where precio > 20

--Dispositivos de Ingreso o Almacenamiento 
	--Articulo Marca Modelo Categoria Precio
	
	select Articulo,Marca,Modelo,Categoria,Precio from categoria as c
		inner join Articulo	as a
			on c.Id_Categoria = a.Id_Categoria
		inner join Marca as m
			on m.Id_Marca = a.Id_Marca
		where categoria = 'ingreso' or categoria = 'almacenamiento'

-- Proveedores con teléfono fijo que no tiene página web
		--Proveedor Distrito Telefono 

		SELECT PROVEEDOR ,DISTRITOS, TELEFONO  FROM Proveedor	
			where telefono like '________' and PagWeb = ' ' 

--Proveedores que sean Sociedad Anónima y que vendieron artículos en el último trimestre del 2003 y 2004
	--Proveedor Distrito Telefono FIngreso 

	select Proveedor ,Distritos ,Telefono ,FIngreso  from Proveedor as p
		inner join Articulo as a 
			on p.Id_Proveedor = a.Id_Proveedor
				where Proveedor like '%S.A%' 

--Artículos que no sean dispositivos de proceso y que ingresaron en el primer semestre del año 2003 y 2005
	--Articulo Modelo Marca Categoría FIngreso

			 select articulo, modelo, marca ,categoria, Fingreso from Articulo as a
				inner join marca as m
					on m.Id_Marca = a.Id_Marca
					inner join Categoria as c
						on c.Id_Categoria = a.Id_Categoria
							where Categoria like '[^P]%'

--Relación de artículos cuya marca tenga más 4 caracteres 
	
	select Articulo,Marca,Modelo,proveedor from proveedor as p
		inner join Articulo	as a
			on a.Id_proveedor = p.Id_Proveedor
		inner join Marca as m
			on m.Id_Marca = a.Id_Marca
				where marca like '_____%'

--Relación de artículos que ingresaron a almacén a partir de la segunda quincena de julio del 2002 y cuyo proveedor es de Lima o Surco

	select articulo , marca , modelo ,Fingreso,Proveedor,Distritos from articulo as a
		inner join marca as m
			on m.Id_Marca = a.Id_Marca
			inner join Proveedor as p
				on p.Id_Proveedor = a.Id_Proveedor
					where distritos= 'lima' or Distritos = 'surco'

--Relación artículos cuya antepenúltima letra de la Marca sea cualquiera de las ultimas 6 letras del abecedario

	select Articulo,Marca,proveedor,Fingreso from proveedor as p
		inner join Articulo	as a
			on a.Id_proveedor = p.Id_Proveedor
		inner join Marca as m
			on m.Id_Marca = a.Id_Marca
				where marca like '%[U-Z]__'

--Promedio del precio de los artículos cuya categoría es ALMACENAMIENTO o PROCESO				
	
		select Categoria,avg(precio) as PromedioPrecio from categoria as c
			inner join Articulo	as a
				on c.Id_Categoria = a.Id_Categoria
				where categoria = 'almacenamiento' or categoria = 'proceso'
					group by categoria
						
--Cantidad total de Artículos cuyos proveedores son de Surco o Lima 
	
			select distritos, sum(stock) as 'totalstock' from proveedor as p
		inner join Articulo	as a
			on a.Id_proveedor = p.Id_Proveedor
				where Distritos in ('lima' , 'surco')
				group by distritos

--Total de proveedores por categoria
	
		select categoria,count(proveedor) as Noproveedores from Articulo as a
				inner join proveedor as p
					on p.Id_Proveedor = a.Id_Proveedor
					inner join Categoria as c
						on c.Id_Categoria = a.Id_Categoria
							group by categoria

							
						





