-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2024 年 06 月 16 日 08:34
-- 伺服器版本： 10.5.20-MariaDB
-- PHP 版本： 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `id22262600_restaurantwebsite`
--

-- --------------------------------------------------------

--
-- 資料表結構 `clients`
--

CREATE TABLE `clients` (
  `client_id` int(5) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(50) NOT NULL,
  `client_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_phone`, `client_email`) VALUES
(132, '盧峻翔', '0912345678', '123@gmail.com'),
(133, '許仕毅', '0987654321', '456@gmail.com'),
(134, '李金龍', '0974185296', '852@gmail.com'),
(135, '周儀翔', '0975395162', '789@gmail.com'),
(136, '123', '123', '123@gmail.com'),
(137, '2123', '1442', '14424@gmail.com'),
(138, '李金龍', '0975901492', 'a1113325@mail.nuk.edu.tw'),
(139, '李金龍', '0975901492', 'a1113325@mail.nuk.edu.tw'),
(140, '123', '123', '123@gmail.com'),
(141, '123', '123', '123@gmail.com');

-- --------------------------------------------------------

--
-- 資料表結構 `image_gallery`
--

CREATE TABLE `image_gallery` (
  `image_id` int(2) NOT NULL,
  `image_name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `image_gallery`
--

INSERT INTO `image_gallery` (`image_id`, `image_name`, `image`) VALUES
(1, 'Moroccan Tajine', '58146_Moroccan Chicken Tagine.jpeg'),
(2, 'Italian Pasta', 'img_1.jpg'),
(3, 'Cook', 'img_2.jpg'),
(4, 'Pizza', 'img_3.jpg'),
(5, 'Burger', 'burger.jpeg');

-- --------------------------------------------------------

--
-- 資料表結構 `in_order`
--

CREATE TABLE `in_order` (
  `id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `menu_id` int(5) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `in_order`
--

INSERT INTO `in_order` (`id`, `order_id`, `menu_id`, `quantity`) VALUES
(223, 89, 1, 1),
(224, 89, 11, 1),
(225, 90, 1, 1),
(226, 90, 11, 1),
(227, 90, 20, 1),
(228, 91, 1, 1),
(229, 92, 1, 1),
(230, 92, 2, 1),
(231, 93, 1, 1),
(232, 93, 5, 1),
(233, 93, 8, 1),
(234, 93, 19, 1),
(235, 93, 20, 1),
(236, 94, 1, 1),
(237, 94, 6, 1),
(238, 94, 12, 1),
(239, 94, 19, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(5) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_description` varchar(255) NOT NULL,
  `menu_price` int(6) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `category_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_description`, `menu_price`, `menu_image`, `category_id`) VALUES
(1, '牛肉蛋炒飯', '我們的牛肉蛋炒飯是一道經典且美味的料理，精選上等牛肉，搭配新鮮雞蛋和香軟米飯，經過大火快炒，使每一粒米飯都充分吸收了牛肉的鮮香。這道菜色澤金黃，口感豐富，肉嫩味美，是您用餐的不二選擇。無論是午餐還是晚餐，都是令人垂涎的美味享受。快來品嚐我們的招牌牛肉蛋炒飯，讓您的味蕾體驗前所未有的滿足！', 95, '牛肉炒飯.jpg', 1),
(2, '蛋炒飯', '我們的招牌蛋炒飯絕對讓您回味無窮！每一碗蛋炒飯都是用新鮮的雞蛋、香氣四溢的蔥花以及精選的長粒米炒製而成。米飯粒粒分明，炒得金黃香脆，配上我們獨特的調味料，讓您每一口都充滿幸福感。我們的蛋炒飯都是您不可錯過的美味選擇！', 65, '蛋炒飯.jpg', 1),
(3, '蝦仁蛋炒飯', '我們餐廳的蝦仁蛋炒飯選用新鮮的蝦仁和優質的雞蛋，搭配粒粒分明的香米飯，再加上秘製的調料，炒至金黃酥香。每一口都能品嘗到蝦仁的鮮甜和雞蛋的嫩滑，是一道色香味俱全的美食。快來嘗試，保證讓你一吃難忘！', 95, '蝦仁蛋炒飯.jpg', 1),
(5, '鮭魚蛋炒飯', '我們的鮭魚蛋炒飯是一道令人垂涎的特色菜品。選用新鮮的鮭魚搭配鬆軟的炒飯，再加入香濃的雞蛋和精心挑選的配料，完美融合成一盤色香味俱全的美食。無論您是愛吃海鮮的饕客，還是尋求新鮮口感的食客，我們的鮭魚蛋炒飯都能滿足您的味蕾。快來嘗試吧！', 100, '鮭魚蛋炒飯.jpg', 1),
(6, '鍋燒意麵', '我們的鍋燒意麵選用新鮮食材精心烹製，麵條Q彈有勁，湯頭鮮美濃郁，搭配豐富的配料如蝦仁、肉片、青菜和雞蛋，口感層次豐富，讓每一口都充滿驚喜。無論是寒冬還是炎夏，一碗熱騰騰的鍋燒意麵都能溫暖你的心與胃。來波西麵食館，體驗這道充滿愛與用心的美味吧！', 85, '鍋燒意麵.jpg', 2),
(7, '牛肉炒麵', '我們的牛肉炒麵是一道招牌菜，選用新鮮的優質牛肉，搭配Q彈的麵條和多種新鮮蔬菜，以秘製醬料精心炒製而成。每一口都充滿香氣和風味，讓人回味無窮。來波西麵食館，享受這道美味的經典牛肉炒麵，絕對讓你食指大動！', 90, '牛肉炒麵.jpg', 2),
(8, '炸醬麵', '我們的炸醬麵絕對是您不容錯過的美味佳餚。採用新鮮的手工麵條，配上秘製的醬料，醬香濃郁、肉質鮮美，再搭配新鮮的蔬菜，口感豐富。一口下去，讓您體驗到傳統與創新融合的絕妙滋味。快來試試我們的炸醬麵，保證讓您吃了還想再來！', 65, '炸醬麵.jpg', 2),
(9, '餛飩麵', '我們的餛飩麵是您不可錯過的美味選擇。我們使用新鮮的食材，精心製作每一碗麵。餛飩皮薄餡多，湯頭清爽，麵條Q彈有勁，搭配上特製的湯底和豐富的配料，每一口都能帶給您極致的美味享受。來波西麵食館，品味我們的餛飩麵，感受家一般的溫暖和美好。', 80, '餛飩麵.jpg', 2),
(11, '蛤蜊湯', '我們餐廳的蛤蜊湯是一道充滿海味的美味佳餚。每一口湯都融合了新鮮的蛤蜊、精選的調味料和精心熬製的高湯，味道鮮美濃郁。這道湯清爽而濃郁，口感豐富，絕對能夠為您帶來一場美味的享受。', 55, '蛤蜊湯.jpg', 3),
(12, '貢丸湯', '我們的貢丸湯是餐廳的招牌之一！每一碗都是用新鮮的食材烹調而成，湯頭鮮美濃郁，貢丸則是彈牙十足。一碗熱騰騰的貢丸湯都能為您帶來滿滿的幸福感。', 40, '貢丸湯.jpg', 3),
(16, '玉米濃湯', '我們餐廳的玉米濃湯以新鮮的玉米為主要材料，加入精心挑選的調味料和香料，經過精心烹製而成。這道湯濃郁滑順，口感豐富，帶有玉米的天然甜味，是一道美味可口的開胃佳餚。我们的玉米濃湯不僅味美，而且營養豐富，為您的用餐體驗增添了一份美好滋味。', 40, '玉米濃湯.jpg', 3),
(17, '豬耳朵', '', 45, '豬耳朵.jpg', 4),
(18, '燙青菜', '', 40, '燙青菜.jpg', 4),
(19, '自製泡菜', '', 40, '泡菜.jpg', 4),
(20, '滷蛋', '', 15, '滷蛋.jpg', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `menu_categories`
--

CREATE TABLE `menu_categories` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `menu_categories`
--

INSERT INTO `menu_categories` (`category_id`, `category_name`) VALUES
(1, '飯類'),
(2, '麵類'),
(3, '湯品'),
(4, '小菜');

-- --------------------------------------------------------

--
-- 資料表結構 `placed_orders`
--

CREATE TABLE `placed_orders` (
  `order_id` int(5) NOT NULL,
  `order_time` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `placed_orders`
--

INSERT INTO `placed_orders` (`order_id`, `order_time`, `client_id`, `delivery_address`, `delivered`, `canceled`, `cancellation_reason`) VALUES
(89, '2024-06-12 18:37:00', 132, '高雄市楠梓區大學三十五路400巷5號', 1, 0, NULL),
(90, '2024-06-12 19:33:00', 135, '高雄市楠梓區大學西路237巷40號', 0, 0, NULL),
(91, '2024-06-12 20:10:00', 136, '123', 0, 1, ''),
(92, '2024-06-13 00:37:00', 137, '124', 0, 0, NULL),
(93, '2024-06-13 01:08:00', 139, '高雄市楠梓區大學西路237巷40號', 0, 0, NULL),
(94, '2024-06-13 01:29:00', 141, '高雄市', 0, 1, '123');

-- --------------------------------------------------------

--
-- 資料表結構 `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(5) NOT NULL,
  `date_created` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `selected_time` datetime NOT NULL,
  `nbr_guests` int(2) NOT NULL,
  `table_id` int(3) NOT NULL,
  `liberated` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `date_created`, `client_id`, `selected_time`, `nbr_guests`, `table_id`, `liberated`, `canceled`, `cancellation_reason`) VALUES
(13, '2024-06-12 18:38:00', 133, '2024-06-14 18:37:00', 2, 1, 0, 0, NULL),
(14, '2024-06-12 19:26:00', 134, '2024-06-16 19:25:00', 4, 1, 0, 1, ''),
(15, '2024-06-13 01:08:00', 138, '2024-06-20 01:07:00', 4, 1, 0, 1, ''),
(16, '2024-06-13 01:29:00', 140, '2024-06-20 01:28:00', 4, 1, 0, 1, '123');

-- --------------------------------------------------------

--
-- 資料表結構 `tables`
--

CREATE TABLE `tables` (
  `table_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tables`
--

INSERT INTO `tables` (`table_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `user_id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `full_name`, `password`) VALUES
(1, 'admin_user', 'user_admin@gmail.com', 'User Admin', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

-- --------------------------------------------------------

--
-- 資料表結構 `website_settings`
--

CREATE TABLE `website_settings` (
  `option_id` int(5) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `website_settings`
--

INSERT INTO `website_settings` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'restaurant_name', 'PERCY RESTAURANT'),
(2, 'restaurant_email', 'a1113366@mail.nuk.edu.tw'),
(3, 'admin_email', 'a1113325@mail.nuk.edu.tw'),
(4, 'restaurant_phonenumber', '07-5919000'),
(5, 'restaurant_address', '811高雄市楠梓區高雄大學路700號');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- 資料表索引 `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`image_id`);

--
-- 資料表索引 `in_order`
--
ALTER TABLE `in_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu` (`menu_id`),
  ADD KEY `fk_order` (`order_id`);

--
-- 資料表索引 `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `FK_menu_category_id` (`category_id`);

--
-- 資料表索引 `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_client` (`client_id`);

--
-- 資料表索引 `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- 資料表索引 `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`option_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `image_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `in_order`
--
ALTER TABLE `in_order`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `placed_orders`
--
ALTER TABLE `placed_orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `option_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `in_order`
--
ALTER TABLE `in_order`
  ADD CONSTRAINT `fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`menu_id`),
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `placed_orders` (`order_id`);

--
-- 資料表的限制式 `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `FK_menu_category_id` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`category_id`);

--
-- 資料表的限制式 `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
