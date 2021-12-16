-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: naissance_db
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `enfant`
--

DROP TABLE IF EXISTS `enfant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfant` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `sexe` varchar(150) NOT NULL,
  `id_parent` int unsigned NOT NULL,
  `id_fonctionnaire` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`id_parent`,`id_fonctionnaire`),
  KEY `tbl_parent` (`id_parent`),
  KEY `tbl_fonctionnaire` (`id_fonctionnaire`),
  CONSTRAINT `tbl_fonctionnaire` FOREIGN KEY (`id_fonctionnaire`) REFERENCES `fonctionnaire` (`id`),
  CONSTRAINT `tbl_parent` FOREIGN KEY (`id_parent`) REFERENCES `parent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfant`
--

/*!40000 ALTER TABLE `enfant` DISABLE KEYS */;
INSERT INTO `enfant` VALUES (1,'yves','ouatche','m',1,1),(2,'Fredrick','Braun','Intersex woman',1,1),(3,'Carolan','Ripley','F',18,31),(4,'Claudie','Laverenz','F',15,42),(5,'Chrissie','Anglim','F',74,41),(6,'Prince','Coling','M',93,18),(7,'Clevey','Udell','M',32,42),(8,'Hurlee','McBrady','M',47,28),(9,'Stormi','Scully','F',71,17),(10,'Shalne','Bruyntjes','F',66,31),(11,'Fransisco','Denziloe','M',21,30),(12,'Danielle','Sarge','F',5,41),(13,'Windham','Ayliff','M',10,21),(14,'Charisse','Lesurf','F',86,20),(15,'Cosetta','Sedger','F',67,35),(16,'Raffarty','Nobbs','M',4,14),(17,'Sonnie','Petrolli','F',63,35),(18,'Pippa','Tullett','F',61,6),(19,'Mandi','Maggiori','F',78,41),(20,'Kerry','Dockery','M',75,27),(21,'Leupold','Eathorne','M',33,39),(22,'Ulick','Naulty','M',90,32),(23,'Grace','Vial','F',85,27),(24,'Frasquito','Lafay','M',92,38),(25,'Leela','Eatock','F',40,43),(26,'Siegfried','Brodie','M',3,19),(27,'Mitch','Pooley','M',34,19),(28,'Lock','Minnock','M',24,20),(29,'Larina','Bristo','F',98,25),(30,'Christi','Baptist','F',68,28),(31,'Adore','Lumpkin','F',98,14),(32,'Tersina','Ousley','F',91,45),(33,'Luca','Yerby','M',55,41),(34,'Ulrike','Gauchier','F',1,26),(35,'Gothart','Treece','M',78,6),(36,'Dud','Manwaring','M',87,38),(37,'Lilla','McGinney','F',17,38),(38,'Alma','Axford','F',42,38),(39,'Michele','Bratty','M',72,14),(40,'Tod','Wreath','M',12,13),(41,'Denys','Kareman','M',46,12),(42,'Hannie','Waldocke','F',73,38),(43,'Bondy','Commander','M',3,34),(44,'Guilbert','Gillaspy','M',2,38),(45,'Cal','Wickenden','F',31,50),(46,'Jerrome','Hallowes','M',84,37),(47,'Cheryl','Kilgrew','F',12,23),(48,'Johnette','Rodder','F',100,1),(49,'Ilysa','Yaus','F',40,13),(50,'Sawyer','Richford','M',60,9),(51,'Licha','Sergeaunt','F',53,19),(52,'Brandea','Ludwikiewicz','F',94,6),(53,'Raphael','Aleksandrikin','M',95,33),(54,'Brigham','Durbyn','M',58,39),(55,'Christoph','Abramson','M',56,25),(56,'Delmor','Gother','M',89,30),(57,'Emalee','Filippyev','F',40,6),(58,'Cosimo','Kleiser','M',16,16),(59,'Maryjane','Erik','F',100,15),(60,'Vanni','Bagshawe','F',24,27),(61,'Ritchie','Burles','M',43,27),(62,'Sheffie','Hendonson','M',15,14),(63,'Esma','Malloch','F',20,41),(64,'Ray','Cooke','M',67,11),(65,'Wood','Yeaman','M',99,33),(66,'Enrico','Leddie','M',45,14),(67,'Sonia','Prattin','F',49,12),(68,'Lonnie','Ciccottini','F',52,36),(69,'Gloriane','Stockdale','F',29,41),(70,'Iggie','Spinello','M',4,43),(71,'Nolana','Breadon','F',50,6),(72,'Urbanus','McColley','M',58,8),(73,'Lemuel','Jeafferson','M',79,12),(74,'Alvis','Healeas','M',93,17),(75,'Ileana','Rayner','F',77,6),(76,'Esme','Fenech','F',85,31),(77,'Carling','Murname','M',3,13),(78,'Wildon','Bothwell','M',84,23),(79,'Fidole','Stockdale','M',48,43),(80,'Carmelita','Fullerlove','F',29,3),(81,'Hebert','Bethel','M',46,32),(82,'Arny','Yes','M',93,38),(83,'Niven','Bouda','M',5,9),(84,'Rory','Pitman','F',44,37),(85,'Corella','Belamy','F',55,38),(86,'Liv','Bambery','F',10,27),(87,'Lewiss','Hexum','M',38,16),(88,'Inessa','Silversmid','F',9,42),(89,'Hubey','Durning','M',49,15),(90,'Adam','O\'Scanlon','M',44,22),(91,'Bron','Castaignet','M',84,21),(92,'Galina','Passler','F',85,13),(93,'Merrill','Beetlestone','M',90,30),(94,'Alex','Hallowes','F',42,27),(95,'Marve','Bampforth','M',74,25),(96,'Huey','Rollings','M',36,22),(97,'Dom','Winslett','M',81,44),(98,'Dotti','Robjohns','F',14,22),(99,'Emlynn','Ferry','F',16,50),(100,'Beck','Tesoe','M',50,48),(101,'Huntley','Anderton','M',17,2),(102,'Tripp','Killingsworth','M',49,36),(103,'Brock','Switland','M',33,43),(104,'Reuben','Boog','M',12,35),(105,'Westbrook','Van der Baaren','M',32,12),(106,'Doria','Stuer','F',60,3),(107,'Rick','Rudgerd','M',34,33),(108,'Zorina','Jacobsz','F',50,43),(109,'Geoff','Kobel','M',96,41),(110,'Toddy','Cholomin','M',92,17),(111,'Emalee','Rowling','F',91,36),(112,'Erhart','Ketley','M',35,43),(113,'Konstantin','Kersey','M',39,18),(114,'Gav','Bengal','M',19,8),(115,'Deck','Guerreru','M',26,30),(116,'Elayne','Pullinger','F',30,44),(117,'Gilbert','Mulran','M',8,46),(118,'Gorden','Eagleston','M',36,29),(119,'Beck','Ayliff','M',4,5),(120,'Mortie','Snead','M',31,20),(121,'Rufe','Rathjen','M',89,49),(122,'Celinka','Ladewig','F',37,3),(123,'Kariotta','Betty','F',82,7),(124,'Dulcea','Cabel','F',43,38),(125,'Dore','Warbey','F',47,41),(126,'Caril','Sitwell','F',21,47),(127,'Claudianus','Balsellie','M',65,45),(128,'Peirce','Agnolo','M',44,21),(129,'Kriste','Bakster','F',70,43),(130,'Kin','Mabee','M',75,16),(131,'Fredric','Shawyers','M',54,4),(132,'Ellerey','Hursey','M',42,27),(133,'Mikkel','Aslott','M',31,41),(134,'Grenville','Milby','M',58,41),(135,'Hilary','Gillean','M',93,34),(136,'Berthe','Brashaw','F',68,24),(137,'Esra','Smalles','M',57,37),(138,'Brittany','Leese','F',28,34),(139,'Drugi','Aggus','M',9,45),(140,'Skipper','Lenglet','M',98,25),(141,'Emilie','Sansom','F',26,12),(142,'Andros','Brearley','M',31,14),(143,'Trever','Gribben','M',75,9),(144,'Franni','Yellowlees','F',75,8),(145,'Husain','Torvey','M',86,36),(146,'Keene','Healing','M',27,30),(147,'Sybil','McSherry','F',54,43),(148,'Issi','Keddey','F',23,32),(149,'Jorgan','Lennox','M',31,3),(150,'Corinna','Harg','F',28,33),(151,'Angelle','Aiers','F',53,22),(152,'Bronnie','Nuschke','M',37,10),(153,'Shantee','Blackeby','F',90,47),(154,'Manda','Thorius','F',39,40),(155,'Had','Dart','M',42,13),(156,'Karee','Klebes','F',11,13),(157,'Goldy','Mosconi','F',49,17),(158,'Bonnie','Beartup','F',79,23),(159,'Lowe','Burne','M',90,42),(160,'Hortense','Trase','F',77,6),(161,'Francyne','Collingham','F',93,8),(162,'Diannne','Gregine','F',54,42),(163,'Veradis','Bisacre','F',55,36),(164,'Lilias','Templeman','F',64,21),(165,'Hercule','Gutridge','M',56,20),(166,'Marion','Solly','F',25,13),(167,'Findlay','Bickersteth','M',38,13),(168,'Cristie','Garard','F',78,42),(169,'Lilla','Cudbird','F',38,37),(170,'Shaun','Rotge','M',37,13),(171,'Lucias','Backs','M',46,39),(172,'Keen','Mattek','M',1,4),(173,'Jenn','Pennyman','F',22,8),(174,'Molly','Frogley','F',14,7),(175,'Agace','Labeuil','F',4,41),(176,'Xylina','Keywood','F',94,23),(177,'Bartolomeo','Youson','M',66,16),(178,'Rana','Daice','F',62,2),(179,'Kristos','La Torre','M',64,40),(180,'Carling','Wreak','M',68,43),(181,'Neal','Monan','M',92,43),(182,'Vivi','Neilan','F',93,6),(183,'Joyous','Pieper','F',47,1),(184,'Mandel','Hallgate','M',21,31),(185,'Muhammad','Linneman','M',70,45),(186,'Pauly','Brelsford','M',66,17),(187,'Craig','Martensen','M',16,15),(188,'Dell','Carine','F',96,32),(189,'Alano','Readie','M',81,28),(190,'Pietro','Nellies','M',33,11),(191,'Reinhard','Ranscombe','M',50,19),(192,'Annabell','Beevis','F',66,21),(193,'Francois','Earland','M',61,5),(194,'Waylon','Wiffler','M',53,28),(195,'Jennee','Akitt','F',44,31),(196,'Maurine','Fyfield','F',40,20),(197,'Auroora','Tchir','F',56,26),(198,'Kaila','Addinall','F',71,20),(199,'Etienne','Hadgkiss','M',52,25),(200,'Pat','Wellen','M',24,29);
/*!40000 ALTER TABLE `enfant` ENABLE KEYS */;

--
-- Table structure for table `fonctionnaire`
--

DROP TABLE IF EXISTS `fonctionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonctionnaire` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `login` varchar(150) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonctionnaire`
--

/*!40000 ALTER TABLE `fonctionnaire` DISABLE KEYS */;
INSERT INTO `fonctionnaire` VALUES (1,'abakar','mahamat','login','1234'),(2,'Antin','Collin','acollin1','Wvkj6SqnP'),(3,'Letty','Hankins','lhankins2','GSMzel3'),(4,'Benton','Drillot','bdrillot3','4VBtd0Ka2Y2T'),(5,'Park','Jerdon','pjerdon4','ZTuwkRQ'),(6,'Rafe','Mincini','rmincini5','RgHOV5'),(7,'Melvin','Mayling','mmayling6','l7h44tkv7'),(8,'Cherri','Kwietek','ckwietek7','2TYjnocnogX9'),(9,'Caresa','Shaxby','cshaxby8','yQgWTW'),(10,'Garold','Josupeit','gjosupeit9','GA9NyTm7dMZ'),(11,'Becky','Everist','beverista','KqYl90Fv0'),(12,'Harlen','Phalp','hphalpb','HjYrY1eF'),(13,'Hayyim','O\'Cuddie','hocuddiec','qQd81FQwXNEM'),(14,'Jocelyn','Costanza','jcostanzad','bb7stQCTszr'),(15,'Arlyn','Fison','afisone','pdsvQA6Ep'),(16,'Delaney','Randell','drandellf','NKsaDtAk3Dp'),(17,'Juliann','Waliszewski','jwaliszewskig','wSuUsxA'),(18,'Bryan','Tine','btineh','UQVFXAGqC5ru'),(19,'Sutherland','Yggo','syggoi','guaerYffezs'),(20,'Moritz','Haborn','mhabornj','2DLHyE'),(21,'Kate','Ingham','kinghamk','3TGWnqvIXDNC'),(22,'Lisbeth','Rabbatts','lrabbattsl','El3OzEkKExCC'),(23,'Boigie','Jovic','bjovicm','hKKMtM'),(24,'Kristy','Crose','kcrosen','72OnDBqzqv'),(25,'Wrennie','Schimpke','wschimpkeo','bS6ND0lA7R'),(26,'Farr','Sauniere','fsaunierep','D5YeEJ3'),(27,'Rhiamon','Scawen','rscawenq','uWyEVc'),(28,'Lamont','Flanner','lflannerr','0P9WQo'),(29,'Sigismond','Hannabuss','shannabusss','s7EcCP'),(30,'Gifford','Kane','gkanet','Lvy1EP'),(31,'Tessy','Trueman','ttruemanu','fN5J0GlEGIK'),(32,'Brod','Yakebowitch','byakebowitchv','XlFqiaBYmc7m'),(33,'Rianon','D\'Ambrosi','rdambrosiw','UqqD08m9Tk'),(34,'Engelbert','Goude','egoudex','marpWiuYRtT'),(35,'Kaylyn','Billam','kbillamy','DigVXOQpGqf'),(36,'Chancey','Trahear','ctrahearz','1Idqj8cxHuJD'),(37,'Axe','Tennock','atennock10','LE0lyfZApMt'),(38,'Waylan','Roch','wroch11','zHOJthJp8wL1'),(39,'Hana','Lackney','hlackney12','ISm4d7'),(40,'Gareth','Bostick','gbostick13','zQKzGJGZQ'),(41,'Sharla','Janman','sjanman14','vszeFZbrgJ'),(42,'Yasmin','Gurley','ygurley15','aejDrW'),(43,'Worthy','Rentcome','wrentcome16','Lk86Q9UqFOv8'),(44,'Franklin','Gurry','fgurry17','IB5VRsV'),(45,'Andie','Bilham','abilham18','WTEaISIq'),(46,'Adolphe','Arsey','aarsey19','kzjHgH'),(47,'Rodolfo','Baumert','rbaumert1a','9LEslEsVQKM'),(48,'Violette','Cosser','vcosser1b','exGpMJvLh'),(49,'Sada','Lewzey','slewzey1c','2QVXrb3Cd'),(50,'Tammy','Sinclaire','tsinclaire1d','UwomjHCp27');
/*!40000 ALTER TABLE `fonctionnaire` ENABLE KEYS */;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `sexe` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES (1,'modestine','claude','f'),(2,'Maximo','Franchyonok','M'),(3,'Glynis','Livesey','F'),(4,'Shelley','Thursby','F'),(5,'Lorelle','Jirak','F'),(6,'Harmony','Duinbleton','F'),(7,'Sher','Headrick','F'),(8,'Katherina','Whithorn','F'),(9,'Ethe','Roggerone','M'),(10,'Pacorro','Jiroutka','M'),(11,'Wat','Dahl','M'),(12,'Gerianne','By','F'),(13,'Annadiane','Boother','F'),(14,'Derrick','Derington','M'),(15,'Leeland','Giorgioni','M'),(16,'Daphne','Norree','F'),(17,'Ulrica','Sharphouse','F'),(18,'Joyan','Ughetti','F'),(19,'Veriee','Doyley','F'),(20,'Amaleta','Gonsalvo','F'),(21,'Antonietta','O\'Fallon','F'),(22,'Edd','Lamont','M'),(23,'Catina','Foreman','F'),(24,'Luca','Lanfranconi','M'),(25,'Katine','Kabos','F'),(26,'Roman','Quarless','M'),(27,'Alane','Treppas','F'),(28,'Wiley','Mussettini','M'),(29,'Franciskus','Jacobovitch','M'),(30,'Abra','Aitcheson','F'),(31,'Terri','Pardoe','F'),(32,'Marni','Antonognoli','F'),(33,'Godfry','Badby','M'),(34,'Carver','Ridesdale','M'),(35,'Herbie','Rivers','M'),(36,'Jodie','Morphew','M'),(37,'Hilary','Karim','M'),(38,'Carolee','Tumbelty','F'),(39,'Faye','Wilhelmy','F'),(40,'Stacee','Adair','F'),(41,'Delly','O\'Corrigane','F'),(42,'Meade','Scimone','M'),(43,'Hirsch','McReynolds','M'),(44,'Shellysheldon','Emerson','M'),(45,'Janifer','Warden','F'),(46,'Denice','Hought','F'),(47,'Sigrid','Croft','F'),(48,'Vivyanne','Camolli','F'),(49,'Jens','Argrave','M'),(50,'Nerte','Werrit','F'),(51,'Micky','Gallico','M'),(52,'Garold','Cowsby','M'),(53,'Giraldo','Headrick','M'),(54,'Harley','Seaborn','M'),(55,'Carolee','Dimitriev','F'),(56,'Galvin','Gadsden','M'),(57,'Samuele','Redmile','M'),(58,'Yvonne','Anwyl','F'),(59,'Margalo','Heathwood','F'),(60,'Kristopher','Ludlamme','M'),(61,'Felix','Dumbleton','M'),(62,'Paco','McJerrow','M'),(63,'Chlo','Yarmouth','F'),(64,'Sawyer','Kincade','M'),(65,'Waylon','Pawelczyk','M'),(66,'Willa','Coston','F'),(67,'Percival','Hurche','M'),(68,'Allyn','Callen','M'),(69,'Freida','Burnham','F'),(70,'Em','Loudiane','M'),(71,'Adore','Chidler','F'),(72,'Betteanne','Arlow','F'),(73,'Roberto','Wahner','M'),(74,'Derk','Flatt','M'),(75,'Wyatt','Draayer','M'),(76,'Bartolemo','De Malchar','M'),(77,'Gerick','Abramchik','M'),(78,'Tabbitha','Wilmot','F'),(79,'Ferris','Prisley','M'),(80,'Laughton','Meecher','M'),(81,'Darrell','Shuttleworth','M'),(82,'Joel','Boggish','M'),(83,'Karisa','Rimes','F'),(84,'Catina','Alders','F'),(85,'Seumas','Hebburn','M'),(86,'Diego','Filimore','M'),(87,'Adrianne','Freund','F'),(88,'Heall','Habergham','M'),(89,'Aaron','Whorton','M'),(90,'Claudell','Quaife','M'),(91,'Zorina','Lamke','F'),(92,'Broderic','Houson','M'),(93,'Rockwell','Suttling','M'),(94,'Chloe','Chastey','F'),(95,'Maura','Laherty','F'),(96,'Ardyth','Jovanovic','F'),(97,'Peyton','Dobbin','M'),(98,'Winfield','Showalter','M'),(99,'Leonard','Dreossi','M'),(100,'Huntington','Jerdan','M');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 13:42:55
