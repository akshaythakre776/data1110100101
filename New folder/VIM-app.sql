DROP TABLE IF EXISTS `test`.`car`;

CREATE TABLE  `test`.`car` (
  `MAKE` varchar(45) NOT NULL,
  `MODEL` varchar(45) NOT NULL,
  `MODEL_YEAR` varchar(45) NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `test`.`user`;
CREATE TABLE  `test`.`user` (
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into user values('admin','admin');