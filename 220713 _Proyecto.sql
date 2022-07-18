-- CREAMOS LA BASE DE DATOS -- 
CREATE SCHEMA IF NOT EXISTS project1;

-- USAMOS NUESTRA BASE DE DATOS --
USE project1;

-- CREAMOS LA TABLA DE DATA SQL---
CREATE TABLE data_sql(
`index_sql` int not null auto_increment,
primary key (`index_sql`),
`q10_part_1` varchar(255),
`q10_part_2` varchar(255),
`q10_part_3` varchar(255),
`q10_part_4` varchar(255),
`q10_part_5` varchar(255),
`q10_part_6` varchar(255),
`q10_part_7` varchar(255),
`q10_part_8` varchar(255),
`q10_part_9` varchar(255),
`q10_part_10` varchar(255),
`q10_part_11` varchar(255),
`q10_part_12` varchar(255),
`q10_part_13` varchar(255),
`q10_part_14` varchar(255),
`q10_part_15` varchar(255),
`q10_part_16` varchar(255),
`q10_other` varchar(255),
`d482xta` varchar(255)
);

-- CREAMOS LA TABLA TXT

CREATE TABLE IF NOT EXISTS `datos_txt` (
`index_txt` INT NOT NULL AUTO_INCREMENT,
`index_sql` INT NOT NULL,
q3 VARCHAR (200) DEFAULT NULL,
q4 VARCHAR (200) DEFAULT NULL,
q5 VARCHAR (200) DEFAULT NULL,
q6 VARCHAR (200) DEFAULT NULL,
q7 VARCHAR (200) DEFAULT NULL,
q8 VARCHAR (200) DEFAULT NULL,
q9 VARCHAR (200) DEFAULT NULL,
q11 VARCHAR (200) DEFAULT NULL,
q12 VARCHAR (200) DEFAULT NULL,
q13 VARCHAR (200) DEFAULT NULL,
q14 VARCHAR (200) DEFAULT NULL,
q15 VARCHAR (200) DEFAULT NULL,
q16 VARCHAR (200) DEFAULT NULL,
q17 VARCHAR (200) DEFAULT NULL,
q20 VARCHAR (200) DEFAULT NULL,
q21 VARCHAR (200) DEFAULT NULL,
q22 VARCHAR (200) DEFAULT NULL,
q23 VARCHAR (200) DEFAULT NULL,
q24 VARCHAR (200) DEFAULT NULL,
q25 VARCHAR (200) DEFAULT NULL,
q26 VARCHAR (200) DEFAULT NULL,
q32 VARCHAR (200) DEFAULT NULL,
q33 VARCHAR (200) DEFAULT NULL,
q34 VARCHAR (200) DEFAULT NULL,
q35 VARCHAR (200) DEFAULT NULL,
q41 VARCHAR (200) DEFAULT NULL,
PRIMARY KEY (`index_txt`),
CONSTRAINT `fk_datatxt_datasql`
FOREIGN KEY (`index_sql`)
REFERENCES `data_sql` (`index_sql`)
);

-- CREAMOS LA TABLA XML

CREATE TABLE IF NOT EXISTS data_xml (
index_xml INT NOT NULL,
`time` INT NOT NULL,
age VARCHAR(25) NOT NULL,
gender VARCHAR(25) NOT NULL,
index_sql INT NOT NULL,
PRIMARY KEY (index_xml),
CONSTRAINT `fk_data_xml_data_sql`
FOREIGN KEY (`index_sql`)
REFERENCES data_sql (`index_sql`)
);



