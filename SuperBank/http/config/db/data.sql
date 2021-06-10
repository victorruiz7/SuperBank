CREATE TABLE IF NOT EXISTS `seller_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `money` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` int(11) NOT NULL,
  `exp_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `admin_acept` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `teller_log`
--

INSERT INTO `teller_log` (`id`, `id_user`, `transaction_id`, `password`, `money`, `bank`, `bank_id`, `create_date`, `exp_date`, `status`, `admin_acept`) VALUES
(7, 4, 'WP1C5R', '791f686674241e6bc95d042943a964f3', '1000000', 'fatih', '123456', 1396863875, '2014-04-14 11:54:35', 1, 0);
