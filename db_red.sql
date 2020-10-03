-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 01 oct. 2020 à 18:02
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_red`
--

-- --------------------------------------------------------

--
-- Structure de la table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200820100853', '2020-08-20 10:11:14', 491),
('DoctrineMigrations\\Version20200820101524', '2020-08-20 10:15:30', 307),
('DoctrineMigrations\\Version20200820102057', '2020-08-20 10:21:03', 129),
('DoctrineMigrations\\Version20200820102947', '2020-08-20 10:29:55', 1226),
('DoctrineMigrations\\Version20200820111927', '2020-08-20 11:23:04', 396),
('DoctrineMigrations\\Version20200920113343', '2020-09-20 11:34:25', 1046),
('DoctrineMigrations\\Version20200920114540', '2020-09-20 11:45:55', 3282),
('DoctrineMigrations\\Version20200927102341', '2020-09-27 10:23:59', 5387),
('DoctrineMigrations\\Version20200927110657', '2020-09-27 11:07:05', 4637),
('DoctrineMigrations\\Version20200929200913', '2020-09-29 20:09:29', 6055),
('DoctrineMigrations\\Version20200929210036', '2020-09-29 21:00:45', 1998);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `url`, `caption`) VALUES
(393, 'https://lorempixel.com/640/480/?85492', 'Qui odit dolores recusandae sed optio enim.'),
(394, 'https://lorempixel.com/640/480/?80836', 'Commodi et incidunt hic eos et.'),
(395, 'https://lorempixel.com/640/480/?85034', 'Consequuntur ut maxime sit consectetur et.'),
(396, 'https://lorempixel.com/640/480/?43931', 'Officia beatae est fugiat quisquam.'),
(397, 'https://lorempixel.com/640/480/?96084', 'Tenetur omnis recusandae blanditiis.'),
(398, 'https://lorempixel.com/640/480/?97127', 'Error minus dolor voluptates et deleniti.'),
(399, 'https://lorempixel.com/640/480/?42780', 'Ut ullam deleniti deleniti sed impedit ducimus.'),
(400, 'https://lorempixel.com/640/480/?34313', 'Reprehenderit nihil est quas iste maiores eligendi velit.'),
(401, 'https://lorempixel.com/640/480/?71933', 'Esse est asperiores voluptas facilis impedit aliquid.'),
(402, 'https://lorempixel.com/640/480/?86572', 'Iusto rem harum eligendi molestias suscipit veniam tempora.'),
(403, 'https://lorempixel.com/640/480/?68445', 'Et aut nesciunt ea sed repudiandae nam eius asperiores.'),
(404, 'https://lorempixel.com/640/480/?85546', 'Consequuntur et natus dolores fugiat ut.'),
(405, 'https://lorempixel.com/640/480/?14913', 'Odio quis ut quia sit totam sed.'),
(406, 'https://lorempixel.com/640/480/?65950', 'Tenetur et quo perferendis et nihil quaerat cum.'),
(407, 'https://lorempixel.com/640/480/?62601', 'Vel voluptas et officia numquam aut voluptas et.'),
(408, 'https://lorempixel.com/640/480/?62924', 'Explicabo sint qui incidunt accusamus nam debitis.'),
(409, 'https://lorempixel.com/640/480/?87829', 'Eligendi ab voluptatem animi quidem repudiandae nostrum.'),
(410, 'https://lorempixel.com/640/480/?68235', 'Voluptate eligendi quia voluptas inventore sunt reprehenderit.'),
(411, 'https://lorempixel.com/640/480/?58538', 'Est eligendi excepturi aliquam laborum expedita.'),
(412, 'https://lorempixel.com/640/480/?37294', 'Iure aliquam sit veritatis consequuntur sint.'),
(413, 'https://lorempixel.com/640/480/?83252', 'Corrupti rerum voluptas et est.'),
(414, 'https://lorempixel.com/640/480/?15539', 'Sunt eligendi quis perferendis non doloremque.'),
(415, 'https://lorempixel.com/640/480/?43872', 'Voluptas et et quia dicta corrupti.'),
(416, 'https://lorempixel.com/640/480/?47970', 'Tempora voluptas sequi aliquid ut.'),
(417, 'https://lorempixel.com/640/480/?53992', 'Veritatis dolores itaque sunt rem.'),
(418, 'https://lorempixel.com/640/480/?62836', 'A maxime veniam minus et dolores dicta reprehenderit fugiat.'),
(419, 'https://lorempixel.com/640/480/?52740', 'Quibusdam et occaecati nihil.'),
(420, 'https://lorempixel.com/640/480/?61428', 'Laudantium incidunt at quos enim.'),
(421, 'https://lorempixel.com/640/480/?65720', 'Id quasi sequi incidunt dolorem nihil.'),
(422, 'https://lorempixel.com/640/480/?64513', 'Nisi maiores maxime soluta voluptatem vel iure.'),
(423, 'https://lorempixel.com/640/480/?92495', 'Qui fugiat sapiente veniam reiciendis.'),
(424, 'https://lorempixel.com/640/480/?98314', 'Reprehenderit quia saepe amet dolores temporibus alias.'),
(425, 'https://lorempixel.com/640/480/?58702', 'Eaque quam rerum quibusdam id dolore.'),
(426, 'https://lorempixel.com/640/480/?53007', 'Alias molestias est voluptate quia dicta.'),
(427, 'https://lorempixel.com/640/480/?76232', 'Pariatur eos eveniet quia aliquam.'),
(428, 'https://lorempixel.com/640/480/?73102', 'Molestiae rem doloremque inventore rerum ex dignissimos officiis.'),
(429, 'https://lorempixel.com/640/480/?74523', 'Ut expedita sed qui consequatur nemo sit.'),
(430, 'https://lorempixel.com/640/480/?83353', 'Minima voluptatibus fuga ratione placeat alias laborum.'),
(431, 'https://lorempixel.com/640/480/?34922', 'Aut quaerat unde voluptatem sint exercitationem quas doloremque laudantium.'),
(432, 'https://lorempixel.com/640/480/?45215', 'Itaque a minima sed.'),
(433, 'https://lorempixel.com/640/480/?33605', 'Voluptas sint non ducimus deserunt laborum animi vel.'),
(434, 'https://lorempixel.com/640/480/?41748', 'Repellat id a enim nostrum laborum.'),
(435, 'https://lorempixel.com/640/480/?10071', 'Aut voluptatem dolor ut est sint accusamus.'),
(436, 'https://lorempixel.com/640/480/?98368', 'Hic eos fugiat esse illo quisquam optio.'),
(437, 'https://lorempixel.com/640/480/?79894', 'Fuga vitae tenetur sunt tempora et.'),
(438, 'https://lorempixel.com/640/480/?51754', 'Magnam amet maiores et quaerat doloremque et id.'),
(439, 'https://lorempixel.com/640/480/?10707', 'Possimus excepturi qui officia provident aut quibusdam qui.'),
(440, 'https://lorempixel.com/640/480/?76378', 'Deleniti quos qui velit maiores.'),
(441, 'https://lorempixel.com/640/480/?41587', 'Non in autem nam laborum.'),
(442, 'https://lorempixel.com/640/480/?59849', 'Voluptatem modi id at nulla.'),
(443, 'https://lorempixel.com/640/480/?55049', 'Veniam fuga suscipit repudiandae porro architecto nemo.'),
(444, 'https://lorempixel.com/640/480/?15604', 'Eum odio architecto cumque in quia ut voluptas.'),
(445, 'https://lorempixel.com/640/480/?58046', 'Quia eum et consequatur esse nostrum.'),
(446, 'https://lorempixel.com/640/480/?16890', 'Numquam vitae quod laboriosam in libero.'),
(447, 'https://lorempixel.com/640/480/?99619', 'Exercitationem modi et dolor qui autem animi.'),
(448, 'https://lorempixel.com/640/480/?17561', 'Magnam beatae deleniti saepe sed quis minima ut.'),
(449, 'https://lorempixel.com/640/480/?70864', 'Nesciunt rerum officiis omnis illo consectetur.'),
(450, 'https://lorempixel.com/640/480/?89209', 'Et impedit molestiae sit non numquam.'),
(451, 'https://lorempixel.com/640/480/?10752', 'Fugit ea non aut a sit.'),
(452, 'https://lorempixel.com/640/480/?44051', 'Sit quod et est.'),
(453, 'https://lorempixel.com/640/480/?91352', 'Dolores beatae ut magni nihil et.'),
(454, 'https://lorempixel.com/640/480/?92344', 'Enim nemo velit qui delectus qui eos.'),
(455, 'https://lorempixel.com/640/480/?85617', 'Hic est mollitia et nisi quaerat id qui.'),
(456, 'https://lorempixel.com/640/480/?61840', 'Sunt ea optio nihil deserunt mollitia ducimus praesentium.'),
(457, 'https://lorempixel.com/640/480/?24032', 'Et dolor autem voluptas et et est cumque adipisci.'),
(458, 'https://lorempixel.com/640/480/?58513', 'Et iusto quia eos quam non dicta.'),
(459, 'https://lorempixel.com/640/480/?99603', 'Facere voluptatem excepturi fuga ut.'),
(460, 'https://lorempixel.com/640/480/?63378', 'Voluptates neque sint non facere sint.'),
(461, 'https://lorempixel.com/640/480/?74356', 'Et maiores architecto recusandae saepe repellat.'),
(462, 'https://lorempixel.com/640/480/?42833', 'Aut rerum cupiditate sed sed qui velit beatae.'),
(463, 'https://lorempixel.com/640/480/?26176', 'Qui illum itaque porro veritatis minus aut.'),
(464, 'https://lorempixel.com/640/480/?88402', 'Est nobis fuga nihil facilis esse eveniet labore.'),
(465, 'https://lorempixel.com/640/480/?43789', 'Quae doloribus voluptate assumenda qui expedita sapiente laboriosam.'),
(466, 'https://lorempixel.com/640/480/?11134', 'Autem sunt voluptas blanditiis molestiae temporibus.'),
(467, 'https://lorempixel.com/640/480/?40965', 'Debitis est inventore alias perspiciatis aut aut molestias.'),
(468, 'https://lorempixel.com/640/480/?37411', 'Ut veniam blanditiis vitae quidem omnis.'),
(469, 'https://lorempixel.com/640/480/?95462', 'Cum dolor ut impedit doloribus sed soluta illo.'),
(470, 'https://lorempixel.com/640/480/?34583', 'Sit voluptatem nihil harum assumenda exercitationem ipsum quis eum.'),
(471, 'https://lorempixel.com/640/480/?48569', 'Nam quaerat vel quisquam quia.'),
(472, 'https://lorempixel.com/640/480/?53078', 'Est aut tempore doloremque tempore.'),
(473, 'https://lorempixel.com/640/480/?53241', 'Consequatur odit asperiores rem et itaque dolorum voluptatum expedita.'),
(474, 'https://lorempixel.com/640/480/?60468', 'Voluptatem velit numquam corrupti voluptas perspiciatis repudiandae.'),
(475, 'https://lorempixel.com/640/480/?84784', 'Dolorem aperiam vel voluptatibus incidunt laudantium.'),
(476, 'https://lorempixel.com/640/480/?81597', 'Voluptatem quia optio labore ut ex omnis.'),
(477, 'https://lorempixel.com/640/480/?87937', 'Autem corporis eos ad magnam sed saepe sit.'),
(478, 'https://lorempixel.com/640/480/?34677', 'Quia sed animi voluptatem nemo unde.'),
(479, 'https://lorempixel.com/640/480/?34087', 'Quibusdam asperiores voluptatem minus.'),
(480, 'https://lorempixel.com/640/480/?70869', 'Eos tempora quidem nobis ut fugit vitae eaque.'),
(481, 'https://lorempixel.com/640/480/?80493', 'Minima fugiat autem cum molestiae qui eveniet.'),
(482, 'https://lorempixel.com/640/480/?65102', 'Autem exercitationem vel iure consequatur et.'),
(483, 'https://lorempixel.com/640/480/?41935', 'Harum ducimus optio dolor ut vero debitis.'),
(484, 'https://lorempixel.com/640/480/?21855', 'Voluptatem qui odio aut qui ullam corporis ipsam.'),
(485, 'https://lorempixel.com/640/480/?21412', 'Earum atque omnis sed.'),
(486, 'https://lorempixel.com/640/480/?67368', 'Placeat est aspernatur aut quae cupiditate porro voluptas.'),
(487, 'https://lorempixel.com/640/480/?19158', 'Tempore culpa placeat est aliquam odio.'),
(488, 'https://lorempixel.com/640/480/?40513', 'Explicabo nemo laboriosam dolorum.'),
(489, 'https://lorempixel.com/640/480/?75096', 'Nihil vel debitis laudantium ut nesciunt qui corporis.'),
(490, 'https://lorempixel.com/640/480/?71091', 'Enim iure nam ipsum odio et.');

-- --------------------------------------------------------

--
-- Structure de la table `story`
--

DROP TABLE IF EXISTS `story`;
CREATE TABLE IF NOT EXISTS `story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `story`
--

INSERT INTO `story` (`id`, `updated_at`, `title`, `slug`, `introduction`, `content`, `state`, `created_at`) VALUES
(1, '2020-09-29 20:12:48', 'Quos eveniet cupiditate est deserunt nemo neque.', 'quos-eveniet-cupiditate-est-deserunt-nemo-neque', 'Nihil ipsa quam quia molestiae assumenda aut dolorem. Asperiores ut atque quo unde. Exercitationem eum nostrum harum quidem tenetur quia laboriosam.', '<p>Et minima aperiam veniam voluptatem sit voluptate. Voluptatem harum iste aut accusamus repellat ullam voluptas. Eos eum ea asperiores saepe qui sunt eligendi. Alias quasi quia natus veritatis.</p><p>Alias excepturi aut qui voluptas. Fugiat aliquid qui temporibus exercitationem expedita numquam rerum. Ullam necessitatibus accusantium aperiam et. Ut vitae et tempore quidem repellat. Est est magni laborum doloremque voluptatum.</p><p>Vitae et praesentium quam sit et est unde enim. A odio laudantium hic quasi fugiat. Dolore sed quasi consequuntur quia maiores neque commodi. Ipsa voluptatem a ratione ad perspiciatis consectetur vel.</p><p>Ut adipisci rerum ut modi excepturi est recusandae. Perferendis sed et omnis est maiores ipsam. Molestiae ut est ab odit.</p><p>Dolorum earum officiis qui nemo ut molestiae. Quia et occaecati quisquam dolores unde. Ut voluptatem voluptas ab sed. Sint animi libero illum sint unde consequatur.</P>', 1, '2020-09-29 20:12:48'),
(2, '2020-09-29 20:12:48', 'Quasi eaque in neque est.', 'quasi-eaque-in-neque-est', 'Delectus occaecati ut ea omnis ea earum architecto. Cum nesciunt perferendis adipisci nesciunt repellendus non dolorem. Sint est hic architecto sed quod tempora.', '<p>Dolores pariatur voluptas non et et nihil. Et natus sit aliquid.</p><p>Dolorem vero sed vel distinctio labore nam libero ea. Eaque in qui amet ut aspernatur deserunt. Ipsum natus voluptatibus et.</p><p>Beatae facilis veritatis error sunt voluptates incidunt. Alias voluptatem minima optio. Cumque voluptas sapiente dolorem ut ut minima sunt.</p><p>Qui omnis modi iste perspiciatis. Necessitatibus facere illum est consequatur sapiente. Ut praesentium recusandae et sit. Ut non est rerum sunt quasi.</p><p>Tempore quam aliquam dolore reprehenderit. Officia ut officia cum non aut harum recusandae vitae. Quae et aut eligendi nihil est fugiat.</P>', 1, '2020-09-29 20:12:48'),
(3, '2020-09-29 20:12:48', 'Est optio et earum odit voluptatem dicta.', 'est-optio-et-earum-odit-voluptatem-dicta', 'Veritatis aut nemo est aspernatur debitis accusantium. Corrupti nihil quasi quam repellendus voluptatem eos. Suscipit ut impedit maiores doloremque id numquam nam.', '<p>Accusantium optio quo possimus nulla. Vel enim quia vero quam aut. Cumque molestiae optio rerum illum quae. Exercitationem dolorum rem necessitatibus nemo quasi molestias itaque.</p><p>Qui ipsa sit molestias a tenetur necessitatibus. Quo beatae impedit id molestiae assumenda. Voluptatem quis optio in atque fugit totam ratione. Cupiditate voluptas quas nisi minus deleniti quos quidem.</p><p>Odit dolorem maiores corrupti recusandae. Itaque perspiciatis sit perferendis perferendis quisquam doloremque. Animi deleniti alias nobis dolor. Est dolorem veritatis architecto voluptatem eos voluptas quos non.</p><p>Et voluptas perferendis et delectus nesciunt voluptas et. Nisi excepturi veniam qui et ut quidem culpa. Sunt dolore veniam culpa nulla.</p><p>Iusto et eveniet accusamus rerum laudantium quas eligendi. Voluptatem eveniet molestias harum dolor cum adipisci natus. Maiores culpa ut dolor fuga odit. Et accusamus et tempore.</P>', 1, '2020-09-29 20:12:48'),
(4, '2020-09-29 20:12:48', 'Dolorem enim ut qui.', 'dolorem-enim-ut-qui', 'Neque suscipit ea rerum necessitatibus et. Unde reprehenderit sed at iusto. Incidunt consectetur aut eum id.', '<p>Laudantium ad doloribus repudiandae blanditiis in. Ipsa ipsam accusamus quod fuga accusantium suscipit eos. Officia sed autem officia sapiente.</p><p>Voluptate amet qui tempora delectus quos. Sed sint et velit odio quia nostrum consequuntur quo. Aliquid fuga sapiente inventore.</p><p>Qui atque aut adipisci natus nihil. Velit ipsam libero et iste labore. Repellendus rerum ex optio a dolorum eius. Rerum commodi sequi minus quia corrupti consequuntur.</p><p>Nostrum dignissimos similique dignissimos. Vel cumque incidunt modi veritatis amet. Commodi unde tempore aspernatur adipisci. Ea illum illo ratione reprehenderit vitae ipsa voluptatibus.</p><p>Explicabo suscipit aliquid consequatur itaque fugiat veritatis consequuntur dolor. Et deserunt et quia consequuntur saepe. Sed ipsa odit officia et voluptatem. Ab ad cumque eos nobis est excepturi ducimus.</P>', 1, '2020-09-29 20:12:48'),
(5, '2020-09-29 20:12:48', 'Occaecati porro adipisci voluptatem voluptatem eum quia.', 'occaecati-porro-adipisci-voluptatem-voluptatem-eum-quia', 'Et quia ex earum. Consequuntur recusandae exercitationem beatae nemo ut animi.', '<p>Recusandae consequuntur quidem velit iure nam maiores sed. Voluptates qui eum odio. Suscipit iste vel asperiores quo possimus.</p><p>Officiis id officia voluptate asperiores illum nostrum ea recusandae. Illo hic blanditiis quo quia error consequatur. Explicabo placeat sed illum odit sed vel. Similique eos non sit soluta quis qui.</p><p>Animi sit aut voluptas maxime et accusantium. Qui velit est eligendi nulla aut et aut. Iure porro porro dolores vero.</p><p>Dolores dolorum tempora qui exercitationem. Veniam in voluptas consectetur quibusdam ut exercitationem possimus. Quibusdam suscipit labore temporibus ut dolor dolor provident.</p><p>Perferendis consequuntur sunt temporibus inventore tempora. Et nulla iusto molestias unde et natus accusamus. Rerum inventore iure consectetur quia. Fuga laboriosam consectetur rerum fugit excepturi veniam.</P>', 1, '2020-09-29 20:12:48'),
(6, '2020-09-29 20:12:48', 'Aut officiis qui quisquam iure esse earum aperiam.', 'aut-officiis-qui-quisquam-iure-esse-earum-aperiam', 'Quia delectus aut sint labore. Repellat qui sunt nihil velit voluptate cum laudantium eos.', '<p>Earum animi assumenda in molestiae. Aut quaerat debitis officia quasi. Et rem non nesciunt.</p><p>Quibusdam voluptatum sequi debitis animi dicta laudantium. Maiores quis saepe iure commodi ut laboriosam totam. Minus quod illum voluptatem officiis consequatur est. At iusto fuga reprehenderit in doloribus suscipit.</p><p>Velit nihil neque veniam. Non qui et in molestiae ratione similique. Sunt nesciunt quam explicabo non unde repudiandae pariatur.</p><p>Ex error veniam eum velit ab. Saepe quia est mollitia qui et iste id voluptatem. Dolores tempore incidunt vel hic nobis rem. Nisi laboriosam quidem suscipit accusamus officia expedita. Enim eum tenetur quis ratione accusamus aut et.</p><p>Aut reprehenderit reprehenderit quasi quod. Enim et error aut recusandae. Qui tempora in iure est nemo.</P>', 1, '2020-09-29 20:12:48'),
(7, '2020-09-29 20:12:48', 'Recusandae sed et rerum eligendi quasi.', 'recusandae-sed-et-rerum-eligendi-quasi', 'Provident repellat doloremque nobis voluptatem eveniet ex. Qui minus non dolor maiores repellat. Debitis est est reprehenderit autem et eum.', '<p>Omnis alias provident debitis voluptatem aliquam adipisci et. Quisquam maxime aut at ut facilis tempora. Accusantium quae aliquid soluta deleniti vel et deserunt. Ipsum voluptas mollitia perspiciatis aut aliquid cupiditate.</p><p>Corrupti repudiandae officia similique amet sed. Dolores rerum autem quod et repellat alias iste. Animi recusandae rerum voluptatum eum inventore accusantium. Qui dignissimos at voluptas sit suscipit animi vitae ab.</p><p>Sed voluptas et vero et impedit esse tempora. In voluptas cupiditate fugit id consequatur rerum dignissimos.</p><p>Accusamus omnis qui et laboriosam impedit rerum sunt. Hic ut deserunt enim. Et iure tenetur enim error explicabo. Tenetur doloremque repellat numquam commodi.</p><p>Nam delectus et et harum quasi ut sit. Aspernatur odit repudiandae culpa ea. Illo quam sequi nulla eius ex natus eveniet. Modi sint voluptas nihil est eos ea rerum.</P>', 1, '2020-09-29 20:12:48'),
(8, '2020-09-29 20:12:48', 'Cumque non possimus dolores enim quisquam.', 'cumque-non-possimus-dolores-enim-quisquam', 'Sunt velit laboriosam voluptatem dolorem et et. Ex laboriosam natus architecto consequatur optio recusandae eveniet. Totam fugit laboriosam et voluptate fugiat fugiat.', '<p>Sit enim corporis ut quo repudiandae fugiat et repellendus. Voluptatem quae sed est tenetur. Iusto iusto in quia sunt. Omnis repellat fugiat earum consequatur voluptates.</p><p>Laborum qui sint illo autem et ipsa. Ea iste id voluptatem. Ad quis vel rem.</p><p>Ullam excepturi officia et et. Ullam iusto eius corporis. Veritatis odio pariatur culpa aut dolores sapiente ab. Omnis et autem aut laboriosam corrupti excepturi harum.</p><p>Provident quae occaecati non et laboriosam sit minus earum. Quisquam voluptatem libero ipsam vero et repellat et cum.</p><p>Et corrupti illum soluta iure sed omnis id. Quisquam velit sit odio sed et amet. Id omnis eum placeat mollitia. Magni similique tempore reprehenderit molestiae. Vitae ad distinctio voluptas aut labore voluptas.</P>', 1, '2020-09-29 20:12:48'),
(9, '2020-09-29 20:12:48', 'Minus aut cumque itaque omnis.', 'minus-aut-cumque-itaque-omnis', 'Dolorem ipsum quis et neque qui. Neque ut nam omnis laboriosam qui aliquam.', '<p>Voluptatem accusamus tenetur quam omnis omnis iure. Perspiciatis quae sed eos doloribus ex. Quis corporis velit molestiae ut commodi.</p><p>Ratione praesentium cumque ut facilis beatae. Modi nihil veritatis alias amet perspiciatis sit architecto. Maiores dolores debitis a dolor quia nulla.</p><p>Natus vero recusandae accusantium similique vel dolor sint. Unde ut omnis dolorum. Iste ea molestiae quia dolor qui est.</p><p>Similique minus sint fugiat. Quisquam consequatur laboriosam et ut ipsam perferendis. Molestiae omnis maiores odio non id est at reiciendis. Doloribus voluptatem id sint rerum.</p><p>Quasi voluptas aut quisquam officiis nesciunt omnis ut. Voluptatem ut delectus minus delectus incidunt saepe rem. Omnis molestiae amet dolorem.</P>', 1, '2020-09-29 20:12:48'),
(10, '2020-09-29 20:12:48', 'Eos dolor aperiam similique possimus.', 'eos-dolor-aperiam-similique-possimus', 'Ad odio est facilis. Maiores aliquid rem ut totam sed. Atque reiciendis ut qui quo voluptatem.', '<p>At natus nemo ex iure aut. Esse nihil dolorum est voluptatibus ut quisquam repudiandae mollitia. Totam excepturi aut tempore ullam et asperiores voluptas. Consequatur accusamus alias ut similique aliquid omnis voluptatem quia.</p><p>A assumenda assumenda qui modi nesciunt et. Omnis recusandae omnis error. Voluptatem animi corporis quis laborum officiis.</p><p>Perferendis occaecati ratione pariatur voluptatem possimus nisi. Maiores aperiam voluptas minima id aliquam incidunt facere. Deserunt ducimus rerum qui.</p><p>Sint consequatur soluta odio sit unde. Eum similique quos minima et. Nulla hic omnis amet incidunt.</p><p>Cum nobis vitae voluptas. Qui similique est architecto nihil ut. Deleniti expedita eligendi accusamus eaque deleniti voluptatibus. Ratione eos nihil molestias explicabo consequatur est.</P>', 1, '2020-09-29 20:12:48'),
(11, '2020-09-29 20:12:48', 'Qui accusamus similique consequatur quod quod est.', 'qui-accusamus-similique-consequatur-quod-quod-est', 'Consequatur dignissimos labore vero tempora dolorem. Placeat totam eos exercitationem ipsam labore optio eos. Molestias voluptatem excepturi voluptate dicta dolores.', '<p>Quo ea praesentium modi et nulla nam. Repellendus ut fugiat eaque inventore cupiditate sint. Tenetur corrupti est in perspiciatis.</p><p>Sint quibusdam ratione animi veritatis. Similique soluta minus nam et est. Dolorem deleniti eum accusantium et quas. Voluptatum autem vero nobis nisi odit libero eum.</p><p>Ut debitis et qui dolor ullam maxime. Ut dignissimos consequuntur voluptatibus atque. Dolores eos fuga totam eius laudantium. Vel qui velit vero ullam ut quo vel.</p><p>Eos quos perspiciatis quam aut rem. In voluptatem corporis dicta sed sed voluptas. Provident mollitia nihil placeat hic. In ut sit blanditiis commodi.</p><p>Ipsam consequuntur voluptates distinctio dicta. Quas ipsa libero debitis quia fugit. Qui ea quaerat rerum repellat.</P>', 1, '2020-09-29 20:12:48'),
(12, '2020-09-29 20:12:48', 'Molestiae fuga quia voluptatibus nisi nam ut odit.', 'molestiae-fuga-quia-voluptatibus-nisi-nam-ut-odit', 'Aut accusantium dolorum et molestias cum. Quis totam saepe quia ut provident porro.', '<p>Ea expedita et est officia aut. Nam iste cupiditate aspernatur qui odit. Iure consequatur id praesentium deleniti velit accusantium est. Delectus numquam quae unde voluptatum.</p><p>Distinctio pariatur a labore deserunt et dolor quia dicta. Repellendus labore autem possimus rem ut ratione. Nihil quis voluptatem iure.</p><p>Nihil ratione aut et magni. Qui ea fugiat repellendus cupiditate blanditiis deserunt fuga. In laborum illo aut et quod.</p><p>Deserunt quia impedit rerum dolore molestias. Id vero maxime et eaque soluta. Vitae dolore ducimus in ratione eligendi. Fugiat sunt a explicabo in dolor odio id.</p><p>Consectetur cum enim dicta et quidem. Dolorem quia deleniti eos nesciunt iste illum dolorem. Dolores a voluptatibus nihil eos laboriosam qui dolor.</P>', 1, '2020-09-29 20:12:48'),
(13, '2020-09-29 20:12:48', 'Consequatur facere possimus voluptatibus et est praesentium modi.', 'consequatur-facere-possimus-voluptatibus-et-est-praesentium-modi', 'Nostrum cum vel officiis dignissimos nesciunt laudantium. Est consequatur quidem non quia optio vitae non. Velit quod magnam aut voluptatem nesciunt possimus libero.', '<p>Quidem commodi quia quia dolor occaecati. Magni natus neque facilis fuga. Et temporibus dolore est corrupti laudantium. Sed excepturi ad occaecati.</p><p>Molestias accusantium praesentium quos incidunt quod at cum. Sit suscipit aut quod nam doloribus accusantium vero. Eos et perferendis quisquam cumque.</p><p>Voluptatem qui quasi veniam. Nam molestias et praesentium ipsam totam suscipit. Rerum eos voluptates quo blanditiis corrupti optio libero velit.</p><p>Eos qui atque vel vero laudantium inventore possimus et. Odio accusamus quos eveniet voluptatem et.</p><p>Harum quia et aliquid nihil nostrum iure. Quod quam similique itaque illum velit qui eos. Est voluptatem facilis nihil. Nemo debitis et aliquam doloribus.</P>', 1, '2020-09-29 20:12:48'),
(14, '2020-09-29 20:12:48', 'Earum blanditiis enim officia placeat quis.', 'earum-blanditiis-enim-officia-placeat-quis', 'Qui neque sequi omnis dolor dolorum nam. Nulla necessitatibus sit ut aut qui. Autem voluptatem fugiat quia officiis.', '<p>Et aliquid est vitae tempore. Autem dolorem nihil eos tempore molestias. Labore natus qui sunt eveniet. Perspiciatis ut exercitationem sint quibusdam omnis.</p><p>Quaerat quo veniam porro. Aliquam commodi eveniet consequuntur. Totam nesciunt reiciendis nisi illo eveniet.</p><p>Aut ut sint nesciunt. Sunt quas non sapiente illum non. Nulla commodi voluptatibus perspiciatis non quo doloribus. Ullam omnis corporis vitae et odit laborum.</p><p>Quas asperiores iure sed at. Quis suscipit est ut nobis culpa rerum. Est nostrum recusandae ex molestiae.</p><p>Quisquam magni quo dolorem quos. Et eaque aut ducimus odio. Nesciunt cupiditate voluptates et rerum. Quae et omnis reprehenderit quis illum sit.</P>', 1, '2020-09-29 20:12:48'),
(15, '2020-09-29 20:12:48', 'Quisquam ut veniam eveniet aliquam earum.', 'quisquam-ut-veniam-eveniet-aliquam-earum', 'Molestiae eum hic rerum et blanditiis tempora porro alias. Suscipit hic cum et.', '<p>Neque eos neque at error omnis eaque doloremque dolor. Doloremque officiis sunt aut laboriosam eum.</p><p>Eius non voluptatem excepturi. Sit blanditiis accusamus consequatur aut odio. Quaerat in vel non molestias dolorum.</p><p>Unde vel quasi suscipit in temporibus sint natus. Velit suscipit culpa quidem qui excepturi repellendus assumenda. Vel et cumque assumenda molestiae.</p><p>Reprehenderit commodi et eos autem. Consequatur ipsum ea sequi est soluta quo qui. Molestiae voluptates dolorem cupiditate fugiat eos. Quo eos nam nisi non a.</p><p>Et voluptatum aut cum omnis. Ratione maxime minus asperiores ea neque et quod. Voluptates voluptatem voluptas accusamus eveniet fugit vel repudiandae.</P>', 1, '2020-09-29 20:12:48'),
(16, '2020-09-29 20:12:48', 'Laboriosam eaque nemo vero vel fugit delectus ut.', 'laboriosam-eaque-nemo-vero-vel-fugit-delectus-ut', 'Autem consequatur veniam possimus doloribus. Et voluptas consequuntur quia ut eum. Reprehenderit dolorem neque expedita alias possimus.', '<p>Aut cum culpa consequatur cum repellat animi. Iste omnis dicta cum maiores. In nemo quo eligendi omnis et.</p><p>Vel sint praesentium culpa dolores delectus nihil quibusdam. Dignissimos illum autem reiciendis voluptas voluptatem. A commodi aut sunt ad eveniet eveniet tenetur. Minima animi ut labore nemo eum tempora.</p><p>Non sed quae rerum autem iste. Nobis itaque perferendis quos tempora mollitia iste. Dicta et ut velit natus fugit inventore qui praesentium.</p><p>In et qui inventore non quia culpa. Sit iusto culpa dignissimos dolores quia. Recusandae veniam enim id at vero sit. Vel officiis excepturi voluptatum veritatis odio tenetur.</p><p>Dolorum qui molestiae vero error enim. Voluptates dolorum inventore corporis adipisci praesentium modi inventore. Ab cupiditate pariatur quam illo praesentium voluptatem nesciunt. Molestiae quae quis quos aspernatur corrupti beatae.</P>', 1, '2020-09-29 20:12:48'),
(17, '2020-09-29 20:12:48', 'Eum harum laborum numquam vero velit et.', 'eum-harum-laborum-numquam-vero-velit-et', 'Nulla sapiente repudiandae rerum suscipit et. Et quisquam perspiciatis voluptatem minus ratione corrupti.', '<p>Est nemo pariatur et quia. Aliquid nam ut iusto id ipsum in magnam reprehenderit. Saepe quae et non dignissimos et omnis.</p><p>Et officia ea ut ut et cumque. Magni dolores magni ut iure molestiae quibusdam. Dolores et nihil voluptatem perspiciatis ut in occaecati.</p><p>Quae et velit necessitatibus ea est omnis placeat. Hic accusamus quia nulla facere. Cumque assumenda omnis pariatur provident sit ut. Consequatur delectus eum est est assumenda at.</p><p>Delectus debitis rem nemo cupiditate. Recusandae quibusdam saepe vitae accusantium aut. Porro praesentium ab fugiat a tempore culpa. Cumque cum at ex.</p><p>Vitae omnis dolor ut non iste. Id consequatur ut qui harum suscipit nam. Quibusdam consequatur porro dolore error quos.</P>', 1, '2020-09-29 20:12:48'),
(18, '2020-09-29 20:12:48', 'Consectetur pariatur culpa possimus quia.', 'consectetur-pariatur-culpa-possimus-quia', 'In voluptatem eaque et. Dolorem nostrum corrupti hic numquam maxime voluptates.', '<p>Adipisci quia est omnis nulla est quidem vitae. Quos iste quia laboriosam debitis quo sed consequatur. Est non architecto consequatur. Maxime consectetur voluptas velit recusandae nemo non nesciunt neque.</p><p>Est quos debitis non accusantium doloribus. Consequuntur tempore dolorum officia. Recusandae omnis tempora tempora accusamus ipsam illo.</p><p>Non voluptatum sit cumque perspiciatis repellat. Unde voluptas expedita rerum quis. Provident repellat saepe sapiente dolor laborum et cumque.</p><p>Fugit delectus et veniam et. Odio at dolores fuga reiciendis quisquam officiis qui reiciendis.</p><p>Animi omnis enim adipisci id ut voluptatem quia. Qui amet id pariatur hic ipsum est architecto.</P>', 1, '2020-09-29 20:12:48'),
(19, '2020-09-29 20:12:48', 'Modi architecto qui omnis cumque in qui labore itaque.', 'modi-architecto-qui-omnis-cumque-in-qui-labore-itaque', 'Veritatis blanditiis et ea earum voluptates praesentium. Consequatur provident minus fuga rerum.', '<p>Esse eaque voluptatem est fugiat nam. Sed amet illo enim quod ipsam nobis quis dolorum. Eligendi est inventore dolores dolorem quis corrupti ipsa.</p><p>Qui possimus sed dolor omnis est quaerat. Et pariatur iusto eius est ex quasi iste. Ut est quisquam sunt pariatur et in eligendi ipsam.</p><p>Numquam maxime nulla ut dolorem alias. Explicabo voluptate itaque sint officia asperiores laboriosam. Corrupti et sunt eligendi. Ut est corporis sed voluptas.</p><p>Aut quis quae ipsa a repellendus. Repellat enim est impedit incidunt enim corporis. Repudiandae sed iusto dolores voluptatibus perspiciatis sint.</p><p>Saepe hic aut nihil. Harum repellendus est ipsam velit est commodi saepe. Accusantium reiciendis nihil blanditiis ad illo explicabo quas.</P>', 1, '2020-09-29 20:12:48'),
(20, '2020-09-29 20:12:48', 'Sequi distinctio praesentium architecto dicta saepe eos et.', 'sequi-distinctio-praesentium-architecto-dicta-saepe-eos-et', 'Delectus dolorem inventore necessitatibus similique nisi. Odio eum aut aut.', '<p>Autem molestiae aut sint fuga quod. Ea tenetur quos officiis qui. Qui eos quis et temporibus veniam commodi quam. Debitis laborum eligendi laudantium deserunt dignissimos.</p><p>Dolorem eos deleniti qui dolor dolorem deleniti. Qui aliquid voluptatibus esse impedit distinctio quisquam ipsa. Aspernatur unde quia esse sit odit.</p><p>Quae quasi similique enim quo doloribus nulla. Velit in adipisci rerum voluptas voluptatem ea. Aperiam repellat unde ut ea quis veniam consequatur. Vel nostrum vel velit animi.</p><p>Voluptates adipisci omnis debitis sint dicta. Soluta sint voluptatibus suscipit. Corrupti aut rem velit reiciendis quis voluptatem et. Vel neque accusamus quo magnam quod.</p><p>Fugiat ad cum nemo voluptates labore. Incidunt est ut nobis. Modi impedit consequuntur laborum dicta doloremque recusandae.</P>', 1, '2020-09-29 20:12:48'),
(21, '2020-09-29 20:12:48', 'Nesciunt expedita quasi cupiditate omnis dicta earum.', 'nesciunt-expedita-quasi-cupiditate-omnis-dicta-earum', 'Dolores fuga et ipsum cum vero ut. Culpa atque deserunt recusandae aspernatur sunt sit illo velit. Et ab eveniet consequatur.', '<p>Aut ipsam ut aperiam sit rerum minus corporis. Dignissimos occaecati praesentium eaque accusamus impedit blanditiis. Laborum recusandae ut enim iusto dolor nobis rerum cumque. Consequatur aliquid molestias enim accusantium recusandae. Commodi voluptatem ut neque mollitia et dolores sunt hic.</p><p>Nisi explicabo et voluptatem unde facilis quam. Velit debitis enim sunt omnis. Hic blanditiis at animi voluptas sit cupiditate et id.</p><p>Corporis occaecati nisi repellat cumque. Corrupti vel quia fugit placeat omnis. Dolores enim voluptatem dolor repellat.</p><p>Asperiores aut in dicta molestiae hic ratione quos. Similique voluptatum perspiciatis mollitia dolor saepe ut quibusdam. Et aut ratione et velit consequatur qui dolorum.</p><p>Laborum quaerat cupiditate consectetur voluptates atque temporibus libero quia. Accusamus laudantium maiores eveniet facere enim saepe accusantium. Optio dolor molestiae cupiditate iste nobis laudantium autem. Rerum nemo quasi sunt quidem facilis expedita. Et quidem eum culpa excepturi.</P>', 1, '2020-09-29 20:12:48'),
(22, '2020-09-29 20:12:48', 'Rerum nihil nisi ducimus.', 'rerum-nihil-nisi-ducimus', 'Nobis dicta impedit quas quo consequatur labore rerum. Perferendis est vero et sapiente dolor. Quidem rerum delectus corporis quo.', '<p>Quia sequi repudiandae qui esse qui. Dolor veritatis in recusandae aut nihil asperiores fugit nihil. Omnis quidem dolores ab ducimus vel. Consequuntur sunt tempore doloremque omnis assumenda.</p><p>Architecto exercitationem ad cum sunt. Aut non voluptate consequatur magnam. Accusantium totam sed aperiam ut consequatur. Facilis consequuntur repellendus sunt aspernatur ad quos.</p><p>Sequi sed consectetur voluptatibus iste sapiente illum. Repellendus optio aut voluptatem optio quas molestiae. Illum mollitia tempora dolorum delectus aperiam vitae. Repellat repellat inventore tempora et.</p><p>Placeat in et temporibus voluptatem atque dolor est et. Ex ad tempore deserunt quasi. Quis ducimus corrupti est debitis aliquam.</p><p>Et et culpa voluptas. Quo aut aspernatur aut reprehenderit commodi sequi placeat. Ex et dolores nobis autem esse aut assumenda ea. Est eum soluta ut animi enim.</P>', 1, '2020-09-29 20:12:48'),
(23, '2020-09-29 20:12:48', 'Natus sed qui laborum dolores.', 'natus-sed-qui-laborum-dolores', 'Et ullam autem aut itaque asperiores. Expedita recusandae laborum unde eveniet recusandae aliquam vero. Ad deserunt aut assumenda dignissimos.', '<p>Sit pariatur explicabo ab quo et earum. Asperiores neque accusantium molestias ipsum aut odit. Perspiciatis aperiam eos et illum quae numquam. Est eum necessitatibus quis quis eos est.</p><p>Qui doloribus voluptas aliquam et. Voluptatum culpa excepturi nulla.</p><p>Omnis veniam voluptas asperiores aut excepturi dolore ad. Aliquam voluptatem neque aut autem est. Maxime omnis voluptas facere nulla.</p><p>Earum rerum voluptas esse. Neque id placeat voluptas aperiam voluptatem voluptas aut. Id repellendus enim incidunt quas magnam doloremque autem dignissimos.</p><p>Laborum non illo repellendus voluptatem. Qui at qui blanditiis qui et. Suscipit eos adipisci placeat impedit voluptas ipsa et consectetur.</P>', 1, '2020-09-29 20:12:48'),
(24, '2020-09-29 20:12:48', 'Quis similique minima fugit eius odio explicabo.', 'quis-similique-minima-fugit-eius-odio-explicabo', 'Odio occaecati est accusantium necessitatibus facilis modi fugit. Quia perspiciatis iure explicabo sequi autem. Recusandae id et assumenda eos eum minus.', '<p>Voluptates eum et expedita quaerat. Ab tempore dolores enim perferendis quia voluptatum. Eligendi adipisci perspiciatis accusamus delectus unde perspiciatis et. Laudantium quaerat cupiditate voluptatum dignissimos impedit vel eum rerum.</p><p>Expedita placeat quo illum ut quo. Voluptate qui magni aliquid quis. Facere et odio nesciunt et pariatur dicta consequuntur sit. Omnis praesentium ratione non.</p><p>Molestias dolor praesentium sapiente doloribus. Iste tempora et magnam suscipit. Quia nam earum consequuntur fugiat quasi et dolores aut.</p><p>Aut aut repellat omnis et quasi voluptatem. Quaerat ut velit ut explicabo. Autem est quia vitae illo voluptas incidunt. Nulla error optio et quia aut autem fuga.</p><p>Aliquam provident enim at vero maxime enim corrupti. Nulla eos impedit cum quis. Non soluta ratione animi laudantium vero iure.</P>', 1, '2020-09-29 20:12:48'),
(25, '2020-09-29 20:12:48', 'Velit commodi labore aut suscipit est numquam aperiam.', 'velit-commodi-labore-aut-suscipit-est-numquam-aperiam', 'Voluptatem quisquam animi voluptatem eligendi. Non sit quis non porro.', '<p>Provident omnis corporis dolorem voluptatem sed non. Culpa autem officiis ea repellendus. Optio enim molestias magni enim et.</p><p>Aut architecto vel inventore mollitia natus. Error pariatur praesentium alias sit. Labore non officia dolores atque velit exercitationem unde.</p><p>Magni vel odio ullam est assumenda error dolores. Ut aliquam quas eos molestiae cupiditate. Et reiciendis dignissimos porro eius quo quia nemo quidem. Veniam ipsa nihil temporibus nihil molestias dolore. Amet molestias maiores odit omnis.</p><p>Eveniet qui voluptatem atque cupiditate aut harum aut. Qui sint quis rerum velit. Magnam quos accusamus laboriosam dolore.</p><p>Fugit sunt ut in eaque ab. Omnis soluta beatae magnam reiciendis dolores reprehenderit. Vero doloremque id alias corporis maiores aut nobis. Minima quod dolores sed modi qui cum.</P>', 1, '2020-09-29 20:12:48'),
(26, '2020-09-29 20:12:48', 'Est nesciunt consequatur alias.', 'est-nesciunt-consequatur-alias', 'Saepe vel nihil est accusantium ut. Quia veritatis debitis voluptates officiis consequatur.', '<p>Officiis rem dolorum nulla et. Facilis omnis natus sapiente. Rem repellat in ut. Qui atque corporis sint nisi et aut tempore.</p><p>Veniam quisquam sit nostrum. Quaerat placeat saepe ea non sit. Eum non harum id.</p><p>Aut explicabo dolores est sit. Repellat debitis praesentium quia similique voluptas. Ut reprehenderit provident doloribus.</p><p>Sit possimus ducimus ex delectus exercitationem et dolore. Magnam consequatur voluptatem tempore adipisci odio nisi. Officia aut officiis et est. Aliquam ad et eos.</p><p>Suscipit dolorem recusandae est voluptas assumenda. Aperiam sunt sit voluptatem.</P>', 1, '2020-09-29 20:12:48'),
(27, '2020-09-29 20:12:48', 'Tenetur qui magni esse quas odio magni.', 'tenetur-qui-magni-esse-quas-odio-magni', 'Quia quae dolorem molestias et voluptatem et qui. Suscipit inventore sequi cum id eos ab. Facere neque ducimus optio nostrum laborum ut odit.', '<p>Officiis quod deleniti officiis. Nobis voluptatem ut molestiae velit nostrum dolorem incidunt. Animi natus repellendus aut. Ea aut hic aperiam.</p><p>Voluptatem est ut aut est. Rerum accusamus quo et at quis sed sit. In cumque labore quam. Ipsum excepturi magni adipisci. Sed ea nihil iure qui temporibus.</p><p>Rem quia voluptates eum qui repellat. Rem quia illum aut dolorem dignissimos tempore eos. Rerum in pariatur tempore cumque quo. Voluptas eum aspernatur voluptatem quod culpa.</p><p>Aliquid aut non maiores et veniam et dolorem. Ut ex eos ipsa enim neque illum maxime. Omnis est minus culpa dolor. Autem non quis eius voluptates. Consectetur aperiam quia enim excepturi hic optio quis.</p><p>Mollitia aut praesentium praesentium assumenda doloremque quidem. Maiores rem qui consequuntur harum.</P>', 1, '2020-09-29 20:12:48'),
(28, '2020-09-29 20:12:48', 'Qui reiciendis enim magnam nam quas.', 'qui-reiciendis-enim-magnam-nam-quas', 'Ex excepturi sed eveniet harum eum est possimus. Est autem eius neque in dignissimos deserunt voluptatibus. Reiciendis adipisci quis ipsum nisi et iusto.', '<p>Magnam veritatis et aut similique. Quasi aliquam reiciendis in quia eos qui voluptas aliquid. Dolor explicabo sed perferendis.</p><p>Eligendi vitae ut qui occaecati dolorem exercitationem. Earum architecto similique aperiam sunt. Est qui quas quidem sed quas.</p><p>Doloribus esse repellat illo id quaerat tempora debitis. Et sed quis eligendi nulla. Repudiandae voluptatem illum quidem voluptatem.</p><p>Quas libero ipsum ducimus ducimus. Sequi quam ullam nesciunt labore excepturi in ex repellendus. Repellat dolore maxime consectetur est sunt molestias dolorem neque.</p><p>Sint doloremque eaque soluta repellendus autem. Quas itaque ducimus expedita nesciunt consequatur quia. Velit beatae recusandae ut suscipit odio saepe.</P>', 1, '2020-09-29 20:12:48'),
(29, '2020-09-29 20:12:48', 'In totam culpa et ad doloribus.', 'in-totam-culpa-et-ad-doloribus', 'Exercitationem maiores ipsum veniam. Sunt delectus est voluptates beatae nihil. Rerum sunt eos dolorem delectus.', '<p>Pariatur perspiciatis voluptatum dolore temporibus. Aliquid animi eveniet dolorum temporibus ipsa. Vitae quas expedita id voluptas aliquam in. Vel numquam aut consectetur.</p><p>Voluptatem unde dolores qui aut quas mollitia sint. Ullam nesciunt molestiae et. Officia magnam commodi veritatis tenetur quisquam. Excepturi et quaerat delectus qui. Provident et sapiente iusto quia.</p><p>Ad qui ratione aut nulla. Quis commodi odit provident maiores minus suscipit.</p><p>Aperiam et inventore occaecati eligendi. At asperiores earum dolorem id et porro.</p><p>Itaque eum doloremque quos est pariatur culpa. Cumque aut nostrum laudantium culpa officia sit eum sequi. Aperiam explicabo illum quaerat voluptas ullam quae. Tenetur repellat itaque aliquid sequi in.</P>', 1, '2020-09-29 20:12:48'),
(30, '2020-09-29 20:12:48', 'Numquam aliquid perspiciatis officia dolorem et inventore voluptatem.', 'numquam-aliquid-perspiciatis-officia-dolorem-et-inventore-voluptatem', 'Dolores et alias exercitationem non et unde. Aut ut ea ut earum doloribus. Consectetur sint in officiis porro hic.', '<p>Quis cum est at et possimus voluptas fugiat. Similique et in corporis cupiditate temporibus qui. Velit repellat quos magni libero eos optio ut. Exercitationem veritatis fuga autem nam quod et ut.</p><p>Natus repellendus est sed est. Ut accusantium inventore ducimus aut et dolorum autem. Est qui ea rem consequatur. Et aut sit suscipit voluptatum incidunt.</p><p>Perspiciatis sit non officia maxime autem sequi molestiae distinctio. Maxime minima et in at in. Dolores soluta dolores amet similique dolorum.</p><p>Similique aut quaerat aut voluptas ut. Impedit aperiam laborum itaque voluptas unde. Eligendi tempora ducimus aut sed quibusdam. Asperiores numquam omnis nihil vitae.</p><p>Alias quia sint ut nihil fuga aut. Ut voluptas alias qui. Et occaecati similique tenetur aliquid quia nobis qui aspernatur. Autem distinctio rerum qui assumenda impedit.</P>', 1, '2020-09-29 20:12:48');

-- --------------------------------------------------------

--
-- Structure de la table `story_image`
--

DROP TABLE IF EXISTS `story_image`;
CREATE TABLE IF NOT EXISTS `story_image` (
  `story_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`story_id`,`image_id`),
  KEY `IDX_197DA4FCAA5D4036` (`story_id`),
  KEY `IDX_197DA4FC3DA5256D` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `story_image`
--

INSERT INTO `story_image` (`story_id`, `image_id`) VALUES
(1, 393),
(1, 394),
(2, 395),
(2, 396),
(2, 397),
(2, 398),
(2, 399),
(3, 400),
(3, 401),
(4, 402),
(4, 403),
(4, 404),
(4, 405),
(5, 406),
(5, 407),
(5, 408),
(6, 409),
(6, 410),
(6, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(8, 417),
(8, 418),
(8, 419),
(9, 420),
(9, 421),
(9, 422),
(10, 423),
(10, 424),
(10, 425),
(11, 426),
(11, 427),
(12, 428),
(12, 429),
(12, 430),
(12, 431),
(13, 432),
(13, 433),
(13, 434),
(14, 435),
(14, 436),
(14, 437),
(15, 438),
(15, 439),
(15, 440),
(15, 441),
(16, 442),
(16, 443),
(16, 444),
(16, 445),
(17, 446),
(17, 447),
(17, 448),
(17, 449),
(18, 450),
(18, 451),
(18, 452),
(18, 453),
(18, 454),
(19, 455),
(19, 456),
(19, 457),
(19, 458),
(20, 459),
(20, 460),
(20, 461),
(21, 462),
(21, 463),
(21, 464),
(21, 465),
(22, 466),
(22, 467),
(22, 468),
(23, 469),
(23, 470),
(24, 471),
(24, 472),
(25, 473),
(25, 474),
(25, 475),
(25, 476),
(26, 477),
(26, 478),
(27, 479),
(27, 480),
(27, 481),
(28, 482),
(28, 483),
(28, 484),
(28, 485),
(29, 486),
(29, 487),
(29, 488),
(30, 489),
(30, 490);

-- --------------------------------------------------------

--
-- Structure de la table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `story_image`
--
ALTER TABLE `story_image`
  ADD CONSTRAINT `FK_197DA4FC3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_197DA4FCAA5D4036` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
