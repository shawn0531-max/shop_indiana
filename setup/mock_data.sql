DROP DATABASE IF EXISTS "shopIndiana";

CREATE DATABASE "shopIndiana";

\c "shopIndiana"

DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS categories;

CREATE TABLE companies(
    id SERIAL PRIMARY KEY NOT NULL,
    comp_name varchar(25) NOT NULL,
    street_address varchar NOT NULL,
    email varchar,
    phone varchar(15) NOT NULL,
    comp_type varchar(20) NOT NULL,
    info text NOT NULL,
    logo text
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY NOT NULL,
    category varchar(25) NOT NULL,
    picture text NOT NULL
)

INSERT INTO companies (comp_name, street_address, email, phone, comp_type, info, logo) values
('Edgewire','6 Cambridge Terrace','dkolodziejski0@irs.gov','(406) 3829551','restaurant','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','http://dummyimage.com/280x150.png/dddddd/000000'),
('Twitterwire','135 Forest Dale Hill','mcollard1@joomla.org','(322) 1259101','crafts','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Devpoint','659 Red Cloud Parkway','dmewett2@fema.gov','(945) 8186683','restaurant','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','http://dummyimage.com/280x150.png/dddddd/000000'),
('Realpoint','05385 Clemons Plaza','naujouanet3@usnews.com','(594) 6616019','crafts','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','http://dummyimage.com/280x150.png/dddddd/000000'),
('Divavu','9073 Dottie Road','ksherlock4@msu.edu','(715) 6008967','realty','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','http://dummyimage.com/280x150.png/cc0000/ffffff'),
('Zoombeat','33108 Hansons Center','harent5@ovh.net','(765) 7039155','construction','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','http://dummyimage.com/280x150.png/cc0000/ffffff'),
('Aivee','97346 Bartillon Court','fnoto6@alexa.com','(191) 5878356','crafts','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','http://dummyimage.com/280x150.png/cc0000/ffffff'),
('Oyondu','40 Pepper Wood Junction','nbrydon7@wsj.com','(965) 5541751','restaurant','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','http://dummyimage.com/280x150.png/cc0000/ffffff'),
('Yambee','2116 Barby Crossing','hmixer8@de.vu','(225) 3903480','crafts','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','http://dummyimage.com/280x150.png/dddddd/000000'),
('Babbleopia','319 Springs Alley','lparkman9@ox.ac.uk','(421) 8566753','crafts','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','http://dummyimage.com/280x150.png/dddddd/000000'),
('Dynabox','26497 Golf Street','bgregoirea@drupal.org','(545) 8943068','realty','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','http://dummyimage.com/280x150.png/dddddd/000000'),
('Flipbug','04831 Waxwing Parkway','bwhelanb@yahoo.com','(153) 3294313','realty','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Rhynoodle','532 Nobel Plaza','dlampenc@amazon.co.uk','(149) 5778585','restaurant','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Meembee','2521 Pleasure Center','eblaxelandd@bigcartel.com','(242) 9429971','restaurant','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Twimm','23249 Pleasure Center','tdommerquee@networkadvertising.org','(718) 9718945','construction','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Eire','2144 Saint Paul Center','adellcasaf@msn.com','(480) 7005910','crafts','In congue. Etiam justo. Etiam pretium iaculis justo.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Skipfire','3887 Amoth Park','mmaddeng@whitehouse.gov','(266) 1342079','restaurant','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Zoomcast','2801 Esker Lane','dbischofh@themeforest.net','(296) 4848720','restaurant','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','http://dummyimage.com/280x150.png/5fa2dd/ffffff'),
('Zoozzy','4168 Muir Circle','jspauntoni@jimdo.com','(295) 6902640','realty','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','http://dummyimage.com/280x150.png/dddddd/000000'),
('Zulo','23 Lakeland Drive','eselfj@instagram.com','(364) 1327170','construction','Phasellus in felis. Donec semper sapien a libero. Nam dui.','http://dummyimage.com/280x150.png/cc0000/ffffff');
