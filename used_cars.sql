
--
-- Database: `my_carshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `used_cars`
--

CREATE TABLE `used_cars` (
  `id` int(11) NOT NULL,
  `make` varchar(30) NOT NULL,
  `model` varchar(60) DEFAULT NULL,
  `body_type` enum('Compact','Convertible','Coupe','Station Vegon','SUV','Van','Transporter') NOT NULL,
  `fuel_type` enum('Gasoline','Diesel','Ethanol','Electric','Hydrogen','Others') NOT NULL,
  `mileage` int(11) DEFAULT NULL,
  `body_color` enum('beige','blu','brown','bronze','yellow','grey','green','red','black','silver','violet','white','orange') NOT NULL,
  `doors_number` bit(1) DEFAULT NULL,
  `seats_number` bit(1) DEFAULT NULL,
  `had_accident_before` bit(1) NOT NULL,
  `how_many_previous_owners` tinyint(4) DEFAULT NULL,
  `power` tinyint(4) NOT NULL,
  `weight_when_empty` float(7,2) DEFAULT NULL,
  `first_registration` date NOT NULL,
  `last_general_revision` date DEFAULT NULL,
  `author_description` text,
  `seller_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sold` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Indexes for table `used_cars`
--
ALTER TABLE `used_cars`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for table `used_cars`
--
ALTER TABLE `used_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

