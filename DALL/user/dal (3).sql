-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 08:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_image`) VALUES
(1, 'coffee', 'images/coffee.svg'),
(2, 'sweet', 'images/sweet.svg'),
(3, 'Resorts', 'images/rest.svg'),
(4, 'dinner', 'images/food.svg'),
(5, 'juice', 'images/drink.svg'),
(6, 'flower', 'images/flower.svg'),
(7, 'salon', 'images/salon.svg'),
(8, 'book', 'images/book.svg'),
(9, 'pharmecy', 'images/pharmecy.svg'),
(10, 'Gym', 'images/Gym.svg');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `places_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_rests`
--

CREATE TABLE `password_rests` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_rests`
--

INSERT INTO `password_rests` (`id`, `email`, `token`) VALUES
(45, 'hadeeel.m.f.12@gmail.com', '507da5e23c56dda0508362426dff0ed1ad2591ed8b01b71500ba93eefc401bcf33d1a9b3d55bd99edadee264efcbb75d4a5b'),
(46, 'hadeeel.m.f.12@gmail.com', '3507581664844dca71373bdf43b941272d6abe7c33111db349e8032855417c2a2c637a26a7e528416c9864bf43bfcd152b4c');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pl_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/places/',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Social_media` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `pl_image`, `location`, `phone`, `Social_media`, `work_time`, `description`, `menu`, `category_id`) VALUES
(5, 'juice time', 'images/places/T2.PNG', 'https://goo.gl/maps/xLspumJnZkC7Y6nZ8', '05622200010', 'https://instagram.com/39ertime.wad?utm_medium=copy_link', 'Weekdays From 7AM To 1AM Friday From 1PM To 1AM', 'Children are allowed', 'https://order-time.com/ar/menu', 5),
(13, 'signture', 'images/places/signture.PNG', 'https://goo.gl/maps/TgMp6MpoL9YBiF2N6', '920004793', 'https://instagram.com/signature_jf?utm_medium=copy_link', 'من 3 م إلى منتصف الليل ', 'يسمح بدخول الأطفال \r\nلا يوجد موسيقى', 'https://signaturejuices.comosense.com', 5),
(14, 'recovery time', 'images/places/1645732592_2b0d942fa376d51f3e8a21fcc3478402', 'https://goo.gl/maps/33ivjom3JoSR1RuZ7', '0533071852', 'https://instagram.com/_refreshing_tim_e?utm_medium=copy_link', 'من 8 ص إلى 11:30 م ', 'لايوجد حاجز - لايوجد موسيقى - مسموح للاطفال', '/', 5),
(17, 'fresca ', 'images/places/1645732735_eb15855a1b5a165af8291fbf3fb2c040', 'https://goo.gl/maps/hVoPa84jEFWpNUKi7', '0550171088', 'https://instagram.com/fresca_ksa?utm_medium=copy_link', 'من 9 ص إلى 11:00 م  السبت مغلق ', 'لايوجد حاجز - لايوجد موسيقى - مسموح للاطفال', 'https://drive.google.com/file/d/1tNsgFoXlat5EQORJSM2HQe6fTiiEFvp-/view?usp=drivesdk', 5),
(28, 'مكتبة ابيض واسود ', 'images/places/F1', 'https://goo.gl/maps/W8v3bbm2pV62ePmCA', '0555716611', 'https://instagram.com/stationery_black_and_white?utm_medium=copy_link', '8:00AM to 10:00PM', '', '', 8),
(29, 'مكتبة السلوم  ', 'images/places/', 'https://goo.gl/maps/KauwHEM5VmUXscrq6', 'no phone', '', '8:00 AM to  10:30 PM', '', '', 8),
(36, 'مكتبة خدمة الطالب ', 'images/places/', 'https://goo.gl/maps/6wSAzEXTvoYcyWd57', '0502204023', '', '9:00AM-12:00PM , 4:00PM-11:00PM', '', '', 8),
(37, 'مكتبة روان', 'images/places/', 'https://goo.gl/maps/uB3vtfEqtNFfcL6x6', '0535390251', 'https://instagram.com/rawanstationery?utm_medium=copy_link', '4:30PM TO 10:00PM', '', '', 8),
(38, 'مكتبة جرير ', 'images/places/', 'https://goo.gl/maps/v2551PHyefLD1U3L9', '920000089', 'https://instagram.com/jarirbookstore?utm_medium=copy_link', '9:00AM TO 11:00PM', '', '', 8),
(39, 'مكتبة النور', 'images/places/', 'https://goo.gl/maps/eD9JMAexvsxjeVAG8', '0116435030', '', '8:00AM TO 11:00PM', '', '', 8),
(40, 'مكتبة الرياض ', 'images/places/', 'https://goo.gl/maps/zFEhccNQosa5od528', '0530815409', '', '9:00AM TO 11:30PM', '', '', 8),
(41, 'مكتبة تساهيل ', 'images/places/', 'https://goo.gl/maps/TAcF39iaxke7CbTLA', '0542578627', '', '9:00AM TO 12:00PM', '', '', 8),
(42, 'مكتبة إي فور', 'images/places/', 'https://goo.gl/maps/eJ1GTHtciiBPEVpTA', '0542333938', '', '8:45AM TO 11:00PM', '', '', 8),
(43, 'مكتبة الصالح  ', 'images/places/', 'https://goo.gl/maps/UYfU2nyU4doFMQT49', '0116421012', 'https://instagram.com/alsaleh_bs?utm_medium=copy_link', '8:00AM TO 12:00PM', '', '', 8),
(44, 'مكتبة الباحوث  ', 'images/places/', 'https://goo.gl/maps/yvGXVDFDRMaqju3G9', '0116441233', 'https://instagram.com/albahouth_bookshop?utm_medium=copy_link', '8:00AM TO 11:00PM', '', '', 8),
(45, 'مكتبة وسام التنفيذ ', 'images/places/', 'https://goo.gl/maps/6gcJ39LFcC7uw7Mw8', '0580607178', '', '9:00AM TO 10:00PM', '', '', 8),
(46, 'LAB HUB', 'images/places/1645642354_b2eff9c188955185f668ac40ceedb94a', 'https://goo.gl/maps/ajmKJyfr38yLXvJu5', '0580833917', 'https://instagram.com/labhub.ksa?utm_medium=copy_link', 'From :7:00 AM to 11:30 , 4:00 PM to 10:30 PM', 'لايوجد حاجز - لايوجد موسيقى - مسموح للاطفال', 'https://drive.google.com/file/d/1LzwQLyASyzENiePQk8t0QVPCZEZR4mcn/view?usp=drivesdk', 5),
(47, 'صيدلية النهدي', 'images/places/1645573946_IMG_8724.PNG', 'https://goo.gl/maps/VciFyJzeTvGWHJGFA', '920024673', 'https://twitter.com/nahdihope', '7AM To 3AM ', 'صيدلية النهدي في جميع الشرق الاوسط ', '000', 9),
(48, 'صيدلية الدواء', 'images/places/1645574878_IMG_8750.JPG', 'https://goo.gl/maps/PfaD1vMHaNGqQhqA9', '8002444444', 'https://twitter.com/AldawaaCare', '7AM To 3AM ', 'صيدلية الدواء في جميع الشرق الاوسط ', '000', 9),
(49, 'صيدلية  أنوفا', 'images/places/1645575174_IMG_8751.JPG', 'https://goo.gl/maps/arDfwBwM712R1AZ46', '8001166664', 'https://twitter.com/innovahc', '7AM To 3AM ', 'صيدلية انوفا في المملكة العربية السعودية  ', '000000', 9),
(50, 'صيدلية بوتس ', 'images/places/1645575823_IMG_8753.PNG', 'https://goo.gl/maps/BiQcC44xuNB7wUNo9', '0115102303', 'https://twitter.com/BootsUK', '7AM To 11PM ', 'Durgs Store', '0000', 9),
(51, 'صيدلية ابوزيد', 'images/places/1645576545_logo.png', 'https://goo.gl/maps/kwxmmrqjzvYH4G4B7', '0116422422', 'No ', '7AM To 9PM', 'Durgs Store', '0116422422', 9),
(52, 'صيدلية محمد النادر', 'images/places/1645576840_IMG_8754.JPG', 'https://goo.gl/maps/gecDWVL7EVGNamGx8', '0116442317', 'لايوجد', '8AM To 12AM', 'Durgs Store', '0116442317', 9),
(53, 'صيدلية أضواء داورد ', 'images/places/1645577319_IMG_8755.JPG', 'https://goo.gl/maps/NUgSWHTaWi9t6PZY8', '0116433388', 'No ', 'Open 24 hours ', 'Durgs Store', 'Open 24 hours ', 9),
(54, 'صيدلية قلب الدواء', 'images/places/1645578414_IMG_8757.PNG', 'https://goo.gl/maps/FsdjGWs7CQRNwSz49', '0557495941', 'لايوجد', 'Open 24 hours ', 'Durgs Store', 'https://goo.gl/maps/FsdjGWs7CQRNwSz49', 9),
(55, 'صيدلية روعة الصحة', 'images/places/1645578597_IMG_8725.PNG', 'https://goo.gl/maps/V4icq9WNjyCnF4ak7', '0531507108', 'No ', '8AM To 12AM', 'Durgs Store', 'https://goo.gl/maps/V4icq9WNjyCnF4ak7', 9),
(58, 'AYAR أيار', 'images/places/1645626958_ايار.PNG', 'https://goo.gl/maps/Naq2E7SDuqAwp8k5A', '966556605567', 'https://linktr.ee/Ayarcafesa', 'السبت الى الاربعاء ١ م - ١٢ ص | الخميس ١ م - ٢ ص | الجمعة ٤ م - ٢ ص', 'مسموح بالأطفال - لايوجد غرف خاصة - نساء ورجال - يوجد موسيقى', 'https://drive.google.com/file/d/10DYEKEc5jcRlLj3CEAGyBICc8yEmKmhv/view?usp=drivesdk', 1),
(59, 'أرتال كافيه', 'images/places/1645627268_ارتال.jpg', 'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D9%83%D8%A7%D9%86+%D9%85%D9%88%D9%84%D8%8C+%D8%B7%D8%B1%D9%8A%D9%82+%D8%A7%D9%84%D9%85%D9%84%D9%83+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D8%B9%D8%B2%D9%8A%D8%B2%D8%8C+%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D9%86%D8%8C+%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A+17471%E2%80%AD/@0,0,22z/data=!4m2!3m1!1s0x15871c4a528f18dd:0x93897a43534b09b0?hl=ar-SA&gl=sa', '966568265247', 'https://instagram.com/artal.coffee?utm_medium=copy_link', '٩ ص - ١١ ص | ٤ م - ١١ م ', 'لايوجد حاجز - لايوجد موسيقى - مسموح للاطفال', 'https://drive.google.com/file/d/1sHwbod0d7aOZHNbC-Xb9C6I0uo-5as3X/view?usp=drivesdk', 1),
(60, 'جباتي وكرك', 'images/places/1645627523_جباتي وكرك.PNG', 'https://goo.gl/maps/3C4NoFPA2JvjYpbs5', '966551884166', 'https://instagram.com/ch.karak?utm_medium=copy_link', '٦ ص - ٢ ص | عدا وقت الظهر ', 'لايوجد حاجز - لايوجد موسيقى - مسموح للاطفال', 'https://drive.google.com/file/d/13OZs74G78PZXFD9ofbeNuSZIemmn4RO6/view?usp=drivesdk', 1),
(61, 'BC', 'images/places/1645629020_BC.PNG', 'https://goo.gl/maps/9TesqFqLGedu3ckA6', '966507772420', 'https://instagram.com/bc.cafe?utm_medium=copy_link', '٨ ص - منتصف الليل', 'مسموح الاطفال - يوجد غرف خاصة - نساء ورجال - لا يوجد موسيقى', 'https://drive.google.com/file/d/1uVNsnQZZXoJQUDXDC12lWMQm0CQQwOdZ/view?usp=drivesdk', 1),
(62, 'Dx2 coffee', 'images/places/1645629143_Dx2.PNG', 'https://goo.gl/maps/ZHW9tUNF8cjSbfDH9', '966534403977', 'https://instagram.com/the.dx2?utm_medium=copy_link', '٨ ص - ١٢ ص ', 'مسموح دخول الاطفال - لايوجد غرف خاصة - الدور الارضي عزاب - الدور الثاني عوائل - نساء ورجال - يوجد موسيقى', 'https://drive.google.com/file/d/108BmdG3q4zTQCQlRluy_ARbp0ZRuFda5/view?usp=drivesdk', 1),
(64, 'coffeenut', 'images/places/1645629610_coffeenut.png', 'https://goo.gl/maps/UHpGvzWc6yxtrhdn6', '0000000000', 'https://instagram.com/coffeenut_sa?utm_medium=copy_link', '٦ ص - ١٢ ص | يوم الجمعة ٤ م - ١٢ ص ', '      ', 'https://drive.google.com/file/d/1ya0WD2Do85PnexUWv9vidi-h9ZFVV2OM/view?usp=drivesdk', 1),
(65, 'rose garden', 'images/places/1645629745_rose garden.PNG', 'https://www.google.com/maps?q=%D8%B1%D9%88%D8%B2+%D9%82%D8%A7%D8%B1%D8%AF%D9%86+-+%D9%82%D9%87%D9%88%D8%A9+%D9%85%D8%AE%D8%AA%D8%B5%D8%A9%D8%8C+%D8%B7%D8%B1%D9%8A%D9%82+%D8%A7%D9%84%D9%85%D9%84%D9%83+%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B9%D8%B2%D9%8A%D8%B2%D8%8C+%D8%A7%D9%84%D8%AF%D8%B1%D8%B9%D8%8C+%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A+11911&ftid=0x15871d60014af211:0x77a6408a362aece9&hl=ar-SA&gl=sa&shorturl=1', '0000000000', 'https://instagram.com/rose.garden20?utm_medium=copy_link', '٧ ص - ١:٣٠ ص ', '   ', 'https://drive.google.com/file/d/10_pjKhueyUgnWS8I2Gau2Jsr3XFXRri2/view?usp=drivesdk', 1),
(67, 'مزن', 'images/places/1645630035_кЄл.png', ' https://maps.google.com/maps?q=%D9%82%D9%87%D9%88%D8%A9+%D9%85%D8%B2%D9%86%D8%8C+8692+%D8%B7%D8%B1%D9%8A%D9%82+%D8%A7%D9%84%D9%85%D9%84%D9%83+%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B9%D8%B2%D9%8A%D8%B2%D8%8C+%D8%AD%D9%8A+%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D9%86%D8%8C+%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A+17463%D8%8C&ftid=0x15871df72c580cf1:0xb5a8e5e94427e61c&hl=en-SA&gl=sa&shorturl=1', '966536167776', 'https://instagram.com/mzn_cafe?utm_medium=copy_link', '٦ ص - ٢ ص | ٤ م - ٢ ص', '- مسموح دخول الاطفال - لايوجد غرف خاصة - نساء ورجال - لايوجد موسيقى ', 'https://drive.google.com/file/d/1p-L84c5hWgNyiSUqtJn2mGMC15w_cFMf/view?usp=drivesdk', 1),
(68, 'قوافل البُن', 'images/places/1645630173_знџей џй л.PNG', 'https://goo.gl/maps/b6qYmG3uPZ61X59c6', '966591013632', 'https://instagram.com/qwafelalbn?utm_medium=copy_link', '٦ ص - ٤ ص', '-المكان مفتوح  - مسموح دخول الأطفال  - لايوجد غرف خاصة  - المكان رجالي ونسائي  - لايوجد به موسيقى', 'https://drive.google.com/file/d/1cGJJK6yaku-RGQS78OhHMxFrUR1pjtGx/view?usp=drivesdk', 1),
(69, 'داوا كافيه', 'images/places/1645630295_§ŸíŸ.PNG', 'https://goo.gl/maps/bdnqbQDmmMSV4f9CA', '966534335508', 'https://instagram.com/dawa_ksa?utm_medium=copy_link', '٦ ص - ١١:٣٠ ص | يوم الجمعة ١ م - ١١:٣٠ م', '-خصم لطلاب جامعة شقراء - مسموح للاطفال علمًا بأن المكان هادئ ومن المحتمل مايناسبهم - لايوجد غرف خاصة ، المكان مفتوح - يوجد جهة عوائل وجهة افراد - بمايخص تواجد الموسيقى نرى ان اصوات تحضير القهوة اجمل م', 'https://drive.google.com/file/d/14BGnYd53Su-SMtyCltzXZiVcWB1CvH-q/view?usp=drivesdk', 1),
(70, 'ليفز', 'images/places/1645630404_йпеЄ.png', 'https://www.google.com/search?q=Leaves+cafe&ludocid=14911929504722035779&ibp=gwp;0,7&source=g.page.m.id._', '0000000000', 'https://instagram.com/leaves.caffee?utm_medium=copy_link', '٧ ص - ١٢ م | ٤ م - ١١:٣٠ م ', 'يمنع اصطحاب الاطفال', 'https://drive.google.com/file/d/1zORIWU2jin3lVTRB60hz3tHa8NgOcreU/view', 1),
(71, 'رُزم', 'images/places/1645631181_ŠĒę.PNG', 'https://maps.apple.com/?address=%D8%AD%D9%8A%20%D8%A7%D9%84%D9%82%D8%AF%D8%B3%D8%8C%20%E2%80%8F%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A%2017441%D8%8C%20%E2%80%8F%D8%A7%D9%84%D9%85%D9%85%D9%84%D9%83%D8%A9%20%D8%A7%D9%84%D8%B9%D8%B1%D8%A8%D9%8A%D8%A9%20%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9&auid=8488133654172935996&ll=24.500190,44.388586&lsp=9902&q=Rozam%20Cafe%20%D9%85%D8%AD%D9%85%D8%B5%D8%A9%20%D9%88%D9%85%D9%82%D9%87%D9%89%20%D8%B1%D8%B2%D9%85%20%D9%84%D9%84%D9%82%D9%87%D9%88%D8%A9%20%D8%A7%D9%84%D9%85%D8%AE%D8%AA%D8%B5%D8%A9&_ext=CioKBAgEEBQKBAgFEAMKBAgGEAgKBAgKEAAKBAhSEAEKBAhVEA8KBAhZEAISJClVBQWN0X84QDFTojnSnDFGQDntjXpLR4A4QEFv576E3TFGQA%3D%3D&t=m', '0000000000', 'https://instagram.com/rozam.co?utm_medium=copy_link', '٦ ص - ١١:٣٠ص | يوم الجمعة ١ م - ١١:٣٠ م', '   ', 'https://drive.google.com/file/d/1zuBzB5FbqDuq_ErQp98J3Er7uIxi-4KX/view?usp=drivesdk', 1),
(72, 'غُرة للقهوة المختصة', 'images/places/1645631371_䩡.PNG', 'https://maps.apple.com/?address=%D8%AD%D9%8A%20%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%D8%8C%20%E2%80%8F%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A%2017441%D8%8C%20%E2%80%8F%D8%A7%D9%84%D9%85%D9%85%D9%84%D9%83%D8%A9%20%D8%A7%D9%84%D8%B9%D8%B1%D8%A8%D9%8A%D8%A9%20%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9&auid=88528737428034394&ll=24.511573,44.394593&lsp=9902&q=%D8%BA%D9%8F%D8%B1%D9%87%20%D9%84%D9%84%D9%82%D9%87%D9%88%D8%A9%20%D8%A7%D9%84%D9%85%D8%AE%D8%AA%D8%B5%D8%A9&_ext=CioKBAgEEBQKBAgFEAMKBAgGEAgKBAgKEAAKBAhSEAEKBAhVEA8KBAhZEAISJCn0v32Tu4I4QDHId/yrYTJGQDmMSPNRMYM4QEE8wwFgojJGQA%3D%3D&t=m', '966503617460', 'https://instagram.com/ghura.sa?utm_medium=copy_link', '٧ ص - ١٢ م |  ٤ م - ١١ م', '- مسموح دخول الاطفال  - يوجد حاجز - نساء ورجال - لايوجد موسيقى  - يوجد خدمة انترنت مجاني - جلسات داخلية فقط ', 'https://drive.google.com/file/d/1_ab7pcoMPDkT0rmtZDy11SqF7MHEFn0v/view?usp=drivesdk', 1),
(73, 'رويال', 'images/places/1645641526_d248b558d835eba3fddc815b1e29f08a', 'https://goo.gl/maps/XF7h1bvEqKkRgLt86', '0537113311', 'https://www.instagram.com/royal_shalih/', '-', 'الموقع على طريق ماسل (طريق الملك فيصل)مقابل شاليهات الواحه', '-', 3),
(74, 'B coffee', 'images/places/1645635601_B coffee.png', 'https://goo.gl/maps/pjjzgcyDq6d7Pf929', '0000000000', 'https://instagram.com/b14sweet?utm_medium=copy_link', '٢٤ ساعة ', '- مسموح دخول الأطفال  - لايوجد غرف خاصة - نساء ورجال - لا يوجد موسيقى - لا يوجد جلسات خارجية', 'https://drive.google.com/file/d/1Ay96EuuBOVIoJdHkHqigikSu-IdIuuIY', 1),
(75, 'ڤالي كافيه', 'images/places/1645636051_еџйп.png', 'https://www.google.com/maps/place/%DA%A4%D8%A7%D9%84%D9%8A+Valley%D8%8C+%D8%B7%D8%B1%D9%8A%D9%82+%D8%A7%D9%84%D9%85%D9%84%D9%83+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D8%B9%D8%B2%D9%8A%D8%B2%D8%8C+%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D9%86%D8%8C+%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A+17471%E2%80%AD/@24.5455322,44.4445917,16z/data=!4m2!3m1!1s0x15871d3e7ed1b4e1:0xd166ac0d3455ee9f?hl=ar-SA&gl=sa', '0000000000', 'https://instagram.com/valley1.cafe?utm_medium=copy_link', '٧ ص - ١٢ م | ٤ م - ١٢ ص', '    ', 'https://drive.google.com/file/d/1xJ7Q7V3X0nH6T_hYaCvWeFY11uGwayP-/view?usp=drivesdk', 1),
(76, 'فيلت', 'images/places/1645636189_епйў.png', 'https://goo.gl/maps/1erYz4BVSq8PtAf88', '0000000000', 'https://instagram.com/felt.sa?utm_medium=copy_link', '٧ ص - ١٢ ص | يوم الجمعة والسبت ٤ م - ١٢ ص ', '   ', 'https://drive.google.com/file/d/1Li2x04zmjFk-7sHffKxiHCbOZOtJ2eNU/view?usp=drivesdk', 1),
(77, '25 oct', 'images/places/1645636350_25 Oct.png', 'https://goo.gl/maps/NEmvW2WWjqNkmfww7', '000000000', 'https://instagram.com/25oct.c?utm_medium=copy_link', '٧ ص - ٣ ص', '   ', 'https://drive.google.com/file/d/1-3OWfIyMpfmMZhJT9zD9TR8blweTSVKi', 1),
(78, 'بيت ورد', 'images/places/1645636919_ward.PNG', 'https://goo.gl/maps/AGxn1xHqh9MkC3Ut9', '0559925456', 'https://www.instagram.com/bait_ward1/', '-', 'الدوادمي طريق ماسل', '-', 3),
(79, 'جمانة', 'images/places/1645637003_joma.PNG', 'https://goo.gl/maps/uvUaoGQbga5cj417A', '0500067073', 'https://www.instagram.com/jumanachalet/', '-', '-', '-', 3),
(80, 'ركن السلطان ', 'images/places/1645637331_rkn.PNG', 'https://www.google.com/maps/place/24%C2%B033\'04.6%22N+44%C2%B022\'27.0%22E/@24.551287,44.374172,17z', '0508127639', 'https://www.instagram.com/rkn_alsultan/', '-', 'شاليه ركن السلطان للمناسبات والحفلات', '-', 3),
(83, 'روز', 'images/places/1645638015_roz.PNG', 'maps.app.goo.gl/82nybDS1QcmogbP26', '0500332231', 'https://www.instagram.com/roozshalyhat/', '-', '-', '-', 3),
(84, 'منتجع الديوان', 'images/places/1645638598_aldewan.PNG', 'https://goo.gl/maps/y17amrxFL2UhTmxT8', '0550558831', 'https://www.instagram.com/aldiwan_resort/', '-', 'شاليهات ترفيهية  | إقامة فندقية', '-', 3),
(85, 'إيليت', 'images/places/1645638731_elet.PNG', 'https://goo.gl/maps/hrrDKPvB5gMTAX3LA', '0503411818', 'https://www.instagram.com/elite_chalets/', '-', 'شرق دوار ماسل - مقابل ملعب ياسر', '-', 3),
(86, 'روستر ', 'images/places/1645638852_IMG_9095.PNG', 'https://goo.gl/maps/9E9K8vRNo2SYkrfh7', '0552378031', '@rooster.sa', '12:00 PM - 12:00 AM ', 'لايوجد حاجز - لايوجد موسيقى - مسموح للاطفال', '//', 4),
(87, 'بوليفارد', 'images/places/1645639123_poly.PNG', 'https://goo.gl/maps/GcZYhPeTjQEh8Gzm7', '0504330038', 'https://www.instagram.com/bouleevard/', '-', '-', '-', 3),
(88, 'إيلورا', 'images/places/1645641284_94a3dbcc1c903b2ce75c63d8f9752744', 'https://maps.google.com?q=%D8%B4%D8%A7%D9%84%D9%8A%D9%87%D8%A7%D8%AA%20%D8%A7%D9%8A%D9%84%D9%88%D8%B1%D8%A7%D8%8C%20%D9%85%D9%86%D8%B7%D9%82%D8%A9%20%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%B1%D8%A7%D8%AD%D8%A7%D8%AA%D8%8C%20%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A%2017461%C2%A06290&ftid=0x1587029669743515:0x1a711779a1318075&hl=ar-SA&gl=sa&entry=gps&lucs=s2se,a1', '0555114935', 'https://www.instagram.com/elura1/', '-', 'طريق ماسل -حي النزهه -بعد ملعب خالد ب٢٠٠متر', '-', 3),
(89, 'المها', 'images/places/1645639845_AnyConv.com__maha.png', 'goo.gl/maps/vuwGmV2zaLoTdzEW7', '0554986555', 'https://www.instagram.com/almaha_dawadmi/', '-', 'طريق عرجاء بجوار قاعة اليمامة', '-', 3),
(90, 'روما ', 'images/places/1645639901_roma.PNG', 'goo.gl/maps/Js3sYij4Hox', '0000000000', 'https://www.instagram.com/roma.63/', '-', 'عندنا 3 شاليهات ويختلف فيها المسابح فقط : شاليه رقم 1 :مسبحه كبير وصغير مع بعض شاليه رقم 2 : مسبح كبير فقط شاليه رقم 3 : مسبح صغير مع العاب مائيه', '-', 3),
(91, 'أمواج', 'images/places/1645640053_AnyConv.com__amwaj.png', 'goo.gl/maps/AnLMb26YJW82', '0504408111', 'https://www.instagram.com/amwaj.2030/', '-', 'تم افتتاح شاليه أمواج لمناسباتكم الخاصة والعائلية وحفلات الملكة والنجاح الموقع: الدوادمي خلف قصر المعالي ', '-', 3),
(92, 'الفارس', 'images/places/1645642618_de72c22fb6e6be6ce065456b9d24c6c8', 'goo.gl/maps/Sc3HvNF1Mf72', '0504207079', 'https://www.instagram.com/chalet_alfariss/', '-', '‎تم افتتاح شاليه الفارس بحي النزهة بالدوادمي', '-', 3),
(93, 'الحياة', 'images/places/1645641908_AnyConv.com__haya.png', 'goo.gl/maps/mytRp8sn8xuTiSrS8', '0531424242', 'https://www.instagram.com/shalehat_alhayat/', '-', 'للحجز0591400905 -0594277416', '-', 3),
(94, 'قولدن ستار', 'images/places/1645642957_AnyConv.com__star.png', 'goo.gl/maps/57JvWptujaJKX7Hq5', '0593033300', 'https://www.instagram.com/g.star0/', '-', 'طريق عرجاء', '-', 3),
(95, 'كوين ساره', 'images/places/1645643066_sara.png', 'goo.gl/maps/iqyqKjMsASo', '0536744433', 'https://www.instagram.com/9ueen.sara/', '-', 'للحفلات والمناسبات وكوش الافراح وحفلات التخرج والخاصه', '-', 3),
(96, ' نيرڤانا', 'images/places/1645643220_AnyConv.com__nerfana.png', 'maps.google.com/?q=24.510807%2C44.453270', '0530154437', 'https://www.instagram.com/ra5hed77/', '-', 'إدارة مكتب راشد للعقارات  ٠٥٥٤٩٣٥٤٩٣ -٠١١٦٤٣٣٣٣٦', '-', 3),
(97, 'العريش', 'images/places/1645643301_AnyConv.com__aresh.png', 'goo.gl/maps/qp6UXPGCvZFeZSpK7', '0550444048', 'https://www.instagram.com/shaleh_alarish/', '-', '-', '-', 3),
(98, 'بانوراما', 'images/places/1645643378_AnyConv.com__panorama.png', 'maps.google.com/?ftid=0x15870346a585869f%3A0x535f1692399b6e3d&hl=ar-SA&g', '0556231940', 'https://www.instagram.com/panorama_dawadmi/', '-', 'طريق ماسل ', '-', 3),
(99, 'منتجع الأصالة', 'images/places/1645736011_dd855282b78b82a1051f13ab1d33b1b5', 'goo.gl/maps/pTrvNZcDEQUoKmjh6', '0555923390', 'https://www.instagram.com/alasalah.resort/', '-', 'جميع تصاميمي بالمنتجع بدون حقوق وحلالكم ', '-', 3),
(100, 'NOLA PIZZERIA ', 'images/places/1645648251_photo5814496179973633876.png', ' https://goo.gl/maps/QwUThaeL1Es5GFnSA', '050336614', 'Insta: @nolapizza', '1:00 PM - 12:00 AM', 'يوجد موسيقى / يسمح بدخول الاطفال / غرف مغلقه ', 'https://drive.google.com/file/d/1A-rVChLzXStiKZFn1O3G9jMC6Wcryi8H/view?usp=sharing', 4),
(101, 'قشقوان ', 'images/places/1645649341_photo5814496179973633972.png', 'https://goo.gl/maps/CygSaCzN7xavJmYYA', '0504884234', 'Insta: @Qaskkwan', '7:00 AM - 12:00 PM ', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1WdyGZ0CJd9B8e5Gaup6sBN6pwKJ1Zokn/view?usp=drivesdk', 4),
(102, 'Shawarma and more', 'images/places/1645650193_photo5814496179973633973.png', 'https://goo.gl/maps/BX3WWMzx4BPTALe26', '0530075659', 'Insta: @shawarma.more ', '1:00 PM - 1:00 AM', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1E1PifznM8slyrdynfoDEiBaYgEL96YeH/view?usp=drivesdk', 4),
(103, 'مشغل بدر البدور', 'images/places/1645650309_PHOTO-2022-02-23-16-03-21.jpg', '--', '0538417493', 'instagram: badr_albdor14', '9-10AM  3-9PM', '--', '--', 7),
(104, 'صالون ميس', 'images/places/1645651827_unnamed.jpg', '--', '0555453693', 'instagram: mais.saloonbeauty1', '1:00-10:00PM', '--', '--', 7),
(105, 'الدجاج المتميز ', 'images/places/1645651868_photo5814496179973633982.png', 'https://goo.gl/maps/1cVneGF7izUUzwVg8', '0505504435', 'Insta: @chickenplus1983', '12:30 PM - 2:00 AM ', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1WpeKoxmUwyDXnmFOqRlqiIkYZ9hVO0pD/view?usp=drivesdk', 4),
(106, 'صالون مساء', 'images/places/1645652573_PHOTO-2022-02-23-17-58-46 (3).jpg', '--', '0502536392', 'instagram: masaa_salon', '1:00-10:00PM ,,Thursday And Friday: 12:00-10:00PM', '--', '--', 7),
(107, 'مشغل ركن جنان', 'images/places/1645653063_PHOTO-2022-02-23-16-29-13.jpg', '--', '0553075208', 'instagram: corner_jenan', '1:00-10:00PM', '--', '--', 7),
(108, 'صالون فن الخليج', 'images/places/1645653452_PHOTO-2022-02-23-16-27-31.jpg', '--', '0543110110', 'instagram: gulfsalon', '10:00AM-8:30PM', '--', '--', 7),
(109, 'delicious burger ', 'images/places/1645653470_photo5814496179973633989.png', 'https://goo.gl/maps/rwfUPeuSfKsuz3qG7', '0116440304', 'Insta: @1delicious_burger ', '1:00 PM - 1:00 AM ', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1dyt7vnO4cdoavDpWFc2MdZwIq168fUT-/view?usp=drivesdk', 4),
(110, 'burger boss', 'images/places/1645653815_photo5814496179973633990.png', 'https://goo.gl/maps/dAxzYJJ16AYX1jW17', '0531000962', 'Insta: @burger_boss', '1:00 PM - 1:00 AM ', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1UknXq_lZ3VS_v3LB8zBCyBPCDd6bv_Ei/view?usp=drivesdk', 4),
(111, 'مشغل اناقة ايلين', 'images/places/1645653862_PHOTO-2022-02-23-16-16-09.jpg', '--', '0598436326', 'instagram: aeeli677059', '1:00-10:00PM', '--', '--', 7),
(112, 'Let’s Eat', 'images/places/1645654197_photo5814496179973633991.png', 'https://goo.gl/maps/7V6GzogZ3j3XxvkQA', '0505685447', 'Insta: @llets.eat', '4:00 PM - 2:00 AM ', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1XPu8_JL42O3qIbpMft-QEOQq7bw_ewTv/view?usp=drivesdk', 4),
(113, 'صالون ليدي', 'images/places/1645654217_PHOTO-2022-02-23-16-04-02.jpg', '--', '0553801758', 'instagram: lady_center', '1:00-10:00PM', '--', '--', 7),
(114, 'مقلوبة الحاره ', 'images/places/1645654861_photo8.png', 'https://goo.gl/maps/aznGromCUNXK8uF17', '0558673707', 'Insta: @mglobt ', '11:00 AM - 1:00 AM', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1oW1lXYRsjvOSAUjxz5l5awrW4I4bU5lt/view?usp=drivesdk', 4),
(115, 'غواصة', 'images/places/1645655221_photo5.png', 'https://goo.gl/maps/SvSY9xNCQFsHvAXB9', '0551596347', 'Insta: @ghwasa.sa', '4:00 PM - 1:00 AM ', 'لا يوجد موسيقى', 'https://drive.google.com/file/d/1ixbApYzKW_3-_vHHAmX9EfkfFJ6SEOpw/view?usp=drivesdk', 4),
(116, 'كوهينور', 'images/places/1645655733_photo9.png', 'https://goo.gl/maps/gjtLLvjs65PFy9ZC6', '0500454898', 'Insta: @ksa.kohinoor', '12:00 PM - 1:00 AM', 'لا يوجد موسيقى/خدمة التوصيل متاحه/غرف مغلقه/يسمح بدخول الاطفال', 'https://drive.google.com/file/d/1L6wtiW0kqBfJXa35j5ED3_vyeD9JSiQz/view?usp=drivesdk', 4),
(117, 'Spices sprinkles', 'images/places/1645656347_photo0.png', 'https://goo.gl/maps/a8XYMvz7oDtMJn7i9', '0502669853', 'Insta: @spicess.sprinkles', '1:00 PM - 12:00 AM ', 'يسمح بدخول الاطفال /لا يوجد موسيقى', 'https://drive.google.com/file/d/1uyGK_6Ex4rrVJa4SsiUyDp1XsKbkehx0/view?usp=drivesdk', 4),
(118, '6am ', 'images/places/1645657503_photo9.png', 'https://goo.gl/maps/9yMqSiQdqQjqmv3M7', '0599354647', 'Insta: @6.am.1', ' 6:00 AM - 11:30 PM ', 'يوجد موسيقى/يسمح بدخول الاطفال', 'https://drive.google.com/file/d/17OZYsDi_8VTGyQl3Lg0VG3B-t8S4buFH/view?usp=drivesdk', 4),
(119, 'شباك فيروز', 'images/places/1645657747_photo2.png', 'https://goo.gl/maps/77PHSSiswRbi1CQB7', '0533866611', 'Insta: @shebbak_fairouz', ' 12:30 PM - 12:00 AM ', 'لا يسمح بدخول الاطفال /لا يوجد موسيقى', 'https://drive.google.com/file/d/1Gbk9Da06O1O3UWOYt7X0i1P8PSNZKUwf/view?usp=drivesdk', 4),
(120, 'سلة الخبز ', 'images/places/1645658178_photo5.png', 'https://goo.gl/maps/N8a8n62sqFmkgErQ6', '0505964440', 'Insta: @breadbasket.sa', '6:00 AM - 2:00 AM', 'لا يوحد موسيقى/يسمح بدخول الاطفال ', 'https://drive.google.com/file/d/1jk_07o3DWRKhYi9X4My6ptgZ_ztrFmQZ/view?usp=drivesdk', 4),
(121, 'premium.grill ', 'images/places/1645658470_photo8.png', 'https://goo.gl/maps/wC8JvwsJQUJereEq9', '0544777664', 'Insta/Twitter/Snapchat : @premium.grill', '1:00 PM - 1:00 AM', 'يسمح بدخول الاطفال /لا يوجد موسيقى', 'https://drive.google.com/file/d/1ztlWFHB246kBq1xQw0SoioExsqpJVMlb/view?usp=drivesdk', 4),
(122, 'بياتو شيف', 'images/places/1645658668_photo3.png', 'https://goo.gl/maps/ZVNFzzRmcvpCVAZNA', '0530474442', 'Insta: @piattochef', '12:00 PM - 12:00 AM ', 'لا يوجد موسيقى/ يسمح بدخول الاطفال / خدمة التوصيل متاحه', 'https://drive.google.com/file/d/1m5Pr_X5MBvxGAH5KF0EHvITMtp0mUhbb/view?usp=drivesdk', 4),
(123, 'شاورما كنج ', 'images/places/1645659618_photo5.png', 'https://goo.gl/maps/uxYMNb19vvXqyqJr9', '920002209', 'Insta: @shwearmakingb', '12:00 PM - 1:00 AM', 'خدمة التوصيل متاحه ', 'https://drive.google.com/file/d/17Qe4n710tLaqSElLaP8iVYXZaWEhZnTN/view?usp=drivesdk', 4),
(124, 'مشغل سر اللمسه الاخيره', 'images/places/1645696594_صالون.jpg', 'https://maps.app.goo.gl/dEyLQY2Xskj2Ge7a7', '0558008821', 'Twitter: 0final_touch0', '1:00-10:00PM', '--', '--', 7),
(125, 'مشغل دار العنود لتزيين', 'images/places/1645696912_unnamed (1).jpg', 'https://maps.app.goo.gl/Pug73uhukCqEdhVA9', '0504918791', '--', '1:00-10:00PM', '--', '--', 7),
(126, 'مشغل ايلان', 'images/places/1645697127_unnamed (2).jpg', 'https://maps.app.goo.gl/22KAwU3yBESKguTa8', '0502697217', '--', '10:00AM-10:00PM', '--', '--', 7),
(127, 'مشغل حكاية الاسطوره', 'images/places/1645697336_IMG_6618.JPG', 'https://maps.app.goo.gl/6WLqEMZVP4taRNqa6', '0542723932', 'instagram: alastoorh01', '1:00-10:00PM', '--', '--', 7),
(128, 'مركز بيوتي النسائي', 'images/places/1645697547_IMG_6617.JPG', 'https://maps.app.goo.gl/ahYRPk5iMLGgAwFj6', '0543457008', '--', '2:00-10:00PM', '--', '--', 7),
(129, 'مشغل لمسات touches', 'images/places/1645697820_PHOTO-2022-02-23-16-36-57.jpg', 'https://maps.app.goo.gl/fC6NxKnhU5SsFc1h6', '0550853217', 'instagram: touches_saloon', '12:00-9:00PM', '--', '--', 7),
(130, 'صالون جمال حديث', 'images/places/1645698141_سس.jpg', 'https://maps.app.goo.gl/73r1Ao2Y69TGjDpc7', '0551560650', 'instagram: modern.beauty.salon_', '1:00-10:00PM', '--', '--', 7),
(131, 'مشغل غروب شمس', 'images/places/1645698317_IMG_6619.PNG', 'https://maps.app.goo.gl/ap8eZUHKedKCJbrUA', '0508132968', '--', '10:00AM-3:00PM', '--', '--', 7),
(132, 'صالون المهره لتزيين النسائي', 'images/places/1645698715_PHOTO-2022-02-23-16-07-53.jpg', 'https://maps.app.goo.gl/engp6aVPUif5YTkX6', '0500067224', 'instagram: n.m.3555', '2:00-10:00PM', '--', '--', 7),
(133, 'قراند صالون', 'images/places/1645698945_PHOTO-2022-02-23-16-04-58.jpg', 'https://maps.app.goo.gl/99vFwHC6pj4GUXhG6', '0505113076', 'instagram: grand__salon', '1:00-10:00PM', '--', '--', 7),
(134, 'Home services', 'images/places/1645699576_PHOTO-2022-02-23-16-05-41.jpg', 'خدمه منزليه', '0537654626', 'instagram: home00services', '--', '--', '--', 7),
(135, 'صالون جمالك و اكثر', 'images/places/1645699903_PHOTO-2022-02-23-16-06-57.jpg', 'https://maps.app.goo.gl/VMRdys5aistKxwR46', '0554266282', 'instagram: 0beautyandmore0', '1:00-9:00PM', '--', '--', 7),
(136, 'صالون مها العتيبي', 'images/places/1645700212_unnamed (3).jpg', 'https://maps.app.goo.gl/RjMPJgrkuSQoLrDp9', '0507831171', 'instagram: salon_maha11', '1:00-9:30PM', '--', '--', 7),
(137, 'شوكوليستا', 'images/places/1645711503_c374307b398946f708d3e3fea111edac', 'http://maps.app.goo.gl/qBCY77qAuESzN4KT7', '0501448283', 'Instagram : @chocolesta.cl  Snapchat: chocolesta', '  من السبت إلى الخميس : الساعة الثانية ظهرًا حتى الساعة العاشرة مساًء  يوم الجمعة: من الرابعة عصرًا حتى العاشرة مساًء ', '_', '_', 2),
(138, 'حلويات السرايا', 'images/places/1645711990_تنزيل-١.png', 'https://maps.app.goo.gl/6NXiJdefnWqKjHvc9', '0116441001', 'لايوجد', 'مفتوح على مدار الأسبوع من الساعة الثامنه صباحًا حتى الساعه الحادية عشر مساًء', '_', '_', 2),
(139, 'لاسقنتشورا', 'images/places/1645712311_Screenshot_٢٠٢٢٠٢٢٤-١٧١٣٥٥_Drive.png', 'https://maps.app.goo.gl/bdoF5m7RLR6RdDe18', '0556611059', 'Instagram : @lasignatura', '  من السبت إلى الخميس : الساعة الثامنه صباحًا حتى الساعة الحادية عشرة مساًء  يوم الجمعة: من الواحدة ظهرًا حتى الثانية عشر صباحًا ', 'كيك شوكولاته و حلويات و معجنات فاخره ', '_', 2),
(140, 'حلويات كاندي', 'images/places/1645712768_2017-08-11.jpg', 'https://maps.app.goo.gl/KVjZfXxRJ5XJckmD7', '0557871744', 'Instagram : @candy_sugary0', '  من السبت إلى الخميس : الساعة التاسعة صباحًا حتى الساعة الحادية عشرة مساًء  يوم الجمعة: من الرابعة عصرًا حتى الحادية عشرة مساًء ', 'نوفر في كاندي أنواع متعدده من اطباق الحلويات والمعجنات وقوالب الكيك وتنسيق البوفيهات المفتوحه والحفلات ', '_', 2),
(141, 'دام تشوكلت', 'images/places/1645713421_63368706e406df28998a6a208b8eae1e', 'https://maps.app.goo.gl/h6h2gTMH72tchJZs7', '0561851128', 'Instagram : @damsaudi', ' Sunday 4:00 PM – 6:00 PM 8:30 PM – 12:30 AM Monday 4:00 PM – 6:00 PM 8:30 PM – 12:30 AM Tuesday 4:00 PM – 6:00 PM 8:30 PM – 12:30 AM Wednesday 4:00 PM – 6:00 PM 8:30 PM – 12:30 AM Thursday 4:00 PM – ', '_', '_', 2),
(142, 'حلا أسيل ', 'images/places/1645713327_Screenshot_٢٠٢٢٠٢٢٤-١٧٣٢٤٩_Drive.png', 'https://maps.app.goo.gl/942NZztxr6xF3fNH9', '0594443306', 'Instagram : @hala_aseel', ' Sunday 8:00 AM – 11:00 PM Monday 8:00 AM – 11:00 PM Tuesday 8:00 AM – 11:00 PM Wednesday 8:00 AM – 11:00 PM Thursday 8:00 AM – 11:00 PM Friday 8:00 AM – 11:00 PM Saturday 8:00 AM – 11:00 PM', '_', '_', 2),
(143, 'نقوة| NAGWAH', 'images/places/1645728940_naqwa.png', 'https://maps.app.goo.gl/Y74jtZS2R1yw4hZC8', '0552895280', 'https://www.instagram.com/nagoh_111/', '[ 9.30AM - 12.00PM ] [ 4.00PM - 10.30PM ]', '/', '/', 6),
(144, 'توليب|Tulip natural flowers', 'images/places/1645729023_Tulipflowers.jpg', 'https://maps.app.goo.gl/sqHELD5aAPaNaBZL9', '0541546868', 'https://twitter.com/Tulip6440202', '[ 9.30AM - 12.00PM ] [ 4.00PM - 10.30PM ]', 'Natural flower – giftbox-helium balloon – wedding design-wrapping زهور طبيعية - تغليف - علب هدايا - بالونات هيليوم - كوش افراح الدوادمي ', '//', 6),
(145, 'ورد واكثر | word and more  ', 'images/places/1645729157_worodflower.jpg', 'https://maps.app.goo.gl/aFJnmKHh4TCeDX3w6', '0550271090', 'https://www.instagram.com/rose.and.more/', '[ 4.00PM - 11PM ]', 'ورود???? هدايا???? واكثر ...', '//', 6),
(146, 'ازهار هادئه | quiet flower ', 'images/places/1645729318_quiteflower.jpg', 'https://maps.app.goo.gl/nyYabmyBLeuKWgdo6', '0502904446', 'https://www.instagram.com/quiet.flowers/', '[ 4.00PM - 10PM ]', 'ورد-تغليف-هدايا-بلون حَيث تُصنّع الباقَاتُ بِحُبّ', '//', 6),
(147, 'واحة الورد ', 'images/places/1645729406_flower.png', 'https://maps.app.goo.gl/YUgBvbsvsHQXpbwQ6', '0553332855', 'https://www.instagram.com/oasisaldwadmi/', '[ 9.30AM - 12.00PM ] [ 4.00PM - 10.30PM ]', '//', '//', 6),
(148, 'روز بوتيك | rose boutique', 'images/places/1645729475_roseboutique.png', 'https://www.google.com/maps?q=24.506195,44.394365&hl=ar-SA&gl=sa&shorturl=1', '0507331650', 'https://www.instagram.com/rose_boutique67/', '[ 4.00PM - 10PM ]', 'الدوادمي _السوق الابيض خلف مكتبة السلوم', '//', 6),
(149, 'Wooden Gift', 'images/places/1645729531_woodengift.png', 'https://www.google.com/maps/place/Wooden+Gift/@24.5064084,44.3994886,17z/data=!3m1!4b1!4m5!3m4!1s0x15871d54553a6f1d:0x595732a18d95d5d3!8m2!3d24.5064084!4d44.4016773?hl=en-GB', '0599959899', 'https://www.instagram.com/woodengift/', '[ 10.00AM - 12PM ] [ 4.00PM - 10PM ]', '//', '//', 6),
(150, 'هديل الورد للهدايا والتغليف', 'images/places/1645729744_hadeelward.png', 'https://www.google.com/maps?q=24.506195,44.394365&hl=ar-SA&gl=sa&shorturl=1', '0559293500', 'https://www.instagram.com/hadeelalward22/', '[ 9.00AM - 12PM ] [ 4.00PM - 11PM ]', '‏‎ الدوادمي السوق القديم مقابل اماسي للحلا', '//', 6),
(151, 'زهرة المنار ', 'images/places/1645729844_zahra.png', 'https://www.google.com/maps/place/%D8%B2%D9%87%D8%B1%D8%A9+%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B1+%D9%84%D9%84%D9%87%D8%AF%D8%A7%D9%8A%D8%A7%E2%80%AD/@24.5071108,44.3949208,15z/data=!4m12!1m6!3m5!1s0x0:0xe165a605c911f3b2!2z2LLZh9ix2Kkg2KfZhNmF2YbYp9ixINmE2YTZh9iv2KfZitin!8m2!3d24.5069616!4d44.395017!3m4!1s0x0:0xe165a605c911f3b2!8m2!3d24.5069616!4d44.395017', '0554444624', 'https://www.instagram.com/zhrt_almnar/', '[ 9.00AM - 12PM ] [ 4.00PM – 10:30PM ]', '//', '//', 6),
(152, 'rihana| ريحانه ', 'images/places/1645729957_rihana.jpg', 'https://www.google.com/search?sa=X&rlz=1C1GCEA_enSA955SA955&hl=en-GB&tbs=lf:1,lf_ui:2&tbm=lcl&sxsrf=APq-WBvIupBoeua3DcvKIlUVxpO6fj39jA:1645682777768&q=%D8%B1%D9%8A%D8%AD%D8%A7%D9%86%D9%87+%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A&rflfq=1&num=10#rlfi=hd:;si:;mv:[[24.551734,44.456947299999996],[24.5391972,44.4189199]];tbs:lrf:!1m4!1u2!2m2!2m1!1e1!2m1!1e2!3sIAE,lf:1,lf_ui:2', '0507310625', 'https://www.instagram.com/_1rehana/', '[ 9.30AM - 12PM ] [ 4.00PM – 11:00PM ]', 'عند مجمع البوليفارد بالدوادمي', '//', 6),
(153, 'روزا للهدايا والورود Rosa', 'images/places/1645730726_rosa.jpg', 'https://www.google.com/search?q=%D9%85%D8%AD%D9%84%20%D8%B1%D9%88%D8%B2%D8%A7%20%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A&rlz=1C1GCEA_enSA955SA955&oq=%D9%85%D8%AD%D9%84+%D8%B1%D9%88%D8%B2%D8%A7+%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%AF%D9%85%D9%8A&aqs=chrome..69i57j0i22i30.5293j0j1&sourceid=chrome&ie=UTF-8&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:10&tbm=lcl&sxsrf=APq-WBsP3JDAZR0GaTpq87kNBET5HnAE3A:1645730134978&rflfq=1&num=10&rldimm=15266112788618889711&lqi=CiDZhdit2YQg2LHZiNiy2Kcg2KfZhNiv2YjYp9iv2YXZikiAxKfr77OAgAhaLBAAEAEYABgBGAIiINmF2K3ZhCDYsdmI2LLYpyDYp9mE2K_ZiNin2K_ZhdmKkgEJZ2lmdF9zaG9wqgEXEAEqEyIP2YXYrdmEINix2YjYstinKDY&phdesc=kOW0gQFS99s&ved=2ahUKEwizw9zAhpn2AhWUOuwKHZvqC5YQvS56BAgCEEs&rlst=f#rlfi=hd:;si:15266112788618889711,l,CiDZhdit2YQg2LHZiNiy2Kcg2KfZhNiv2YjYp9iv2YXZikiAxKfr77OAgAhaLBAAEAEYABgBGAIiINmF2K3ZhCDYsdmI2LLYpyDYp9mE2K_ZiNin2K_ZhdmKkgEJZ2lmdF9zaG9wqgEXEAEqEyIP2YXYrdmEINix2YjYstinKDY,y,kOW0gQFS99s;mv:[[24.541499299999998,44.4389326],[24.4978066,44.385562]]', '0558261108', '//', '[ 9.30AM - 12PM ] [ 4.00PM – 11:00PM ]', '//', '//', 6),
(154, 'مركز نادي فيت يو ', 'images/places/1645734646_AnyConv.com__fit.png', 'https://goo.gl/maps/925MvNdLmLpFPCd87', '530552006', 'https://instagram.com/fityou_fitness?utm_medium=copy_link', 'أيام الاسبوع من 7ص إلى 10م , يوم الجمعة من 2م إلى9م', 'Female ', '-', 10),
(155, 'مشغل الرشاقة والجمال', 'images/places/1645735649_62585d3cbbd3eb9bfb6acfc1fe08e706', 'https://goo.gl/maps/X5Nb4q82siBgNdMF8', '0552465793', 'https://instagram.com/fit_and_salons?utm_medium=copy_link', 'أيام الاسبوع من 11ص إلى 10م , الاحد مغلق', 'Female ', '-', 10),
(156, 'وقت اللياقة', 'images/places/1645735772_a2709cff324a00345b8b9c54902d9148', 'https://goo.gl/maps/LMaU6rWw8V5eWKeV8', '920003131', 'https://instagram.com/fitnesstimesa?utm_medium=copy_link', 'أيام الاسبوع من 10ص إلى منتصف الليل , الجمعة من 1م إلى 11م , السبت من 10ص إلى 11م', 'Female & Male', '-', 10),
(157, 'مركز نخبة الأبطال الرياضي', 'images/places/1645735432_AnyConv.com__abtal.png', 'https://goo.gl/maps/R38Moz611EY8x16s6', '0556624450', 'https://instagram.com/e_c.1?utm_medium=copy_link', 'أيام الاسبوع من 12:30م إلى منتصف الليل , الجمعة من 4م إلى10م', 'Male ', '-', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'hadeel', 'hadeeel.m.f.12@gmail.com', 'bb633cd4028cf2eb9e07829706a7aaac'),
(2, 'dalal ', 'dalal@gmail.com', 'da123456'),
(25, 'yju', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(32, 'saad', 'saaad@hotmail.com', 'c3d8ee32450d82e926ce9409674a6744'),
(33, 'hadelll', 'hadeel@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(35, 'hala', 'hala@hotmail.com', 'bb633cd4028cf2eb9e07829706a7aaac'),
(36, 'h12', 'no2000thing@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(37, 'haadeel', 'had@gmail.com', '202cb962ac59075b964b07152d234b70'),
(38, 'saad123', 'asfordesign22@gmail.com', 'f290ca45b0dec2ec16cf3afcafbea6ac'),
(40, 'idriis', 'alwwd25@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_id` (`places_id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `password_rests`
--
ALTER TABLE `password_rests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `password_rests`
--
ALTER TABLE `password_rests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `favorite_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
