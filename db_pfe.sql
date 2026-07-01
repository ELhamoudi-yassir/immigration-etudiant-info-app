-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 avr. 2022 à 16:49
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `ID_AUTEUR` bigint(20) NOT NULL,
  `NOM` char(30) DEFAULT NULL,
  `LOGIN` char(25) DEFAULT NULL,
  `PASSWORD` char(30) DEFAULT NULL,
  `EMAIL` char(30) DEFAULT NULL,
  `TELEPHONE` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`ID_AUTEUR`, `NOM`, `LOGIN`, `PASSWORD`, `EMAIL`, `TELEPHONE`) VALUES
(1, 'Admin14', 'Admin123', 'admin2022', 'admin2022@gmail.com', 650467806);

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ID_CAT` int(11) NOT NULL,
  `TITRE` char(100) DEFAULT NULL,
  `IMAGE_ARTICLE` longblob DEFAULT NULL,
  `DATE_ARTICLE` datetime DEFAULT NULL,
  `AUTEUR_ARTICLE` char(30) DEFAULT NULL,
  `CONTENU_ARTICLE` longtext DEFAULT NULL,
  `RESUME` longtext DEFAULT NULL,
  `SLIDER` char(10) NOT NULL DEFAULT 'non'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`ID_ARTICLE`, `ID_CAT`, `TITRE`, `IMAGE_ARTICLE`, `DATE_ARTICLE`, `AUTEUR_ARTICLE`, `CONTENU_ARTICLE`, `RESUME`, `SLIDER`) VALUES
(2, 2, ' Hespress Société Immigration : Le chemin de croix des jeunes \"harragas\" marocains détenus en Libye', 0x617269636c65322e6a7067, '2022-04-11 00:27:00', 'yassir', '<p>En choisissant le chemin le plus risqu&eacute;, des centaines de migrants marocains souhaitant partir en Europe et ayant opt&eacute; pour les c&ocirc;tes libyennes et tunisiennes, ont trouv&eacute; la mort ces derniers mois. Certains, qui ont &eacute;chapp&eacute; &agrave; la mort, sont tomb&eacute;s entre les mains des passeurs (marocains, alg&eacute;riens, tunisiens) en Tunisie, ou se sont retrouv&eacute;s d&eacute;tenus dans des centres en Alg&eacute;rie et en Libye o&ugrave; ils vivent dans des conditions inhumaines, selon plusieurs d&rsquo;entre eux.&nbsp;</p>\r\n<p>En septembre 2021 d&eacute;j&agrave;, l&rsquo;Observatoire euro-m&eacute;diterran&eacute;en des droits de l&rsquo;homme avait tir&eacute; la sonnette d&rsquo;alarme sur les conditions &laquo;&nbsp;inhumaines &raquo;&nbsp;que vivent les centaines de marocains dans les centres de d&eacute;tention libyens, sans nourriture, ni eau potable et encore moins des soins de sant&eacute;.</p>\r\n<p>Aujourd&rsquo;hui, une trentaine de familles marocaines attendent avec impatience, mais surtout une grande inqui&eacute;tude, le retour de leurs enfants disparus depuis des mois en Tunisie, en Alg&eacute;rie et en Libye. Alors que cette attente s&rsquo;av&egrave;re douloureuse, ils ont r&eacute;cemment entendu des nouvelles sur le d&eacute;c&egrave;s des leurs, ne sachant quoi faire ni &agrave; qui s&rsquo;adresser.</p>', 'En choisissant le chemin le plus risqué, des centaines de migrants marocains souhaitant partir en Europe et ayant opté pour les côtes libyennes et tunisiennes, ont trouvé la mort ces derniers mois. Certains, qui ont échappé à la mort, sont tombés entre les mains des passeurs (marocains, algériens, tunisiens) en Tunisie, ou se sont retrouvés détenus dans des centres en Algérie et en Libye où ils vivent dans des conditions inhumaines, selon plusieurs d’entre eux. ', 'non'),
(3, 2, ' Immigration : Diminution de moitié des arrivées à Gran Canaria en provenance des provinces du Sud', 0x32323132303331335f34322e706e67, '2022-04-11 00:46:00', 'yassir', '<p><em>L&rsquo;&icirc;le de Gran Canaria a cess&eacute; de&nbsp;supporter le plus grand flux migratoire toutes provenances confondues au d&eacute;triment des &icirc;les Fuerteventura et Lanzarote. Une situation nous dit &ldquo;La Razon&ldquo; qui tire ses donn&eacute;es du rapport Missing Migrant Disappeared de&nbsp;<a href=\"https://missingmigrants.iom.int/es\" target=\"_blank\" rel=\"noopener\">l&rsquo;OIM</a>&nbsp;et qui contraste avec l&rsquo;ann&eacute;e derni&egrave;re o&ugrave; l&rsquo;&icirc;le de Gran Canaria avait re&ccedil;u l&rsquo;essentiel des entr&eacute;es irr&eacute;guli&egrave;res.</em></p>\r\n<p><em>L&rsquo;augmentation de la mortalit&eacute; (un millier de d&eacute;c&egrave;s au moins) lors des travers&eacute;es d&rsquo;Afrique Subsaharienne de Mauritanie ou du Maroc est l&rsquo;une des variations par rapport &agrave; l&rsquo;ann&eacute;e pr&eacute;c&eacute;dente, mais pas seulement.&nbsp;Il est dit &eacute;galement que ces derniers mois, les arriv&eacute;es irr&eacute;guli&egrave;res ont &eacute;t&eacute; enregistr&eacute;es lors de travers&eacute;es depuis&nbsp;Tarfaya ou de La&acirc;youne vers Lanzarote et Fuerteventura qui n&rsquo;&eacute;taient pas habitu&eacute;es &agrave; recevoir tant de monde.</em></p>\r\n<p><em>Les bateaux, pr&eacute;caires et avec plus de monde &agrave; bord, qui entament des voyages depuis des r&eacute;gions plus recul&eacute;es comme la Gambie ou le S&eacute;n&eacute;gal, aux trajets de plus de 1.000 kilom&egrave;tres et qui avaient leur point d&rsquo;arriv&eacute;e au sud de Tenerife dans l&rsquo;&icirc;le de Gran Canaria, ont consid&eacute;rablement &eacute;t&eacute; r&eacute;duits par rapport &agrave; l&rsquo;&eacute;t&eacute; et &agrave; l&rsquo;automne 2020, &agrave; cause de contr&ocirc;les de police plus fr&eacute;quents pour les diriger vers ces deux iles de l&rsquo;archipel.</em></p>', 'L’île de Gran Canaria a cessé de supporter le plus grand flux migratoire toutes provenances confondues au détriment des îles Fuerteventura et Lanzarote. Une situation nous dit “La Razon“ qui tire ses données du rapport Missing Migrant Disappeared de l’OIM et qui contraste avec l’année dernière où l’île de Gran Canaria avait reçu l’essentiel des entrées irrégulières.\r\n\r\nL’augmentation de la mortalité (un millier de décès au moins) lors des traversées d’Afrique Subsaharienne de Mauritanie ou du Maroc est l’une des variations par rapport à l’année précédente, mais pas seulement. Il est dit également que ces derniers mois, les arrivées irrégulières ont été enregistrées lors de traversées depuis Tarfaya ou de Laâyoune vers Lanzarote et Fuerteventura qui n’étaient pas habituées à recevoir tant de monde.', 'non'),
(4, 2, ' Tour de vis des Forces de sécurité à Fnideq, Mdiq et Tétouan', 0x61727469636c65332e6a7067, '2022-04-15 07:55:00', 'Mohamed Jaouad EL KANABI', '<p><em>Petit tour de vis s&eacute;curitaire de la part des autorit&eacute;s marocaines dans le Nord du Royaume et plus particuli&egrave;rement &agrave; Fnideq, Mdiq et T&eacute;touan, afin d&rsquo;&eacute;viter&nbsp;une r&eacute;p&eacute;tition de ce qui s&rsquo;est pass&eacute; la veille de No&euml;l, lorsque des centaines de personnes sont arriv&eacute;es de diff&eacute;rents points du Royaume avec l&rsquo;intention d&rsquo;entrer ill&eacute;galement dans le pr&eacute;side occup&eacute; de Sebta.</em></p>\r\n<p><em>Selon le quotidien El Mundo, ces personnes avaient &eacute;t&eacute; attir&eacute;es par des fake news ou fausses informations sur les r&eacute;seaux sociaux disant la perm&eacute;abilit&eacute; des fronti&egrave;res de l&rsquo;enclave occup&eacute;e. Ce fut une nuit de tension notamment &agrave; Fnideq en raison de la mobilisation de centaines de jeunes marocains venus de partout du Maroc, croyant &agrave; un remake de mai dernier et en misant sur une &eacute;ventuelle passivit&eacute; des forces de s&eacute;curit&eacute;.Mal leur en prit puisque la Marine royale avait cueilli des candidats &agrave; l&rsquo;immigration clandestine avant qu&rsquo;ils n&rsquo;entrent dans la zone prohib&eacute;e. Aussi les autorit&eacute;s marocaines ne veulent pas tomber pas dans la situation similaire de la semaine pass&eacute;e qui avait conduit &agrave; l&rsquo;arrestation de trois personnes (deux hommes et une femme) traduites depuis en justice.</em></p>\r\n<p><em>A titre de rappel une quinzaine de Marocains avaient &eacute;t&eacute; d&eacute;tenus par la Gendarmerie Royale lorsqu&rsquo;une cinquantaine d&rsquo;entre eux avaient os&eacute; le d&eacute;fi de la travers&eacute;e ill&eacute;gale. Mais les forces de s&eacute;curit&eacute; de part et d&rsquo;autre avaient r&eacute;ussi &agrave; avorter ces tentatives.</em></p>\r\n<p><em>C&ocirc;t&eacute; espagnol, des patrouilles de la brigade de s&eacute;curit&eacute; citoyenne et de pr&eacute;vention et de r&eacute;action de la police nationale et de la garde civile avaient &eacute;t&eacute; d&eacute;ploy&eacute;es &agrave; l&rsquo;int&eacute;rieur des douanes espagnoles de l&rsquo;enclave occup&eacute;e pour emp&ecirc;cher la tentative de passage du c&ocirc;t&eacute; espagnol de ces cinquante personnes.</em></p>\r\n<p><em>Tandis qu&rsquo;&agrave; Fnideq, les autorit&eacute;s auraient r&eacute;ussi &agrave; contenir des centaines de personnes. Ce fut une nuit de No&euml;l pour le moins agit&eacute;e. Aussi, en pr&eacute;vention d&rsquo;un &eacute;ventuel &eacute;v&eacute;nement de ce genre, nombre d&rsquo;agents des forces de s&eacute;curit&eacute; marocaines, de la Police, de la Gendarmerie royale et des Forces auxiliaires auraient &eacute;t&eacute; d&eacute;ploy&eacute;es dans la r&eacute;gion selon le journal qui tient ses sources de t&eacute;moignages de citoyens de la r&eacute;gion.</em></p>\r\n<p><em>En effet est-il dit encore, des fake news circulent et une activit&eacute; a &eacute;t&eacute; d&eacute;tect&eacute;e dans les r&eacute;seaux sociaux et les groupes WhatsApp organisant des r&eacute;unions pour tenter un passage massif de candidats &agrave; l&rsquo;exil vers Sebta.</em></p>\r\n<p><em>Les personnes qui d&eacute;cident de s&rsquo;approcher des abords des installations frontali&egrave;res sont pr&eacute;venues et seront m&ecirc;me d&eacute;tenues selon El Mundo, et toute personne r&eacute;calcitrante &agrave; l&rsquo;ordre de ne pas s&rsquo;approcher de la fronti&egrave;re sera pr&eacute;sent&eacute;e au procureur g&eacute;n&eacute;ral du Royaume pour d&rsquo;&eacute;ventuelles poursuites, qui pourraient aboutir &agrave; des peines de prison et des amendes.</em></p>\r\n<p><em>Dans ce contexte, El Mundo croit savoir que le chef du gouvernement marocain a demand&eacute; au ministre de l&rsquo;Int&eacute;rieur de donner des ordres aux pr&eacute;fectures de T&eacute;touan et de Mdiq pour contr&ocirc;ler et contenir par la force s&rsquo;il le faut, les personnes qui ont l&rsquo;intention de s&rsquo;approcher de la zone avec l&rsquo;intention de franchir la fronti&egrave;re de Bab Sebta. Il a &eacute;t&eacute; ordonn&eacute; de &laquo; prot&eacute;ger les acc&egrave;s &raquo; de la route qui contourne Fnideq et se termine au poste fronti&egrave;re, ainsi que l&rsquo;acc&egrave;s de la route qui relie directement la douane &agrave; la route qui va vers Tanger.</em></p>', 'Petit tour de vis sécuritaire de la part des autorités marocaines dans le Nord du Royaume et plus particulièrement à Fnideq, Mdiq et Tétouan, afin d’éviter une répétition de ce qui s’est passé la veille de Noël, lorsque des centaines de personnes sont arrivées de différents points du Royaume avec l’intention d’entrer illégalement dans le préside occupé de Sebta.\r\n\r\nSelon le quotidien El Mundo, ces personnes avaient été attirées par des fake news ou fausses informations sur les réseaux sociaux disant la perméabilité des frontières de l’enclave occupée. Ce fut une nuit de tension notamment à Fnideq en raison de la mobilisation de centaines de jeunes marocains venus de partout du Maroc, croyant à un remake de mai dernier et en misant sur une éventuelle passivité des forces de sécurité.', 'oui'),
(5, 2, 'Le retour des relations Maroc-Espagne va-t-il faciliter le retour des mineurs non accompagnés?', 0x61727469636c65342e77656270, '2022-04-11 05:25:00', 'Yasmine Saih', '<p>Le retour des relations entre le Maroc et l&rsquo;Espagne pourrait ouvrir la voie vers la reprise de l&rsquo;expulsion des mineurs non accompagn&eacute;s en Espagne, malgr&eacute; des proc&eacute;dures longues. La vague migratoire de mai dernier avait concern&eacute; 800 mineurs non accompagn&eacute;s.</p>\r\n<p>Le processus de retour des mineurs vers le Maroc est compliqu&eacute; du fait de la l&eacute;gislation espagnole et europ&eacute;enne et la Convention internationale des droits de l&rsquo;enfant. Les proc&eacute;dures sont longues et compliqu&eacute;es &eacute;tant donn&eacute; qu&rsquo;elles doivent prot&eacute;ger les droits et int&eacute;r&ecirc;ts de ces enfants.</p>\r\n<p>Compte tenu de la complexit&eacute; de l&rsquo;op&eacute;ration d&rsquo;expulsion de ces mineurs sans papiers devrait, celle-ci&nbsp; prendre plusieurs mois, selon les d&eacute;cisions des tribunaux ib&eacute;riques.</p>\r\n<p>Les autorit&eacute;s espagnoles ont envoy&eacute; des donn&eacute;es officielles sur les enfants mineurs &agrave; leurs homologues marocains, m&ecirc;me pendant la crise diplomatique majeure qui a entach&eacute; les relations bilat&eacute;rales.</p>\r\n<p>A ce jour, ce sont environ 800 mineurs marocains entr&eacute;s ill&eacute;galement sur le territoire espagnol en mai dernier, dont une grande partie a d&eacute;j&agrave; &eacute;t&eacute; refoul&eacute;e vers le Maroc. Mais dans l&rsquo;ensemble, le chiffre atteint les 9.000 mineurs selon les statistiques du Fonds des Nations Unies pour l&rsquo;Enfance (UNICEF).</p>\r\n<p>Le Roi Mohammed VI a appel&eacute; &agrave; agir pour le retour des mineurs non accompagn&eacute;s sur le sol europ&eacute;en, soulignant l&rsquo;engagement clair et ferme du Royaume &agrave; accepter le retour des mineurs non accompagn&eacute;s d&ucirc;ment identifi&eacute;s.</p>\r\n<p>Selon Abdelilah El Khoudari, directeur du Centre marocain des droits de l&rsquo;homme, &laquo;&nbsp;le gouvernement espagnol fait face &agrave; un obstacle judiciaire, qui se refl&egrave;te dans une d&eacute;cision de justice qui emp&ecirc;che, m&ecirc;me temporairement, le processus d&rsquo;expulsion des mineurs non accompagn&eacute;s, qui a &eacute;t&eacute; rendue en ao&ucirc;t de l&rsquo;ann&eacute;e derni&egrave;re&nbsp;&raquo;.</p>\r\n<p>Comme exemple de la complexit&eacute; de ce processus, un juge du tribunal de Ceuta a rendu une d&eacute;cision d&rsquo;arr&ecirc;ter l&rsquo;expulsion des mineurs et de renvoyer ceux qui les avaient quitt&eacute;s, au motif d&rsquo;une violation de leurs droits.</p>\r\n<p>En effet, les personnes entr&eacute;es ill&eacute;galement en Espagne doivent avoir le droit de d&eacute;poser une demande d&rsquo;asile, et d&rsquo;attendre le verdict au sujet de leur demande avant d&rsquo;&ecirc;tre expuls&eacute;s en cas de r&eacute;ponse n&eacute;gative.</p>\r\n<p>Les autorit&eacute;s espagnoles doivent &eacute;galement chercher les membres de la famille de chaque mineur pour v&eacute;rifier qu&rsquo;il n&rsquo;encoure pas de danger en revenant vers elle.</p>\r\n<p>Or, les services de l&rsquo;ordre espagnols ont commis des bavures et ont &eacute;t&eacute; film&eacute;s en train de refouler des mineurs par la porte de poste fronti&egrave;res directement, en bafouant ces obligations proc&eacute;durales.</p>\r\n<p>&laquo;&nbsp;Nous sommes devant un tribunal statuant dans un &Eacute;tat qui s&eacute;pare les autorit&eacute;s et respecte le r&ocirc;le vital jou&eacute; par les organisations de d&eacute;fense des droits de l&rsquo;homme, quels que soient les accords politiques que le gouvernement a pr&eacute;sent&eacute;s Espagnol avec d&rsquo;autres pays&nbsp;&raquo;, a estim&eacute; dans une d&eacute;claration &agrave; Hespress, le militant des droits de l&rsquo;homme.</p>\r\n<p>Alors que le gouvernement espagnol cherche un moyen d&rsquo;expulser les mineurs marocains non accompagn&eacute;s vers leur pays via un accord politique en profitant de la reprise des relations bilat&eacute;rales qui devraient se hisser &agrave; un niveau sup&eacute;rieur dans l&rsquo;avenir, cette option pourrait se faire au d&eacute;triment de ces mineurs.</p>\r\n<p>Le militant des droits de l&rsquo;homme a estim&eacute; &agrave; cet effet que le retour de l&rsquo;&eacute;lan dans les relations maroco-espagnoles ne devrait pas se faire au d&eacute;triment de ceux qui aspirent &agrave; une vie d&eacute;cente, &agrave; de meilleures opportunit&eacute;s de vie et &agrave; une v&eacute;ritable d&eacute;mocratie, a-t-il indiqu&eacute;.</p>', 'es autorités espagnoles ont envoyé des données officielles sur les enfants mineurs à leurs homologues marocains, même pendant la crise diplomatique majeure qui a entaché les relations bilatérales.\r\n\r\nA ce jour, ce sont environ 800 mineurs marocains entrés illégalement sur le territoire espagnol en mai dernier, dont une grande partie a déjà été refoulée vers le Maroc. Mais dans l’ensemble, le chiffre atteint les 9.000 mineurs selon les statistiques du Fonds des Nations Unies pour l’Enfance (UNICEF).\r\n\r\nLe Roi Mohammed VI a appelé à agir pour le retour des mineurs non accompagnés sur le sol européen, soulignant l’engagement clair et ferme du Royaume à accepter le retour des mineurs non accompagnés dûment identifiés.\r\n\r\nSelon Abdelilah El Khoudari, directeur du Centre marocain des droits de l’homme, « le gouvernement espagnol fait face à un obstacle judiciaire, qui se reflète dans une décision de justice qui empêche, même temporairement, le processus d’expulsion des mineurs non accompagnés, qui a été rendue en août de l’année dernière ».\r\n\r\nComme exemple de la complexité de ce processus, un juge du tribunal de Ceuta a rendu une décision d’arrêter l’expulsion des mineurs et de renvoyer ceux qui les avaient quittés, au motif d’une violation de leurs droits.\r\n\r\nEn effet, les personnes entrées illégalement en Espagne doivent avoir le droit de déposer une demande d’asile, et d’attendre le verdict au sujet de leur demande avant d’être expulsés en cas de réponse négative.\r\n\r\nLes autorités espagnoles doivent également chercher les membres de la famille de chaque mineur pour vérifier qu’il n’encoure pas de danger en revenant vers elle.\r\n\r\nOr, les services de l’ordre espagnols ont commis des bavures et ont été filmés en train de refouler des mineurs par la porte de poste frontières directement, en bafouant ces obligations procédurales.\r\n\r\n« Nous sommes devant un tribunal statuant dans un État qui sépare les autorités et respecte le rôle vital joué par les organisations de défense des droits de l’homme, quels que soient les accords politiques que le gouvernement a présentés Espagnol avec d’autres pays », a estimé dans une déclaration à Hespress, le militant des droits de l’homme.\r\n\r\nAlors que le gouvernement espagnol cherche un moyen d’expulser les mineurs marocains non accompagnés vers leur pays via un accord politique en profitant de la reprise des relations bilatérales qui devraient se hisser à un niveau supérieur dans l’avenir, cette option pourrait se faire au détriment de ces mineurs.\r\n\r\nLe militant des droits de l’homme a estimé à cet effet que le retour de l’élan dans les relations maroco-espagnoles ne devrait pas se faire au détriment de ceux qui aspirent à une vie décente, à de meilleures opportunités de vie et à une véritable démocratie, a-t-il indiqué.', 'oui'),
(6, 1, 'Tarfaya: 45 candidats à l’immigration sauvés par la Marine', 0x4d6172696e652d726f79616c652e6a7067, '2022-04-15 07:58:00', 'Hespress FR', '<p>Un chalutier a rep&ecirc;ch&eacute;, mardi &agrave; 39 miles nautiques au nord du port de Tarfaya, une embarcation en difficult&eacute; avec &agrave; bord 45 candidats &agrave; l&rsquo;immigration clandestine, dont 09 mineurs, a-t-on appris aupr&egrave;s des autorit&eacute;s locales.</p>\r\n<p>Les candidats &agrave; l&rsquo;immigration, qui ont &eacute;t&eacute; secourus, sont originaires de plusieurs villes du Royaume s&rsquo;&eacute;taient engag&eacute;s samedi en mer depuis les c&ocirc;t&eacute;s d&rsquo;Agadir.</p>\r\n<p>Apr&egrave;s trois jours de navigation, l&rsquo;embarcation est tomb&eacute;e en panne d&rsquo;essence, a-t-ajout&eacute; de m&ecirc;me source.</p>', 'Un chalutier a repêché, mardi à 39 miles nautiques au nord du port de Tarfaya, une embarcation en difficulté avec à bord 45 candidats à l’immigration clandestine, dont 09 mineurs, a-t-on appris auprès des autorités locales.', 'non'),
(7, 3, 'En Afrique ou en Europe, les femmes agricultrices en quête de leur place', 0x3030302e6a7067, '2022-04-15 08:03:00', 'Yasmine Saih', '<p>Qu&rsquo;il s&rsquo;agisse de l&rsquo;Afrique ou de l&rsquo;Europe, les femmes agricultrices sont toujours sous-repr&eacute;sent&eacute;es et m&egrave;nent un combat commun pour renforcer leur pr&eacute;sence et prendre la place qui leur revient de droit comme les hommes.&nbsp;</p>\r\n<p>Alors qu&rsquo;en Europe, les femmes sont de plus en plus dirigeantes d&rsquo;exploitations agricoles (29%), en Afrique elles sont plus nombreuses &agrave; faire partie de la main d&rsquo;&oelig;uvre, repr&eacute;sentant 60% des petites mains qui cultivent les terres.</p>\r\n<div id=\"div-gpt-ad-1608049251753-0\" data-google-query-id=\"CMeiy7DNlfcCFdObJwIdI6QOOg\"></div>\r\n<p>Mais malgr&eacute; leur nombre</p>\r\n<p>important, leur d&eacute;termination, les agricultrices qu&rsquo;elles soient issues de l&rsquo;h&eacute;misph&egrave;re nord ou sud, continuent de faire face &agrave; des probl&egrave;mes li&eacute;s essentiellement &agrave; leur genre, affirment les t&eacute;moignages de femmes agricultrices en Europe et en Afrique, rassembl&eacute;s lors d&rsquo;un Webinaire organis&eacute; organis&eacute; par l&rsquo;OCP, leader en production de d&rsquo;engrais, &agrave; l&rsquo;occasion de la journ&eacute;e des droits de la femme.</p>\r\n<p>En Europe o&ugrave; l&rsquo;agriculture s&rsquo;est d&eacute;velopp&eacute;e gr&acirc;ce aux machines, et les textes de lois leur ont octroy&eacute; des droits &eacute;gaux aux hommes, les femmes agricultrices ont pu acc&eacute;der &agrave; des postes de responsabilit&eacute; dans leur exploitations agricoles, mais il existe des disparit&eacute;s entre les diff&eacute;rents pays, et surtout elles restent minoritaires.</p>\r\n<p>En Afrique en revanche, ce travail l&agrave; n&rsquo;est pas encore fait et les femmes se voient encore rel&eacute;gu&eacute;es en majorit&eacute;, au rang d&rsquo;ouvri&egrave;res dans des exploitations agricoles d&eacute;tenues par des hommes notamment &agrave; cause de taux d&rsquo;analphab&eacute;tisme &eacute;lev&eacute; qui freine leur &eacute;mancipation, d&rsquo;o&ugrave; la recherche de solutions de repli.</p>\r\n<h3>Une sous repr&eacute;sentation des femmes g&eacute;rantes d&rsquo;exploitation en Europe</h3>\r\n<p>&laquo;&nbsp;C&rsquo;est moi qui m&rsquo;occupe int&eacute;gralement de la gestion (de l&rsquo;exploitation agricole)&nbsp;&raquo;, a d&eacute;clar&eacute; Martine Peytavin, co-g&eacute;rante d&rsquo;un groupement agricole de vaches laiti&egrave;res et de production de fromage en France.</p>\r\n<p>&laquo;&nbsp;J&rsquo;ai travaill&eacute; 9 ans en entreprise dans le bois en tant que comptable et j&rsquo;ai repris l&rsquo;exploitation de mes parents en 1995.&nbsp; Mon parcours n&rsquo;a pas &eacute;t&eacute; perturb&eacute; par le fait d&rsquo;&ecirc;tre une femme parce que d&eacute;j&agrave; je suis fille d&rsquo;agriculteurs, mais j&rsquo;ai &eacute;t&eacute; en milieu scolaire o&ugrave; il y avait tr&egrave;s peu de filles, 7 filles sur 70 &eacute;tudiants en BTS, donc c&rsquo;est un parcours dans un milieu masculin&nbsp;&raquo;, indique-t-elle.</p>\r\n<p>Elle affirme que gr&acirc;ce aux machines et les robotisation, les femmes ne sont &laquo;&nbsp;plus d&eacute;rang&eacute;es par le souci de force physique qui pourrait &ecirc;tre un frein pour une femme&nbsp;&raquo;, ce qui leur permet de faire des t&acirc;ches longtemps r&eacute;serv&eacute;es aux hommes.</p>\r\n<p>Mais m&ecirc;me apr&egrave;s une longue carri&egrave;re en tant qu&rsquo;agricultrice en France, &laquo;&nbsp;il est &eacute;vident qu&rsquo;en tant que femme il faut s&rsquo;imposer parce que les machos &ccedil;a existe toujours&nbsp;&raquo; en 2022, lance-t-elle.</p>\r\n<p>De son c&ocirc;t&eacute;, Murielle Penon, 50 ans, exploitante agricole, s&rsquo;estime heureuse de ne pas eu &agrave; subir l&rsquo;injustice que sa m&egrave;re, elle-m&ecirc;me agricultrice a eu &agrave; subir.</p>\r\n<p>&laquo;&nbsp;A l&rsquo;&eacute;poque de ma maman, dans les ann&eacute;es 70-80, le statut de la femme n&rsquo;&eacute;tait pas du tout celui que l&rsquo;on connait aujourd&rsquo;hui. Ma maman a &eacute;t&eacute; conjointe-collaboratrice presque sur la fin de sa carri&egrave;re parce que &ccedil;a a &eacute;t&eacute; 8 ans avant qu&rsquo;elle ne soit &agrave; la retraite. Ce statut date de simplement 1999 et donc c&rsquo;&eacute;tait mon papa qui cotisait pour elle pour qu&rsquo;elle ait une toute petite retraite&nbsp;&raquo;, a-t-elle affirm&eacute;.</p>\r\n<p>&laquo;&nbsp;Elle a toujours &eacute;t&eacute; la femme de l&rsquo;agriculteur, elle n&rsquo;avait pas son propre statut social. Moi aujourd&rsquo;hui je suis cheffe d&rsquo;une exploitation agricole associ&eacute;e avec mon mari mais je suis &eacute;galement une &eacute;lue et &ccedil;a aussi c&rsquo;est gr&acirc;ce &agrave; l&rsquo;&eacute;volution. Je suis la premi&egrave;re femme &eacute;lue de ma coop&eacute;rative c&eacute;r&eacute;ali&egrave;re depuis 7 ans et une &eacute;lue de la chambre agricole de mon d&eacute;partement depuis 3 ans&nbsp;&raquo;, ajoute Murielle.</p>\r\n<p>&laquo;&nbsp;Ma m&egrave;re me dit +mais quel chemin!+. Jai une pens&eacute;e particuli&egrave;re en ce 8 mars pour toutes les femmes qui se sont battues avant moi pour faire &agrave; ce que j&rsquo;en arrive &agrave; ce poste aujourd&rsquo;hui&nbsp;&raquo;, a-t-elle d&eacute;clar&eacute; estimant que c&rsquo;est &agrave; son tour de passer le flambeau.</p>\r\n<p>Depuis 2018, Murielle est devenue porte parole d&rsquo;un collectif qui rassemble toutes les coop&eacute;ratives des agricultrices de France, &laquo;&nbsp;nous essayons de faire bouger les choses&nbsp;&raquo;, explique-t-elle, en soulignant que malgr&eacute; que les femmes agricultrices en France ont des droits, elles restent cependant minoritaires, repr&eacute;sentant environ 26% des femmes cheffes d&rsquo;exploitations agricoles, et seulement 9,7% &agrave; &ecirc;tre administratrices de coop&eacute;ratives.</p>\r\n<p>&laquo; Je n&rsquo;ai m&ecirc;me pas le chiffre de la repr&eacute;sentativit&eacute; pour les postes de pr&eacute;sidente ou de vice-pr&eacute;sidente de ces coop&eacute;ratives agricoles &raquo;, a-t-elle ajout&eacute;, soulignant l&rsquo;importance de la mixit&eacute; et de la parit&eacute; au niveau des instances d&eacute;cisionnaires.</p>', 'Qu’il s’agisse de l’Afrique ou de l’Europe, les femmes agricultrices sont toujours sous-représentées et mènent un combat commun pour renforcer leur présence et prendre la place qui leur revient de droit comme les hommes. ', 'non'),
(8, 5, 'test', 0x4d6172696e652d726f79616c652e6a7067, '2022-04-15 11:40:00', 'admin', '<p>testtest</p>', 'test', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `ID_CAT` int(11) NOT NULL,
  `NOM_CAT` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`ID_CAT`, `NOM_CAT`) VALUES
(1, 'Immigration'),
(2, 'Actualité'),
(3, 'Cartographie'),
(4, 'Fluxmigratoire'),
(5, 'Basededonnés'),
(6, 'Rapports');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `ID_COM` int(11) NOT NULL,
  `NOM` char(30) DEFAULT NULL,
  `EMAIL` char(30) DEFAULT NULL,
  `OBJET` char(30) DEFAULT NULL,
  `CONTENU_COM` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`ID_COM`, `NOM`, `EMAIL`, `OBJET`, `CONTENU_COM`) VALUES
(4, 'yassir el hamoudi', 'yassir.elhamoudi20@ump.ac.ma', 'test', 'test test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_AUTEUR`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID_ARTICLE`),
  ADD KEY `FK_CONTIENT` (`ID_CAT`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`ID_CAT`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`ID_COM`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `ID_CAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `ID_COM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_CONTIENT` FOREIGN KEY (`ID_CAT`) REFERENCES `categorie` (`ID_CAT`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
