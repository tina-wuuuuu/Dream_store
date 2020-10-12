-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2020 年 10 月 12 日 07:59
-- 伺服器版本: 5.7.31-0ubuntu0.18.04.1
-- PHP 版本： 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `store`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Customers`
--

CREATE TABLE `Customers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthday` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用戶';

--
-- 資料表的匯出資料 `Customers`
--

INSERT INTO `Customers` (`id`, `name`, `password`, `phone`, `birthday`) VALUES
('0', '0', '0', '0987654321', 1603296000000),
('1', '1', '1', '1234567890', 1603238400000),
('22', '22', '22', '1234567890', 1603209600000),
('3', '3', '3', '1234567890', 1603209600000),
('aa', 'aa', 'aa', '1234567890', 1603929600000),
('f', 'f', 'f', '1234567890', 1603209600000),
('m', 'm', 'm', '1234567890', 1603814400000),
('q', 'q', 'q', '1234567890', 1602518400000),
('zz', 'zz', 'zz', '1234567890', 1602115200000);

-- --------------------------------------------------------

--
-- 資料表結構 `Goods`
--

CREATE TABLE `Goods` (
  `id` int(128) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) DEFAULT NULL COMMENT '單價',
  `description` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '產品介紹',
  `image` varchar(128) DEFAULT NULL COMMENT '圖片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Goods`
--

INSERT INTO `Goods` (`id`, `name`, `price`, `description`, `image`) VALUES
(1, '果凍加點果糖', 10000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家)\r\n\r\n“At the moment of commitment the entire universe conspires to assist you.”\r\n\r\n– Johann Wolfgang von Goethe, Writer\r\n\r\n \r\n\r\n \r\n\r\n「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員)\r\n\r\n“Be yourself. The world worships the original.”– Ingrid Bergman, Actress\r\n\r\n \r\n\r\n「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家) ', '1.jpg'),
(2, '一起吃海草', 20000, '一個兩個三個四個\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家)\r\n\r\n“At the moment of commitment the entire universe conspires to assist you.”\r\n\r\n– Johann Wolfgang von Goethe, Writer\r\n\r\n \r\n\r\n \r\n\r\n「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員)\r\n\r\n“Be yourself. The world worships the original.”– Ingrid Bergman, Actress\r\n\r\n \r\n\r\n「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家) ', '2.jpg'),
(3, '孤單與一點點勇敢', 30000, '五個六個七個八個\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '3.jpg'),
(4, '布丁淋上焦糖', 40000, '天花板總是有許多\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '4.jpg'),
(5, '爆米花綜合口味', 50000, '許多數不完的彩虹燈！\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '5.jpg'),
(6, '無所畏懼向前衝', 60000, '紅色紫色藍色灰色\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '6.jpg'),
(7, '來去山中住一晚', 70000, '綠色白色黑色黃色\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '7.jpg'),
(8, '邁向世界盡頭', 80000, '頭頂上總是有許多 許多顏色的彩虹燈！\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '8.jpg'),
(9, '商品名稱想不出來了', 90000, '轉吧 轉啊 七彩霓虹燈\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '9.jpg'),
(10, '也太多要改了吧', 100000, '讓我看透這一個人生\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '10.jpg'),
(11, '超累的', 10000, '讓那沒有答案的疑問\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '1.jpg'),
(12, '江郎才盡', 20000, '通通掉進雨後的水坑！\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '2.jpg'),
(13, '今天晚上來點', 30000, '轉吧 轉吧 流汗的人們 \r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '3.jpg'),
(14, '明天要吃什麼呢', 40000, '忘掉憂愁和煩悶\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '4.jpg'),
(15, '做點好夢', 50000, '隨著那穿腦的歌聲\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '5.jpg'),
(16, '肚子餓', 60000, '證明這還是彩色的人生!\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '6.jpg'),
(17, '這是一個商品', 70000, '今夜又來到絢麗的PUB\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '7.jpg'),
(18, '誰會記得夢阿', 80000, '看看有沒有開心果\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '8.jpg'),
(19, '我改不下去了', 90000, '明日又是期待的假日\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '9.jpg\r\n'),
(20, '我想回家', 100000, '今晚一定要用力跳... 舞！\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '10.jpg\r\n'),
(21, '假日要幹嘛', 10000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '1.jpg'),
(22, '肚子好餓 part2', 20000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '2.jpg'),
(23, '淒慘霓虹燈～轉啊轉', 30000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '3.jpg'),
(24, '暈頭轉向', 40000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '4.jpg'),
(25, '眼睛好酸', 50000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n「從你下定決心的那一刻起，全世界都將聯合起來協助你。」– 歌德 (作家) “At the moment of commitment the entire universe conspires to assist you.” – Johann Wolfgang von Goethe, Writer 「做你自己，這世界崇拜原創性。」– 英格麗·褒曼 (女演員) “Be yourself. The world worships the original.”– Ingrid Bergman, Actress 「如果你不追求你想要的，你永遠都不會得到；如果你不問，答案永遠都是否定的；如果你不往前走，你永遠都是留在原地。」– 諾拉．羅伯特 (小說家)', '5.jpg'),
(26, '淒慘霓虹燈～轉啊轉', 60000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '6.jpg'),
(27, '淒慘霓虹燈～轉啊轉', 70000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '7.jpg'),
(28, '淒慘霓虹燈～轉啊轉', 80000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '8.jpg'),
(29, '淒慘霓虹燈～轉啊轉', 90000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '9.jpg'),
(30, '淒慘霓虹燈～轉啊轉', 100000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '10.jpg'),
(31, '淒慘霓虹燈～轉啊轉', 10000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '1.jpg'),
(32, '淒慘霓虹燈～轉啊轉', 20000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '2.jpg'),
(33, '淒慘霓虹燈～轉啊轉', 30000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '3.jpg'),
(34, '淒慘霓虹燈～轉啊轉', 40000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '4.jpg'),
(35, '淒慘霓虹燈～轉啊轉', 50000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '5.jpg'),
(36, '淒慘霓虹燈～轉啊轉', 60000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '6.jpg'),
(37, '淒慘霓虹燈～轉啊轉', 70000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '7.jpg'),
(38, '淒慘霓虹燈～轉啊轉', 80000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '8.jpg'),
(39, '淒慘霓虹燈～轉啊轉', 90000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '9.jpg'),
(40, '淒慘霓虹燈～轉啊轉', 100000, '看那七彩的霓虹燈 它的發明者是愛迪生\r\n\r\n「當你面臨困難的處境，不要說『為何是我？』，說『來試試我。』」– 道恩‧強森 (職業摔角手)\r\n\r\n“When life puts you in tough situations, don’t say ‘Why Me?’ Just say ‘Try Me.’”\r\n\r\n– Dwayne Johnson, Professional Wrestler\r\n\r\n \r\n\r\n「快樂不取決於擁有什麼，或手上的金子，快樂取決於心靈。」– 德謨克利特 (哲學家)\r\n\r\n“Happiness resides not in possessions, and not in gold, happiness dwells in the soul.”\r\n\r\n– Democritus, Philosopher\r\n\r\n \r\n\r\n「悲觀者抱怨風向，樂觀者期待風向改變，務實的人調整帆布。」– 威廉‧亞瑟‧沃德 (學者)', '10.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `OrderLineItems`
--

CREATE TABLE `OrderLineItems` (
  `id` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `orderid` varchar(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `OrderLineItems`
--

INSERT INTO `OrderLineItems` (`id`, `goodsid`, `orderid`, `quantity`, `sub_total`) VALUES
(62, 5, '160214470444027', 3, 150000),
(63, 1, '160215662774089', 1, 10000),
(64, 5, '160215662774089', 1, 50000),
(65, 14, '160238418543750', 2, 80000);

-- --------------------------------------------------------

--
-- 資料表結構 `Orders`
--

CREATE TABLE `Orders` (
  `id` varchar(20) NOT NULL,
  `order_date` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1 代表未確認 0 代表已確認',
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `Orders`
--

INSERT INTO `Orders` (`id`, `order_date`, `status`, `total`) VALUES
('160214470444027', 1602144704440, 1, 150000),
('160215662774089', 1602156627740, 1, 60000),
('160238418543750', 1602384185437, 1, 80000);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `Goods`
--
ALTER TABLE `Goods`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `OrderLineItems`
--
ALTER TABLE `OrderLineItems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Relationship_3` (`orderid`),
  ADD KEY `FK_Relationship_4` (`goodsid`);

--
-- 資料表索引 `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `Goods`
--
ALTER TABLE `Goods`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;
--
-- 使用資料表 AUTO_INCREMENT `OrderLineItems`
--
ALTER TABLE `OrderLineItems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `OrderLineItems`
--
ALTER TABLE `OrderLineItems`
  ADD CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`orderid`) REFERENCES `Orders` (`id`),
  ADD CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`goodsid`) REFERENCES `Goods` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
