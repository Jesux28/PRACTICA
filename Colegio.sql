DROP TABLE IF EXISTS ALUMNO;
DROP TABLE IF EXISTS MATERIA;
DROP TABLE IF EXISTS NOTA;
CREATE TABLE ALUMNO 
(
  `CI` varchar(255),
  `NOMBRE` varchar(255) default NULL,
  `SEXO` varchar(255) default NULL,
  `FECHANAC` varchar(255),
  `DIREC` varchar(255) default NULL,
  `COLEGIO` varchar(255),
  PRIMARY KEY (`CI`)
);

CREATE TABLE MATERIA
(
  SIGLA varchar(5) not null,
  NOMMAT varchar(30) not null,
  AREA varchar(25) not null,
  NIVEL int,
  PRIMARY KEY(SIGLA)
);

CREATE TABLE NOTA
(
  GESTION date not null,
  CALIFICACION INT not null,
  SIGLA varchar(5) not null,
  `CI` varchar(255),
  PRIMARY KEY(`CI`,SIGLA,GESTION),
  FOREIGN KEY (SIGLA) REFERENCES MATERIA(SIGLA),
  FOREIGN KEY (`CI`) REFERENCES ALUMNO(`CI`)
);

INSERT INTO ALUMNO (`CI`,`NOMBRE`,`SEXO`,`FECHANAC`,`DIREC`,`COLEGIO`)
VALUES
  ("N4X 5K2","Nissim Moran","Masculino","Apr 12, 1999","417-6136 Odio. Avenue","Sucre"),
  ("H1B 7C5","Miriam Farrell","Femenino","May 28, 1998","P.O. Box 388, 4996 A, St.","Sucre"),
  ("P5F 7K4","Avye May","Masculino","Oct 7, 1998","766-5098 Donec Rd.","Nibh Aliquam Ornare Corporation"),
  ("Y0D 9G8","Porter Owen","Masculino","Oct 12, 1999","5157 Eleifend. Street","Proin Sed Turpis Corp."),
  ("N1U 5E7","Tatyana Mcconnell","Femenino","Sep 6, 1998","5235 Non Av.","Sucre"),
  ("J1Y 3P7","Lucas Avery","Masculino","Aug 27, 1997","877-414 Libero. St.","Sucre"),
  ("R5D 0P1","Hadley Herring","Femenino","Aug 17, 2000","618-4627 Adipiscing, Rd.","Sucre"),
  ("W8O 9W3","Xantha Kaufman","Femenino","Nov 5, 1999","154-9920 Tempus Rd.","Facilisis Lorem"),
  ("Y7A 2G2","Colleen Mathews","Masculino","Aug 3, 2001","Ap #749-5759 Parturient Ave","Ullamcorper Corporation"),
  ("W4L 1B7","Garth Perez","Masculino","Jun 10, 1999","P.O. Box 324, 7740 Habitant Road","Ac Metus Company");
INSERT INTO ALUMNO (`CI`,`NOMBRE`,`SEXO`,`FECHANAC`,`DIREC`,`COLEGIO`)
VALUES
  ("F1U 1L4","Libby Small","Femenino","Nov 24, 2001","660-3036 Non, Street","Sucre"),
  ("H2H 2X3","Chantale Melton","Masculino","Jun 9, 2001","907-1722 Cras Avenue","Odio Sagittis Corporation");

  
  INSERT INTO MATERIA (SIGLA,NOMMAT,AREA,NIVEL)
  VALUES
  ("AB1","ALGEBRA I","MATEMATICA",1),
  ("AB2","ALGEBRA LINEAL","MATEMATICA",2),
  ("C1","CALCULO I","MATEMATICA",1),
  ("CC","CALCULO COMPLEJO","MATEMATICA",4),
  ("F1","FISICA I","FISICA",1),
  ("FE","ELECTROMAGNETISMO","FISICA",5),
  ("F2","DINAMICA Y ENERGIA","FISICA",3),
  ("F4","TEORIA DE CUERDAS","FISICA",7),
  ("BD1","BASE DE DATOS I","PROGRAMACION",3),
  ("BD2","BASE DE DATOS II","PROGRAMACION",4);
  INSERT INTO MATERIA (SIGLA,NOMMAT,AREA,NIVEL)
  VALUES
  ("ED","ESTRUCTURAS DE DATOS","PROGRAMACION",3),
  ("PC","ARQUITECTURA DE COMPUTADORES","PROGRAMACION",2),
  ("PP","ANALISIS DE ALGORITMOS","PROGRAMACION",5),
  ("TG","TEORIA DE GRAFOS","PROGRAMACION",4),
  ("O1","SISTEMAS","OPTIMIZACION",6),
  ("O2","INVESTIGACION OPERATIVA","OPTIMIZACION",4),
  ("CN","CALCULO NUMERICO","OPTIMIZACION",3);
  
  INSERT INTO NOTA(CI,SIGLA,GESTION,CALIFICACION)
  VALUES
  ("N4X 5K2","AB1","2018/06/27",84),
  ("N4X 5K2","AB2","2018/06/13",90),
  ("N4X 5K2","C1","2018/06/24",64),
  ("N4X 5K2","F1","2018/05/30",85),
  ("N4X 5K2","PC","2018/12/24",80),
  ("N4X 5K2","BD1","2019/07/25",86),
  ("N4X 5K2","CN","2019/07/20",60),
  ("N4X 5K2","F2","2019/08/15",75),
  ("N4X 5K2","ED","2019/07/15",100),
  ("N4X 5K2","O1","2019/12/23",80);
  INSERT INTO NOTA(CI,SIGLA,GESTION,CALIFICACION)
  VALUES
  ("H1B 7C5","AB1","2020/07/12",50),
  ("H1B 7C5","AB2","2021/01/30",65),
  ("H1B 7C5","C1","2020/02/23",70),
  ("H1B 7C5","CC","2021/05/15",90),
  ("H1B 7C5","FE","2021/08/23",80),
  ("H1B 7C5","PP","2021/12/24",100),
  ("H1B 7C5","TG","2021/11/30",65),
  ("H1B 7C5","CN","2022/01/30",47),
  ("H1B 7C5","O1","2021/12/20",35),
  ("H1B 7C5","O2","2022/03/16",42);
 
