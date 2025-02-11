-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2025 г., 11:32
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Виды объектов недвижимости: что говорит закон', 'Сделки с недвижимостью — одни из самых распространенных в повседневной практике. Чаще всего под понятием недвижимости мы представляем привычные объекты — дома и квартиры', 'https://metrika.com/sites/default/files/news/2022/01/img_9707.jpg', 3, '2022-02-07 12:21:35', '2022-02-07 12:21:37'),
(2, 'Новая климатическая визуализация — для всех и для каждого', 'Как я уже недавно рассказывал', 'https://habrastorage.org/r/w1560/getpro/habr/upload_files/e24/1f9/9be/e241f99be38e8132b8afb173f30dd246.jpg', 2, '2022-02-07 12:21:38', '2022-02-07 12:21:40'),
(3, 'Том Холланд хочет сняться в экранизации видеоигры \"Джек и Декстер\"', 'Том Холланд, исполняющий одну из главных ролей в предстоящей киноадаптации популярной серии видеоигр \"Анчартед: На картах не значится\", хотел бы сняться в экранизации еще одной видеоигры компании Naughty Dog. В интервью GameSpot актер признался, что его мечтой является адаптация серии трехмерных игр \"Jak and Daxter\". Холланд видит себя в роли Джека, а производство, по его мнению, надо поручить студии A24, для того, чтобы фильм был более мрачным и непредсказуемым.', 'https://www.kinonews.ru/insimgs/2022/newsimg/newsimg105205.jpg', 1, '2022-02-07 12:22:40', '2022-02-07 12:22:42');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Новости кино', '2022-02-07 12:19:02', '2022-02-07 12:19:06'),
(2, 'Программирование', '2022-02-07 12:19:18', '2022-02-07 12:19:21'),
(3, 'Недвижимость', '2022-02-07 12:19:38', '2022-02-07 12:19:40');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `author_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `article_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `body`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'Ivan', 'Круто!', 1, '2022-02-07 12:23:00', '2022-02-07 12:23:01');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `price` double DEFAULT NULL,
  `count` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `count`) VALUES
(2, '', '/////////<<<3333       ', 20, 30),
(3, 'груша', 'вкусные груши ', 40, 50),
(5, '', 'HHHHHHHHHHUUUUUUUUUUUUIIIIIIIIIIIIIIIIII', 100, 9),
(6, 'product1', 'some text', 100, 9),
(7, 'product1', 'some text', 100, 9),
(8, 'product1', 'some text', 100, 9),
(9, 'product1', 'some text', 100, 9),
(10, 'brelok', 'aqua', 14, 88),
(11, 'brelok', 'aqua', 1400, 88),
(12, 'sfasdfsdaf', 'sfsdf', 66, 88),
(13, 'sfasdfsdaf', 'sfsdf', 66, 88),
(14, 'sfasdfsdaf', 'sfsdf', 66, 88),
(15, 'sfasdfsdaf', 'sfsdf', 66, 88),
(16, 'sfasdfsdaf', 'sfsdf', 66, 88),
(17, 'яблоко', '                красное яблочко            ', 55, 40),
(18, 'яблоко', '                красное яблочко            ', 55, 40),
(19, 'яблоко', '                красное яблочко            ', 55, 40),
(20, 'яблоко', '                красное яблочко            ', 55, 40),
(21, 'яблоко', '                красное яблочко            ', 55, 40),
(22, 'яблоко', '                красное яблочко            ', 55, 40);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
