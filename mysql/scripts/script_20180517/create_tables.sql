CREATE TABLE `eva` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `img_link` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

CREATE TABLE `iau` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `step` int(10) unsigned NOT NULL,
  `sub_step` int(10) unsigned NOT NULL,
  `high_level_action` varchar(50) NOT NULL,
  `site_of_action` varchar(100) NOT NULL,
  `task_of_action` varchar(500) NOT NULL,
  `confirm_level` int(10) unsigned NOT NULL,
  `next_step` varchar(50) NOT NULL,
  `backup_step` varchar(50) DEFAULT NULL,
  `caution_level` int(10) unsigned DEFAULT NULL,
  `caution` varchar(150) DEFAULT NULL,
  `completed` int(11) NOT NULL,
  `eva_id` int(10) unsigned NOT NULL,
  `preemption_level` int(11) NOT NULL DEFAULT '3',
  `locked` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `iau_ibfk_1` (`eva_id`),
  CONSTRAINT `iau_ibfk_1` FOREIGN KEY (`eva_id`) REFERENCES `eva` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1981 DEFAULT CHARSET=latin1;

CREATE TABLE `iu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iau_id` int(10) unsigned NOT NULL,
  `link` varchar(500) NOT NULL,
  `type` enum('text','video','image','audio','3d') NOT NULL,
  `position` varchar(45) NOT NULL DEFAULT '0,0,0',
  `rotation` varchar(45) NOT NULL DEFAULT '0,0,0',
  `scale` varchar(45) NOT NULL DEFAULT '1,1,1',
  `space` enum('WORLD_SPACE','LIFE_LINE','EVA_GRID_SPACE','EVA_SPHERE_SPACE') NOT NULL DEFAULT 'WORLD_SPACE',
  PRIMARY KEY (`id`),
  KEY `iu_ibfk_1` (`iau_id`),
  CONSTRAINT `iu_ibfk_1` FOREIGN KEY (`iau_id`) REFERENCES `iau` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2266 DEFAULT CHARSET=latin1;

CREATE TABLE `flow_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `current_iau_id` int(10) unsigned NOT NULL,
  `future_iau_id` int(10) unsigned DEFAULT NULL,
  `eva_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `direct_ibfk_1` (`current_iau_id`),
  KEY `direct_ibfk_3` (`eva_id`),
  KEY `direct_ibfk_2` (`future_iau_id`),
  CONSTRAINT `direct_ibfk_1` FOREIGN KEY (`current_iau_id`) REFERENCES `iau` (`id`) ON DELETE CASCADE,
  CONSTRAINT `direct_ibfk_2` FOREIGN KEY (`future_iau_id`) REFERENCES `iau` (`id`) ON DELETE CASCADE,
  CONSTRAINT `direct_ibfk_3` FOREIGN KEY (`eva_id`) REFERENCES `eva` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1304 DEFAULT CHARSET=latin1;

CREATE TABLE `telemetry` (
  `tele_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internal_suit_pressure` float DEFAULT NULL,
  `time_life_battery` time DEFAULT NULL,
  `time_life_oxygen` time DEFAULT NULL,
  `time_life_water` time DEFAULT NULL,
  `sub_pressure` float DEFAULT NULL,
  `sub_temp` float DEFAULT NULL,
  `fan_tachometer` int(11) DEFAULT NULL,
  `heart_rate` int(11) DEFAULT NULL,
  `oxygen_pressure` float DEFAULT NULL,
  `oxygen_rate` float DEFAULT NULL,
  `battery_capacity` float DEFAULT NULL,
  `h2o_gas_pressure` float DEFAULT NULL,
  `h2o_liquid_pressure` float DEFAULT NULL,
  `sop_pressure` float DEFAULT NULL,
  `sop_rate` float DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tele_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24916 DEFAULT CHARSET=latin1;

CREATE TABLE `telemetry_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `telemetry_data` varchar(45) NOT NULL,
  `rank` int(11) NOT NULL,
  `warning_thr_up` double NOT NULL,
  `warning_thr_low` double NOT NULL,
  `critical_thr_up` double NOT NULL,
  `critical_thr_low` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

CREATE TABLE `suit_switch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sop_on` tinyint(4) NOT NULL,
  `sspe` tinyint(4) NOT NULL,
  `fan_error` tinyint(4) NOT NULL,
  `vent_error` tinyint(4) NOT NULL,
  `vehicle_power` tinyint(4) NOT NULL,
  `h2o_off` tinyint(4) NOT NULL,
  `o2_off` tinyint(4) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
