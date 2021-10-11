create database sepm;
use sepm;

create table location(
	loc_id serial primary key,
	suburb varchar(100),
	location varchar(300),
	site_type(100),
	opening_hour varchar(100),
	waittime varchar(100));
	
	describe location;
	
	
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Aughtie Walk - Albert Park','23 Aughtie Dr, Albert Park, VIC, 3206','Walk Through','10am-4pm','Not available');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Port Melbourne Respiratory Clinic','405 Bay St, Port Melbourne, VIC 3207','Walk Through','9am-5pm','Not available');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Bourke Street Melbourne CBD','227 Bourke St, Melbourne, VIC 3000','Walk Through','8am-8pm','90 minutes');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Montague St - South Melbourne','120 Montague St, South Melbourne, VIC 3205','Drive Through','8am-8pm','35 minutes');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Alfred Health - The Alfred Hospital','55 COMMERCIAL RD, MELBOURNE VIC 3004','Walk Through','8am-4pm','Not available');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Prahran Respiratory Clinic (Star Health - Prahran Town Hall)','180 Greville St, Prahran VIC 3181','Walk Through','9am-4pm','Not available');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Melbourne Pathology - Balaclava','Carlisle Street, Balaclava VIC 3183','Walk Through','8am-5pm','Not available');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','4 Cyte Pathology - Melbourne CBD','231 Russell St, Melbourne, VIC 3000','Walk Through','8am-4pm','Not available');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','St Vincents Hospital Melbourne - Fever Clinic','41 Victoria Parade, Fitzroy VIC 3065','Walk Through','8am-6pm','Not available');
INSERT INTO `location`(`loc_id`, `suburb`, `location`, `site_type`, `opening_hour`, `waittime`) VALUES ('','Fitzroy Respiratory Clinic (Victorian Aboriginal Health Service)','186 Nicholson St, Fitzroy VIC 3065','Walk Through','10am-4pm','Not available');

