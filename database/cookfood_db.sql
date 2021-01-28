-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2021 at 11:49 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookfood_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` int(10) NOT NULL,
  `r1_id` int(10) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `r1_id`, `name`, `email`, `comment`, `date`, `time`) VALUES
(1, 2, 'Sameer', '', 'Sample comment', '2020-12-27', '10:12:47'),
(2, 2, 'sameer', '', 'This is a good recipe.....!', '2020-12-27', '10:12:22'),
(3, 3, 'sameer', 'sameer@gmail.com', 'sample text\r\n', '2020-12-27', '10:12:35'),
(4, 41, 'shobhraj bk', 'shobhrajbksbk@gmail.com', 'nice thank you', '2021-01-11', '12:01:44'),
(5, 2, 'shobhraj bk', 'sbk@gmail.com', 'good recipe', '2021-01-11', '01:01:04'),
(6, 2, 'Suraj', 'suraj@gmail.com', 'nice thankyou', '2021-01-11', '01:01:59'),
(7, 2, 'Sam', 'sam@gmail.com', 'nice', '2021-01-11', '01:01:50'),
(8, 2, 'Sam', 'sam@gmail.com', 'good', '2021-01-11', '10:01:56'),
(9, 8, 'Sam', 'sam@gmail.com', 'nice', '2021-01-11', '10:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `r1_id` int(10) DEFAULT NULL,
  `incredients` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `r1_id`, `incredients`) VALUES
(3, 2, '750 grams chicken'),
(4, 2, '2 cup onion'),
(5, 2, 'salt As required'),
(6, 2, '2 inches cinnamon stick'),
(7, 2, '2 green cardamom'),
(8, 2, '1 teaspoon ginger paste'),
(9, 2, '2 teaspoon coriander powder'),
(10, 2, '1 cup water'),
(11, 2, '2 teaspoon cumin powder'),
(12, 2, '1 tablespoon garam masala powder'),
(13, 2, '1 tablespoon ghee'),
(14, 2, '4 tablespoon mustard oil'),
(15, 2, '1/2 cup tomato'),
(16, 2, '3 teaspoon coriander leaves'),
(17, 2, '2 bay leaf'),
(18, 2, '1 black cardamom'),
(19, 2, '2 teaspoon garlic paste'),
(20, 2, '1 teaspoon turmeric'),
(21, 2, '2 teaspoon red chilli powder'),
(22, 2, '2 green chillies'),
(23, 2, '2 teaspoon kasoori methi powder'),
(24, 3, '500 gms chicken'),
(25, 3, '2 tsp ginger garlic Paste'),
(26, 3, '3 tsp curd'),
(27, 3, '1 tsp lemon Juice'),
(28, 3, '1 tsp vinegar'),
(29, 3, '1 tsp coriander powder'),
(30, 3, '1 tsp cumin powder'),
(31, 3, '1 tsp red chilli powder'),
(32, 3, '1 tsp salt'),
(33, 3, '2 tsp onion, chopped'),
(34, 3, '2 tsp butter'),
(35, 3, '1 tsp red chilli powder'),
(36, 3, '1 tsp coriander powder'),
(37, 3, '1 tsp cumin powder, chopped'),
(38, 3, '1 tsp ginger'),
(39, 3, '1/2 cup water'),
(40, 3, '1 tsp salt'),
(41, 3, '1 Green chilli'),
(42, 3, '6 Tomatoes'),
(43, 3, '1/2 tsp sugar'),
(44, 3, '3 tsp butter'),
(45, 3, '3 tsp cream'),
(46, 4, '1/2 tsp black peppercorns'),
(47, 4, '1 tsp coriander seeds'),
(48, 4, '1 tsp cumin seeds'),
(49, 4, '1 1/2 tbsp ghee'),
(50, 4, '1 bay leaf'),
(51, 4, '2 chopped onions'),
(52, 4, '3 minced garlic cloves'),
(53, 4, '3 minced garlic cloves'),
(54, 4, '1-inch minced ginger'),
(55, 4, 'Salt as per taste'),
(56, 4, '1/2 tsp Kashmiri chili powder'),
(57, 4, '1 green chilli'),
(58, 4, '1/2 tsp haldi'),
(59, 4, '1/2 tsp garam masala'),
(60, 4, '1/2 kg diced boneless chicken'),
(61, 4, '1 to 2 pureed tomatoes ( 1 big and 1 small would suffice)'),
(62, 5, '500 grams mutton'),
(63, 5, '2 tablespoon coriander powder'),
(64, 5, '4 onion'),
(65, 5, '2 teaspoon garlic paste'),
(66, 5, '4 clove'),
(67, 5, '5 green cardamom'),
(68, 5, '1 cinnamon stick'),
(69, 5, 'salt As required'),
(70, 5, '2 cup water'),
(71, 5, '4 tablespoon ghee'),
(72, 5, '1/2 cup yoghurt (curd)'),
(73, 5, '2 teaspoon ginger paste'),
(74, 5, '2 teaspoon red chilli powder'),
(75, 5, '3 tomato'),
(76, 5, '8 peppercorns'),
(77, 5, '1 teaspoon garam masala powder'),
(78, 5, '1/2 teaspoon turmeric'),
(79, 6, '500 grams Mutton , cut into pieces'),
(80, 6, '5 cloves Garlic , finely chopped'),
(81, 6, '2 Onions , finely chopped'),
(82, 6, '3/4 cup Curd (Dahi / Yogurt)'),
(83, 6, '1 tablespoon Cumin powder (Jeera)'),
(84, 6, '1 tablespoon Coriander Powder (Dhania)'),
(85, 6, '4 Cloves (Laung)'),
(86, 6, 'Sunflower Oil , as required'),
(87, 6, '3 Green Chillies , (adjust according to your taste)'),
(88, 6, '1 teaspoon Ginger , grated'),
(89, 6, 'Coriander (Dhania) Leaves , Few sprigs, finely chopped'),
(90, 6, '2 Tomatoes , finely chopped'),
(91, 6, '2 Bay leaves (tej patta)'),
(92, 6, '3 Cardamom (Elaichi) Pods/Seeds'),
(93, 6, '1 tablespoon Red Chilli powder'),
(94, 6, '1 tablespoon Turmeric powder (Haldi)'),
(95, 6, 'Salt , to taste'),
(96, 8, '12 oz. firm white fish fillet (halibut, cod or pollock fillet)'),
(97, 8, 'salt'),
(98, 8, 'ground black pepper'),
(99, 8, '3 dashes cayenne pepper'),
(100, 8, '2 tablespoons corn starch'),
(101, 8, '2 tablespoons cooking oil'),
(102, 8, 'lemon wedges'),
(103, 8, 'GARLIC BUTTER SAUCE'),
(104, 8, '1/2 stick salted butter, melted (4 tablespoons)'),
(105, 8, '3 cloves garlic, minced'),
(106, 8, '1/2 tablespoon lemon juice'),
(107, 8, '1 tablespoon chopped parsley'),
(108, 9, '1 tablespoon Butter'),
(109, 9, 'Salt , to taste'),
(110, 9, '1/4 cup Carrot (Gajjar) , cut into 1 inch diagonals'),
(111, 9, '1/4 cup Green Bell Pepper (Capsicum) , cut into 1 inch diagonals'),
(112, 9, '1/4 cup Green beans (French Beans) , cut into 1 inch diagonals'),
(113, 9, '1/4 cup Baby corn , cut into 1 inch diagonals'),
(114, 9, '1/4 cup Cauliflower (gobi) , small florets'),
(115, 9, 'For the gravy'),
(116, 9, '1 tablespoon Butter'),
(117, 9, '2 Cloves (Laung)'),
(118, 9, '1 Cardamom (Elaichi) Pods/Seeds'),
(119, 9, '1 inch Cinnamon Powder (Dalchini)'),
(120, 9, '2 Kashmiri dry red chilli'),
(121, 9, '1 teaspoon Coriander seeds'),
(122, 9, '1/2 teaspoon Whole Black Pepper Corns'),
(123, 9, '6 Cashew nuts'),
(124, 9, '5 cloves Garlic'),
(125, 9, '1 inch Ginger'),
(126, 9, '1 Green Chilli'),
(127, 9, '2 Onions , finely chopped'),
(128, 9, 'Salt , to taste'),
(129, 9, '1 teaspoon Kashmiri Red Chilli Powder'),
(130, 9, '1/4 teaspoon Turmeric powder (Haldi)'),
(131, 9, '1 teaspoon Cumin powder (Jeera)'),
(132, 9, '1 teaspoon Garam masala powder'),
(133, 9, '1 cup Homemade tomato puree'),
(134, 9, '2 tablespoons Fresh cream'),
(135, 9, 'Butter , to serve'),
(136, 37, 'For Masala Dosa'),
(137, 37, '2 cup parboiled rice'),
(138, 37, '1/2 cup urad dal'),
(139, 37, '1 teaspoon salt'),
(140, 37, '1/4 cup refined oil'),
(141, 37, '1/2 teaspoon fenugreek seeds'),
(142, 37, 'For Filling -'),
(143, 37, '1/2 kilograms boiled potato'),
(144, 37, '2 medium chopped green chilli'),
(145, 37, '1 tablespoon mustard seeds'),
(146, 37, '1/4 teaspoon turmeric'),
(147, 37, 'salt as required'),
(148, 37, '1 1/2 cup sliced onion'),
(149, 37, '2 tablespoon refined oil'),
(150, 37, '10 leaves curry leaves'),
(151, 37, '1/4 cup water'),
(152, 38, '1/3 cup and 2 and 1/2 tablespoon chinese noodles'),
(153, 38, '1 and 1/4 onion'),
(154, 38, '1/4 cup and 1 and 1/4 tablespoon cabbage'),
(155, 38, '4 tablespoon bean'),
(156, 38, '1 and 1/3 teaspoon sunflower oil'),
(157, 38, '2/3 tablespoon tomato chili sauce'),
(158, 38, '1 pinch salt'),
(159, 38, '2 and 2/3 tablespoon water'),
(160, 38, '1 and 1/3 teaspoon sunflower oil'),
(161, 38, '1 and 1/4 capsicum ( green pepper)'),
(162, 38, '1 and 1/4 carrot'),
(163, 38, '6 and 3/4 cloves garlic'),
(164, 38, '1 and 1/3 tablespoon light soya sauce'),
(165, 38, '2/3 tablespoon vinegar'),
(166, 38, '1 pinch black pepper'),
(167, 38, '2/3 teaspoon ajinomoto'),
(168, 39, '1 table spoon vegetable oil'),
(169, 39, '10 grams garlic (grated)'),
(170, 39, '10 grams ginger (grated)'),
(171, 39, '1serrano chili peppers (to taste, minced)'),
(172, 39, '5 grams mint (finely chopped)'),
(173, 39, '10 grams cilantro (finely chopped)'),
(174, 39, '1 table spoon garam masala'),
(175, 39, '1/2 tea spoon ground cinnamon'),
(176, 39, '1 teaspoon salt'),
(177, 39, '900 grams bone-in skin-on chicken thighs'),
(178, 39, 'for rice'),
(179, 39, '6 cups water'),
(180, 39, '2 1/2 tea spoons salt'),
(181, 39, '5pods green cardamom (smashed)'),
(182, 39, '1 tea spoon cumin seeds'),
(183, 39, '1 bay leaf'),
(184, 39, '360 grams basmati rice (~2 cups)'),
(185, 39, 'for onions'),
(186, 39, '2 table spoon ghee'),
(187, 39, '2 medium onions (sliced thin)'),
(188, 39, 'for Biryani'),
(189, 39, '1 cup reserved boiling liquid (from rice)'),
(190, 39, '1/2 tea spoon saffron threads'),
(191, 39, 'cilantro (for garnish)'),
(192, 40, '1 tbsp sugar'),
(193, 40, 'small bunch mint'),
(194, 40, '3 limes, juiced'),
(195, 40, 'soda water'),
(196, 41, '1 cup (250 ml) Milk'),
(197, 41, '2 tea spoons Tea Powder'),
(198, 41, '1/4 cup (approx. 60 ml) Water'),
(199, 41, '3 tea spoons Sugar'),
(200, 42, '500 grams Chicken , with bones'),
(201, 42, '1 Onion , finely chopped'),
(202, 42, '1 Tomato'),
(203, 42, '3 Green Chillies'),
(204, 42, '1 tablespoon Ginger Garlic Paste'),
(205, 42, '3 Bay leaves (tej patta)'),
(206, 42, '1 teaspoon Ghee'),
(207, 42, '2 Cardamom (Elaichi) Pods/Seeds'),
(208, 42, '2 Cloves (Laung)'),
(209, 42, '2 inch Cinnamon Stick (Dalchini)'),
(210, 42, '1 teaspoon Whole Black Peppercorns'),
(211, 42, '2 tablespoons Extra Virgin Olive Oil'),
(212, 42, '2 tablespoons Butter , softened'),
(213, 42, 'Salt , to taste'),
(214, 42, '2 cups Basmati rice'),
(215, 42, '4 cups Water'),
(216, 42, 'For mandi spice powder'),
(217, 42, '1 tablespoon Cardamom (Elaichi)'),
(218, 42, 'Pods/Seeds'),
(219, 42, '1 tablespoon Cloves (Laung)'),
(220, 42, '1/2 tablespoon Whole Black'),
(221, 42, 'Peppercorns'),
(222, 42, '1/2 teaspoon Nutmeg powder'),
(223, 42, '1/2 tablespoon Dry ginger powder'),
(224, 42, '2 Bay leaves (tej patta)'),
(225, 43, '2 cups Pasta , (of your choice, cooked Al Dente)'),
(226, 43, 'Tomato sauce for pasta'),
(227, 43, '2 teaspoons Extra Virgin Olive Oil'),
(228, 43, '7 cloves Garlic , (small, finely chopped or grated)'),
(229, 43, '5 Tomatoes , blanched and pureed'),
(230, 43, '2 cups Water'),
(231, 43, '2 teaspoons Corn flour , mix with 2'),
(232, 43, '2 teaspoons Corn flour , mix with 2 tablespoons water, optional'),
(233, 43, 'Basil leaves , handful (finely chopped)'),
(234, 43, '1 teaspoon Italian seasoning'),
(235, 43, '1 teaspoon Red Chilli flakes'),
(236, 43, '1/4 cup Mozzarella cheese , grated'),
(237, 43, 'Salt , to taste'),
(238, 43, 'For the garlic cheese bread'),
(239, 43, '5 Whole Wheat Brown Bread'),
(240, 43, '1 tablespoon Butter , salted'),
(241, 43, '7 cloves Garlic , crushed using mortar and pestle'),
(242, 43, '1/2 cup Mozzarella cheese , grated'),
(243, 43, '1/2 teaspoon Red Chilli flakes'),
(244, 43, '1 teaspoon Italian seasoning'),
(245, 43, 'For roasted vegetables'),
(246, 43, '2 Potatoes (Aloo) , cut into fingers and blanched'),
(247, 43, '1 Onion , diced'),
(248, 43, '1 Carrot (Gajjar) , diced and blanched'),
(249, 43, '1 Tomato , deseeded and diced'),
(250, 43, '1/2 Cauliflower (gobi) , cut into florets and blanched'),
(251, 43, '1/4 cup Sweet corn , blanched'),
(252, 43, '6 Green beans (French Beans) , cut into 3'),
(253, 43, '1/2 cup Red Yellow and Green Bell'),
(254, 43, 'Peppers (Capsicum) , diced'),
(255, 43, '2 teaspoons Sunflower Oil'),
(256, 43, '1/2 teaspoon Black pepper powder'),
(257, 43, 'Salt , to taste'),
(258, 43, 'For assembling the sizzler'),
(259, 43, '6 Cabbage (Patta Gobi/ Muttaikose) , (wash and keep it soaked in cold water till use)'),
(260, 43, '1 teaspoon Butter');

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `id` int(11) NOT NULL,
  `r1_id` int(10) DEFAULT NULL,
  `steps` varchar(10000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`id`, `r1_id`, `steps`, `date`, `time`) VALUES
(1, 2, 'Step 1 : Wash and clean the chicken\r\nTo make Masala Chicken, first thoroughly wash the chicken under running water. Now put it in some warm salted water and allow it to rest for 10 minutes and throw the water away and wash again. This helps to remove the smell of the chicken.', '2020-12-24', '07:26:30'),
(2, 2, 'Step 2 : Saute whole spices\r\nAdd oil and ghee in pan and heat over medium flame. When the oil is hot enough, add bay leaves and both the cardamom and cinnamon. Saute for a minute and then add finely chopped onion into it. Cook till onions turn pink. Then add the ginger-garlic paste. Fry for a minute and then add chicken pieces in it. Cook chicken for 2-3 minutes until it turns white.', '2020-12-24', '07:26:30'),
(3, 2, 'Step 3 : Add spices in frying chicken\r\nQuickly, add red chilli powder, coriander powder, turmeric, cumin powder, and salt to taste. Stir to mix all the ingredients well with the chicken. Cook for a minute and then add finely chopped tomatoes and green chillies (slit and halved). Now reduce the flame and cook covered for 6-7 minutes and then uncovered till the chicken is browned.', '2020-12-24', '07:26:30'),
(4, 2, 'Step 4 : Cook for 2-4 minutes with closed lid and serve hotAdd one cup water and cover the pan with a lid and cook for 2-4 minutes until the chicken is tender and soft. Remove the lid and garnish with garam masala powder, coriander leaves, kasoori methi powder and cook on high flame till the oil separates. Your Masala Chicken or Chicken Masala is ready. Enjoy with butter naan, rice or roti.', '2020-12-24', '07:26:30'),
(5, 3, 'For marination:', '2020-12-24', '08:12:29'),
(6, 3, '1.Take chicken in big bowl.', '2020-12-24', '08:12:47'),
(7, 3, '2.Add ginger-garlic paste, curd, lemon juice, vinegar, coriander powder, cumin powder, red chilli powder, salt and chopped onion to the chicken.', '2020-12-24', '08:12:03'),
(8, 3, '3.Mix all the ingredients thoroughly.', '2020-12-24', '08:12:14'),
(9, 3, '4.Keep aside for marination for 2 hours.', '2020-12-24', '08:12:25'),
(10, 3, 'For gravy:', '2020-12-24', '08:12:34'),
(11, 3, '1.Take butter in a hot pan, add red chilli powder to it.', '2020-12-24', '08:12:46'),
(12, 3, '2.Saute them in a pan.', '2020-12-24', '08:12:55'),
(13, 3, '3.Add coriander powder, cumin powder and chopped ginger to it.', '2020-12-24', '08:12:05'),
(14, 3, '4.Saute them well.', '2020-12-24', '08:12:15'),
(15, 3, '5.Add water to the pan and mix well.', '2020-12-24', '08:12:25'),
(16, 3, '6.Add salt, green chilli, tomato and sugar. Mix well.', '2020-12-24', '08:12:37'),
(17, 3, '7.Take butter in another hot pan and spread it all along the sides of the pan.', '2020-12-24', '08:12:46'),
(18, 3, '8.Add the marinated chicken into the pan.', '2020-12-24', '08:12:55'),
(19, 3, '9.Saute the chicken with the butter.', '2020-12-24', '08:12:05'),
(20, 3, '10.Cover the pan to let the chicken cook.', '2020-12-24', '08:12:16'),
(21, 3, '11.Remove the lid and check if the chicken has turned golden brown and the butter has subsided.', '2020-12-24', '08:12:26'),
(22, 3, '12.Add the cooked tomato gravy to the chicken and mix well.', '2020-12-24', '08:12:36'),
(23, 3, '13.Cover the pan again and let it cook for a while.', '2020-12-24', '08:12:46'),
(24, 3, '14.Now remove the lid and add cream to the gravy.', '2020-12-24', '08:12:55'),
(25, 3, '15.Mix them well.', '2020-12-24', '08:12:05'),
(26, 3, '16.Serve hot, topped with butter, coriander leaves and green chillies.', '2020-12-24', '08:12:14'),
(27, 4, 'Step 1 : Roast corainder seeds, black peppercorns, and cumin seeds in a cast iron pan until the spices are fragrant, but keep the flame on low to medium. Let them cool a little. Then grind them together and keep aside.', '2020-12-24', '09:12:46'),
(28, 4, 'Step 2 : In a wok, heat ghee then stir-fry onions and bay leaf for 10 minutes or until the onion is golden in colour.', '2020-12-24', '09:12:08'),
(29, 4, 'Step 3 : Now add the ground spice mix, ginger and garlic to the wok and stir fry.', '2020-12-24', '09:12:22'),
(30, 4, 'Step 4 : Add chicken and mix well to coat all pieces with the spices.', '2020-12-24', '09:12:38'),
(31, 4, 'Step 5 : Fold in the tomato puree, cover and then cook for 5 minutes.', '2020-12-24', '09:12:52'),
(32, 4, 'Step 6 : Remove lid and raise the heat to high.', '2020-12-24', '09:12:07'),
(33, 4, 'Step 7 : Cook until the water evaporates from the puree and stir occasionally until chicken is cooked.', '2020-12-24', '09:12:19'),
(34, 5, 'Step 1 : Heat oil, cook the whole spices with onion & ginger-garlic paste.\r\nThis is an excellent mutton recipe that you can easily make at home. To prepare this easy recipe, firstly, clean and wash the mutton pieces. Next, put a large pan over medium flame and melt ghee in it. Once the ghee is melted, add cardamom, cloves, black peppercorns, cinnamon stick. Saute these for a minute and add the sliced onions along with salt in it. Saute till the onion turns light brown in colour. Next, add the ginger paste along with garlic paste and cook the mixture until the raw smell disappears.', '2020-12-27', '08:12:20'),
(35, 5, 'Step 2 : Add the powdered spices, tomatoes & mutton pieces\r\nNow, add turmeric powder, red chilli powder and coriander powder to the fried onion and mix it well. Add the mashed tomatoes and mix it well with the other ingredients. Make sure the tomatoes turn pulpy and cook this mix until oil separates from the masala in the pan. Now, add mutton pieces in this masala and mix it well. Ensure that mutton pieces are evenly coated with the masala.', '2020-12-27', '08:12:02'),
(36, 5, 'Step 3 : Add the yoghurt, coriander leaves & garam masala.\r\nPour the yoghurt in the mutton masala and mix it well. Let it cook for 4-5 minutes and, then, add water in it. Stir it well and check the seasoning once. Then, add chopped coriander leaves along with garam masala powder. Give it a quick stir. Cook it for another 25 minutes to ensure that mutton is no longer raw and is perfectly juicy. Once done, take it off the flame and transfer the dish in a bowl. Serve it hot with rice or naan to enjoy!', '2020-12-27', '08:12:14'),
(37, 6, '1. To begin making the Dhaba Mutton Recipe, marinate lamb with yogurt, red chilli powder, turmeric powder, cumin powder, coriander powder, and salt', '2020-12-27', '08:12:27'),
(38, 6, '2. Mix everything well and keep it aside for about 2 hours.', '2020-12-27', '08:12:43'),
(39, 6, '3. Heat oil in a heavy bottomed pan and add cloves, cardamoms, bay leaves, garlic, ginger and saute for a few seconds.', '2020-12-27', '08:12:56'),
(40, 6, '4. Add chopped onion, green chillies and saute them till they turn golden brown.', '2020-12-27', '08:12:13'),
(41, 6, '5. Add in the marinated lamb and cook it till the lamb is cooked and tender.', '2020-12-27', '08:12:31'),
(42, 6, '6. Once it is done, add in the tomatoes and green chillies. Cook it for about 15 to 20 minutes.', '2020-12-27', '08:12:43'),
(43, 6, '7. After 15 to 20 minutes, add in the required water and let it cook for 5 minutes more.', '2020-12-27', '08:12:57'),
(44, 6, '8. Sprinkle garam masala and cook for another 3-4 minutes. Once it is done, switch off the stove and garnish it with chopped coriander leaves.', '2020-12-27', '08:12:13'),
(45, 6, '9. Serve Dhaba Mutton with Rajasthani baati, steamed rice, Rumali roti or whole wheat lachha paratha.', '2020-12-27', '08:12:28'),
(46, 8, '1. Cut the fish into pieces, not to thin for easy pan-frying. Season the fish with salt, black pepper and cayenne pepper. Coat the fish with corn starch. Set aside.', '2020-12-27', '09:12:26'),
(47, 8, '2. Prepare the Garlic Butter Sauce by mixing all the ingredients together. Set aside.', '2020-12-27', '09:12:46'),
(48, 8, '3. Heat up a skillet (preferably non-stick) on medium heat. Add the cooking oil and once the oil is heated, pan-fry the fish in a single layer until both sides turn crispy and golden brown. Use a wooden spatula or tong to gently flip the fish over. Try not to break the fish.', '2020-12-27', '09:12:01'),
(49, 8, '4. Remove the fish from the skillet and drain on paper towels. Toss the fish with the Garlic Butter Sauce and serve immediately with lemon wedges.', '2020-12-27', '09:12:16'),
(50, 9, 'To begin making Veg Makhanwala Recipe, firstly clean and heat a skillet with butter on medium flame, add all the vegetables - carrot, capsicum, babycorn, beans and cauliflower. ', '2020-12-28', '01:12:50'),
(51, 9, 'Stir fry for about 5 minutes until the veggies are cooked yet have a bite and crunch to it. ', '2020-12-28', '01:12:03'),
(52, 9, 'Turn off the flame and set aside. ', '2020-12-28', '01:12:14'),
(53, 9, 'Heat butter in a heavy bottom pan over medium heat, add the cinnamon, cloves, cardamom, black pepper, whole dry red chillies, coriander seeds and cashew nuts. ', '2020-12-28', '01:12:24'),
(54, 9, 'Saute for a few seconds, until the aroma wafts in the air.  At this stage add garlic, ginger, green chilli, onions and continue to cook. ', '2020-12-28', '01:12:34'),
(55, 9, 'Once the onions turn into a lovely brown colour. Turn off the heat. ', '2020-12-28', '01:12:44'),
(56, 9, 'Once cooled transfer to a mixer jar and grind to a smooth paste adding a few spoons of water, if required. ', '2020-12-28', '01:12:57'),
(57, 9, 'Transfer the paste into a bowl and set aside. ', '2020-12-28', '01:12:12'),
(58, 9, 'Heat a kadai with the butter on medium flame, add the dry spice powders into this warm butter - salt,  turmeric powder, red chilli powder, cumin powder, garam masala powder and give it a good mix.', '2020-12-28', '01:12:21'),
(59, 9, 'Now add the freshly ground masala into the kadai, cover and cook for 3-4 minutes. ', '2020-12-28', '01:12:31'),
(60, 9, 'To this, add in the tomato puree and bring it to a brisk boil. ', '2020-12-28', '01:12:44'),
(61, 9, 'The Veg Makhanwala gravy will begin to bubble, now add in the cream, and give it a good stir. ', '2020-12-28', '01:12:58'),
(62, 9, 'Add the sauteed veggies into the bubbling Veg Makhanwala gravy, cover and continue to cook. ', '2020-12-28', '01:12:07'),
(63, 9, 'Cover the kadai and cook the Veg Makhanwala on low flame for five minutes and switch off the heat.', '2020-12-28', '01:12:15'),
(64, 9, 'Once done, check the salt and spices and adjust to suit your taste. Adjust the consistency of the Veg Makhanwala gravy with some milk.', '2020-12-28', '01:12:27'),
(65, 9, 'Transfer the Veg Makhanwala to a serving bowl, top with butter and serve hot.', '2020-12-28', '01:12:41'),
(66, 9, 'Serve Veg Makhanwala Recipe with Creamy Dal Makhani Recipe ,Tawa Paratha and Boondi Raita Recipe Spiced With Black Salt  for a special party or a weekend dinner. You can end this delicious North Indian meal with Rich & Delicious Shahi Tukda Recipe.', '2020-12-28', '01:12:53'),
(68, 37, 'Step 1 : Prepare the batter and ferment overnight.\r\nMasala Dosa is one of the most popular South Indian delicacies. To prepare the batter for Masala Dosa, wash and soak the rice (with fenugreek added into it) and urad dal in separate containers for approximately 6-8 hours. Once the rice and urad dal are soaked well, grind them separately in a mixer using the water in which they were soaked, till the mixture reaches a smooth consistency. Mix the batter of both the ingredients in a bigger container and add salt to it. Combine well and allow it to ferment overnight.', '2020-12-28', '04:12:50'),
(69, 37, 'Step 2 : Prepare the potato filling for Masala Dosa.\r\nFor preparing the filling of the dosa, heat 2 tbsp oil in a thick-bottomed pan and let the mustard seeds splutter. Then, add sliced onions, curry leaves, green chillies and saute them till the onions turn pink. Then, add a pinch of salt and turmeric powder and mix them well. Now, take the cubed potatoes and add them to the sauteed onions and mix them together. Pour water gradually into the mixture and allow the potatoes to simmer for around 4 minutes. When the mixture is in semi-thick state, turn off the gas and let it rest for a few seconds.', '2020-12-28', '04:12:43'),
(70, 37, 'Step 3 : Pan fry your dosa on a dosa tawa.\r\nNow, take a dosa tawa and heat it on low-medium flame. Smear 1 tsp oil on it to prepare the dosa. When the tawa is hot, pour and spread the batter of urad dal and rice evenly in a circular motion.', '2020-12-28', '04:12:11'),
(71, 37, 'Step 4 : Add filling and fold the dosa.\r\nWhile the colour of dosa\'s edges turns into brown, reduce the flame and sprinkle few drops of oil on the dosa sides and put 2 tablespoons of filling. Fold the dosa. Repeat the process until all the batter and filling is used up. Serve hot Masala Dosa with coconut chutney and sambhar.', '2020-12-28', '04:12:45'),
(72, 38, 'Step 1 : Boil the noodles.\r\nChinese Noodle is a delectable amalgamation of noodles, veggies and spices. Undoubtedly, it is one of the easiest and simplest thing to prepare. Hereâ€™s a simple way of making this dish at home by using some easily available ingredients Take a big microwave-safe bowl and add water in it. Then add oil and salt. Boil for 10 minutes. Then add noodles and boil for 8-9 minutes. Keep stirring in between. Once done, strain and wash the boiled noodles under cold running water. Once done, keep aside.', '2020-12-28', '05:12:39'),
(73, 38, 'Step 2 : Microwave the veggies & add seasoning, sauces.\r\nThen take another microwave-safe bowl and add oil in it. Microwave at 100% power for 30 secs. Once the oil is sufficiently hot, add all chopped vegetables and microwave for 4 â€“ 5 minutes at 100% power. Stir in between. Add soya sauce, tomato chilli sauce, vinegar, salt, black pepper and Ajinomoto. Stir the ingredients well.', '2020-12-28', '05:12:04'),
(74, 38, 'Step 3 : Add the noodles & microwave again.\r\nNow add the boiled noodles to vegetables and stir it. Microwave for 1 min. at 80% power. Chinese Noodles is ready to be served. Pair it with vegetable or chicken Manchurian and serve hot.', '2020-12-28', '05:12:22'),
(75, 39, '1. To marinate the chicken for the biryani, combine the vegetable oil, garlic, ginger, chili peppers, mint, cilantro, garam masala, cinnamon and salt in a large bowl and stir together. Add the chicken pieces and toss together making sure the chicken is thoroughly coated in the marinade. Allow the chicken to marinate for at least 1 hour or up to overnight.', '2020-12-30', '02:12:06'),
(76, 39, '2. In a pot wide enough to hold the chicken in a single layer, add the ghee and onions and saute the onions until they are well caramelized (15-20 minutes). Transfer the caramelized onions to a bowl and set aside.', '2020-12-30', '02:12:29'),
(77, 39, '3. While the onions caramelize, prepare the rice by washing in a strainer under cold running water until the water runs clear.', '2020-12-30', '02:12:46'),
(78, 39, '4. To par-boil the rice, add the water, salt, cardamom, cumin and bay leaf to a pot and bring to a boil. Add the rice and boil for 7 minutes. Drain the rice, reserving 1 cup of the liquid.', '2020-12-30', '02:12:04'),
(79, 39, '5. In the pot you caramelized the onions in, add the chicken in a single layer, skin-side down. Fry until golden brown on one side (about 5 minutes). Flip the chicken over and fry the other side until golden brown. Transfer the chicken back to the bowl you marinated it in.', '2020-12-30', '02:12:20'),
(80, 39, '6. To assemble the biryani, add the saffron to the rice and toss to distribute evenly. Add half the rice mixture to the bottom of the pot you browned the chicken in.', '2020-12-30', '02:12:37'),
(81, 39, '7. Top the rice with the chicken in a single layer.', '2020-12-30', '02:12:54'),
(82, 39, '8. Top the chicken with an even layer of caramelized onions.', '2020-12-30', '02:12:09'),
(83, 39, '9. Finish putting together the Biryani by adding the rest of the rice in an even layer. Add 1 cup of reserved liquid from boiling the rice. Cover the pot with a lid and put the pot on the stove over medium heat and set the timer for 20 minutes. When you can see steam escaping from under the lid, turn down the heat to low and continue cooking until the timer goes off and then turn off the heat.', '2020-12-30', '02:12:22'),
(84, 39, '10. Without opening the lid, set the timer for another 10 minutes to steam the biryani.', '2020-12-30', '02:12:38'),
(85, 39, '11. Mix the Chicken Biryani together and then transfer to a serving platter. Garnish with fresh cilantro and serve.', '2020-12-30', '02:12:55'),
(86, 40, 'STEP 1 : Muddle the sugar with leaves from the mint using a pestle and mortar (or use a small bowl and the end of a rolling pin).', '2020-12-30', '04:12:25'),
(87, 40, 'STEP 2 : Put a handful of crushed ice into 2 tall glasses. Divide the lime juice between the glasses with the mint mix. Add a straw and top up with soda water.', '2020-12-30', '04:12:44'),
(88, 41, '1. Boil water in a saucepan.', '2020-12-30', '04:12:32'),
(89, 41, '2. Add sugar and tea powder init and boil it for 3-4 minutes on medium flame.', '2020-12-30', '04:12:53'),
(90, 41, '3. Add milk and boil it over medium flame for 6-7 minutes or until bubble starts to rise, You will see the change in color of the tea from milky shade to brown shade when it is ready.', '2020-12-30', '04:12:35'),
(91, 41, '4. Turn off the gas and strain tea in cups.', '2020-12-30', '04:12:06'),
(92, 42, '1. To begin making the Arabian Chicken Mandi recipe, firstly we will prepare the Mandi spice powder.', '2020-12-30', '04:12:48'),
(93, 42, 'For mandi spice powder', '2020-12-30', '04:12:11'),
(94, 42, '1. To make the Mandi spice powder, dry roast the cardamom pods, cloves, black pepper, nutmeg dry ginger powder and bay leaves in a on on medium heat for 4-6 minutes.', '2020-12-30', '04:12:20'),
(95, 42, '2. Turn off the heat, and allow it to cool. ', '2020-12-30', '04:12:31'),
(96, 42, '3. Transfer the spices in a mixer jar, and grind into a fine powder using a mixer grinder. ', '2020-12-30', '04:12:43'),
(97, 42, 'For the Chicken', '2020-12-30', '04:12:53'),
(98, 42, '1. Heat a large saucepan on medium heat and add oil.', '2020-12-30', '04:12:03'),
(99, 42, '2. Once the oil is hot, add finely chopped onion and sautÃ© till translucent . This will take about 2-3 minutes. ', '2020-12-30', '04:12:17'),
(100, 42, '3. To the softened onions,  add the ginger paste and garlic paste and sautÃ© till the raw smell goes away. ', '2020-12-30', '04:12:31'),
(101, 42, '4. Next, add bay leaves, cinnamon, cardamom, cloves and black pepper and mix everything well.', '2020-12-30', '04:12:54'),
(102, 42, '5. In a mixer jar combine, tomato and green chillies and grind into a puree and add it to the pan.', '2020-12-30', '04:12:08'),
(103, 42, '6. When the oil starts to separate, add the chicken and mix. Add 4 cups of water and the Mandi spice powder according to your taste.   Mix, cover and let it cook for about 15 minutes. After 15 minutes, turn off the heat.', '2020-12-30', '04:12:23'),
(104, 42, '7. We will furthermore bake the chicken, to get a crispy skin.', '2020-12-30', '04:12:39'),
(105, 42, '8. In a small mixing bowl, add soft butter and Mandi spice powder and some salt, mix well and keep aside.', '2020-12-30', '04:12:58'),
(106, 42, '9. Preheat the oven to 200 degrees centigrade. Remove the chicken from the stock and place it  onto a baking tray and brush with butter and mandi spice powder mixture.', '2020-12-30', '04:12:15'),
(107, 42, '10. Bake for 20 to 25 minutes or until the skin of the chicken turns to a nice golden brown colour.', '2020-12-30', '04:12:27'),
(108, 42, 'For the rice', '2020-12-30', '04:12:41'),
(109, 42, '1. Wash and soak basmati rice for at least 20 minutes.', '2020-12-30', '04:12:52'),
(110, 42, '2. Heat olive oil in a large pan on medium heat, and fry the drained rice, stirring continuously for about 10 to 15 minutes.', '2020-12-30', '04:12:10'),
(111, 42, '3. Add this pan roasted rice to the chicken stock. Now slide a large piece of aluminium foil on top of the saucepan and then cover it with the lid. Cook the rice on medium low flame for about 10 minutes.', '2020-12-30', '04:12:22'),
(112, 42, '4. Remove the lid and check if there is any trace of water left. If water is left, then cover and cook for another 3 to 5 minutes. Now fluff the rice with a fork.', '2020-12-30', '04:12:35'),
(113, 42, '5. Take ghee in a small bowl and place it in the middle of the rice.', '2020-12-30', '04:12:54'),
(114, 42, '6. Heat a piece of charcoal on direct flame until it is sred hot, this will take about 5 minutes.', '2020-12-30', '04:12:07'),
(115, 42, '7. Once the charcoal is burning hot, place it in the bowl of ghee that is in the rice. Immediately slide back the aluminium foil and secure with lid.', '2020-12-30', '04:12:22'),
(116, 42, '8. Open it only at the time of serving, as it gives a nice smokey flavor to the rice. To serve, spread rice onto a large serving tray and place a piece of baked chicken on the top.', '2020-12-30', '04:12:34'),
(117, 42, '9. Serve Arabian Chicken Mandi with Raw Mango raita and Pickled onions for a delicious weeknight dinner.', '2020-12-30', '04:12:47'),
(118, 43, '1. To begin making the Italian Pasta Sizzler Recipe, firstly we will prepare the roasted vegetables.', '2020-12-30', '05:12:43'),
(119, 43, 'Heat a wide pan with oil and roast the potatoes and other vegetables each separately, adding salt and pepper to them. ', '2020-12-30', '05:12:49'),
(120, 43, 'When they are roasted and slightly crisp on the outside, but soft inside, switch off and set them aside.', '2020-12-30', '05:12:57'),
(121, 43, 'The next step is to make the Pasta. Heat a wide pan over low flame and add garlic.', '2020-12-30', '05:12:05'),
(122, 43, 'Fry for 1-2 minutes or till the garlic is light brown and immediately add pureed tomatoes and salt. Let it simmer for 4-5 minutes.', '2020-12-30', '05:12:20'),
(123, 43, 'Now add water and the corn flour mixture. Once the mixture thickens, switch off and pour half of the sauce into the cooked pasta, mix well and set it aside.', '2020-12-30', '05:12:32'),
(124, 43, 'Reserve the other half to serve while assembling the sizzler.', '2020-12-30', '05:12:42'),
(125, 43, 'The next step is to make the Garlic Cheese bread. To the crushed garlic,  add butter, Italian herbs and mix well.', '2020-12-30', '05:12:52'),
(126, 43, 'Spread the garlic butter on one side of each bread.', '2020-12-30', '05:12:00'),
(127, 43, 'Heat a skillet with butter and place the bread for toasting on low flame. Sprinkle cheese on top of the bread. Close the pan for just 1 minute.', '2020-12-30', '05:12:08'),
(128, 43, 'When the cheese begins to melt, remove the garlic bread and set it aside.', '2020-12-30', '05:12:17'),
(129, 43, 'Alternatively, you can bake the prepared garlic bread in your preheated oven for 5-6 minutes at 180 degrees C.', '2020-12-30', '05:12:27'),
(130, 43, 'The final step is to assemble the sizzler. Grease the sizzler pan with butter. Line the pan with cabbage leaves.', '2020-12-30', '05:12:37'),
(131, 43, 'Place the pan on the gas stove over low heat. As the sizzler pan is heating, arrange the roasted vegetables, and pasta.', '2020-12-30', '05:12:46'),
(132, 43, 'Heat the pasta sauce and when the pan is screaming hot, pour it over the pasta.', '2020-12-30', '05:12:55'),
(133, 43, 'Switch off the gas and add a 1/2 teaspoon of melted butter on the sides of the pan and this will help it to sizzle.', '2020-12-30', '05:12:07'),
(134, 43, 'Add the garlic bread to the pan, and carefully lift the sizzler pan and place it on the wooden board (part of the sizzler pan) and serve it to your family. Your yummy Italian Pasta Sizzler is ready.', '2020-12-30', '05:12:16'),
(135, 43, 'Serve Italian Pasta Sizzler on its own for a delicious Italian meal along with the Mango Iced Tea Recipe to make your meal complete.', '2020-12-30', '05:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `recipes_1`
--

CREATE TABLE `recipes_1` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_1`
--

INSERT INTO `recipes_1` (`id`, `user_name`, `user_id`, `category`, `title`, `date`, `time`, `image`) VALUES
(2, 'Sameer Khalid', 1, 'Chicken Recipes', 'Masala Chicken Recipe', '2020-12-24', '06:12:46', 'masala-chicken-recipe.jpg'),
(3, 'Rahul Roy', 2, 'Chicken Recipes', 'Amritsari Chicken Masala Recipe', '2020-12-24', '08:12:28', 'amritsari-chicken-recipe.jpg'),
(4, 'Sameer Khalid', 1, 'Chicken Recipes', 'Kadai Chicken', '2020-12-24', '09:12:44', 'kadai-chicken-recipe.jpg'),
(5, 'Rahul Roy', 2, 'Mutton Recipes', 'Punjabi Mutton Curry Recipe', '2020-12-27', '08:12:16', 'punjabi-mutton-recipe.jpg'),
(6, 'Rahul Roy', 2, 'Mutton Recipes', 'Dhaba Mutton Recipe-Spicy Mutton Gravy', '2020-12-27', '08:12:16', 'dhaba-mutton-recipe.jpg'),
(8, 'Sameer Khalid', 1, 'Fish Recipes', 'GARLIC BUTTER FISH RECIPE', '2020-12-27', '09:12:32', 'garlic-butter-fish.jpg'),
(9, 'Rahul Roy', 2, 'North Indian Recipes', 'Veg Makhanwala Recipe', '2020-12-28', '01:12:58', 'veg-makhanwala.jpg'),
(37, 'Sameer Khalid', 1, 'South Indian Recipes', 'Masala Dosa', '2020-12-28', '03:12:08', 'masala-dosa.jpg'),
(38, 'Sameer Khalid', 1, 'Chinese Recipes', 'Chinese Noodles Recipe', '2020-12-28', '04:12:34', 'chinese-recipe.jpg'),
(39, 'Seema ', 0, 'Chicken Recipes', 'Chicken Biryani', '2020-12-30', '02:12:20', 'chicken-biryani-9.jpg'),
(40, 'Seema Firdos', 5, 'Soft Drinks', 'Mojito mocktail', '2020-12-30', '04:12:50', 'mojito.jpg'),
(41, 'Seema Firdos', 5, 'Tea / Coffee', 'Milk Tea Recipe', '2020-12-30', '04:12:40', 'tea.jpg'),
(42, 'Seema Firdos', 5, 'Middle Eastern Recipes', 'Arabian Chicken Mandi Recipe', '2020-12-30', '04:12:25', 'Arabian_Chicken_Mandhi.jpg'),
(43, 'Seema Firdos', 5, 'Italian Recipes', 'Italian Pasta Sizzler Recipe', '2020-12-30', '04:12:47', 'Italian_Pasta_Sizzler.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recipes_2`
--

CREATE TABLE `recipes_2` (
  `id` int(11) NOT NULL,
  `r1_id` int(10) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `cook_time` int(10) DEFAULT NULL,
  `prep_time` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_2`
--

INSERT INTO `recipes_2` (`id`, `r1_id`, `description`, `cook_time`, `prep_time`) VALUES
(2, 2, 'If you are looking for home style Indian chicken recipe for beginners, check out this easy Chicken Masala recipe. This Masala Chicken goes perfectly with both roti and rice. Serve this spicy chicken dish with salad and raita and you are sorted for the day!', 30, 15),
(3, 3, 'Amritsari Chicken Masala is an authentic Punjabi dish, chicken is simply made in the unique amritsari gravy and flavored with fresh cream, butter and fresh tomatoes. Also known as chicken makhani or murgh, this dish is a very famous recipe in the Indian restaurants.', 40, 15),
(4, 4, 'Make your nonvegetarian dish healthier by using boneless chicken, preferably chicken breast which is higher in proteins. You can also use chicken thigh as per your liking. It is an easy to make dish and goes best with roti and even with rice and dal. I have kept the spice quotient low but you can add as much as your threshold is. ', 35, 5),
(5, 5, 'Punjabi Mutton Curry is an amazing dish where the meat is cooked until succulent in flavourful spices. This easy mutton curry recipe is made with simple ingredients available in every kitchen and goes well with rice & all Indian breads. If you want to enjoy its richness at home, follow this authentic Punjabi mutton curry recipe today!', 30, 15),
(6, 6, 'A very popular in North India and as we go by the it is usually served by the roadside dhabas. It is very spicy and is cooked in yogurt. You should definitely try this mutton at home and serve it along with whole wheat lachha paratha and salad by the side.', 180, 10),
(8, 8, 'Garlic Butter Fish - crispy and delicious pan-fried fish fillet with garlic butter sauce. This recipes takes 20 mins. Serve alone or with pasta for a wholesome dinner. ', 10, 10),
(9, 9, 'Veg Makhanwala Recipe is a popular North Indian mixed vegetable gravy that can be served for your everyday meals or even for your Party meals. This recipe has a balanced blend of spices and a creamy texture from cashew nuts and fresh cream that is added to the gravy. ', 30, 15),
(12, 37, 'This Masala Dosa Recipe will help you make tasty, aromatic and just perfect masala dosa at home. One of the most popular South Indian dishes, this Masala Dosa recipe is perfect for beginners. The batter for masala dosas is made with soaked lentils and rice. Then, potatoes and spices are mashed together to prepare a spicy filling for the masala dosa.', 10, 20),
(13, 38, 'If you are a fan of noodle recipes, you have to try this easy Chinese noodles recipe. Similar to Vegetable Hakka Noodles, this chinese noodles recipe is also made with a lot of veggies, chinese noodles and spices. Pair Gobi Manchurian or Chilli Paneer with this chinese noodles recipe for a complete meal.', 20, 15),
(14, 39, 'Chicken Biryani is a savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together. The bottom layer of rice absorbs all the chicken juices as it cooks, giving it a tender texture and rich flavor, while the top layer of rice turns out white and fluffy.', 60, 30),
(15, 40, 'Try a refreshing, non-alcoholic mojito cocktail recipe that skips the usual rum to create a booze-free blend for parties.', 0, 5),
(16, 41, 'It is one of the most popular hot beverages in the world and especially in India. Acup of milk tea (chai) in morning gives refreshing feel and put you on track of long hard day. It can be prepared with milk or milk powder and various types of plain or flavoured tea powders.', 10, 2),
(17, 42, 'The Arabian Chicken Mandi Recipe is a delicious preparation of chicken cooked with mandi powder served over a layer of basmati rice. It is packed with flavours and taste of the perfect blend of spices. Serve it along with raita for a delicious meal.', 90, 30),
(18, 43, 'This sizzler is a complete Italian meal by itself, comprising of garlic bread, roasted vegetables and pasta. You would love to dig into this meal and would fall in love with it. Serve the sizzler as a delicious sunday brunch meal along with glass of ice tea.', 45, 15);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `date_time`) VALUES
(1, 'khalidsameer117@gmail.com', '2020-12-24 12:12:17'),
(2, 'sam@gmail.com', '2020-12-27 01:12:06'),
(3, 'sam@gmail.com', '2020-12-27 01:12:12'),
(4, 'sam@g.com', '2020-12-27 02:12:26'),
(5, 'sam@m', '2020-12-27 02:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `title` varchar(5) DEFAULT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `usertype` varchar(256) DEFAULT NULL,
  `date_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `title`, `first_name`, `last_name`, `phone`, `email`, `password`, `usertype`, `date_time`) VALUES
(1, 'Mr', 'Sameer', 'Khalid', '7795112778', 'khalidsameer117@gmail.com', '56fafa8964024efa410773781a5f9e93', 'admin', '2020-12-24 11:10:43'),
(2, 'Mr', 'Rahul', 'Roy', '7878787878', 'rahulroy@gmail.com', '2acb7811397a5c3bea8cba57b0388b79', 'user', '2020-12-24 11:15:06'),
(5, 'Ms', 'Seema', 'Firdos', '9898989898', 'seema@gmail.com', '5a9491ca0eed98bfdf221df083897695', 'user', '2020-12-30 02:36:49'),
(6, 'Mr', 'Surjan', 'Singh', '7878787878', 'samsendmail@gmail.com', '8cfbdbd2ec54101db934a67605912a14', 'user', '2020-12-30 10:51:07'),
(7, 'Mrs', 'sunaina', 's', '8989898989', 'cookfood@gmail.com', '21ce7d7c96117c3ad73bb7e97c1bc41f', 'user', '2020-12-30 11:08:40'),
(8, 'Mrs', 'sam', 'sam', '8989898989', 'sams@gmail.com', '56fafa8964024efa410773781a5f9e93', 'user', '2020-12-30 11:10:23'),
(9, 'Ms', 'abc', 'abc', '9090909090', 'abc@gmail.com', 'e99a18c428cb38d5f260853678922e03', 'user', '2020-12-30 11:16:09'),
(10, 'Mrs', 'mcxlks', 'sm', '8790809809', 'dnckj@vl', '7e1f3ea038f8656ec96a0b9e956da601', 'user', '2020-12-30 11:18:22'),
(11, 'Ms', 'sdmnck', 'sclka', '5656565656', 'ncknk@jnkd', '45d728a9d87a4c3e2622415b959810c8', 'user', '2020-12-30 11:19:49'),
(12, 'Ms', 'mcla', 'samca', '8987987999', 'sbcjsabj@nvkj', 'dcbd88bca472ea59d0ef58f0c22dd936', 'user', '2020-12-30 11:22:58'),
(13, 'Mrs', 'dsmc', 'samlcka', '8987989879', 'khalidsameer96@gmail.com', 'c29ec30c3c32fb7ddf2268d4e2c048bb', 'user', '2020-12-30 11:25:09'),
(14, 'Mrs', 'neha', 'neha', '687676879', 'khalidsameer96@gmail.com', '40bf5d6d2b9d954d8b3a24e41fb5eed6', 'user', '2020-12-31 09:28:43'),
(15, 'Mr', 'sndksj', 'sdmkjs', '879877989', 'khalidsameer96@gmail.com', '7e135fb8af1a9fa2e59fb958ff167e85', 'user', '2020-12-31 09:32:04'),
(16, 'Mr', 'Sameer', 'Khalid', '7795112778', 'khalidsameer96@gmail.com', '56fafa8964024efa410773781a5f9e93', 'user', '2020-12-31 09:36:11'),
(17, 'Mr', 'shobhraj', 'bk', '9071868913', 'shobhrajbksbk@gmail.com', '23d6a203718ac5e9dcc229645e408b91', 'user', '2021-01-11 12:55:18'),
(18, 'Mr', 'Suraj', 'T C', '9898989898', '4mh17cs103.suraj@gmail.com', '8127a1ad276367223d9d0a2d264e4b2e', 'user', '2021-01-11 12:57:08'),
(19, 'Mr', 'Suraj', 'T C', '9898989898', '4mh17cs103.suraj@gmail.com', '8127a1ad276367223d9d0a2d264e4b2e', 'user', '2021-01-11 12:57:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes_1`
--
ALTER TABLE `recipes_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes_2`
--
ALTER TABLE `recipes_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r1_id` (`r1_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `procedures`
--
ALTER TABLE `procedures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `recipes_1`
--
ALTER TABLE `recipes_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `recipes_2`
--
ALTER TABLE `recipes_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
