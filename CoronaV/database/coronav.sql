CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL auto_increment,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `ip_add` varchar(100) NOT NULL,
  `user_id` int(10) default NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `id`, `ip_add`, `user_id`, `qty`) VALUES
(2, 11, '127.0.0.1', 1, 1),
(1, 12, '127.0.0.1', 3, 1),
(30, 13, '127.0.0.1', 3, 1),
(1, 14, '127.0.0.1', 4, 1),
(1, 15, '127.0.0.1', 1, 1),
(28, 19, '127.0.0.1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL auto_increment,
  `cat_title` varchar(100) NOT NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'HOME MEDICINE'),
(2, 'PERSONAL CARE'),
(3, 'HEALTH LIBRARY'),
(4, 'PHARMACY');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--


-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(10) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`email_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(1, 'pradeepbagotia@gmail.com'),
(2, 'arya12@gmail.com'),
(3, 'aryaa123@gmail.com'),
(4, 'aaa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) NOT NULL auto_increment,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL auto_increment,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `trx_id` varchar(50) NOT NULL,
  `p_status` varchar(50) NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL auto_increment,
  `user_id` int(10) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(100) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(100) NOT NULL,
  `prod_count` int(10) default NULL,
  `total_amount` int(10) default NULL,
  `cvv` int(5) NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amount`, `cvv`) VALUES
(1, 1, 'Arya A', 'arya12@gmail.com', '#23,yelahanka new town, bangalore-64', 'bangalore', 'Karnataka', 560064, 'Arya A', '968427501843', '12/20', 0, NULL, 909),
(2, 1, 'Arya A', 'arya12@gmail.com', '#23,yelahanka new town, bangalore-64', 'bangalore', 'Karnataka', 560064, 'Arya A', '983617422745', '12/20', 0, NULL, 909);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL auto_increment,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) default NULL,
  `amt` int(15) default NULL,
  PRIMARY KEY  (`order_pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `order_products`
--


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL auto_increment,
  `product_cat` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_image1` text NOT NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_image1`) VALUES
(1, 1, 'HIMALAYA WELLNESS PURE HERBS AMALAKI TABLET', 200, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '11.jpg', '11 (2).jpg'),
(2, 1, 'NARBADA AYURVEDA HERBAL TEA IMMUNITY BOOSTER,SOAR THROAT SOOTHER AND ACIDITY RELIEF', 180, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '12.jpg', '12 (2).jpg'),
(3, 1, 'HERB PHARM STONE BREAKER COMPUND FOR URINARY SYSTEM SUPPORT - 1 OUNCE', 449, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '13.jpg', '13 (2).jpg'),
(4, 1, 'HEERA AYURVEDIC COUGH SYRUP', 179, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '14.jpg', '14 (2).jpg'),
(5, 1, 'GREENMAGIC AYUSH KWATH(KADHA) FOR IMMUNITY BOOSTER AYUVERDIC HERBAL REMEDY FOR COLD, COUGH, FLU, SOR', 369, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '15.jpg', '15 (2).jpg'),
(6, 1, 'BREATHE YOGUE POTENT ANTIVIRAL DROPS', 395, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '16.jpg', '16 (2).jpg'),
(7, 1, 'ALCHEM LIFE PHYTORELIEF CC NATURAL RELIEF FROM COUGH AND COLD', 499, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '17.jpg', '17 (2).jpg'),
(8, 1, 'NVEDA IMMUNITYBOOST WITH PAPAYA LEAVES EXTRACT, GILOY,FENUGREEK SEEDS, CURCUMIN LONGA', 380, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '18.jpg', '18 (2).jpg'),
(9, 2, 'BILDOS 3 PLY CE, ISO & GMP CERTIFIED FACE MASKS WITH ADJUSTABLE NOSE CLIP AND ULTRASONIC SEALED EAR ', 420, 'This is 3-Layer Anti-Dust Breathable Disposable Earloop Medical Sanitary Face Mask . It comes in 100 Pieces.\r\n\r\nMask comes with built - in nose pin\r\n\r\nPack includes: 100 Pieces\r\n\r\nIt is easy to wear and remove', '21.jpg', '21 (2).jpg'),
(10, 2, 'NASHER MILES OUTDOOR WASHABLE AND REUSABLE N95 FACE MASK', 249, '5 Layered N95 Mask with Ultra Strong Protection: 5 premium layers including 60 GSM pp spun bond, 25 GSM melt blown, 30 GSM pp hot blown cotton, 25 GSM melt blown and 30 GSM pp spun bond fabric.\r\nProtection: This N95 valve mask protects from exposure to airborne particles and has more than 95% filter efficiency of 2.5 PM. It protects from exposure to pollution, dust, smoke and saves you from everyday pollution.\r\nOne Size Fits Most: The N-95 face mask features an adjustable nose clip pin that can be pressed to match the specific design of your nose for a snug fitting.\r\nEase of Breathing: It has a respirator/air valve which helps in easy breathing while on the move. Made up of soft & super light NON-WOVEN & MELT BLOWN material which does not cause any irritation even after prolonged wearing.\r\nThe product is MADE IN INDIA and has SITRA , ISO , CE , FDA , FFP2 and EN149 certificates.Each Set consists of 3 white N95 masks having different colored elastic loop (Red, Royal Blue, Black) and Respirators (Red, Royal Blue, Black).Nasher Miles Pvt. Ltd. and Cloudtail India are the only authorized sellers for Nasher Miles products', '22.jpg', '22 (2).jpg'),
(11, 2, 'LIFEBUOY TAOTAL SANITIZER 250ML', 120, 'Lifebuoy Antibacterial Hand Sanitizer has over 60% alcohol content and gives you instant germ protection\r\nLifebuoy Antibacterial Hand Sanitizer kills 99.9% bacteria and virus without water\r\nLifebuoy Antibacterial Hand Sanitizer has Glycerine, it leaves your skin feeling moisturised. Maximum Shelf Life 24 Months\r\nApply enough Hand sanitiser gel on your palm. Spread and rub over the back of your hands thoroughly and fingertips until completely dry before touching other surfaces\r\nLifebuoy Antibacterial Hand Sanitizer also comes in a convenient easy to carry pack that helps protect you when out of home\r\nMake Lifebuoy hand sanitiser your new 24 hour companion in school, at home, work place, metros, market and gyms', '23.jpg', '23 (2).jpg'),
(12, 2, 'SAVLON MOISTURE SHIELD GERM PROTECTION LIQUID HANDWASH REFILL POUCH, 750ML', 95, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '24.jpg', '24 (2).jpg'),
(13, 2, 'HAND PRO NITRILE POWDER-FREE GLOVES (BLUE,MEDIUM) - PACK OF 100', 75, 'PERFECT FOR YOUR FOOD SERVICE BUSINESS AND HANDLING FOOD, Promote a sanitary work environment with these disposable poly food serving gloves. Great for food perpetration, or for cooking in your own kitchen, hotel, restaurant, etc.\r\nHIGH QUALITY GLOVES, Adopted high quality pure PE material. These gloves are of the highest quality, and are not to tear easily, comfortable and smooth touch in hand, easy to wear.\r\nGREAT FIT ONE SIZE FITS ALL - Clear Plastic Gloves. Easy to put on easy to take off light duty kitchen disposable service food prep gloves. One Large Size fits all for adults/unisex men and women, Left and right hands. Refers to the human hand shape design, the right and left universal.\r\nMULTIPURPOSE & CONVENIENT: Food Safe Poly gloves are ideal for light duty applications such as food services, cleaning and other general purpose needs. Promote a sanitary work environment with these disposable poly food serving gloves, eating messy foods such as BBQ, cleaning and in any situation where you don''t want to dirty your hands. These disposable accessories make cleaning a breeze.\r\nMade In India Product. Latex Free, Consist of durable, hard to penetrate plastic to keep your hands dry and protected.', '25.jpg', '25 (2).jpg'),
(14, 2, 'ELECT STORE FACE SHIELD PROTECTION, FULL 180 DEGREE PROTECTIVE FACE COVER', 189, 'Comfortable wearing experiencewith a soft durable sponge, a safety face shield provides extra comfort and safety for everyday use\r\nANTI-FOG DESIGN Made of anti-fog recyclable PET Polyethylene terephthalate, this safety face shield prevents fog from covering your sight. Even though you need to use it in a long period of time\r\nEffectively decrease splatter full facial safety face shield protect you from spray and splatter. with ergonomics design, our safety face shield works for most people\r\nEASY TO USE Before use, please peel off the transparent plastic film. Wear it above your ears of the head and adjust to a comfortable position\r\n4 protection face shield mask isolation mask eyes nose full frontal protection face shield safety visor.', '26.jpg', '26 (2).jpg'),
(15, 2, 'ARG HEALTH CARE PPE-KIT MEDICAL DISPOSABLE PROTECTIVE COVER ALL SUIT FOR DOCTOR', 385, 'PERSONAL PROTECTIVE KIT with Hooded head and elastic design at the cap and mouth effectively block dust & microorganisms Zipper Design: Easy to put on and take off Elastic Cuffs: Flexible, effective barrier and provided easy movements\r\nWaist design: Fits well to meet different body wear requirements All the materials we are using are as per Govt. approved vendors. Our fabrics are 90 GSM approved\r\nGloves Gloves are powdered latex and help protect you when directly handling materials or contaminated surfaces. Coverall Gowns Gowns help protect you from the contamination of clothing. ARG PPE kit coverall 90 GSM is breathable full body cover,non woven,waterproof,spunbound poly laminated with hood.\r\nShoe and Head Cover Shoe and head covers provide a barrier against possible exposure within a contaminated environment. Shoe cover is 90 GSM non-woven and high ankle. Head cap is high quality non woven fabric cap\r\nFace Masks Surgical masks help protect your nose and mouth from splattered of body fluids, and filter the air before you inhale it. Face mask in ARG PPE kit is 3 ply mask with nose pin and anti microbial fabric filter. Eye Protection Goggles help protect only your eyes from splatters and gives you full eye protection.', '27.jpg', '27 (2).jpg'),
(16, 2, 'DETTOL ORIGINAL GERM PROTECTION ALCOHOL BASED HAND SANITIZER, 50ML', 25, 'INSTANT SANITIZER: Kills 99.9% of germs without water\r\nTRAVEL FRIENDLY: Hand sanitizer for rinse free protection on-the-go!\r\nMILD FRAGRANCE: Non-irritating classic DETTOL fragrance\r\nNON-STICKY FORMULA: Effective & safe sanitizer for kids and adults\r\nDOCTOR RECOMMENDED: DETTOL products are recommended by the Indian Medical Association (IMA)\r\nAVAILABLE IN 3 FRAGRANCES: Original, Floral Essence and Spring Fresh', '28.jpg', '28 (2).jpg'),
(17, 2, 'KKPOT PROTECTIVE FACE SHIELD , ANTI SPLASH AND SALIVA SPREAD SAFETY SHIELD (BLUE)', 1985, 'SAFETY PROTECTION, SMOOTH BREATHING---Effectively stop Saliva Spread, wear in the office without boring or hypoxia.\r\nERGONOMIC DESIGN, COOL---Ear-hook design, fit the face shape, relaxed and comfortable.Solve wet face and scratches and injuries to ears caused by wearing a mask in the office for a long time\r\nEASY TO CLEAN AND REUSE---Detergent may be used, liquid soap or alcohol cleaning, can be reused\r\nDOES NOT AFFECT WEARING GLASSES---Even wearing glasses can also use this product, and eyeglass lenses will not fog\r\nMAKE PROTECTION FASHIONABLE---Can be used in kitchens, homes, offices, etc. Wear this product outside masks in public areas for an extra layer of protection', '29.jpg', '29 (2).jpg'),
(18, 2, 'WASHABLE ANTI POLLUTION 3 LAYER FACE MASK (PACK OF 4 MASK)', 385, '100% Cotton\r\nThese 2 layers masks are made from high quality 100% Cotton fabric\r\nSoft, breathable, and comfortable to wear all day. Washable and Reusable.\r\nDouble layers of fabric helps create a comfortable barrier for nose and mouth.\r\nDesigned in Los Angeles California, made in Vietnam\r\nHAND WASH-cold water and low heat iron', '20.jpg', '20 (2).jpg'),
(19, 3, 'ALKA-SELTZER ORIGINAL EFFERVESCENT TABLETS 72-COUNT.', 482, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '31.jpg', '31 (2).jpg'),
(20, 3, 'BEST COLON DETOX FORMULA - ADVANCED COLON DETOX SUPPLEMENT.', 740, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '32.jpg', '32 (2).jpg'),
(21, 3, 'GARDEN OF LIFE RAW ENZYMES(TM) MEN 90 CAPSULES.', 1926, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '33.jpg', '33 (2).jpg'),
(22, 3, 'HYLAND''S BIOPLASMA TABLETS 1000 TABLETS.', 456, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '34.jpg', '34 (2).jpg'),
(23, 3, 'HYLAND''S DEFEND COUGH AND COLD 8 OUNCE.', 456, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '35.jpg', '35 (2).jpg'),
(24, 3, 'JARROW FORMULAS METHYLCOBALAMIN (METHYL B12) 5000MCG 60 LOZENGES.', 852, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '36.jpg', '36 (2).jpg'),
(25, 3, 'MUSCLE PHARM CLA 1000 MG SOFTGEL CAPSULES 180 COUNT.', 829, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '37.jpg', '37 (2).jpg'),
(26, 3, 'NATROL BIOTIN 10000 MCG MAXIMUM STRENGTH TABLETS 100-COUNT.', 414, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '38.jpg', '38 (2).jpg'),
(27, 4, 'THE BETTER HOME DISHWASH LIQUID (500ML)', 250, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '41.jpg', '41 (2).jpg'),
(28, 4, 'LIZOL DISINFECTANT FLOOR CLEANER CITRUS, 2 L', 297, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '42.jpg', '42 (2).jpg'),
(29, 4, 'NATURE PROTECT DISINFECTANT SURFACE CLEANING SPRAY', 169, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '43.jpg', '43 (2).jpg'),
(30, 4, 'TRI-ACTIV 70% ALCOHOL BASED DISINFECTANT SPRAY FOR MULTI-SURFACES - 500 ML', 289, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '44.jpg', '44 (2).jpg'),
(31, 4, 'PRESTO! 2 PLY FACIAL TISSUE SOFT POLY PACK - 200 PLUS', 299, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '45.jpg', '45 (2).jpg'),
(32, 4, 'HIMALAYA PURIFYING NEEM FACIAL WIPES, 25 COUNT (PACK OF 2)', 130, 'Health is one of most important things in our life. We think that it is a real luck to have a strong health. Our way of life doesn’t increase the physiological condition of our body. Alcohol, cigarettes, unhealthy food, stresses and other factors have a great influence on our health. The human’s immune system is very uncertain thing because there is a countless quantity of different dangerous viruses and bacteria. From ancient times plague and other infectious diseases have been killing people without leaving them any chance to survive. All these diseases are even worse than wars by the quantity of deaths.\r\n\r\nIt is very noble activity to protect health and help people recover. Our main goal is to find the easiest way of treatment. We understand that human’s activity is also very dangerous because it could lead to unforeseeable consequences like some complications or even death. Our company states that our goods are of premium quality. There is nothing to worry about.\r\n\r\nThis product is totally safe for your health. It has passed many various tests without a single failure. It is really a product of a new generation. Our vendors guarantee no side effects. We have a great experience and good reputation in this business. One of the main advantages of our products is their reliability because we put great efforts into providing different researches that help us integrate the new safe technologies in our business.\r\n\r\nWell, if you are ready to purchase our goods we will help you to make a right choice. If you have some questions, you can address our support system.', '46.jpg', '46 (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL auto_increment,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_info`
--

--



--
-- Indexes for dumped tables
--


-- Indexes for table `logs`
--
--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);



--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
  
  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  START TRANSACTION;
  SET time_zone = "+00:00";
  
  COMMIT
COMMIT;
