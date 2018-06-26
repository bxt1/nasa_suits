/*
-- Query: SELECT * FROM nasa_suits.iau
LIMIT 0, 1000

-- Date: 2018-05-17 17:44
*/
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1892,1,1,'Open door','EVA Kit','Locate Panel Access Key',3,'next','abort',0,'On RHS of EVA Kit',1,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1893,1,2,'Open door','Panel Access Door','Unlock Panel Access Door',3,'next','1.2',1,'Causion: Key is on Spring Tension',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1894,2,1,'Open door','EVA Kit','Return Panel Access Key',3,'next','2.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1895,3,1,'Open door','Panel Access Door','Insert Finger in Center Opening',3,'next','3.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1896,3,2,'OPen door','Panel Access Door','Secure Panel Access Door in Open Position',3,'next','3.2',2,'Warning: Door can accidentally close',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1897,4,1,'Tether Cable','Astronaut Belt - Should we show?','Use Blue Carabineer',3,'next','4.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1898,4,2,'Tether Cable','Storage','Securely tether to the point marked Tether Cable inside Storage',3,'next','4.2',1,'Caution: Tether Cable is Adjustable',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1899,5,1,'Disable Alarm','E-STOP Button','Gently press down on E-STOP Button',3,'next','5.1',3,'This will temporarily disable alarm',0,73,3,1);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1900,6,1,'Tether Fusebox','EVA Kit','Locate Fusible Disconnect Box',3,'next','6.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1901,6,2,'Tether Fusebox','Fusible Disconnect Box','Tether Blue Carbineer to Tether Cable',3,'next','6.2',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1902,7,1,'Tether Fusebox','Where?','Remove Blue Carbineer from Fusible Disconnect box',3,'next','7.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1903,7,2,'Tether Fusebox','Storage','Transfer Fusible Disconnect Box to Storage',3,'next','7.2',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1904,8,1,'Change Fuse','Fuse Disconnect Box','Open Fusible Disconnect Box',3,'next','8.1',1,'Caution: Pull locking tab with index finger while lifting cover with thumb',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1905,8,2,'Change Fuse','Fuse Disconnect Box','Secure lid in open position',3,'next','8.2',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1906,9,1,'Change Fuse','Fuse Disconnect Box','Locate Black Disconnect',3,'next','9.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1907,9,2,'Change Fuse','Fuse Disconnect Box','Tether it to Tether Cable',3,'next','9.2',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1908,10,1,'Change Fuse','Fuse Disconnect Box','Remove disconnect',3,'next','10.1',1,'Caution: Pullup with Index and middle fingers while pushing down on Fuse Access Panel with thumb',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1909,10,2,'Change Fuse','Storagte','Place disconnect in storage',3,'next','10.2',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1910,11,1,'Change Fuse','Fuse Disconnect Box','Tether fuse access panel to Tether cable',3,'next','11.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1911,12,1,'Change Fuse','Fuse Disconnect Box','Remove fuse access panel by pulling straight up',3,'next','12.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1912,13,1,'Change Fuse','Storage','Place fuse access panel in storage',3,'next','13.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1913,14,1,'Change Fuse','Fuse Disconnect Box','Tether Alarm Fuse to Tether Cable',3,'next','14.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1914,15,1,'Change Fuse','Storage','Locate Blue Fuse Puller',3,'next','15.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1915,16,1,'Change Fuse','Fuse Disconnect Box','Use Blue fuse puller to remove only the Alarm Fuse',3,'next','16.1',1,'Caution:  Rock alarm fuse with fuse puller when pulling up',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1916,17,1,'Change Fuse','Storage','Return Alarm fuse to storage',3,'next','17.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1917,18,1,'Reinstall Fuse','Storage','Locate fuse access panel',3,'next','18.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1918,18,2,'Reinstall Fuse','Fuse Disconnect Box','Reinstall fuse access panel into the fuse disconnect box',3,'next','18.2',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1919,19,1,'Reinstall Fuse','Fuse Disconnect Box','Remove the fuse access panel tether from the tether cable',3,'next','19.1',2,'Warning: all tethers are under spring-tension and can retract quickly',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1920,19,2,'Reinstall Fuse','Fuse Disconnect Box','Stow tether cable inside storage?',3,'next','19.2',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1921,20,1,'Reinstall Disconnect box','Storage','Locate Disconnect',3,'next','20.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1922,20,2,'Reinstall Disconnect box','Fuse Disconnect Box','Reinstall disconnect in fusible disconnect box',3,'next','20.2',3,'The disconnect must read ON in the upper right corner to restore conductivity',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1923,21,1,'Reinstall Disconnect box','Fuse Disconnect Box','Remove disconnect tether from tether cable',3,'next','21.1',2,'Warning: All tethers are under spring tension and can retract quickly',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1924,22,1,'Reinstall Disconnect box','Fuse Disconnect Box','Close fusible disconnect box cover',3,'next','22.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1925,23,1,'Reinstall Disconnect box','Storage','Use Blue Carabineer to clip and lock the fusible disconnect box cover',3,'next','23.1',0,NULL,0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1926,24,1,'Reinstall Disconnect box','Tether Cable','Remove blue carabineer tether from tether cable',3,'finish','24.1',2,'Warning: All tethers are under spring tension and can retract quickly',0,73,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1927,1,1,'Remove old Battery Pack','EVA Kit','Locate Aux. Power Input',3,'next','abort',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1928,2,1,'Remove old Battery Pack','EVA Kit','Locate Battery Pack',3,'next','2.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1929,2,2,'Remove old Battery Pack','EVA Kit','Tether the Battery Pack to the tether cable',3,'next','2.2',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1930,3,1,'Remove old Battery Pack','Aux. Power Input','Undo the battery pack leads from the Aux. Power Input',3,'next','3.1',1,'Caution: Depress the red and black plastic hammers on the side of the AUX. POWER INPUT and pull the leads straight up.',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1931,4,1,'Remove old Battery Pack','Aux. Power Input','Remove Battery Pack from Aux. Power Input',3,'next','4.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1932,5,1,'Remove old Battery Pack','Power Pack','Locate the ON/OFF switch on the back of the Battery Pack',3,'next','5.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1933,5,2,'Remove old Battery Pack','Power Pack','Switch the ON/OFF to OFF position',3,'next','5.2',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1934,6,1,'Remove old Battery Pack','Storage','Place the Battery Pack to the Storage',3,'next','6.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1935,7,1,'Replace Battery Pack','Storage','Locate the Replacement Battery Pack',3,'next','7.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1936,8,1,'Replace Battery Pack','Replacement Battery Pack','Locate the ON/OFF switch on the back of the Battery Pack',3,'next','8.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1937,8,2,'Replace Battery Pack','Replacement Battery Pack','Switch the ON/OFF to ON position',3,'next','8.2',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1938,9,1,'Replace Battery Pack','Aux. Power Input','Attach the replacement Battery Pack onto the Aux. Power Input',3,'next','9.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1939,10,1,'Replace Battery Pack','Aux. Power Input','Attach the replacement Battery Pack onto the Aux. Power Input',3,'next','10.1',1,'Caution: Depress the red and black plastic hammers on the side of the AUX. POWER INPUT and pull the leads straight up.',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1940,11,1,'Replace Battery Pack','Aux. Power Input','Test pulling the wire gently',3,'next','11.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1941,12,1,'Replace Battery Pack','Battery Pack','Remove the Battery Pack tether from the tether cable',3,'next','12.1',2,'All tethers are under spring-tension and can reteact quickly',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1942,13,1,'Plug in the POWER OUTPUT','Storage','Locate the Gray 220 Volt PLUG',3,'next','13.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1943,14,1,'Plug in the POWER OUTPUT','Power Output','Install the Gray 220 Volt PLUG into the POWER OUTPUT',3,'next','14.1',1,'Outlet and plug mate are stiff, ensure the full engagement of the plug into the outlet.',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1944,15,1,'Routing the Buss Bars','EVA Kit','Locate the Buss Bars',3,'next','15.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1945,15,2,'Routing the Buss Bars','EVA Kit','Verify there are 3 Buss Bars with Black, Green White, each has 2 openings',3,'next','15.2',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1946,16,1,'Routing the Buss Bars','White Buss Bar','Insert the White 220 Volt Lead into the leftWhite Buss opening',3,'next','16.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1947,16,2,'Routing the Buss Bars','White Buss Bar','Tighten the thumbscrew',3,'next','16.2',1,'DO NOT over tighten the thumbscrew',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1948,17,1,'Routing the Buss Bars','Green Buss Bar','Insert the Green 220 Volt Lead into the left Green Buss opening',3,'next','17.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1949,17,2,'Routing the Buss Bars','Green Buss Bar','Tighten the thumbscrew',3,'next','17.2',1,'DO NOT over tighten the thumbscrew',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1950,18,1,'Routing the Buss Bars','Black Buss Bar','Insert the Black 220 Volt Lead into the left Black Buss opening',3,'next','18.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1951,18,2,'Routing the Buss Bars','Black Buss Bar','Tighten the thumbscrew',3,'next','18.2',1,'DO NOT over tighten the thumbscrew',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1952,19,1,'Routing the Buss Bars','All the Buss Bars','Verify the metal leads are not sticking out the Black of the Buss Bar',3,'next','19.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1953,20,1,'Routing the Buss Bars','All the Buss Bars','Conduct the Pull Test',3,'next','20.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1954,21,1,'Plug in the POWER IN','Storage','Locate the 110 Volt PLUG',3,'next','21.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1955,21,2,'Plug in the POWER IN','POWER IN','Install the110 Volt PLUG into the POWER IN',3,'next','21.2',1,'Lift cover with one hand while installing PLUG into the outlet with the other hand. The lid is spring-loaded.',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1956,22,1,'Routing the Buss Bars','White Buss Bar','Insert the White 220 Volt Lead into the right White Buss opening',3,'next','22.1',0,NULL,0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1957,22,2,'Routing the Buss Bars','White Buss Bar','Tighten the thumbscrew',3,'next','22.2',1,'DO NOT over tighten the thumbscrew',0,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1958,23,1,'Routing the Buss Bars','Green Buss Bar','Insert the Green 220 Volt Lead into the right Green Buss opening',3,'next','23.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1959,23,2,'Routing the Buss Bars','Green Buss Bar','Tighten the thumbscrew',3,'next','23.2',1,'DO NOT over tighten the thumbscrew',1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1960,24,1,'Routing the Buss Bars','Black Buss Bar','Insert the Black 220 Volt Lead into the right Black Buss opening',3,'next','24.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1961,24,2,'Routing the Buss Bars','Black Buss Bar','Tighten the thumbscrew',3,'next','24.2',1,'DO NOT over tighten the thumbscrew',1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1962,25,1,'Routing the Buss Bars','All the Buss Bars','Conduct the Pull Test on all the cables',3,'next','25.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1963,26,1,'Turn on POWER IN','Storage','Locate the E-STOP KEY',3,'next','26.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1964,27,1,'Turn on POWER IN','E-STOP','Insert the E-STOP Key into the E-STOP',3,'next','27.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1965,27,2,'Turn on POWER IN','E-STOP','Turn the E-STOP key to the right',3,'next','27.2',0,'the button will pop up',1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1966,28,1,'Turn on POWER IN','E-STOP','Remove the Key',3,'next','28.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1967,28,2,'Turn on POWER IN','Storage','Place the E-STOP Key to the Storage',3,'next','28.2',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1968,29,1,'Turn on POWER IN','POWER IN','Locate the swith',3,'next','29.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1969,29,2,'Turn on POWER IN','POWER IN','Change the switch to the ON position',3,'next','29.2',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1970,30,1,'Turn on POWER IN','POWER IN','Confirm the SYSTEM GO light is GREEN',3,'next','32.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1971,31,1,'Turn on POWER IN','EVA Kit','Read: \"EVA 1, this is Houston Mission Control.  Congratulations. PHALCON is reporting that they are reading a successful power restoration on their console. You are a go to untether from the TETHER CABLE and return to space station. Mission Control out. \"',3,'next','31.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1972,32,1,'Turn on POWER IN','EVA Kit','Read: \"EVA 1, this is Houston Mission Control.  PHALCON confirms and is not able to report a successful power restoration on their console. EVA-1, please be advised that we have prepared some trouble-shooting steps for you to conduct on a future spacewalk. \"',3,'finish','32.1',0,NULL,1,74,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1973,1,1,'Start Conveyor','Conveyor Box','Take the Conveyor out of the box',1,'next','abort',0,NULL,0,75,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1974,2,1,'Assemble the Light Stack','ON/OFF button','Mount the light base',1,'next','2.1',0,NULL,0,75,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1975,2,2,'Assemble the Light Stack','ON/OFF button','Gently put the light stack to the light base',1,'next','2.2',0,NULL,0,75,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1976,3,1,'Operate the Conveyor','Power Supplier','Adjust the power supplier to 24V, and turn off',1,'next','3.1',0,NULL,0,75,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1977,3,2,'Operate the Conveyor','Power Supplier','Connect the power supplier to the Conveyor',1,'next','3.2',0,NULL,0,75,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1978,4,1,'Operate the Conveyor','Power Supplier','Turn on the power supplier',1,'next','4.1',0,NULL,0,75,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1979,5,1,'Operate the Conveyor','Conveyor System','Place Pegs on the belt',1,'next','5.1',0,NULL,0,75,3,0);
INSERT INTO `iau` (`id`,`step`,`sub_step`,`high_level_action`,`site_of_action`,`task_of_action`,`confirm_level`,`next_step`,`backup_step`,`caution_level`,`caution`,`completed`,`eva_id`,`preemption_level`,`locked`) VALUES (1980,5,2,'Operate the Conveyor','Conveyor System','Verify if the system works as expected',1,'finish','5.2',0,NULL,0,75,3,0);