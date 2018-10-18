CREATE TABLE `archives` (
  `id` int(11) NOT NULL,
  `repo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archive_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dur` float DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `csize` bigint(10) DEFAULT NULL,
  `dsize` bigint(10) DEFAULT NULL,
  `osize` bigint(10) DEFAULT NULL,
  `nfiles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `dur` int(11) DEFAULT NULL,
  `nfiles` bigint(20) DEFAULT NULL,
  `osize` bigint(20) DEFAULT NULL,
  `csize` bigint(20) DEFAULT NULL,
  `dsize` bigint(20) DEFAULT NULL,
  `nb_archive` int(11) DEFAULT NULL,
  `curpos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `error` int(11) DEFAULT NULL,
  `log` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `repository` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encryption` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `dsize` bigint(20) DEFAULT NULL,
  `csize` bigint(20) DEFAULT NULL,
  `ttuchunks` bigint(20) DEFAULT NULL,
  `ttchunks` bigint(20) DEFAULT NULL,
  `location` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `archive_id` (`archive_id`);

ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `repository`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `archives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `repository`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;