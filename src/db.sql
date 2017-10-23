CREATE TABLE IF NOT EXISTS store (
id int(1) NOT NULL auto_increment,
name varchar(40) NOT NULL,
qty int(1) NOT NULL,
price float NOT NULL,
PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO store (id, name, qty, price) VALUES
	(1, 'apple', 10, 1),
	(2, 'pear', 5, 2),
	(3, 'banana', 10, 1.5),
	(6, 'lemon', 100, 0.1),
	(5, 'orange', 50, 0.2);

CREATE TABLE IF NOT EXISTS course (
id int(1) NOT NULL auto_increment,
name varchar(4) NOT NULL,
department_id int(1) NOT NULL,
PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

INSERT INTO course (id, name, department_id) VALUES
	(1, '111', 1),
	(2, '112', 1),
	(3, '250', 1),
	(4, '231', 1),
	(5, '111', 2),
	(6, '250', 3),
	(7, '111', 4);

CREATE TABLE IF NOT EXISTS department (
id int(1) NOT NULL auto_increment,
name varchar(3) NOT NULL,
PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO department (id, name) VALUES
	(1, 'CSC'),
	(2, 'MTH'),
	(3, 'EGR'),
	(4, 'CHM');

CREATE TABLE IF NOT EXISTS enrollment (
id int(1) NOT NULL auto_increment,
count int(1) NOT NULL,
PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

INSERT INTO enrollment (id, count) VALUES
	(1, 40),
	(2, 15),
	(3, 10),
	(4, 12),
	(5, 60),
	(6, 14),
	(7, 200); 

