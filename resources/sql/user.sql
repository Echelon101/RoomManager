
INSERT INTO `customer` (`id`, `priv_id`, `firstname`, `lastname`, `email`, `password`, `company`, `iban`, `bic`, `tel`, `street`, `hsnr`, `city`, `country`, `zip`, `uuid`, `locked`) VALUES
(1, 3, 'Cust', 'Omer', 'customer@test.de', '$2y$12$7eJB3nwyOQjAXUcDMhpUGuOjxNTmBRRS8mRaFXk5POgj5q2sV2Vvu', 'TestCompany', 'DE53330500588620', 'GENODEF1PON', '015265294283', 'Musterstraße', '64', 'Musterstadt', 'de', '25451', '97f8ecab-32ec-4f18-8fa5-ff90c4563c6c', 0);
-- --------------------------------------------------------

INSERT INTO `employee` (`id`, `priv_id`, `firstname`, `lastname`, `email`, `password`, `uuid`, `hsnr`, `street`, `city`, `tel`, `zip`) VALUES
(1, 1, 'Timo', 'Mustermann', 'admin@test.de', '$2y$12$7eJB3nwyOQjAXUcDMhpUGuOjxNTmBRRS8mRaFXk5POgj5q2sV2Vvu', '096d8fc0-9fb0-43c1-9422-ec1374031de1', '50', 'Musterstraße', 'Musterstadt', '015705054221', '24558'),
(2, 4, 'Max', 'Mustermann', 'employee@test.de', '$2y$12$7eJB3nwyOQjAXUcDMhpUGuOjxNTmBRRS8mRaFXk5POgj5q2sV2Vvu', '8a8aac77-dd8c-4b18-addf-f22457c27f77', '51c', 'Musterstraße', 'Musterstadt', '013308034233', '24558'),
(3, 5, 'Florian', 'Mustermann', 'employer@test.de', '$2y$12$7eJB3nwyOQjAXUcDMhpUGuOjxNTmBRRS8mRaFXk5POgj5q2sV2Vvu', '402ebe81-856e-46a3-a964-b0d9e1f7ce7c', '22', 'Musterstraße', 'Musterstadt', '14923034283', '24558');