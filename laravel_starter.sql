-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2023 at 04:39 PM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_starter`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `event` varchar(191) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Et corrupti sint ut in\",\"slug\":\"et-corrupti-sint-ut-in\",\"intro\":\"Qui nemo dicta adipisci accusamus ipsa blanditiis enim. Est pariatur velit voluptas impedit labore. Illo ducimus est culpa quia in.\",\"content\":\"Aut molestias ut ea qui tempora qui enim omnis. Nemo rerum ut esse ut et ut. Similique non eum cupiditate sequi minima. Et ut assumenda voluptates exercitationem libero.\\n\\nEt aut quas aut sunt. Earum sit rerum sit quam deserunt aut. Nobis quisquam recusandae non saepe distinctio omnis enim.\\n\\nNisi vero sed voluptas et. Ullam atque doloremque nesciunt ratione id. Deserunt natus dolorem a repellat labore omnis cum. Optio aspernatur odio enim consequatur et debitis sed.\\n\\nAperiam est culpa voluptate quia nisi ex ea cum. Dolore quos aut illo et. Molestiae velit consequuntur libero dolorem ex ut voluptatum. Minus et ut dolores deserunt est ea facilis.\\n\\nOptio possimus perferendis autem sequi. Quae dolor aperiam beatae non sunt. Ut rem minus sint minima. Qui quisquam laboriosam autem optio odit voluptate omnis.\\n\\nAmet at quae numquam vel est totam natus. Excepturi suscipit maxime voluptas ea vero. Est soluta omnis nam voluptas in vero.\\n\\nCommodi necessitatibus id dicta eaque necessitatibus labore. Molestiae asperiores tempora nemo iste sint enim. Alias nesciunt officiis tenetur cupiditate est quos non.\",\"type\":\"Blog\",\"category_id\":4,\"category_name\":\"Sed illum\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=1\",\"meta_title\":\"Et Corrupti Sint Ut In\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(2, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Cum sint odit ut qui sunt\",\"slug\":\"cum-sint-odit-ut-qui-sunt\",\"intro\":\"Rem ea voluptates possimus delectus voluptatem ut. Ut et quis amet facere excepturi alias. Nihil rerum id provident magni atque.\",\"content\":\"Quos et hic id mollitia sint totam ab. Sequi odit minima aut vel est. Deleniti quod et ea aut.\\n\\nEnim hic reiciendis cupiditate officia. Quia ipsa magnam qui possimus laudantium voluptatem. Harum quos suscipit quaerat nisi voluptatum dolorem.\\n\\nIure error delectus qui quaerat eius. In qui et minus excepturi doloremque. Sit aliquam maxime repellat perspiciatis illum debitis impedit eum. Illo veritatis in exercitationem aut delectus dicta aut.\\n\\nDucimus beatae sed deserunt minus. Necessitatibus nobis possimus molestiae vel libero quis reprehenderit. Quam molestiae ab eaque quisquam sed et non.\\n\\nId ut quis at in perferendis aut quae ullam. Ut a maiores est porro voluptates. Ipsa quibusdam magni voluptatem voluptas quasi sit enim.\",\"type\":\"Article\",\"category_id\":5,\"category_name\":\"Iure dolorem\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=2\",\"meta_title\":\"Cum Sint Odit Ut Qui Sunt\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(3, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Ut et nihil aperiam\",\"slug\":\"ut-et-nihil-aperiam\",\"intro\":\"Velit autem quibusdam earum. Et numquam nisi velit dolore quis eius. Ab debitis beatae culpa tempora unde.\",\"content\":\"Ipsa corrupti et voluptate iure in. Eaque omnis libero aliquid et natus tempora. Laudantium culpa ex ut rerum.\\n\\nSit hic magni temporibus. Iste repellat sit id debitis. Sapiente nisi expedita veniam cupiditate.\\n\\nConsequatur totam ut totam quia nobis. Perspiciatis accusantium expedita quas earum ut. Omnis culpa et reiciendis architecto rerum accusamus aut aut.\\n\\nEarum iure quae harum minima. Qui sit atque repellat ut accusantium sapiente. Voluptatibus error recusandae ducimus eius qui ea culpa. Velit velit eum esse vel quia debitis distinctio. Voluptatem provident voluptas eveniet.\\n\\nAut omnis rerum impedit qui praesentium. Eos saepe commodi natus aut qui ipsum quod. Placeat reprehenderit quia dolores voluptatem nulla vel molestiae voluptas. Cupiditate totam nisi facilis mollitia eum.\\n\\nUt dolorem voluptates minus. Omnis possimus fugit nesciunt accusantium voluptatum. Sit non provident doloremque nisi architecto alias.\\n\\nConsectetur est est quo et harum ut cum. Occaecati in nam consequatur perspiciatis. Non ab asperiores sapiente consequatur aut enim.\",\"type\":\"Article\",\"category_id\":4,\"category_name\":\"Sed illum\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=3\",\"meta_title\":\"Ut Et Nihil Aperiam\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(4, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Aut temporibus et aut\",\"slug\":\"aut-temporibus-et-aut\",\"intro\":\"Ut ut qui hic amet qui. Saepe omnis voluptatum magni. Ipsum eos enim nihil est.\",\"content\":\"Aut facilis minima vitae. Laborum tempora et necessitatibus ut tempora magnam non. Qui rerum id et reprehenderit est quam ut. Ut natus in repudiandae.\\n\\nCorrupti quia tenetur rerum dolor dolorem qui rerum. Quisquam dolores qui eveniet distinctio. Perspiciatis voluptas deleniti sit autem fugiat.\\n\\nAccusamus aut voluptas non saepe voluptas voluptatibus. Iusto corporis nihil facilis dolorum. Ea repudiandae maxime quasi cupiditate asperiores et. Tenetur est ullam ratione dolorem dolor.\\n\\nVoluptatem sed adipisci ut. Nulla similique fugit et possimus voluptatem eligendi ut ex. Aut ad odio sint tenetur incidunt amet.\\n\\nPariatur voluptatem non error distinctio occaecati eligendi et. Id in cum fuga cumque voluptatibus perferendis. Consectetur dolorem ut qui sint. Totam aut eaque excepturi. Ut autem doloribus qui excepturi.\\n\\nExpedita dolorem mollitia numquam deserunt. Est iste molestiae in quaerat occaecati rerum. Corporis id id blanditiis voluptatum similique iure. Non quas asperiores recusandae iste id debitis aut.\",\"type\":\"Article\",\"category_id\":5,\"category_name\":\"Iure dolorem\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=4\",\"meta_title\":\"Aut Temporibus Et Aut\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(5, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Earum officia qui omnis\",\"slug\":\"earum-officia-qui-omnis\",\"intro\":\"Sint provident velit veniam dolor. Esse itaque id laudantium. Delectus quod nam ut.\",\"content\":\"Maxime explicabo vitae illum sint. Tempora qui ut occaecati dolorem. Voluptatem cum culpa ut eum vitae.\\n\\nMolestias voluptatibus veritatis sit. Et corporis repellendus veniam omnis suscipit. A enim necessitatibus id. Dolorum possimus corrupti nihil animi.\\n\\nId voluptas nobis eaque expedita minima. Est magni nesciunt aut veritatis incidunt facilis. Molestiae commodi vel eveniet sed.\\n\\nIncidunt quo dolore impedit. Et necessitatibus rerum est doloribus. Accusantium quibusdam dicta qui autem quam amet nostrum. Aut molestiae repellendus hic sed a ea.\\n\\nExercitationem numquam aut ab molestiae qui. Omnis ex quae id illo. Deleniti quas ab dicta aut harum iste ratione.\\n\\nNihil eligendi qui debitis. Rerum qui et magni magnam ut et. Quidem aut perspiciatis ad non sapiente.\",\"type\":\"Blog\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=5\",\"meta_title\":\"Earum Officia Qui Omnis\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(6, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Ea quos distinctio aperiam\",\"slug\":\"ea-quos-distinctio-aperiam\",\"intro\":\"Architecto nisi voluptatem odio vero dolore. Cum omnis quia rerum animi. Nesciunt ad id fuga a ipsa at nemo id.\",\"content\":\"Dolorum aut qui quia quae ratione provident provident repellendus. Quos vero repellat alias dolores quia distinctio soluta.\\n\\nCupiditate laudantium totam et ab ea eos consequatur voluptas. Optio libero nisi quis qui. Qui commodi ea rerum facere suscipit. Cupiditate temporibus blanditiis praesentium similique. Iste et nesciunt quidem repudiandae quia.\\n\\nAutem quia ut repellendus commodi tempore numquam assumenda. Quia possimus veniam qui dicta commodi. Consequuntur ut aliquam officiis molestiae qui. Aut nostrum dolorem sint iste porro similique rem.\\n\\nCumque recusandae qui sint pariatur eveniet odio. Quis aperiam et ad dolorem. Molestias nulla quaerat veniam repudiandae rem aut maxime.\\n\\nVelit similique sapiente esse dicta eius. Laboriosam explicabo tempora non qui totam. Sapiente est eligendi et sed et. Dolorum eligendi sit et commodi impedit vitae velit.\\n\\nNecessitatibus culpa ullam quis autem. Quam voluptas est et recusandae. Maiores qui aut eveniet totam quisquam autem.\",\"type\":\"News\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=6\",\"meta_title\":\"Ea Quos Distinctio Aperiam\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(7, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Delectus ea officia autem\",\"slug\":\"delectus-ea-officia-autem\",\"intro\":\"Eligendi qui libero et et consectetur eos nemo. Et dolorem similique minima rerum ipsam numquam sint. Deleniti voluptas sit quisquam repudiandae dicta. Sed assumenda et sunt qui numquam quos rerum. Similique optio sed est ipsam a soluta veniam.\",\"content\":\"Necessitatibus nulla quam reprehenderit cumque. Quae reprehenderit similique quo omnis. Earum itaque omnis vitae quis.\\n\\nCorporis ut eligendi animi. Nam doloremque autem atque vero unde sunt eum. Et ut qui ut numquam impedit.\\n\\nExercitationem et provident labore sit voluptates consequatur. Non qui consectetur saepe quasi. Et error quisquam et.\\n\\nNostrum qui dolor est beatae tempora. Eligendi a ea aliquid nihil magni perspiciatis. Voluptatum nisi sed sint voluptas placeat magni maiores.\\n\\nVoluptatem ab quasi sunt laborum distinctio et ea. Ut magni beatae commodi tempora consectetur. Repellendus earum ea velit iure doloribus. Dolor mollitia tempora voluptas.\\n\\nQuasi cum ratione nobis omnis error quis minus. Molestiae voluptatem deserunt dolor vitae consectetur et amet.\",\"type\":\"Article\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=7\",\"meta_title\":\"Delectus Ea Officia Autem\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(8, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Saepe rerum aspernatur ut\",\"slug\":\"saepe-rerum-aspernatur-ut\",\"intro\":\"Soluta in doloribus inventore est omnis. Reprehenderit dignissimos architecto in in laudantium est.\",\"content\":\"Omnis reiciendis rerum ex ipsam exercitationem doloremque nemo. Consequuntur sed iusto dolore repudiandae eos non exercitationem. Autem qui dolorem doloremque expedita libero ea qui a. Eum harum animi laudantium recusandae architecto aliquid ratione et.\\n\\nArchitecto cumque repellendus ea. Dolor doloremque vero voluptatem dicta est ut quia. Molestiae ut molestiae ea dolor. Eos ducimus ea consectetur quasi ab.\\n\\nEa suscipit quasi corrupti eaque corrupti assumenda vero. Iste quod sit fuga ipsum cupiditate. Nisi dolorum non eos non quo praesentium laborum. Quibusdam sapiente quis blanditiis quia cumque.\\n\\nFacere sed qui aut omnis. Aut ut cupiditate beatae vel. Perferendis enim necessitatibus doloremque.\\n\\nAnimi aut deserunt laborum perspiciatis facilis aut rerum velit. Delectus ea est ut adipisci veritatis est deleniti natus. Consequatur autem in dolorum at dolore qui voluptas omnis. Accusamus harum consequatur et.\\n\\nLaborum reiciendis nemo aliquam error mollitia illo explicabo. Aliquid dolorem beatae fugiat quo ut voluptas provident. Consectetur id omnis rerum provident dicta iste et dolor.\\n\\nVoluptatem qui aliquam ratione ab maiores dolor. Dignissimos temporibus saepe rem quis soluta officiis consequuntur. Necessitatibus in quo dignissimos eos. Dolor et repellendus quisquam rerum.\",\"type\":\"Blog\",\"category_id\":4,\"category_name\":\"Sed illum\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=8\",\"meta_title\":\"Saepe Rerum Aspernatur Ut\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(9, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Sit ut porro quae\",\"slug\":\"sit-ut-porro-quae\",\"intro\":\"Voluptatem qui repudiandae et nihil aut. Odio dolor excepturi repudiandae id similique reiciendis enim. Dolorum cum sed neque quasi consequuntur adipisci. Eum architecto itaque sequi ea qui eum perferendis.\",\"content\":\"Aut voluptatum consectetur voluptas nihil blanditiis vel. Nobis aut unde aliquid ullam blanditiis vel. Et molestias aut veritatis sunt eos similique. Ut et hic quasi perferendis laboriosam voluptatum quibusdam.\\n\\nAt accusamus nam sit non. Ut harum fugiat id adipisci necessitatibus accusamus error. Deleniti veniam numquam voluptates est.\\n\\nOmnis illum iste velit autem quas nisi quia. Rerum facere non quis rerum ea libero sequi. Modi in blanditiis eligendi ut quam quaerat. Laboriosam fugiat molestiae fuga.\\n\\nVero porro suscipit nihil sit. Saepe temporibus aliquam voluptas velit cumque exercitationem eveniet. Ullam commodi id ab eius quia blanditiis.\\n\\nDolores et quam quidem enim nemo adipisci autem. Provident rem fugit quia minima in quo mollitia error. Aspernatur deleniti atque tenetur quis repellendus unde consequatur. Voluptas vel consectetur laborum veniam aut explicabo at.\",\"type\":\"Article\",\"category_id\":4,\"category_name\":\"Sed illum\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=9\",\"meta_title\":\"Sit Ut Porro Quae\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(10, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Sit quidem commodi quo\",\"slug\":\"sit-quidem-commodi-quo\",\"intro\":\"Harum voluptatem ex corporis pariatur similique quibusdam consequatur. Aut natus voluptatem quis omnis et quia. Deserunt velit et et vero. Reiciendis sit qui sed sit similique.\",\"content\":\"Deleniti neque et et nostrum neque similique. Voluptatum quasi sed accusantium voluptas eum facere.\\n\\nPerspiciatis corrupti asperiores laudantium error quaerat eius et. Sint aut quae culpa ea laudantium.\\n\\nRepellendus dolorem consequatur quibusdam dolor voluptatibus et. Perferendis vel ea quis atque molestiae. Sunt dolorem corrupti magni cumque.\\n\\nEst sed iure magni eveniet laudantium quae corrupti. Qui porro repellat eaque sunt.\\n\\nDicta sunt molestiae aut consequuntur corrupti nam reprehenderit soluta. Est sint harum odit illo officia error. Sunt occaecati veritatis eligendi pariatur. Autem suscipit expedita quisquam. Consequatur cumque vel voluptate vero sit possimus autem.\",\"type\":\"Blog\",\"category_id\":3,\"category_name\":\"Aut earum\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=10\",\"meta_title\":\"Sit Quidem Commodi Quo\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(11, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Est eos ut velit\",\"slug\":\"est-eos-ut-velit\",\"intro\":\"Suscipit exercitationem beatae et porro non optio qui ut. Aut vel dignissimos nulla quia. Perspiciatis culpa voluptatibus asperiores dicta voluptatibus.\",\"content\":\"Quae tempore voluptas sequi id sapiente. Recusandae et laudantium rem ut qui veniam. Enim fugiat velit repellat aut delectus sapiente.\\n\\nDoloribus ducimus magnam quia atque. Ducimus cum illum doloribus quia temporibus. Eveniet deleniti in dolor quis. Qui officia qui repudiandae quia quis et ad.\\n\\nImpedit nam itaque non quidem eaque consequatur ut. Unde laboriosam sapiente et ea possimus temporibus sapiente voluptate. Quod amet est non commodi et porro. Qui laboriosam mollitia porro minima. Praesentium voluptas perspiciatis quia rem dignissimos.\\n\\nCulpa tempore placeat ducimus et non aut. Quos autem officiis quam sit voluptas dolorum. Quo fugit ut beatae deserunt error tempora et.\\n\\nAut nihil dolorum quod est ad reiciendis provident. Laudantium ratione voluptas aut eos id quaerat repellat. Vero placeat voluptas sunt aliquid ea. Quis autem optio quos commodi sit eum modi.\\n\\nLibero placeat officiis non architecto perferendis. Repellendus non aut qui. Porro est tempora explicabo sed voluptatem consequatur. Et voluptas maiores et beatae et possimus libero est.\\n\\nVoluptatum ut eaque enim vel nemo. Perspiciatis placeat expedita adipisci distinctio maiores voluptatem. Laudantium reprehenderit facilis dignissimos quaerat.\",\"type\":\"News\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=11\",\"meta_title\":\"Est Eos Ut Velit\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(12, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Qui tempora vel eligendi non\",\"slug\":\"qui-tempora-vel-eligendi-non\",\"intro\":\"Voluptatibus aut rem ut est beatae repudiandae laudantium totam. Voluptatem quam hic quos quos omnis asperiores. Vitae aliquam architecto minima totam quos.\",\"content\":\"Sunt tempora excepturi earum consectetur placeat. Rerum nulla sed id laboriosam. Nobis minus quaerat aut voluptatem deserunt ipsa delectus. Consequuntur nemo soluta quo eum.\\n\\nExcepturi iusto voluptates perferendis illo qui voluptas. Ut et explicabo voluptatibus eos quis deleniti. Qui ea molestiae distinctio praesentium. Aut tempora quaerat porro repudiandae et magni nam.\\n\\nAccusantium sint dolor ipsum adipisci facere dolor voluptatem. Dolorem iusto est est quod at. Eius fugit iusto aspernatur eveniet exercitationem. Quae sed beatae consequatur molestiae dolorum qui.\\n\\nOfficiis possimus provident aperiam optio fuga reiciendis. Fuga neque totam rem sit quam et. Excepturi omnis accusantium vero officia dicta sit. Doloribus ipsam libero qui dicta eveniet perspiciatis.\\n\\nHarum id est explicabo officia molestiae recusandae. Sit laudantium sunt natus quidem. Qui temporibus eum et nam laudantium beatae.\\n\\nNihil laborum tenetur quis quaerat. Explicabo quia similique voluptatibus. Aspernatur voluptatem dolorem sint aut nemo voluptas. Voluptatem dolorem fugiat odit animi molestiae.\",\"type\":\"Article\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=12\",\"meta_title\":\"Qui Tempora Vel Eligendi Non\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(13, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Qui neque ut ut esse est ea\",\"slug\":\"qui-neque-ut-ut-esse-est-ea\",\"intro\":\"Nemo perspiciatis consequuntur praesentium. Ipsum dolor alias asperiores consectetur aperiam. Eum quae veniam consequatur accusamus. Non fugit corporis quidem porro et.\",\"content\":\"Voluptas qui porro explicabo molestias nisi pariatur ad perspiciatis. Qui quis dicta animi molestiae qui rerum. Repellendus unde expedita perferendis eum dolorem consectetur recusandae.\\n\\nVeniam sapiente non aspernatur commodi dolorem. Nihil voluptas quia aspernatur similique in non quaerat. Sunt officia exercitationem necessitatibus excepturi magni eos.\\n\\nCulpa placeat voluptas harum ut voluptatum. Accusantium qui possimus voluptatum error aut. Qui qui dolorum dolorem autem neque sed quo alias. Dolore dolor quia vel ut eos consequatur.\\n\\nProvident cumque quis eligendi. Adipisci recusandae provident voluptatem et. Ipsam et est dolor libero laborum fugit dolorum. Animi sed aliquam qui at consequatur corporis sint ut.\\n\\nDeserunt minus et voluptatem eaque quis maxime molestiae. Animi molestiae et cumque quae veniam.\",\"type\":\"News\",\"category_id\":4,\"category_name\":\"Sed illum\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=13\",\"meta_title\":\"Qui Neque Ut Ut Esse Est Ea\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(14, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Nihil sit sit unde\",\"slug\":\"nihil-sit-sit-unde\",\"intro\":\"Cum occaecati occaecati est enim et. Odio unde facilis sit aut. Amet qui exercitationem suscipit debitis sint quisquam. Non consequuntur sed rerum dolorum.\",\"content\":\"Earum illo hic commodi pariatur. Mollitia tenetur debitis itaque et enim corrupti. Dolorem quam sint cupiditate. Laboriosam sit sapiente possimus.\\n\\nLaudantium atque voluptatem laudantium sunt labore omnis expedita est. Aut velit placeat tempore labore doloremque. Tenetur rerum debitis magnam deserunt ex magnam placeat. Modi doloribus ad et nemo quia.\\n\\nTemporibus aut accusantium quia eum rerum nemo labore ducimus. Temporibus ut consequatur maxime nulla architecto officiis. Sint ab autem magnam quidem. Ut quaerat aut occaecati qui.\\n\\nVoluptas sint quos qui qui adipisci qui. Dolores similique laudantium blanditiis rerum quas.\\n\\nNisi modi voluptatum in enim odit et pariatur. Quia qui consectetur ut nesciunt similique nisi. Saepe non deserunt tempora in deserunt dolorum consequatur. Ad ut dicta qui at ullam id quod.\",\"type\":\"News\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=14\",\"meta_title\":\"Nihil Sit Sit Unde\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(15, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Dolor doloribus et et et\",\"slug\":\"dolor-doloribus-et-et-et\",\"intro\":\"Qui at placeat et dolores dolor. Nostrum sit vitae eaque corporis qui est nostrum. Ab iusto aliquid doloremque. Inventore fuga possimus sunt laboriosam voluptas saepe. Qui a qui quia rerum.\",\"content\":\"Nihil tempore et iure repellat. Maxime quis impedit voluptatem autem. Consequatur ad fugiat nam eum et. Labore et sed illum autem.\\n\\nEt amet aliquam modi quo adipisci. Velit adipisci quis asperiores consectetur voluptas dignissimos. Aliquam molestiae quaerat id pariatur doloremque. Totam nihil ab vero consectetur.\\n\\nItaque aut qui omnis ab aliquid praesentium soluta est. Qui eius et enim quia exercitationem eaque. Temporibus eos rerum eos nobis et.\\n\\nVoluptas sunt qui assumenda nesciunt et maiores ut. Unde eligendi aspernatur officia perferendis odio quia perferendis illo. Qui est nulla ut animi.\\n\\nVelit facere optio quia magnam suscipit iste voluptatibus omnis. Minus dolor quam deleniti inventore facilis. Aut libero tempora rerum quibusdam sed porro rem molestiae.\",\"type\":\"Article\",\"category_id\":3,\"category_name\":\"Aut earum\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=15\",\"meta_title\":\"Dolor Doloribus Et Et Et\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(16, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Omnis in hic autem\",\"slug\":\"omnis-in-hic-autem\",\"intro\":\"Voluptatem aperiam consequatur enim et fugiat quisquam nulla. Voluptas dolor cumque distinctio illo doloribus quia commodi. Est at voluptatem iure alias nihil. Et culpa ut perferendis sequi qui minus velit.\",\"content\":\"Aut expedita ea dolor impedit qui. Laudantium possimus omnis nihil accusamus facilis temporibus. Et provident fuga tenetur eius ut et non qui. Quisquam aperiam minus molestiae repudiandae. Neque dolorum saepe id nihil doloribus et.\\n\\nEt veniam nihil voluptas aliquid in similique quaerat. Ut quam minima sint similique adipisci. Expedita at ut quibusdam numquam quia. Non corrupti doloribus et tempore.\\n\\nCulpa et porro non asperiores quaerat eos dolor. Commodi hic accusamus fugiat debitis at non nihil. Nobis aut et id omnis modi velit quis. Aut magnam sit velit omnis ut debitis porro.\\n\\nConsequatur rerum molestiae a. Eum eum impedit est velit.\\n\\nVero dolor impedit consequatur quisquam quo facere. Dolorum suscipit quia sapiente ullam quae ipsa laudantium. Commodi aliquid officiis voluptatibus velit qui incidunt eligendi. Laboriosam fugiat iste quo sit soluta fuga. Vel eligendi consequatur sed.\\n\\nAspernatur dicta omnis veniam et voluptatum et. Ab consequuntur dolore excepturi ex vitae aliquid est neque. Hic nulla distinctio ratione deserunt quia in. Quae eligendi officiis nemo illum impedit.\\n\\nIpsam maiores quia repellat rem molestiae. Et sapiente soluta reiciendis aut. Doloribus minus delectus quam odit ut. Minus in soluta eaque reprehenderit. Enim ipsa error quas consequatur consequuntur qui magnam.\",\"type\":\"News\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=16\",\"meta_title\":\"Omnis In Hic Autem\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(17, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Sint ut dicta corrupti\",\"slug\":\"sint-ut-dicta-corrupti\",\"intro\":\"Fuga ut quasi omnis voluptatibus aliquid dolor. Et dicta et exercitationem qui voluptatem. Voluptas ex amet voluptates accusamus doloribus dignissimos aspernatur consectetur. Quam delectus dolorem et optio aut eaque.\",\"content\":\"Fugiat voluptas adipisci voluptatem distinctio aliquid ullam excepturi. Porro autem sed est nihil temporibus at libero. Excepturi omnis velit saepe perferendis officiis quia aliquam et. Quia aut rerum culpa autem animi quasi.\\n\\nMinima quae ea non autem. Molestiae eligendi enim aspernatur. Est sed a maiores dolorem.\\n\\nNisi amet repudiandae et amet autem sunt. Rem dicta voluptatem ratione saepe tenetur. Quis voluptate reprehenderit aliquam voluptas velit. Magnam dolore labore ipsa officiis quibusdam sunt.\\n\\nDoloribus et reprehenderit odio eos. Labore omnis consectetur fugiat. Perferendis quis dicta ipsum officiis qui.\\n\\nModi qui delectus rerum qui qui provident. Voluptas enim exercitationem autem nostrum in esse. Fugit sit veniam ut. Quia totam ad omnis.\\n\\nPerspiciatis omnis minus iure sint molestias eos est. Nobis nam adipisci voluptatem adipisci architecto enim. Aliquam harum et est quidem esse est non. Dolores ut ut doloribus corporis porro ea iusto quo.\",\"type\":\"Blog\",\"category_id\":5,\"category_name\":\"Iure dolorem\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=17\",\"meta_title\":\"Sint Ut Dicta Corrupti\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(18, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Quam et et cumque cum\",\"slug\":\"quam-et-et-cumque-cum\",\"intro\":\"Voluptatem tempore nesciunt optio et quasi velit officiis. At ipsam ut et voluptas illum aliquam perspiciatis. Rem voluptatem omnis sint. Est velit perspiciatis et iste. Voluptas fugiat est sed possimus.\",\"content\":\"Mollitia beatae rerum quo dolorum. Repellendus aut autem non velit voluptatibus quae distinctio. Quibusdam soluta dicta nulla dolor ea blanditiis. Omnis ipsam nulla enim aliquam numquam doloribus quo.\\n\\nOfficiis deserunt odio qui. Fuga error ipsum aut. Ab dolor sit doloribus quam quae odit consectetur exercitationem. Ea et autem architecto et optio.\\n\\nDistinctio inventore sit nemo quia. Ut quis eos quibusdam beatae cupiditate quasi maiores dignissimos. Porro qui ut occaecati nobis. Dolorem nemo pariatur iste quisquam possimus et.\\n\\nLaboriosam molestias aut alias consequuntur inventore amet. Delectus facilis aliquam consequatur dolor deserunt quo. Tempora culpa quia consequatur harum quisquam qui.\\n\\nExpedita illum illum similique adipisci sed. Voluptatem ut voluptatem quia sint illo voluptatem optio. Earum consequatur natus autem magni et qui.\",\"type\":\"Article\",\"category_id\":4,\"category_name\":\"Sed illum\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=18\",\"meta_title\":\"Quam Et Et Cumque Cum\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(19, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Aliquid eum quos qui optio\",\"slug\":\"aliquid-eum-quos-qui-optio\",\"intro\":\"Veritatis ut assumenda temporibus repellat pariatur libero vitae. At sequi quo et aut illo enim. Nam est aut ut quo.\",\"content\":\"Dolores quo et error nesciunt totam. Aperiam et mollitia enim ipsum aliquid.\\n\\nEt cum ipsa similique consequatur voluptatem. Aliquid rem ut esse at mollitia amet officiis. Culpa quod vero itaque odio vero aliquid adipisci.\\n\\nConsequatur ducimus eligendi iste ratione quo. Reiciendis vero perferendis nemo quis perferendis odio ea. Similique iusto possimus rem doloribus. Et rerum autem nemo est veritatis.\\n\\nQuis officia et reprehenderit ab ex. Aut facilis dolorem qui et soluta vitae. Et quidem tempora dicta consequuntur consequuntur repudiandae. Voluptas quas quod vero aperiam. Quos asperiores ipsum sint.\\n\\nOfficiis debitis quis aut voluptatibus earum commodi id rerum. Voluptas delectus quisquam perferendis laboriosam.\\n\\nTenetur omnis laudantium porro molestias. Unde sed eligendi et voluptas dolorem qui a architecto. Est et autem maiores asperiores. Ut aut praesentium quis ut nihil modi.\\n\\nReprehenderit voluptatum nihil cupiditate culpa. Aut alias sapiente impedit in nam voluptatem voluptatem. Quasi omnis autem sit iusto ut laborum ut. Necessitatibus et qui ipsum.\",\"type\":\"News\",\"category_id\":3,\"category_name\":\"Aut earum\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=19\",\"meta_title\":\"Aliquid Eum Quos Qui Optio\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(20, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 20, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Qui sunt nihil ut modi\",\"slug\":\"qui-sunt-nihil-ut-modi\",\"intro\":\"Aliquid et magnam recusandae temporibus recusandae quibusdam quo. Autem non et molestiae tenetur quasi incidunt voluptas. Libero temporibus harum ad. Et ratione eum enim molestiae.\",\"content\":\"Vitae sed eum aut perferendis doloribus corrupti autem. Soluta fugiat est laborum voluptatem in. Eius mollitia consequatur alias est sit voluptatem delectus. Et fuga dicta repudiandae sunt libero.\\n\\nAnimi qui non soluta vel. Et consequatur architecto impedit voluptatem omnis quis autem. Doloribus saepe accusamus dicta. Aut minima commodi dignissimos.\\n\\nExercitationem eaque dolorem et sit alias. Placeat consequuntur fuga fugiat magni. Illo ipsum accusantium nobis asperiores repudiandae. Totam incidunt rerum et delectus est accusamus.\\n\\nCorrupti consequuntur iure velit est veniam deleniti. Quisquam quibusdam aut incidunt tempora nemo optio vero quia. Aut mollitia facilis et nihil facilis quisquam sunt. Laboriosam tempore omnis ducimus quia et et.\\n\\nId dolor molestiae doloribus eos. Sapiente et quibusdam odio repellendus. Neque tenetur eos ipsum et. Non aut occaecati sequi sit architecto. Distinctio aliquam reiciendis nostrum ratione.\\n\\nExpedita deserunt adipisci neque veniam. Inventore esse quaerat unde nisi et ad quibusdam sed. Ad et maiores quo omnis.\",\"type\":\"Blog\",\"category_id\":5,\"category_name\":\"Iure dolorem\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=20\",\"meta_title\":\"Qui Sunt Nihil Ut Modi\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(21, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 21, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Enim rerum praesentium quod\",\"slug\":\"enim-rerum-praesentium-quod\",\"intro\":\"Sint corporis dolores similique mollitia. Libero ipsa id molestiae laudantium. Est quidem reiciendis id deserunt. Eum facilis est perspiciatis beatae.\",\"content\":\"Omnis excepturi minus eos laudantium velit nesciunt. Facilis possimus debitis placeat ut sed et. Qui enim necessitatibus saepe sunt et quisquam modi.\\n\\nEt quia commodi quo nam. Quis quas quas non repellat.\\n\\nQuas in velit ea hic eius totam est. Error facilis veniam quis autem tenetur aut quis.\\n\\nConsequatur porro quae in sapiente esse. Iusto quaerat aut error aliquid quo autem. Repudiandae ea iure sed fugit aspernatur consequatur officia.\\n\\nAd quo quisquam a ad. Officiis possimus aut expedita tempore eaque.\\n\\nRepellendus sed tempore voluptas iusto eligendi perspiciatis numquam. Aut occaecati commodi quo occaecati ab qui aut.\\n\\nDolores fugiat iusto minus. Aliquam eum numquam ad et voluptatem. Id voluptas ipsum est inventore. Doloribus at molestiae ut in.\",\"type\":\"Blog\",\"category_id\":5,\"category_name\":\"Iure dolorem\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=21\",\"meta_title\":\"Enim Rerum Praesentium Quod\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(22, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 22, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Rem quo culpa nemo\",\"slug\":\"rem-quo-culpa-nemo\",\"intro\":\"Eveniet id assumenda omnis et quod dolorum inventore. Expedita qui voluptates atque sapiente. Ducimus dolorum voluptatem quia sed corrupti. Molestiae et eum velit quas cumque consequatur in. Tempore consectetur non vel.\",\"content\":\"Nihil officia ut placeat id eius. Quibusdam est voluptate impedit nemo molestiae nesciunt. Nobis ut sed odio quaerat molestiae mollitia quia sint. Unde aut cum modi voluptates odio vel vitae.\\n\\nNon perspiciatis cupiditate quae explicabo quasi quaerat minus. Vel sint consequatur quos quis laboriosam vel. Rem error blanditiis doloribus molestias. Reprehenderit sit ut sunt dolorem corrupti dicta quaerat.\\n\\nAspernatur veniam itaque numquam necessitatibus quam. Eveniet totam aliquam accusamus vel sit nihil distinctio. Ipsam nihil est illum aut nihil culpa id ipsa.\\n\\nExercitationem quia dicta unde molestiae doloribus quos veritatis soluta. Voluptatem rerum voluptatem dolorem sunt accusantium. Cupiditate eum quos distinctio dolores nisi a. Laudantium dolorem assumenda voluptas.\\n\\nNostrum enim libero consequatur ea et nisi. Ut nulla laboriosam et. Natus ea nemo ut maiores est. Est sit qui ducimus porro.\\n\\nVeniam odit dolor eveniet sit quisquam. Fugit praesentium sed non sit sunt aut aut. Culpa cupiditate doloremque autem occaecati commodi. Sed eum qui qui et corporis qui. Saepe magni dolores cupiditate quibusdam eum.\\n\\nUt inventore dicta nihil cupiditate quam unde aut. Dolor repudiandae ut iure dolorem quam similique cupiditate. Explicabo hic officiis ut non delectus dolor.\",\"type\":\"News\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=22\",\"meta_title\":\"Rem Quo Culpa Nemo\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(23, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 23, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Itaque eum modi quo\",\"slug\":\"itaque-eum-modi-quo\",\"intro\":\"Consequatur est sed consequatur aut et. Occaecati saepe assumenda porro ex. Expedita suscipit molestiae totam nulla debitis.\",\"content\":\"Quaerat commodi officia facere blanditiis ipsam ut sequi. Vitae excepturi esse fugiat minima optio numquam. Ipsum inventore ex et ullam rerum quo. Velit error et fugit harum ipsum. Iste officiis totam odio labore.\\n\\nVelit est quo soluta veritatis dolorem voluptatum sequi. Reiciendis officia ut molestias et et. Repellat unde voluptatum deserunt impedit voluptatem enim.\\n\\nEos dolores eos id. Qui necessitatibus esse adipisci quas. Sed vel totam iure corporis. Itaque consequatur ut expedita.\\n\\nDolores est repellendus ut iusto. Sed quia saepe perspiciatis repellendus. Quia quis qui repellendus quibusdam. Deleniti cum at dolorem consequatur dicta enim perferendis.\\n\\nTotam voluptas non excepturi vel. Maxime cum ab qui sit quo unde. Et expedita tenetur omnis omnis assumenda nostrum porro.\\n\\nSed sunt debitis autem et repellendus. Ipsum voluptatum et et quis. Labore et cupiditate molestias quos occaecati fuga.\",\"type\":\"Blog\",\"category_id\":1,\"category_name\":\"Et inventore\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=23\",\"meta_title\":\"Itaque Eum Modi Quo\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(24, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 24, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"At optio quam eveniet\",\"slug\":\"at-optio-quam-eveniet\",\"intro\":\"Totam incidunt inventore repellendus omnis omnis. Voluptas ducimus provident voluptatem natus at fugit. Quo quidem aut occaecati ab eaque. Exercitationem voluptatem quos repellendus neque.\",\"content\":\"Exercitationem eum est aut excepturi ipsam amet. Omnis dolorem dolorem est reprehenderit in sit iusto. Voluptas rerum dolor ea voluptates ipsa. Quam ut hic et ea sit perferendis nam tempore.\\n\\nPerferendis nisi vero ut autem ut facere. Modi recusandae blanditiis sit explicabo eos. Nesciunt officiis error ad distinctio explicabo sed dolore.\\n\\nRepellendus dolorem nisi sequi minima praesentium quia voluptatum vel. Hic consequuntur quis maxime. Et fugiat et dolore rem voluptatem dolore.\\n\\nMagni quia quasi nihil in. Aut et aut et. Illo doloremque deserunt perspiciatis aspernatur asperiores.\\n\\nAnimi ut officia eligendi sunt impedit officia iure quam. Ea enim dolor et omnis. Nulla et qui rem consequuntur cum qui dolorem. Iste sint assumenda consequatur numquam labore explicabo omnis.\",\"type\":\"Article\",\"category_id\":2,\"category_name\":\"Blanditiis\",\"is_featured\":0,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=24\",\"meta_title\":\"At Optio Quam Eveniet\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(25, 'posts', 'created', 'Modules\\Article\\Models\\Post', 'created', 25, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Ab dolorem iure delectus in\",\"slug\":\"ab-dolorem-iure-delectus-in\",\"intro\":\"Fugit doloribus consequatur aperiam et ut quia et et. Sit est in non eum.\",\"content\":\"Voluptatibus dolor soluta culpa. Eligendi suscipit molestiae quia similique nemo et. Nesciunt consectetur eligendi veritatis neque.\\n\\nDolor odit minus autem sed doloremque officia provident. Voluptatem aut nihil aliquid et porro. Voluptatem architecto sit soluta cupiditate aut. Et aut quam eum aperiam autem ratione.\\n\\nEt a consequatur reprehenderit culpa. Delectus exercitationem nemo voluptatem cupiditate nobis. Fuga in dolores quae placeat veniam.\\n\\nSint dolores vel nulla distinctio. Quis tempore numquam aliquid quia. Maxime sit quod exercitationem. Assumenda et suscipit ut exercitationem at modi itaque.\\n\\nEst aut laborum libero. Et et eum sit dolores officiis voluptatem blanditiis dolor. Eligendi nobis quis autem. Est et reprehenderit dicta sint.\\n\\nSed libero aut recusandae rerum sed. Odit et nesciunt omnis sint voluptates. Et et unde quam temporibus. Esse a et temporibus.\\n\\nEius minus et est ex ut. Ipsum delectus laborum architecto maxime cumque. Recusandae et dolorem vel laborum blanditiis consequatur est.\",\"type\":\"Article\",\"category_id\":3,\"category_name\":\"Aut earum\",\"is_featured\":1,\"featured_image\":\"https:\\/\\/picsum.photos\\/1200\\/630?random=25\",\"meta_title\":\"Ab Dolorem Iure Delectus In\",\"meta_keywords\":\"\",\"meta_description\":\"A CMS like modular starter application project built with latest Laravel.\",\"meta_og_image\":\"https:\\/\\/picsum.photos\\/1200\\/630\",\"meta_og_url\":\"\",\"hits\":0,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"created_by\":1,\"created_by_name\":\"Super Admin\",\"created_by_alias\":null,\"updated_by\":1,\"deleted_by\":null,\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(26, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Maiores vero ut.\",\"slug\":\"maiores-vero-ut.\",\"comment\":\"Sunt quam delectus ut temporibus labore sed. Dignissimos voluptas fugiat quis. Odit quis quidem quis vel omnis nesciunt. Aut fuga laudantium aliquam nostrum.\",\"parent_id\":null,\"commentable_id\":10,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":2,\"user_name\":\"Admin Istrator\",\"order\":null,\"status\":1,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(27, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Eum et.\",\"slug\":\"eum-et.\",\"comment\":\"Molestiae ratione ea molestiae temporibus et et incidunt. Temporibus consequuntur aut praesentium natus. At eos accusantium temporibus quo.\",\"parent_id\":null,\"commentable_id\":16,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":4,\"user_name\":\"Executive User\",\"order\":null,\"status\":1,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(28, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Fugit enim.\",\"slug\":\"fugit-enim.\",\"comment\":\"Magni maxime sunt nam repellat impedit repudiandae recusandae eum. Eligendi accusamus qui laudantium illo explicabo. Aut ipsa nobis modi distinctio maiores sed accusamus. Error voluptatum minima deserunt eos itaque assumenda. Repudiandae consequatur non suscipit omnis sit.\",\"parent_id\":null,\"commentable_id\":13,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":2,\"user_name\":\"Admin Istrator\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(29, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Dolorem dolorum at.\",\"slug\":\"dolorem-dolorum-at.\",\"comment\":\"Cum architecto aut qui veritatis occaecati. Omnis ut sit possimus quidem id. Facilis omnis consequatur culpa nihil nam veniam fugit. Sit totam qui et vel libero.\",\"parent_id\":null,\"commentable_id\":16,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":4,\"user_name\":\"Executive User\",\"order\":null,\"status\":0,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(30, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Quas quasi.\",\"slug\":\"quas-quasi.\",\"comment\":\"Impedit velit fugiat deserunt quia dolores cum. Voluptatem ut et a beatae. Optio nesciunt ullam molestiae autem voluptatem nihil tempora. Earum inventore vitae enim et.\",\"parent_id\":null,\"commentable_id\":6,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(31, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Repudiandae iste et.\",\"slug\":\"repudiandae-iste-et.\",\"comment\":\"Temporibus molestias commodi quod expedita. Necessitatibus officia dolores officia facere. Ea nihil provident eligendi velit debitis voluptas.\",\"parent_id\":null,\"commentable_id\":10,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(32, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"In fugiat officia.\",\"slug\":\"in-fugiat-officia.\",\"comment\":\"Ipsam id magnam temporibus in laudantium. Libero incidunt qui molestias rerum nulla rerum molestiae. Exercitationem ut est pariatur deserunt tempore dolorum et.\",\"parent_id\":null,\"commentable_id\":15,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":2,\"user_name\":\"Admin Istrator\",\"order\":null,\"status\":0,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(33, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Consequatur dolorem.\",\"slug\":\"consequatur-dolorem.\",\"comment\":\"Consequatur rerum aut tenetur culpa cumque nobis voluptatum perferendis. Iste debitis cum sit voluptatibus qui. In aspernatur nulla assumenda molestias.\",\"parent_id\":null,\"commentable_id\":4,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":2,\"user_name\":\"Admin Istrator\",\"order\":null,\"status\":1,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(34, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Nesciunt praesentium sequi.\",\"slug\":\"nesciunt-praesentium-sequi.\",\"comment\":\"Et soluta dolores tempore ab adipisci distinctio. Dolores enim dolorem nam animi. Qui esse vero ut quaerat est voluptates. Delectus harum non ex.\",\"parent_id\":null,\"commentable_id\":9,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":3,\"user_name\":\"Manager\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(35, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Consequuntur error totam.\",\"slug\":\"consequuntur-error-totam.\",\"comment\":\"Et aut at harum provident est officia. Eveniet sed nihil rerum et facere non qui.\",\"parent_id\":null,\"commentable_id\":23,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":2,\"user_name\":\"Admin Istrator\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(36, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Enim quis.\",\"slug\":\"enim-quis.\",\"comment\":\"Accusantium animi ipsum molestiae alias. Doloremque vel repellendus ut architecto nobis saepe. Qui ea vel praesentium in nobis voluptatibus. Ducimus sunt veniam quia repudiandae nihil.\",\"parent_id\":null,\"commentable_id\":4,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":2,\"user_name\":\"Admin Istrator\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(37, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"A non qui.\",\"slug\":\"a-non-qui.\",\"comment\":\"Fuga est eaque consequatur. Assumenda non aperiam molestias impedit sunt mollitia sapiente voluptatem. Minus cumque aut et ullam exercitationem. Laudantium autem nihil vero nisi earum dolor.\",\"parent_id\":null,\"commentable_id\":16,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(38, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Earum veritatis veritatis.\",\"slug\":\"earum-veritatis-veritatis.\",\"comment\":\"Voluptatibus consequuntur dolorem nesciunt eos et est voluptas fugit. Nihil quae voluptates aut hic. Nisi nihil reprehenderit ea beatae. Earum quo quod et consequatur quo sunt consequuntur ex.\",\"parent_id\":null,\"commentable_id\":22,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":1,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(39, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Voluptas minus amet.\",\"slug\":\"voluptas-minus-amet.\",\"comment\":\"Quia doloremque commodi iure necessitatibus nostrum consequatur. Ut sint soluta corrupti quo qui non. Ullam tempore vitae distinctio placeat rerum illum. Est accusamus nostrum dicta est at voluptatibus voluptatem quae.\",\"parent_id\":null,\"commentable_id\":11,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":4,\"user_name\":\"Executive User\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(40, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Consequatur sit.\",\"slug\":\"consequatur-sit.\",\"comment\":\"Libero soluta sed saepe perferendis dignissimos quia harum inventore. Deleniti recusandae est perspiciatis ea non. Delectus a maxime quos non molestiae qui dolores illum. Culpa nam tenetur quia et nihil necessitatibus et.\",\"parent_id\":null,\"commentable_id\":14,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":3,\"user_name\":\"Manager\",\"order\":null,\"status\":0,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(41, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Repellat harum ab.\",\"slug\":\"repellat-harum-ab.\",\"comment\":\"Maiores nisi dolores et unde ad error. Culpa ad voluptas quis facilis repudiandae voluptatem nihil. Omnis sit ut ipsum quasi. Perferendis ex sed dolores et quasi.\",\"parent_id\":null,\"commentable_id\":11,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":3,\"user_name\":\"Manager\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(42, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Aut expedita repellendus.\",\"slug\":\"aut-expedita-repellendus.\",\"comment\":\"Nam rem labore culpa autem aut est. Sapiente facilis nostrum eos cumque impedit sunt. Quo laborum soluta facere suscipit quo at.\",\"parent_id\":null,\"commentable_id\":21,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":0,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(43, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Autem fugiat vel.\",\"slug\":\"autem-fugiat-vel.\",\"comment\":\"Error consequatur qui iusto exercitationem sunt. Ut totam totam eos qui ipsam autem dolorem. A quia et esse repellat recusandae.\",\"parent_id\":null,\"commentable_id\":17,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":4,\"user_name\":\"Executive User\",\"order\":null,\"status\":0,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(44, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Est expedita.\",\"slug\":\"est-expedita.\",\"comment\":\"Minima velit rerum aut molestiae quibusdam. At est qui molestias amet nihil sed. Officiis eligendi deserunt excepturi error repellendus doloremque nulla reiciendis. Minus perferendis quia porro.\",\"parent_id\":null,\"commentable_id\":5,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":3,\"user_name\":\"Manager\",\"order\":null,\"status\":1,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(45, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 20, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Fugit et a.\",\"slug\":\"fugit-et-a.\",\"comment\":\"Aliquam minima et non quia deleniti. Ad nesciunt blanditiis porro consectetur corrupti similique. Dolore molestias iste nulla ut accusantium quibusdam consequatur.\",\"parent_id\":null,\"commentable_id\":8,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":2,\"user_name\":\"Admin Istrator\",\"order\":null,\"status\":1,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(46, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 21, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Enim accusamus.\",\"slug\":\"enim-accusamus.\",\"comment\":\"Magnam facilis nesciunt ut itaque tempore. Ut laborum rem illum. Nihil et voluptatem et vitae.\",\"parent_id\":null,\"commentable_id\":3,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":4,\"user_name\":\"Executive User\",\"order\":null,\"status\":0,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(47, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 22, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Eius culpa sint.\",\"slug\":\"eius-culpa-sint.\",\"comment\":\"Qui minima voluptatem qui excepturi delectus minima temporibus quod. At accusantium quia omnis occaecati accusantium. Id sapiente consequuntur ratione alias et.\",\"parent_id\":null,\"commentable_id\":3,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(48, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 23, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Excepturi sint corporis.\",\"slug\":\"excepturi-sint-corporis.\",\"comment\":\"Laboriosam voluptatem est eligendi aut. Tempora nisi ut hic rem aut omnis. Est expedita harum esse autem quibusdam repellendus magnam.\",\"parent_id\":null,\"commentable_id\":7,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(49, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 24, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Illo esse vero.\",\"slug\":\"illo-esse-vero.\",\"comment\":\"Accusamus saepe cum magnam dolores sed asperiores ipsa. Quaerat enim deleniti et quas. Voluptas quidem dolor ea voluptas.\",\"parent_id\":null,\"commentable_id\":3,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":3,\"user_name\":\"Manager\",\"order\":null,\"status\":0,\"moderated_by\":1,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00'),
(50, 'comments', 'created', 'Modules\\Comment\\Models\\Comment', 'created', 25, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Soluta maxime id.\",\"slug\":\"soluta-maxime-id.\",\"comment\":\"Sit reiciendis eos ea qui autem quos dolore nihil. Consequatur unde autem minus.\",\"parent_id\":null,\"commentable_id\":19,\"commentable_type\":\"Modules\\\\Article\\\\Models\\\\Post\",\"user_id\":1,\"user_name\":\"Super Admin\",\"order\":null,\"status\":0,\"moderated_by\":2,\"moderated_at\":\"2023-12-17T09:00:00.000000Z\",\"published_at\":\"2023-12-17T09:00:00.000000Z\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-12-17T09:00:00.000000Z\",\"deleted_at\":null}}', NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `group_name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `order` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `group_name`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `order`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Et inventore', 'et-inventore', 'Voluptatem quos doloribus consectetur at mollitia officia et. Exercitationem quia ut consequuntur incidunt omnis. Et suscipit quidem qui labore odit error dicta. Aliquam id distinctio dolor dolorum eligendi explicabo delectus.', NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(2, 'Blanditiis', 'blanditiis', 'Sunt quia reprehenderit harum sit. Nobis vero impedit harum quibusdam. Vero et necessitatibus sed dolores aliquam laboriosam sit quasi.', NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(3, 'Aut earum', 'aut-earum', 'Sequi maiores eos aliquid molestiae. Aut porro provident labore neque. Laudantium nam quidem saepe sit voluptatem. Ipsum ea eius voluptas reprehenderit.', NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(4, 'Sed illum', 'sed-illum', 'Quos maiores nobis voluptatem occaecati rerum est ea. Aperiam laboriosam quas quia illum totam voluptatum. Eveniet officia vel magnam minus voluptatum recusandae. Sed aspernatur esse quaerat necessitatibus consequatur voluptas assumenda.', NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(5, 'Iure dolorem', 'iure-dolorem', 'Ut numquam aspernatur cumque voluptate. Sint repellendus harum iure sequi a quam. Laborum placeat in et et.', NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `commentable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commentable_type` varchar(191) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `order` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `moderated_by` int(10) UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `slug`, `comment`, `parent_id`, `commentable_id`, `commentable_type`, `user_id`, `user_name`, `order`, `status`, `moderated_by`, `moderated_at`, `published_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Maiores vero ut.', 'maiores-vero-ut.', 'Sunt quam delectus ut temporibus labore sed. Dignissimos voluptas fugiat quis. Odit quis quidem quis vel omnis nesciunt. Aut fuga laudantium aliquam nostrum.', NULL, 10, 'Modules\\Article\\Models\\Post', 2, 'Admin Istrator', NULL, 1, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(2, 'Eum et.', 'eum-et.', 'Molestiae ratione ea molestiae temporibus et et incidunt. Temporibus consequuntur aut praesentium natus. At eos accusantium temporibus quo.', NULL, 16, 'Modules\\Article\\Models\\Post', 4, 'Executive User', NULL, 1, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(3, 'Fugit enim.', 'fugit-enim.', 'Magni maxime sunt nam repellat impedit repudiandae recusandae eum. Eligendi accusamus qui laudantium illo explicabo. Aut ipsa nobis modi distinctio maiores sed accusamus. Error voluptatum minima deserunt eos itaque assumenda. Repudiandae consequatur non suscipit omnis sit.', NULL, 13, 'Modules\\Article\\Models\\Post', 2, 'Admin Istrator', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(4, 'Dolorem dolorum at.', 'dolorem-dolorum-at.', 'Cum architecto aut qui veritatis occaecati. Omnis ut sit possimus quidem id. Facilis omnis consequatur culpa nihil nam veniam fugit. Sit totam qui et vel libero.', NULL, 16, 'Modules\\Article\\Models\\Post', 4, 'Executive User', NULL, 0, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(5, 'Quas quasi.', 'quas-quasi.', 'Impedit velit fugiat deserunt quia dolores cum. Voluptatem ut et a beatae. Optio nesciunt ullam molestiae autem voluptatem nihil tempora. Earum inventore vitae enim et.', NULL, 6, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(6, 'Repudiandae iste et.', 'repudiandae-iste-et.', 'Temporibus molestias commodi quod expedita. Necessitatibus officia dolores officia facere. Ea nihil provident eligendi velit debitis voluptas.', NULL, 10, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(7, 'In fugiat officia.', 'in-fugiat-officia.', 'Ipsam id magnam temporibus in laudantium. Libero incidunt qui molestias rerum nulla rerum molestiae. Exercitationem ut est pariatur deserunt tempore dolorum et.', NULL, 15, 'Modules\\Article\\Models\\Post', 2, 'Admin Istrator', NULL, 0, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(8, 'Consequatur dolorem.', 'consequatur-dolorem.', 'Consequatur rerum aut tenetur culpa cumque nobis voluptatum perferendis. Iste debitis cum sit voluptatibus qui. In aspernatur nulla assumenda molestias.', NULL, 4, 'Modules\\Article\\Models\\Post', 2, 'Admin Istrator', NULL, 1, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(9, 'Nesciunt praesentium sequi.', 'nesciunt-praesentium-sequi.', 'Et soluta dolores tempore ab adipisci distinctio. Dolores enim dolorem nam animi. Qui esse vero ut quaerat est voluptates. Delectus harum non ex.', NULL, 9, 'Modules\\Article\\Models\\Post', 3, 'Manager', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(10, 'Consequuntur error totam.', 'consequuntur-error-totam.', 'Et aut at harum provident est officia. Eveniet sed nihil rerum et facere non qui.', NULL, 23, 'Modules\\Article\\Models\\Post', 2, 'Admin Istrator', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(11, 'Enim quis.', 'enim-quis.', 'Accusantium animi ipsum molestiae alias. Doloremque vel repellendus ut architecto nobis saepe. Qui ea vel praesentium in nobis voluptatibus. Ducimus sunt veniam quia repudiandae nihil.', NULL, 4, 'Modules\\Article\\Models\\Post', 2, 'Admin Istrator', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(12, 'A non qui.', 'a-non-qui.', 'Fuga est eaque consequatur. Assumenda non aperiam molestias impedit sunt mollitia sapiente voluptatem. Minus cumque aut et ullam exercitationem. Laudantium autem nihil vero nisi earum dolor.', NULL, 16, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(13, 'Earum veritatis veritatis.', 'earum-veritatis-veritatis.', 'Voluptatibus consequuntur dolorem nesciunt eos et est voluptas fugit. Nihil quae voluptates aut hic. Nisi nihil reprehenderit ea beatae. Earum quo quod et consequatur quo sunt consequuntur ex.', NULL, 22, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 1, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(14, 'Voluptas minus amet.', 'voluptas-minus-amet.', 'Quia doloremque commodi iure necessitatibus nostrum consequatur. Ut sint soluta corrupti quo qui non. Ullam tempore vitae distinctio placeat rerum illum. Est accusamus nostrum dicta est at voluptatibus voluptatem quae.', NULL, 11, 'Modules\\Article\\Models\\Post', 4, 'Executive User', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(15, 'Consequatur sit.', 'consequatur-sit.', 'Libero soluta sed saepe perferendis dignissimos quia harum inventore. Deleniti recusandae est perspiciatis ea non. Delectus a maxime quos non molestiae qui dolores illum. Culpa nam tenetur quia et nihil necessitatibus et.', NULL, 14, 'Modules\\Article\\Models\\Post', 3, 'Manager', NULL, 0, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(16, 'Repellat harum ab.', 'repellat-harum-ab.', 'Maiores nisi dolores et unde ad error. Culpa ad voluptas quis facilis repudiandae voluptatem nihil. Omnis sit ut ipsum quasi. Perferendis ex sed dolores et quasi.', NULL, 11, 'Modules\\Article\\Models\\Post', 3, 'Manager', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(17, 'Aut expedita repellendus.', 'aut-expedita-repellendus.', 'Nam rem labore culpa autem aut est. Sapiente facilis nostrum eos cumque impedit sunt. Quo laborum soluta facere suscipit quo at.', NULL, 21, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 0, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(18, 'Autem fugiat vel.', 'autem-fugiat-vel.', 'Error consequatur qui iusto exercitationem sunt. Ut totam totam eos qui ipsam autem dolorem. A quia et esse repellat recusandae.', NULL, 17, 'Modules\\Article\\Models\\Post', 4, 'Executive User', NULL, 0, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(19, 'Est expedita.', 'est-expedita.', 'Minima velit rerum aut molestiae quibusdam. At est qui molestias amet nihil sed. Officiis eligendi deserunt excepturi error repellendus doloremque nulla reiciendis. Minus perferendis quia porro.', NULL, 5, 'Modules\\Article\\Models\\Post', 3, 'Manager', NULL, 1, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(20, 'Fugit et a.', 'fugit-et-a.', 'Aliquam minima et non quia deleniti. Ad nesciunt blanditiis porro consectetur corrupti similique. Dolore molestias iste nulla ut accusantium quibusdam consequatur.', NULL, 8, 'Modules\\Article\\Models\\Post', 2, 'Admin Istrator', NULL, 1, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(21, 'Enim accusamus.', 'enim-accusamus.', 'Magnam facilis nesciunt ut itaque tempore. Ut laborum rem illum. Nihil et voluptatem et vitae.', NULL, 3, 'Modules\\Article\\Models\\Post', 4, 'Executive User', NULL, 0, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(22, 'Eius culpa sint.', 'eius-culpa-sint.', 'Qui minima voluptatem qui excepturi delectus minima temporibus quod. At accusantium quia omnis occaecati accusantium. Id sapiente consequuntur ratione alias et.', NULL, 3, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(23, 'Excepturi sint corporis.', 'excepturi-sint-corporis.', 'Laboriosam voluptatem est eligendi aut. Tempora nisi ut hic rem aut omnis. Est expedita harum esse autem quibusdam repellendus magnam.', NULL, 7, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(24, 'Illo esse vero.', 'illo-esse-vero.', 'Accusamus saepe cum magnam dolores sed asperiores ipsa. Quaerat enim deleniti et quas. Voluptas quidem dolor ea voluptas.', NULL, 3, 'Modules\\Article\\Models\\Post', 3, 'Manager', NULL, 0, 1, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(25, 'Soluta maxime id.', 'soluta-maxime-id.', 'Sit reiciendis eos ea qui autem quos dolore nihil. Consequatur unde autem minus.', NULL, 19, 'Modules\\Article\\Models\\Post', 1, 'Super Admin', NULL, 0, 2, '2023-12-17 15:00:00', '2023-12-17 08:00:00', 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `conversions_disk` varchar(191) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_062135_create_posts_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_02_19_173641_create_settings_table', 1),
(7, '2020_02_19_173700_create_userprofiles_table', 1),
(8, '2020_02_19_173711_create_notifications_table', 1),
(9, '2020_02_22_115918_create_user_providers_table', 1),
(10, '2020_05_01_163442_create_tags_table', 1),
(11, '2020_05_01_163833_create_polymorphic_taggables_table', 1),
(12, '2020_05_04_151517_create_comments_table', 1),
(13, '2022_04_01_132914_create_media_table', 1),
(14, '2022_04_01_133918_create_permission_tables', 1),
(15, '2022_04_01_134140_create_activity_log_table', 1),
(16, '2022_04_01_134141_add_event_column_to_activity_log_table', 1),
(17, '2022_04_01_134142_add_batch_uuid_column_to_activity_log_table', 1),
(18, '2023_03_12_195541_add_expires_at_column_to_personal_access_tokens_table', 1),
(19, '2023_07_30_013129_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_backend', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(2, 'edit_settings', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(3, 'view_logs', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(4, 'view_users', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(5, 'add_users', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(6, 'edit_users', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(7, 'delete_users', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(8, 'restore_users', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(9, 'block_users', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(10, 'view_roles', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(11, 'add_roles', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(12, 'edit_roles', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(13, 'delete_roles', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(14, 'restore_roles', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(15, 'view_backups', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(16, 'add_backups', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(17, 'create_backups', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(18, 'download_backups', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(19, 'delete_backups', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(20, 'view_posts', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(21, 'add_posts', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(22, 'edit_posts', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(23, 'delete_posts', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(24, 'restore_posts', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(25, 'view_categories', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(26, 'add_categories', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(27, 'edit_categories', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(28, 'delete_categories', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(29, 'restore_categories', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(30, 'view_tags', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(31, 'add_tags', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(32, 'edit_tags', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(33, 'delete_tags', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(34, 'restore_tags', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(35, 'view_comments', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(36, 'add_comments', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(37, 'edit_comments', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(38, 'delete_comments', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(39, 'restore_comments', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_name` varchar(191) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `featured_image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_og_image` varchar(191) DEFAULT NULL,
  `meta_og_url` varchar(191) DEFAULT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `moderated_by` int(10) UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) DEFAULT NULL,
  `created_by_alias` varchar(191) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `intro`, `content`, `type`, `category_id`, `category_name`, `is_featured`, `featured_image`, `meta_title`, `meta_keywords`, `meta_description`, `meta_og_image`, `meta_og_url`, `hits`, `order`, `status`, `moderated_by`, `moderated_at`, `created_by`, `created_by_name`, `created_by_alias`, `updated_by`, `deleted_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Et corrupti sint ut in', 'et-corrupti-sint-ut-in', 'Qui nemo dicta adipisci accusamus ipsa blanditiis enim. Est pariatur velit voluptas impedit labore. Illo ducimus est culpa quia in.', 'Aut molestias ut ea qui tempora qui enim omnis. Nemo rerum ut esse ut et ut. Similique non eum cupiditate sequi minima. Et ut assumenda voluptates exercitationem libero.\n\nEt aut quas aut sunt. Earum sit rerum sit quam deserunt aut. Nobis quisquam recusandae non saepe distinctio omnis enim.\n\nNisi vero sed voluptas et. Ullam atque doloremque nesciunt ratione id. Deserunt natus dolorem a repellat labore omnis cum. Optio aspernatur odio enim consequatur et debitis sed.\n\nAperiam est culpa voluptate quia nisi ex ea cum. Dolore quos aut illo et. Molestiae velit consequuntur libero dolorem ex ut voluptatum. Minus et ut dolores deserunt est ea facilis.\n\nOptio possimus perferendis autem sequi. Quae dolor aperiam beatae non sunt. Ut rem minus sint minima. Qui quisquam laboriosam autem optio odit voluptate omnis.\n\nAmet at quae numquam vel est totam natus. Excepturi suscipit maxime voluptas ea vero. Est soluta omnis nam voluptas in vero.\n\nCommodi necessitatibus id dicta eaque necessitatibus labore. Molestiae asperiores tempora nemo iste sint enim. Alias nesciunt officiis tenetur cupiditate est quos non.', 'Blog', 4, 'Sed illum', 0, 'https://picsum.photos/1200/630', 'Et Corrupti Sint Ut In', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(2, 'Cum sint odit ut qui sunt', 'cum-sint-odit-ut-qui-sunt', 'Rem ea voluptates possimus delectus voluptatem ut. Ut et quis amet facere excepturi alias. Nihil rerum id provident magni atque.', 'Quos et hic id mollitia sint totam ab. Sequi odit minima aut vel est. Deleniti quod et ea aut.\n\nEnim hic reiciendis cupiditate officia. Quia ipsa magnam qui possimus laudantium voluptatem. Harum quos suscipit quaerat nisi voluptatum dolorem.\n\nIure error delectus qui quaerat eius. In qui et minus excepturi doloremque. Sit aliquam maxime repellat perspiciatis illum debitis impedit eum. Illo veritatis in exercitationem aut delectus dicta aut.\n\nDucimus beatae sed deserunt minus. Necessitatibus nobis possimus molestiae vel libero quis reprehenderit. Quam molestiae ab eaque quisquam sed et non.\n\nId ut quis at in perferendis aut quae ullam. Ut a maiores est porro voluptates. Ipsa quibusdam magni voluptatem voluptas quasi sit enim.', 'Article', 5, 'Iure dolorem', 0, 'https://picsum.photos/1200/630', 'Cum Sint Odit Ut Qui Sunt', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(3, 'Ut et nihil aperiam', 'ut-et-nihil-aperiam', 'Velit autem quibusdam earum. Et numquam nisi velit dolore quis eius. Ab debitis beatae culpa tempora unde.', 'Ipsa corrupti et voluptate iure in. Eaque omnis libero aliquid et natus tempora. Laudantium culpa ex ut rerum.\n\nSit hic magni temporibus. Iste repellat sit id debitis. Sapiente nisi expedita veniam cupiditate.\n\nConsequatur totam ut totam quia nobis. Perspiciatis accusantium expedita quas earum ut. Omnis culpa et reiciendis architecto rerum accusamus aut aut.\n\nEarum iure quae harum minima. Qui sit atque repellat ut accusantium sapiente. Voluptatibus error recusandae ducimus eius qui ea culpa. Velit velit eum esse vel quia debitis distinctio. Voluptatem provident voluptas eveniet.\n\nAut omnis rerum impedit qui praesentium. Eos saepe commodi natus aut qui ipsum quod. Placeat reprehenderit quia dolores voluptatem nulla vel molestiae voluptas. Cupiditate totam nisi facilis mollitia eum.\n\nUt dolorem voluptates minus. Omnis possimus fugit nesciunt accusantium voluptatum. Sit non provident doloremque nisi architecto alias.\n\nConsectetur est est quo et harum ut cum. Occaecati in nam consequatur perspiciatis. Non ab asperiores sapiente consequatur aut enim.', 'Article', 4, 'Sed illum', 0, 'https://picsum.photos/1200/630', 'Ut Et Nihil Aperiam', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(4, 'Aut temporibus et aut', 'aut-temporibus-et-aut', 'Ut ut qui hic amet qui. Saepe omnis voluptatum magni. Ipsum eos enim nihil est.', 'Aut facilis minima vitae. Laborum tempora et necessitatibus ut tempora magnam non. Qui rerum id et reprehenderit est quam ut. Ut natus in repudiandae.\n\nCorrupti quia tenetur rerum dolor dolorem qui rerum. Quisquam dolores qui eveniet distinctio. Perspiciatis voluptas deleniti sit autem fugiat.\n\nAccusamus aut voluptas non saepe voluptas voluptatibus. Iusto corporis nihil facilis dolorum. Ea repudiandae maxime quasi cupiditate asperiores et. Tenetur est ullam ratione dolorem dolor.\n\nVoluptatem sed adipisci ut. Nulla similique fugit et possimus voluptatem eligendi ut ex. Aut ad odio sint tenetur incidunt amet.\n\nPariatur voluptatem non error distinctio occaecati eligendi et. Id in cum fuga cumque voluptatibus perferendis. Consectetur dolorem ut qui sint. Totam aut eaque excepturi. Ut autem doloribus qui excepturi.\n\nExpedita dolorem mollitia numquam deserunt. Est iste molestiae in quaerat occaecati rerum. Corporis id id blanditiis voluptatum similique iure. Non quas asperiores recusandae iste id debitis aut.', 'Article', 5, 'Iure dolorem', 0, 'https://picsum.photos/1200/630', 'Aut Temporibus Et Aut', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(5, 'Earum officia qui omnis', 'earum-officia-qui-omnis', 'Sint provident velit veniam dolor. Esse itaque id laudantium. Delectus quod nam ut.', 'Maxime explicabo vitae illum sint. Tempora qui ut occaecati dolorem. Voluptatem cum culpa ut eum vitae.\n\nMolestias voluptatibus veritatis sit. Et corporis repellendus veniam omnis suscipit. A enim necessitatibus id. Dolorum possimus corrupti nihil animi.\n\nId voluptas nobis eaque expedita minima. Est magni nesciunt aut veritatis incidunt facilis. Molestiae commodi vel eveniet sed.\n\nIncidunt quo dolore impedit. Et necessitatibus rerum est doloribus. Accusantium quibusdam dicta qui autem quam amet nostrum. Aut molestiae repellendus hic sed a ea.\n\nExercitationem numquam aut ab molestiae qui. Omnis ex quae id illo. Deleniti quas ab dicta aut harum iste ratione.\n\nNihil eligendi qui debitis. Rerum qui et magni magnam ut et. Quidem aut perspiciatis ad non sapiente.', 'Blog', 1, 'Et inventore', 1, 'https://picsum.photos/1200/630', 'Earum Officia Qui Omnis', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(6, 'Ea quos distinctio aperiam', 'ea-quos-distinctio-aperiam', 'Architecto nisi voluptatem odio vero dolore. Cum omnis quia rerum animi. Nesciunt ad id fuga a ipsa at nemo id.', 'Dolorum aut qui quia quae ratione provident provident repellendus. Quos vero repellat alias dolores quia distinctio soluta.\n\nCupiditate laudantium totam et ab ea eos consequatur voluptas. Optio libero nisi quis qui. Qui commodi ea rerum facere suscipit. Cupiditate temporibus blanditiis praesentium similique. Iste et nesciunt quidem repudiandae quia.\n\nAutem quia ut repellendus commodi tempore numquam assumenda. Quia possimus veniam qui dicta commodi. Consequuntur ut aliquam officiis molestiae qui. Aut nostrum dolorem sint iste porro similique rem.\n\nCumque recusandae qui sint pariatur eveniet odio. Quis aperiam et ad dolorem. Molestias nulla quaerat veniam repudiandae rem aut maxime.\n\nVelit similique sapiente esse dicta eius. Laboriosam explicabo tempora non qui totam. Sapiente est eligendi et sed et. Dolorum eligendi sit et commodi impedit vitae velit.\n\nNecessitatibus culpa ullam quis autem. Quam voluptas est et recusandae. Maiores qui aut eveniet totam quisquam autem.', 'News', 1, 'Et inventore', 0, 'https://picsum.photos/1200/630', 'Ea Quos Distinctio Aperiam', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(7, 'Delectus ea officia autem', 'delectus-ea-officia-autem', 'Eligendi qui libero et et consectetur eos nemo. Et dolorem similique minima rerum ipsam numquam sint. Deleniti voluptas sit quisquam repudiandae dicta. Sed assumenda et sunt qui numquam quos rerum. Similique optio sed est ipsam a soluta veniam.', 'Necessitatibus nulla quam reprehenderit cumque. Quae reprehenderit similique quo omnis. Earum itaque omnis vitae quis.\n\nCorporis ut eligendi animi. Nam doloremque autem atque vero unde sunt eum. Et ut qui ut numquam impedit.\n\nExercitationem et provident labore sit voluptates consequatur. Non qui consectetur saepe quasi. Et error quisquam et.\n\nNostrum qui dolor est beatae tempora. Eligendi a ea aliquid nihil magni perspiciatis. Voluptatum nisi sed sint voluptas placeat magni maiores.\n\nVoluptatem ab quasi sunt laborum distinctio et ea. Ut magni beatae commodi tempora consectetur. Repellendus earum ea velit iure doloribus. Dolor mollitia tempora voluptas.\n\nQuasi cum ratione nobis omnis error quis minus. Molestiae voluptatem deserunt dolor vitae consectetur et amet.', 'Article', 1, 'Et inventore', 0, 'https://picsum.photos/1200/630', 'Delectus Ea Officia Autem', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(8, 'Saepe rerum aspernatur ut', 'saepe-rerum-aspernatur-ut', 'Soluta in doloribus inventore est omnis. Reprehenderit dignissimos architecto in in laudantium est.', 'Omnis reiciendis rerum ex ipsam exercitationem doloremque nemo. Consequuntur sed iusto dolore repudiandae eos non exercitationem. Autem qui dolorem doloremque expedita libero ea qui a. Eum harum animi laudantium recusandae architecto aliquid ratione et.\n\nArchitecto cumque repellendus ea. Dolor doloremque vero voluptatem dicta est ut quia. Molestiae ut molestiae ea dolor. Eos ducimus ea consectetur quasi ab.\n\nEa suscipit quasi corrupti eaque corrupti assumenda vero. Iste quod sit fuga ipsum cupiditate. Nisi dolorum non eos non quo praesentium laborum. Quibusdam sapiente quis blanditiis quia cumque.\n\nFacere sed qui aut omnis. Aut ut cupiditate beatae vel. Perferendis enim necessitatibus doloremque.\n\nAnimi aut deserunt laborum perspiciatis facilis aut rerum velit. Delectus ea est ut adipisci veritatis est deleniti natus. Consequatur autem in dolorum at dolore qui voluptas omnis. Accusamus harum consequatur et.\n\nLaborum reiciendis nemo aliquam error mollitia illo explicabo. Aliquid dolorem beatae fugiat quo ut voluptas provident. Consectetur id omnis rerum provident dicta iste et dolor.\n\nVoluptatem qui aliquam ratione ab maiores dolor. Dignissimos temporibus saepe rem quis soluta officiis consequuntur. Necessitatibus in quo dignissimos eos. Dolor et repellendus quisquam rerum.', 'Blog', 4, 'Sed illum', 0, 'https://picsum.photos/1200/630', 'Saepe Rerum Aspernatur Ut', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(9, 'Sit ut porro quae', 'sit-ut-porro-quae', 'Voluptatem qui repudiandae et nihil aut. Odio dolor excepturi repudiandae id similique reiciendis enim. Dolorum cum sed neque quasi consequuntur adipisci. Eum architecto itaque sequi ea qui eum perferendis.', 'Aut voluptatum consectetur voluptas nihil blanditiis vel. Nobis aut unde aliquid ullam blanditiis vel. Et molestias aut veritatis sunt eos similique. Ut et hic quasi perferendis laboriosam voluptatum quibusdam.\n\nAt accusamus nam sit non. Ut harum fugiat id adipisci necessitatibus accusamus error. Deleniti veniam numquam voluptates est.\n\nOmnis illum iste velit autem quas nisi quia. Rerum facere non quis rerum ea libero sequi. Modi in blanditiis eligendi ut quam quaerat. Laboriosam fugiat molestiae fuga.\n\nVero porro suscipit nihil sit. Saepe temporibus aliquam voluptas velit cumque exercitationem eveniet. Ullam commodi id ab eius quia blanditiis.\n\nDolores et quam quidem enim nemo adipisci autem. Provident rem fugit quia minima in quo mollitia error. Aspernatur deleniti atque tenetur quis repellendus unde consequatur. Voluptas vel consectetur laborum veniam aut explicabo at.', 'Article', 4, 'Sed illum', 0, 'https://picsum.photos/1200/630', 'Sit Ut Porro Quae', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(10, 'Sit quidem commodi quo', 'sit-quidem-commodi-quo', 'Harum voluptatem ex corporis pariatur similique quibusdam consequatur. Aut natus voluptatem quis omnis et quia. Deserunt velit et et vero. Reiciendis sit qui sed sit similique.', 'Deleniti neque et et nostrum neque similique. Voluptatum quasi sed accusantium voluptas eum facere.\n\nPerspiciatis corrupti asperiores laudantium error quaerat eius et. Sint aut quae culpa ea laudantium.\n\nRepellendus dolorem consequatur quibusdam dolor voluptatibus et. Perferendis vel ea quis atque molestiae. Sunt dolorem corrupti magni cumque.\n\nEst sed iure magni eveniet laudantium quae corrupti. Qui porro repellat eaque sunt.\n\nDicta sunt molestiae aut consequuntur corrupti nam reprehenderit soluta. Est sint harum odit illo officia error. Sunt occaecati veritatis eligendi pariatur. Autem suscipit expedita quisquam. Consequatur cumque vel voluptate vero sit possimus autem.', 'Blog', 3, 'Aut earum', 1, 'https://picsum.photos/1200/630', 'Sit Quidem Commodi Quo', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(11, 'Est eos ut velit', 'est-eos-ut-velit', 'Suscipit exercitationem beatae et porro non optio qui ut. Aut vel dignissimos nulla quia. Perspiciatis culpa voluptatibus asperiores dicta voluptatibus.', 'Quae tempore voluptas sequi id sapiente. Recusandae et laudantium rem ut qui veniam. Enim fugiat velit repellat aut delectus sapiente.\n\nDoloribus ducimus magnam quia atque. Ducimus cum illum doloribus quia temporibus. Eveniet deleniti in dolor quis. Qui officia qui repudiandae quia quis et ad.\n\nImpedit nam itaque non quidem eaque consequatur ut. Unde laboriosam sapiente et ea possimus temporibus sapiente voluptate. Quod amet est non commodi et porro. Qui laboriosam mollitia porro minima. Praesentium voluptas perspiciatis quia rem dignissimos.\n\nCulpa tempore placeat ducimus et non aut. Quos autem officiis quam sit voluptas dolorum. Quo fugit ut beatae deserunt error tempora et.\n\nAut nihil dolorum quod est ad reiciendis provident. Laudantium ratione voluptas aut eos id quaerat repellat. Vero placeat voluptas sunt aliquid ea. Quis autem optio quos commodi sit eum modi.\n\nLibero placeat officiis non architecto perferendis. Repellendus non aut qui. Porro est tempora explicabo sed voluptatem consequatur. Et voluptas maiores et beatae et possimus libero est.\n\nVoluptatum ut eaque enim vel nemo. Perspiciatis placeat expedita adipisci distinctio maiores voluptatem. Laudantium reprehenderit facilis dignissimos quaerat.', 'News', 1, 'Et inventore', 0, 'https://picsum.photos/1200/630', 'Est Eos Ut Velit', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(12, 'Qui tempora vel eligendi non', 'qui-tempora-vel-eligendi-non', 'Voluptatibus aut rem ut est beatae repudiandae laudantium totam. Voluptatem quam hic quos quos omnis asperiores. Vitae aliquam architecto minima totam quos.', 'Sunt tempora excepturi earum consectetur placeat. Rerum nulla sed id laboriosam. Nobis minus quaerat aut voluptatem deserunt ipsa delectus. Consequuntur nemo soluta quo eum.\n\nExcepturi iusto voluptates perferendis illo qui voluptas. Ut et explicabo voluptatibus eos quis deleniti. Qui ea molestiae distinctio praesentium. Aut tempora quaerat porro repudiandae et magni nam.\n\nAccusantium sint dolor ipsum adipisci facere dolor voluptatem. Dolorem iusto est est quod at. Eius fugit iusto aspernatur eveniet exercitationem. Quae sed beatae consequatur molestiae dolorum qui.\n\nOfficiis possimus provident aperiam optio fuga reiciendis. Fuga neque totam rem sit quam et. Excepturi omnis accusantium vero officia dicta sit. Doloribus ipsam libero qui dicta eveniet perspiciatis.\n\nHarum id est explicabo officia molestiae recusandae. Sit laudantium sunt natus quidem. Qui temporibus eum et nam laudantium beatae.\n\nNihil laborum tenetur quis quaerat. Explicabo quia similique voluptatibus. Aspernatur voluptatem dolorem sint aut nemo voluptas. Voluptatem dolorem fugiat odit animi molestiae.', 'Article', 1, 'Et inventore', 1, 'https://picsum.photos/1200/630', 'Qui Tempora Vel Eligendi Non', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(13, 'Qui neque ut ut esse est ea', 'qui-neque-ut-ut-esse-est-ea', 'Nemo perspiciatis consequuntur praesentium. Ipsum dolor alias asperiores consectetur aperiam. Eum quae veniam consequatur accusamus. Non fugit corporis quidem porro et.', 'Voluptas qui porro explicabo molestias nisi pariatur ad perspiciatis. Qui quis dicta animi molestiae qui rerum. Repellendus unde expedita perferendis eum dolorem consectetur recusandae.\n\nVeniam sapiente non aspernatur commodi dolorem. Nihil voluptas quia aspernatur similique in non quaerat. Sunt officia exercitationem necessitatibus excepturi magni eos.\n\nCulpa placeat voluptas harum ut voluptatum. Accusantium qui possimus voluptatum error aut. Qui qui dolorum dolorem autem neque sed quo alias. Dolore dolor quia vel ut eos consequatur.\n\nProvident cumque quis eligendi. Adipisci recusandae provident voluptatem et. Ipsam et est dolor libero laborum fugit dolorum. Animi sed aliquam qui at consequatur corporis sint ut.\n\nDeserunt minus et voluptatem eaque quis maxime molestiae. Animi molestiae et cumque quae veniam.', 'News', 4, 'Sed illum', 1, 'https://picsum.photos/1200/630', 'Qui Neque Ut Ut Esse Est Ea', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(14, 'Nihil sit sit unde', 'nihil-sit-sit-unde', 'Cum occaecati occaecati est enim et. Odio unde facilis sit aut. Amet qui exercitationem suscipit debitis sint quisquam. Non consequuntur sed rerum dolorum.', 'Earum illo hic commodi pariatur. Mollitia tenetur debitis itaque et enim corrupti. Dolorem quam sint cupiditate. Laboriosam sit sapiente possimus.\n\nLaudantium atque voluptatem laudantium sunt labore omnis expedita est. Aut velit placeat tempore labore doloremque. Tenetur rerum debitis magnam deserunt ex magnam placeat. Modi doloribus ad et nemo quia.\n\nTemporibus aut accusantium quia eum rerum nemo labore ducimus. Temporibus ut consequatur maxime nulla architecto officiis. Sint ab autem magnam quidem. Ut quaerat aut occaecati qui.\n\nVoluptas sint quos qui qui adipisci qui. Dolores similique laudantium blanditiis rerum quas.\n\nNisi modi voluptatum in enim odit et pariatur. Quia qui consectetur ut nesciunt similique nisi. Saepe non deserunt tempora in deserunt dolorum consequatur. Ad ut dicta qui at ullam id quod.', 'News', 1, 'Et inventore', 1, 'https://picsum.photos/1200/630', 'Nihil Sit Sit Unde', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(15, 'Dolor doloribus et et et', 'dolor-doloribus-et-et-et', 'Qui at placeat et dolores dolor. Nostrum sit vitae eaque corporis qui est nostrum. Ab iusto aliquid doloremque. Inventore fuga possimus sunt laboriosam voluptas saepe. Qui a qui quia rerum.', 'Nihil tempore et iure repellat. Maxime quis impedit voluptatem autem. Consequatur ad fugiat nam eum et. Labore et sed illum autem.\n\nEt amet aliquam modi quo adipisci. Velit adipisci quis asperiores consectetur voluptas dignissimos. Aliquam molestiae quaerat id pariatur doloremque. Totam nihil ab vero consectetur.\n\nItaque aut qui omnis ab aliquid praesentium soluta est. Qui eius et enim quia exercitationem eaque. Temporibus eos rerum eos nobis et.\n\nVoluptas sunt qui assumenda nesciunt et maiores ut. Unde eligendi aspernatur officia perferendis odio quia perferendis illo. Qui est nulla ut animi.\n\nVelit facere optio quia magnam suscipit iste voluptatibus omnis. Minus dolor quam deleniti inventore facilis. Aut libero tempora rerum quibusdam sed porro rem molestiae.', 'Article', 3, 'Aut earum', 1, 'https://picsum.photos/1200/630', 'Dolor Doloribus Et Et Et', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(16, 'Omnis in hic autem', 'omnis-in-hic-autem', 'Voluptatem aperiam consequatur enim et fugiat quisquam nulla. Voluptas dolor cumque distinctio illo doloribus quia commodi. Est at voluptatem iure alias nihil. Et culpa ut perferendis sequi qui minus velit.', 'Aut expedita ea dolor impedit qui. Laudantium possimus omnis nihil accusamus facilis temporibus. Et provident fuga tenetur eius ut et non qui. Quisquam aperiam minus molestiae repudiandae. Neque dolorum saepe id nihil doloribus et.\n\nEt veniam nihil voluptas aliquid in similique quaerat. Ut quam minima sint similique adipisci. Expedita at ut quibusdam numquam quia. Non corrupti doloribus et tempore.\n\nCulpa et porro non asperiores quaerat eos dolor. Commodi hic accusamus fugiat debitis at non nihil. Nobis aut et id omnis modi velit quis. Aut magnam sit velit omnis ut debitis porro.\n\nConsequatur rerum molestiae a. Eum eum impedit est velit.\n\nVero dolor impedit consequatur quisquam quo facere. Dolorum suscipit quia sapiente ullam quae ipsa laudantium. Commodi aliquid officiis voluptatibus velit qui incidunt eligendi. Laboriosam fugiat iste quo sit soluta fuga. Vel eligendi consequatur sed.\n\nAspernatur dicta omnis veniam et voluptatum et. Ab consequuntur dolore excepturi ex vitae aliquid est neque. Hic nulla distinctio ratione deserunt quia in. Quae eligendi officiis nemo illum impedit.\n\nIpsam maiores quia repellat rem molestiae. Et sapiente soluta reiciendis aut. Doloribus minus delectus quam odit ut. Minus in soluta eaque reprehenderit. Enim ipsa error quas consequatur consequuntur qui magnam.', 'News', 1, 'Et inventore', 1, 'https://picsum.photos/1200/630', 'Omnis In Hic Autem', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(17, 'Sint ut dicta corrupti', 'sint-ut-dicta-corrupti', 'Fuga ut quasi omnis voluptatibus aliquid dolor. Et dicta et exercitationem qui voluptatem. Voluptas ex amet voluptates accusamus doloribus dignissimos aspernatur consectetur. Quam delectus dolorem et optio aut eaque.', 'Fugiat voluptas adipisci voluptatem distinctio aliquid ullam excepturi. Porro autem sed est nihil temporibus at libero. Excepturi omnis velit saepe perferendis officiis quia aliquam et. Quia aut rerum culpa autem animi quasi.\n\nMinima quae ea non autem. Molestiae eligendi enim aspernatur. Est sed a maiores dolorem.\n\nNisi amet repudiandae et amet autem sunt. Rem dicta voluptatem ratione saepe tenetur. Quis voluptate reprehenderit aliquam voluptas velit. Magnam dolore labore ipsa officiis quibusdam sunt.\n\nDoloribus et reprehenderit odio eos. Labore omnis consectetur fugiat. Perferendis quis dicta ipsum officiis qui.\n\nModi qui delectus rerum qui qui provident. Voluptas enim exercitationem autem nostrum in esse. Fugit sit veniam ut. Quia totam ad omnis.\n\nPerspiciatis omnis minus iure sint molestias eos est. Nobis nam adipisci voluptatem adipisci architecto enim. Aliquam harum et est quidem esse est non. Dolores ut ut doloribus corporis porro ea iusto quo.', 'Blog', 5, 'Iure dolorem', 1, 'https://picsum.photos/1200/630', 'Sint Ut Dicta Corrupti', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(18, 'Quam et et cumque cum', 'quam-et-et-cumque-cum', 'Voluptatem tempore nesciunt optio et quasi velit officiis. At ipsam ut et voluptas illum aliquam perspiciatis. Rem voluptatem omnis sint. Est velit perspiciatis et iste. Voluptas fugiat est sed possimus.', 'Mollitia beatae rerum quo dolorum. Repellendus aut autem non velit voluptatibus quae distinctio. Quibusdam soluta dicta nulla dolor ea blanditiis. Omnis ipsam nulla enim aliquam numquam doloribus quo.\n\nOfficiis deserunt odio qui. Fuga error ipsum aut. Ab dolor sit doloribus quam quae odit consectetur exercitationem. Ea et autem architecto et optio.\n\nDistinctio inventore sit nemo quia. Ut quis eos quibusdam beatae cupiditate quasi maiores dignissimos. Porro qui ut occaecati nobis. Dolorem nemo pariatur iste quisquam possimus et.\n\nLaboriosam molestias aut alias consequuntur inventore amet. Delectus facilis aliquam consequatur dolor deserunt quo. Tempora culpa quia consequatur harum quisquam qui.\n\nExpedita illum illum similique adipisci sed. Voluptatem ut voluptatem quia sint illo voluptatem optio. Earum consequatur natus autem magni et qui.', 'Article', 4, 'Sed illum', 0, 'https://picsum.photos/1200/630', 'Quam Et Et Cumque Cum', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(19, 'Aliquid eum quos qui optio', 'aliquid-eum-quos-qui-optio', 'Veritatis ut assumenda temporibus repellat pariatur libero vitae. At sequi quo et aut illo enim. Nam est aut ut quo.', 'Dolores quo et error nesciunt totam. Aperiam et mollitia enim ipsum aliquid.\n\nEt cum ipsa similique consequatur voluptatem. Aliquid rem ut esse at mollitia amet officiis. Culpa quod vero itaque odio vero aliquid adipisci.\n\nConsequatur ducimus eligendi iste ratione quo. Reiciendis vero perferendis nemo quis perferendis odio ea. Similique iusto possimus rem doloribus. Et rerum autem nemo est veritatis.\n\nQuis officia et reprehenderit ab ex. Aut facilis dolorem qui et soluta vitae. Et quidem tempora dicta consequuntur consequuntur repudiandae. Voluptas quas quod vero aperiam. Quos asperiores ipsum sint.\n\nOfficiis debitis quis aut voluptatibus earum commodi id rerum. Voluptas delectus quisquam perferendis laboriosam.\n\nTenetur omnis laudantium porro molestias. Unde sed eligendi et voluptas dolorem qui a architecto. Est et autem maiores asperiores. Ut aut praesentium quis ut nihil modi.\n\nReprehenderit voluptatum nihil cupiditate culpa. Aut alias sapiente impedit in nam voluptatem voluptatem. Quasi omnis autem sit iusto ut laborum ut. Necessitatibus et qui ipsum.', 'News', 3, 'Aut earum', 1, 'https://picsum.photos/1200/630', 'Aliquid Eum Quos Qui Optio', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(20, 'Qui sunt nihil ut modi', 'qui-sunt-nihil-ut-modi', 'Aliquid et magnam recusandae temporibus recusandae quibusdam quo. Autem non et molestiae tenetur quasi incidunt voluptas. Libero temporibus harum ad. Et ratione eum enim molestiae.', 'Vitae sed eum aut perferendis doloribus corrupti autem. Soluta fugiat est laborum voluptatem in. Eius mollitia consequatur alias est sit voluptatem delectus. Et fuga dicta repudiandae sunt libero.\n\nAnimi qui non soluta vel. Et consequatur architecto impedit voluptatem omnis quis autem. Doloribus saepe accusamus dicta. Aut minima commodi dignissimos.\n\nExercitationem eaque dolorem et sit alias. Placeat consequuntur fuga fugiat magni. Illo ipsum accusantium nobis asperiores repudiandae. Totam incidunt rerum et delectus est accusamus.\n\nCorrupti consequuntur iure velit est veniam deleniti. Quisquam quibusdam aut incidunt tempora nemo optio vero quia. Aut mollitia facilis et nihil facilis quisquam sunt. Laboriosam tempore omnis ducimus quia et et.\n\nId dolor molestiae doloribus eos. Sapiente et quibusdam odio repellendus. Neque tenetur eos ipsum et. Non aut occaecati sequi sit architecto. Distinctio aliquam reiciendis nostrum ratione.\n\nExpedita deserunt adipisci neque veniam. Inventore esse quaerat unde nisi et ad quibusdam sed. Ad et maiores quo omnis.', 'Blog', 5, 'Iure dolorem', 0, 'https://picsum.photos/1200/630', 'Qui Sunt Nihil Ut Modi', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(21, 'Enim rerum praesentium quod', 'enim-rerum-praesentium-quod', 'Sint corporis dolores similique mollitia. Libero ipsa id molestiae laudantium. Est quidem reiciendis id deserunt. Eum facilis est perspiciatis beatae.', 'Omnis excepturi minus eos laudantium velit nesciunt. Facilis possimus debitis placeat ut sed et. Qui enim necessitatibus saepe sunt et quisquam modi.\n\nEt quia commodi quo nam. Quis quas quas non repellat.\n\nQuas in velit ea hic eius totam est. Error facilis veniam quis autem tenetur aut quis.\n\nConsequatur porro quae in sapiente esse. Iusto quaerat aut error aliquid quo autem. Repudiandae ea iure sed fugit aspernatur consequatur officia.\n\nAd quo quisquam a ad. Officiis possimus aut expedita tempore eaque.\n\nRepellendus sed tempore voluptas iusto eligendi perspiciatis numquam. Aut occaecati commodi quo occaecati ab qui aut.\n\nDolores fugiat iusto minus. Aliquam eum numquam ad et voluptatem. Id voluptas ipsum est inventore. Doloribus at molestiae ut in.', 'Blog', 5, 'Iure dolorem', 1, 'https://picsum.photos/1200/630', 'Enim Rerum Praesentium Quod', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(22, 'Rem quo culpa nemo', 'rem-quo-culpa-nemo', 'Eveniet id assumenda omnis et quod dolorum inventore. Expedita qui voluptates atque sapiente. Ducimus dolorum voluptatem quia sed corrupti. Molestiae et eum velit quas cumque consequatur in. Tempore consectetur non vel.', 'Nihil officia ut placeat id eius. Quibusdam est voluptate impedit nemo molestiae nesciunt. Nobis ut sed odio quaerat molestiae mollitia quia sint. Unde aut cum modi voluptates odio vel vitae.\n\nNon perspiciatis cupiditate quae explicabo quasi quaerat minus. Vel sint consequatur quos quis laboriosam vel. Rem error blanditiis doloribus molestias. Reprehenderit sit ut sunt dolorem corrupti dicta quaerat.\n\nAspernatur veniam itaque numquam necessitatibus quam. Eveniet totam aliquam accusamus vel sit nihil distinctio. Ipsam nihil est illum aut nihil culpa id ipsa.\n\nExercitationem quia dicta unde molestiae doloribus quos veritatis soluta. Voluptatem rerum voluptatem dolorem sunt accusantium. Cupiditate eum quos distinctio dolores nisi a. Laudantium dolorem assumenda voluptas.\n\nNostrum enim libero consequatur ea et nisi. Ut nulla laboriosam et. Natus ea nemo ut maiores est. Est sit qui ducimus porro.\n\nVeniam odit dolor eveniet sit quisquam. Fugit praesentium sed non sit sunt aut aut. Culpa cupiditate doloremque autem occaecati commodi. Sed eum qui qui et corporis qui. Saepe magni dolores cupiditate quibusdam eum.\n\nUt inventore dicta nihil cupiditate quam unde aut. Dolor repudiandae ut iure dolorem quam similique cupiditate. Explicabo hic officiis ut non delectus dolor.', 'News', 1, 'Et inventore', 0, 'https://picsum.photos/1200/630', 'Rem Quo Culpa Nemo', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(23, 'Itaque eum modi quo', 'itaque-eum-modi-quo', 'Consequatur est sed consequatur aut et. Occaecati saepe assumenda porro ex. Expedita suscipit molestiae totam nulla debitis.', 'Quaerat commodi officia facere blanditiis ipsam ut sequi. Vitae excepturi esse fugiat minima optio numquam. Ipsum inventore ex et ullam rerum quo. Velit error et fugit harum ipsum. Iste officiis totam odio labore.\n\nVelit est quo soluta veritatis dolorem voluptatum sequi. Reiciendis officia ut molestias et et. Repellat unde voluptatum deserunt impedit voluptatem enim.\n\nEos dolores eos id. Qui necessitatibus esse adipisci quas. Sed vel totam iure corporis. Itaque consequatur ut expedita.\n\nDolores est repellendus ut iusto. Sed quia saepe perspiciatis repellendus. Quia quis qui repellendus quibusdam. Deleniti cum at dolorem consequatur dicta enim perferendis.\n\nTotam voluptas non excepturi vel. Maxime cum ab qui sit quo unde. Et expedita tenetur omnis omnis assumenda nostrum porro.\n\nSed sunt debitis autem et repellendus. Ipsum voluptatum et et quis. Labore et cupiditate molestias quos occaecati fuga.', 'Blog', 1, 'Et inventore', 1, 'https://picsum.photos/1200/630', 'Itaque Eum Modi Quo', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(24, 'At optio quam eveniet', 'at-optio-quam-eveniet', 'Totam incidunt inventore repellendus omnis omnis. Voluptas ducimus provident voluptatem natus at fugit. Quo quidem aut occaecati ab eaque. Exercitationem voluptatem quos repellendus neque.', 'Exercitationem eum est aut excepturi ipsam amet. Omnis dolorem dolorem est reprehenderit in sit iusto. Voluptas rerum dolor ea voluptates ipsa. Quam ut hic et ea sit perferendis nam tempore.\n\nPerferendis nisi vero ut autem ut facere. Modi recusandae blanditiis sit explicabo eos. Nesciunt officiis error ad distinctio explicabo sed dolore.\n\nRepellendus dolorem nisi sequi minima praesentium quia voluptatum vel. Hic consequuntur quis maxime. Et fugiat et dolore rem voluptatem dolore.\n\nMagni quia quasi nihil in. Aut et aut et. Illo doloremque deserunt perspiciatis aspernatur asperiores.\n\nAnimi ut officia eligendi sunt impedit officia iure quam. Ea enim dolor et omnis. Nulla et qui rem consequuntur cum qui dolorem. Iste sint assumenda consequatur numquam labore explicabo omnis.', 'Article', 2, 'Blanditiis', 0, 'https://picsum.photos/1200/630', 'At Optio Quam Eveniet', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(25, 'Ab dolorem iure delectus in', 'ab-dolorem-iure-delectus-in', 'Fugit doloribus consequatur aperiam et ut quia et et. Sit est in non eum.', 'Voluptatibus dolor soluta culpa. Eligendi suscipit molestiae quia similique nemo et. Nesciunt consectetur eligendi veritatis neque.\n\nDolor odit minus autem sed doloremque officia provident. Voluptatem aut nihil aliquid et porro. Voluptatem architecto sit soluta cupiditate aut. Et aut quam eum aperiam autem ratione.\n\nEt a consequatur reprehenderit culpa. Delectus exercitationem nemo voluptatem cupiditate nobis. Fuga in dolores quae placeat veniam.\n\nSint dolores vel nulla distinctio. Quis tempore numquam aliquid quia. Maxime sit quod exercitationem. Assumenda et suscipit ut exercitationem at modi itaque.\n\nEst aut laborum libero. Et et eum sit dolores officiis voluptatem blanditiis dolor. Eligendi nobis quis autem. Est et reprehenderit dicta sint.\n\nSed libero aut recusandae rerum sed. Odit et nesciunt omnis sint voluptates. Et et unde quam temporibus. Esse a et temporibus.\n\nEius minus et est ex ut. Ipsum delectus laborum architecto maxime cumque. Recusandae et dolorem vel laborum blanditiis consequatur est.', 'Article', 3, 'Aut earum', 1, 'https://picsum.photos/1200/630', 'Ab Dolorem Iure Delectus In', '', 'A CMS like modular starter application project built with latest Laravel.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(2, 'administrator', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(3, 'manager', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(4, 'executive', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42'),
(5, 'user', 'web', '2023-12-17 07:52:42', '2023-12-17 07:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `type` char(20) NOT NULL DEFAULT 'string',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`) VALUES
(1, 10, 1, 'Modules\\Article\\Models\\Post'),
(2, 3, 1, 'Modules\\Article\\Models\\Post'),
(3, 7, 1, 'Modules\\Article\\Models\\Post'),
(4, 2, 1, 'Modules\\Article\\Models\\Post'),
(5, 4, 1, 'Modules\\Article\\Models\\Post'),
(6, 8, 1, 'Modules\\Article\\Models\\Post'),
(7, 1, 1, 'Modules\\Article\\Models\\Post'),
(8, 5, 1, 'Modules\\Article\\Models\\Post'),
(9, 9, 1, 'Modules\\Article\\Models\\Post'),
(10, 1, 2, 'Modules\\Article\\Models\\Post'),
(11, 7, 2, 'Modules\\Article\\Models\\Post'),
(12, 5, 2, 'Modules\\Article\\Models\\Post'),
(13, 10, 2, 'Modules\\Article\\Models\\Post'),
(14, 4, 2, 'Modules\\Article\\Models\\Post'),
(15, 8, 3, 'Modules\\Article\\Models\\Post'),
(16, 2, 3, 'Modules\\Article\\Models\\Post'),
(17, 9, 3, 'Modules\\Article\\Models\\Post'),
(18, 7, 3, 'Modules\\Article\\Models\\Post'),
(19, 6, 3, 'Modules\\Article\\Models\\Post'),
(20, 10, 3, 'Modules\\Article\\Models\\Post'),
(21, 1, 3, 'Modules\\Article\\Models\\Post'),
(22, 5, 3, 'Modules\\Article\\Models\\Post'),
(23, 4, 3, 'Modules\\Article\\Models\\Post'),
(24, 3, 3, 'Modules\\Article\\Models\\Post'),
(25, 2, 4, 'Modules\\Article\\Models\\Post'),
(26, 3, 4, 'Modules\\Article\\Models\\Post'),
(27, 4, 4, 'Modules\\Article\\Models\\Post'),
(28, 1, 4, 'Modules\\Article\\Models\\Post'),
(29, 7, 4, 'Modules\\Article\\Models\\Post'),
(30, 3, 5, 'Modules\\Article\\Models\\Post'),
(31, 7, 5, 'Modules\\Article\\Models\\Post'),
(32, 2, 5, 'Modules\\Article\\Models\\Post'),
(33, 8, 5, 'Modules\\Article\\Models\\Post'),
(34, 10, 5, 'Modules\\Article\\Models\\Post'),
(35, 6, 5, 'Modules\\Article\\Models\\Post'),
(36, 9, 5, 'Modules\\Article\\Models\\Post'),
(37, 1, 5, 'Modules\\Article\\Models\\Post'),
(38, 4, 5, 'Modules\\Article\\Models\\Post'),
(39, 5, 5, 'Modules\\Article\\Models\\Post'),
(40, 6, 6, 'Modules\\Article\\Models\\Post'),
(41, 3, 6, 'Modules\\Article\\Models\\Post'),
(42, 4, 6, 'Modules\\Article\\Models\\Post'),
(43, 5, 6, 'Modules\\Article\\Models\\Post'),
(44, 1, 6, 'Modules\\Article\\Models\\Post'),
(45, 2, 6, 'Modules\\Article\\Models\\Post'),
(46, 9, 6, 'Modules\\Article\\Models\\Post'),
(47, 8, 6, 'Modules\\Article\\Models\\Post'),
(48, 5, 7, 'Modules\\Article\\Models\\Post'),
(49, 9, 7, 'Modules\\Article\\Models\\Post'),
(50, 10, 7, 'Modules\\Article\\Models\\Post'),
(51, 3, 7, 'Modules\\Article\\Models\\Post'),
(52, 1, 7, 'Modules\\Article\\Models\\Post'),
(53, 8, 8, 'Modules\\Article\\Models\\Post'),
(54, 4, 8, 'Modules\\Article\\Models\\Post'),
(55, 6, 8, 'Modules\\Article\\Models\\Post'),
(56, 3, 8, 'Modules\\Article\\Models\\Post'),
(57, 5, 8, 'Modules\\Article\\Models\\Post'),
(58, 7, 8, 'Modules\\Article\\Models\\Post'),
(59, 2, 8, 'Modules\\Article\\Models\\Post'),
(60, 10, 8, 'Modules\\Article\\Models\\Post'),
(61, 4, 9, 'Modules\\Article\\Models\\Post'),
(62, 5, 9, 'Modules\\Article\\Models\\Post'),
(63, 7, 9, 'Modules\\Article\\Models\\Post'),
(64, 6, 9, 'Modules\\Article\\Models\\Post'),
(65, 2, 9, 'Modules\\Article\\Models\\Post'),
(66, 7, 10, 'Modules\\Article\\Models\\Post'),
(67, 9, 10, 'Modules\\Article\\Models\\Post'),
(68, 2, 10, 'Modules\\Article\\Models\\Post'),
(69, 3, 10, 'Modules\\Article\\Models\\Post'),
(70, 1, 10, 'Modules\\Article\\Models\\Post'),
(71, 9, 11, 'Modules\\Article\\Models\\Post'),
(72, 5, 11, 'Modules\\Article\\Models\\Post'),
(73, 8, 11, 'Modules\\Article\\Models\\Post'),
(74, 7, 11, 'Modules\\Article\\Models\\Post'),
(75, 6, 11, 'Modules\\Article\\Models\\Post'),
(76, 1, 11, 'Modules\\Article\\Models\\Post'),
(77, 4, 11, 'Modules\\Article\\Models\\Post'),
(78, 2, 11, 'Modules\\Article\\Models\\Post'),
(79, 1, 12, 'Modules\\Article\\Models\\Post'),
(80, 5, 12, 'Modules\\Article\\Models\\Post'),
(81, 4, 12, 'Modules\\Article\\Models\\Post'),
(82, 10, 12, 'Modules\\Article\\Models\\Post'),
(83, 3, 12, 'Modules\\Article\\Models\\Post'),
(84, 2, 12, 'Modules\\Article\\Models\\Post'),
(85, 9, 12, 'Modules\\Article\\Models\\Post'),
(86, 6, 12, 'Modules\\Article\\Models\\Post'),
(87, 10, 13, 'Modules\\Article\\Models\\Post'),
(88, 9, 13, 'Modules\\Article\\Models\\Post'),
(89, 2, 13, 'Modules\\Article\\Models\\Post'),
(90, 1, 13, 'Modules\\Article\\Models\\Post'),
(91, 5, 13, 'Modules\\Article\\Models\\Post'),
(92, 8, 13, 'Modules\\Article\\Models\\Post'),
(93, 7, 13, 'Modules\\Article\\Models\\Post'),
(94, 3, 13, 'Modules\\Article\\Models\\Post'),
(95, 4, 13, 'Modules\\Article\\Models\\Post'),
(96, 6, 13, 'Modules\\Article\\Models\\Post'),
(97, 7, 14, 'Modules\\Article\\Models\\Post'),
(98, 8, 14, 'Modules\\Article\\Models\\Post'),
(99, 9, 14, 'Modules\\Article\\Models\\Post'),
(100, 5, 14, 'Modules\\Article\\Models\\Post'),
(101, 10, 14, 'Modules\\Article\\Models\\Post'),
(102, 3, 14, 'Modules\\Article\\Models\\Post'),
(103, 2, 14, 'Modules\\Article\\Models\\Post'),
(104, 6, 14, 'Modules\\Article\\Models\\Post'),
(105, 1, 14, 'Modules\\Article\\Models\\Post'),
(106, 2, 15, 'Modules\\Article\\Models\\Post'),
(107, 10, 15, 'Modules\\Article\\Models\\Post'),
(108, 3, 15, 'Modules\\Article\\Models\\Post'),
(109, 1, 15, 'Modules\\Article\\Models\\Post'),
(110, 4, 15, 'Modules\\Article\\Models\\Post'),
(111, 6, 15, 'Modules\\Article\\Models\\Post'),
(112, 9, 15, 'Modules\\Article\\Models\\Post'),
(113, 5, 15, 'Modules\\Article\\Models\\Post'),
(114, 8, 15, 'Modules\\Article\\Models\\Post'),
(115, 4, 16, 'Modules\\Article\\Models\\Post'),
(116, 6, 16, 'Modules\\Article\\Models\\Post'),
(117, 3, 16, 'Modules\\Article\\Models\\Post'),
(118, 8, 16, 'Modules\\Article\\Models\\Post'),
(119, 2, 16, 'Modules\\Article\\Models\\Post'),
(120, 9, 16, 'Modules\\Article\\Models\\Post'),
(121, 5, 16, 'Modules\\Article\\Models\\Post'),
(122, 6, 17, 'Modules\\Article\\Models\\Post'),
(123, 1, 17, 'Modules\\Article\\Models\\Post'),
(124, 3, 17, 'Modules\\Article\\Models\\Post'),
(125, 8, 17, 'Modules\\Article\\Models\\Post'),
(126, 2, 17, 'Modules\\Article\\Models\\Post'),
(127, 10, 17, 'Modules\\Article\\Models\\Post'),
(128, 9, 17, 'Modules\\Article\\Models\\Post'),
(129, 4, 17, 'Modules\\Article\\Models\\Post'),
(130, 5, 17, 'Modules\\Article\\Models\\Post'),
(131, 7, 17, 'Modules\\Article\\Models\\Post'),
(132, 8, 18, 'Modules\\Article\\Models\\Post'),
(133, 3, 18, 'Modules\\Article\\Models\\Post'),
(134, 4, 18, 'Modules\\Article\\Models\\Post'),
(135, 2, 18, 'Modules\\Article\\Models\\Post'),
(136, 5, 18, 'Modules\\Article\\Models\\Post'),
(137, 6, 19, 'Modules\\Article\\Models\\Post'),
(138, 3, 19, 'Modules\\Article\\Models\\Post'),
(139, 5, 19, 'Modules\\Article\\Models\\Post'),
(140, 8, 19, 'Modules\\Article\\Models\\Post'),
(141, 9, 19, 'Modules\\Article\\Models\\Post'),
(142, 2, 19, 'Modules\\Article\\Models\\Post'),
(143, 1, 20, 'Modules\\Article\\Models\\Post'),
(144, 6, 20, 'Modules\\Article\\Models\\Post'),
(145, 4, 20, 'Modules\\Article\\Models\\Post'),
(146, 2, 20, 'Modules\\Article\\Models\\Post'),
(147, 8, 20, 'Modules\\Article\\Models\\Post'),
(148, 5, 20, 'Modules\\Article\\Models\\Post'),
(149, 7, 20, 'Modules\\Article\\Models\\Post'),
(150, 3, 20, 'Modules\\Article\\Models\\Post'),
(151, 10, 21, 'Modules\\Article\\Models\\Post'),
(152, 5, 21, 'Modules\\Article\\Models\\Post'),
(153, 6, 21, 'Modules\\Article\\Models\\Post'),
(154, 2, 21, 'Modules\\Article\\Models\\Post'),
(155, 8, 21, 'Modules\\Article\\Models\\Post'),
(156, 3, 21, 'Modules\\Article\\Models\\Post'),
(157, 8, 22, 'Modules\\Article\\Models\\Post'),
(158, 10, 22, 'Modules\\Article\\Models\\Post'),
(159, 1, 22, 'Modules\\Article\\Models\\Post'),
(160, 2, 22, 'Modules\\Article\\Models\\Post'),
(161, 5, 22, 'Modules\\Article\\Models\\Post'),
(162, 7, 22, 'Modules\\Article\\Models\\Post'),
(163, 6, 22, 'Modules\\Article\\Models\\Post'),
(164, 6, 23, 'Modules\\Article\\Models\\Post'),
(165, 3, 23, 'Modules\\Article\\Models\\Post'),
(166, 8, 23, 'Modules\\Article\\Models\\Post'),
(167, 4, 23, 'Modules\\Article\\Models\\Post'),
(168, 7, 23, 'Modules\\Article\\Models\\Post'),
(169, 9, 23, 'Modules\\Article\\Models\\Post'),
(170, 5, 23, 'Modules\\Article\\Models\\Post'),
(171, 1, 23, 'Modules\\Article\\Models\\Post'),
(172, 5, 24, 'Modules\\Article\\Models\\Post'),
(173, 7, 24, 'Modules\\Article\\Models\\Post'),
(174, 9, 24, 'Modules\\Article\\Models\\Post'),
(175, 3, 24, 'Modules\\Article\\Models\\Post'),
(176, 2, 24, 'Modules\\Article\\Models\\Post'),
(177, 9, 25, 'Modules\\Article\\Models\\Post'),
(178, 2, 25, 'Modules\\Article\\Models\\Post'),
(179, 5, 25, 'Modules\\Article\\Models\\Post'),
(180, 10, 25, 'Modules\\Article\\Models\\Post'),
(181, 6, 25, 'Modules\\Article\\Models\\Post');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `group_name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `group_name`, `description`, `image`, `status`, `meta_title`, `meta_description`, `meta_keyword`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nobis magni', 'nobis-magni', NULL, 'Quisquam est quos dolore rerum sapiente. A alias reiciendis voluptates eum unde. Sunt sit reiciendis magni dolorem et quia eligendi. Aliquid accusamus similique rerum odio.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(2, 'Qui corrupti', 'qui-corrupti', NULL, 'Qui voluptas dignissimos excepturi voluptatum ad et sint. Assumenda quidem a laborum assumenda incidunt sed quasi. Ut corporis ad quisquam quia aut excepturi voluptate impedit.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(3, 'Veniam', 'veniam', NULL, 'Libero sunt fuga vitae sit tenetur omnis. Sapiente aspernatur vel dolore quos. Recusandae rerum omnis ut odio. Vel a explicabo saepe ut est sapiente in ut.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(4, 'Omnis animi', 'omnis-animi', NULL, 'Rerum et nihil at qui voluptas cum. Rem harum voluptatem neque beatae voluptatem eligendi in.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(5, 'Libero non', 'libero-non', NULL, 'Velit veritatis et sequi perspiciatis est delectus possimus. Mollitia ut at suscipit.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(6, 'Minus sint', 'minus-sint', NULL, 'Eum temporibus facilis quisquam quae a similique. Cupiditate at distinctio consectetur ullam ad praesentium accusantium.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(7, 'Perferendis', 'perferendis', NULL, 'Molestiae expedita facilis tempore a animi. Voluptatem consectetur non aperiam. Laudantium inventore velit voluptatem consectetur doloremque.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(8, 'Ut quae et ut', 'ut-quae-et-ut', NULL, 'Corrupti in aut reprehenderit voluptas. Minima rerum vel ut cupiditate. Iusto soluta necessitatibus enim voluptatem numquam possimus rerum.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(9, 'Porro nemo cum', 'porro-nemo-cum', NULL, 'Nihil soluta est quam deleniti dolores ratione dolorum quaerat. Aut laboriosam accusantium vero nisi aliquam voluptatum quia. Accusamus iste autem architecto natus harum.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL),
(10, 'Voluptatem', 'voluptatem', NULL, 'Ut quis illum mollitia molestiae. Et omnis officia magni culpa est.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2023-12-17 08:00:00', '2023-12-17 08:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `url_website` varchar(191) DEFAULT NULL,
  `url_facebook` varchar(191) DEFAULT NULL,
  `url_twitter` varchar(191) DEFAULT NULL,
  `url_instagram` varchar(191) DEFAULT NULL,
  `url_linkedin` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `user_metadata` text DEFAULT NULL,
  `last_ip` varchar(191) DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `user_id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `url_website`, `url_facebook`, `url_twitter`, `url_instagram`, `url_linkedin`, `date_of_birth`, `address`, `bio`, `avatar`, `user_metadata`, `last_ip`, `login_count`, `last_login`, `email_verified_at`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '+16176711762', 'Female', NULL, NULL, NULL, NULL, NULL, '2013-12-15', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 1, '2023-12-17 07:54:18', NULL, 1, NULL, 1, NULL, '2023-12-17 07:52:42', '2023-12-17 07:54:18', NULL),
(2, 2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '+1.539.409.5680', 'Male', NULL, NULL, NULL, NULL, NULL, '1984-04-21', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-17 07:52:42', '2023-12-17 07:52:42', NULL),
(3, 3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '207-954-1769', 'Other', NULL, NULL, NULL, NULL, NULL, '1979-03-20', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-17 07:52:42', '2023-12-17 07:52:42', NULL),
(4, 4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '+1-313-499-8461', 'Male', NULL, NULL, NULL, NULL, NULL, '1990-08-24', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-17 07:52:42', '2023-12-17 07:52:42', NULL),
(5, 5, 'General User', 'General', 'User', '100005', 'user@user.com', '458.739.4087', 'Female', NULL, NULL, NULL, NULL, NULL, '1982-03-22', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-17 07:52:42', '2023-12-17 07:52:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT 'img/default-avatar.jpg',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `date_of_birth`, `email_verified_at`, `password`, `avatar`, `status`, `remember_token`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '+16176711762', 'Female', '2013-12-15', '2023-12-17 07:52:41', '$2y$10$1RSsyqsoVTdoAvkRQaCAN.rP6RcSW69NoqIMIDKaMPFm6753nj.ea', 'img/default-avatar.jpg', 1, NULL, NULL, NULL, NULL, '2023-12-17 07:52:41', '2023-12-17 07:52:41', NULL),
(2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '+1.539.409.5680', 'Male', '1984-04-21', '2023-12-17 07:52:41', '$2y$10$ZVFFQp85p0vBpNtDLbsuBuhCglP0Znr39Ata2t1cbmHoUq.A3IIi.', 'img/default-avatar.jpg', 1, NULL, NULL, NULL, NULL, '2023-12-17 07:52:41', '2023-12-17 07:52:41', NULL),
(3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '207-954-1769', 'Other', '1979-03-20', '2023-12-17 07:52:41', '$2y$10$.mfnT.LEBHgzk9e7hv9J4esLkbiuJKKawhrwstl472pdtnmXMIJaa', 'img/default-avatar.jpg', 1, NULL, NULL, NULL, NULL, '2023-12-17 07:52:41', '2023-12-17 07:52:41', NULL),
(4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '+1-313-499-8461', 'Male', '1990-08-24', '2023-12-17 07:52:41', '$2y$10$hLa/Jphfos5ODwfwVKlCrOdl0lyHtoNZtc5YLCct6i1qjlsxV8DgC', 'img/default-avatar.jpg', 1, NULL, NULL, NULL, NULL, '2023-12-17 07:52:41', '2023-12-17 07:52:41', NULL),
(5, 'General User', 'General', 'User', '100005', 'user@user.com', '458.739.4087', 'Female', '1982-03-22', '2023-12-17 07:52:42', '$2y$10$iTQSyhVShCKkUA35d4g3..RV7GNM5jBxdr1gwb8yaokdbC/5gV10m', 'img/default-avatar.jpg', 1, NULL, NULL, NULL, NULL, '2023-12-17 07:52:42', '2023-12-17 07:52:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE `user_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD KEY `password_reset_tokens_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_providers_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userprofiles`
--
ALTER TABLE `userprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD CONSTRAINT `user_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
