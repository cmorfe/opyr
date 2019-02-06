-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2019 a las 15:32:34
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `opyr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('usuario','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `tipo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pablo', 'pablo', 'admin', NULL, '$2y$10$75KidCIn500LNs93zfCFsu0hS0oBqbTNKu6O68jcV/HbXg8KAClAu', NULL, NULL, NULL),
(2, 'Ana', 'ana', 'usuario', NULL, '$2y$10$Cla7kE2TT10w0ajnjSEmFecRlaqg.baXm9hqw2Ti..FO/V59JIHFm', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_es` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_pt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_es`, `nombre_pt`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Eventos', 'Eventos', 'aa', NULL, NULL),
(2, 'Productos', 'Produtos', 'bb', NULL, NULL),
(3, 'Empresa', 'Negócios', 'cc', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicions`
--

CREATE TABLE `condicions` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion_es` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_pt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `condicions`
--

INSERT INTO `condicions` (`id`, `descripcion_es`, `descripcion_pt`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipiscing elit faucibus, magnis natoque metus potenti duis tempor litora, sociis placerat ut risus in gravida orci. Aliquet donec nisl etiam mus velit pulvinar, torquent tortor non convallis posuere pellentesque curae, vehicula a class litora placerat. Sollicitudin sed praesent nunc nec venenatis inceptos maecenas molestie nisl, dis duis accumsan iaculis rhoncus pellentesque eleifend a ultrices, lacinia aptent aliquet leo mi commodo mattis orci.\r\n\r\n								Accumsan facilisi mi enim dictum nostra eleifend posuere dignissim hendrerit nunc varius, ultrices sodales himenaeos quis montes massa per cras pretium orci, vehicula vitae imperdiet curabitur erat risus mus sollicitudin class elementum. Natoque etiam dui rutrum risus tincidunt magna condimentum, cras iaculis accumsan sociosqu id class non, mollis venenatis himenaeos fermentum litora vel. Ut sodales a mauris nec tempus imperdiet facilisis dapibus ligula ante, tincidunt aliquet lacinia duis ac cum vel phasellus euismod felis, leo tristique tortor iaculis dui bibendum aliquam consequat habitant. Eleifend vulputate non pretium id ultrices montes, phasellus nisl diam rutrum nostra, pulvinar sed penatibus vitae parturient.\r\n\r\n								At molestie dui condimentum velit potenti ad auctor platea, facilisis netus phasellus etiam fringilla senectus magna fermentum arcu, sapien morbi vel tempus curae urna justo. Scelerisque ut torquent porttitor nunc tempus cum bibendum class, interdum sem varius sed at magna id luctus vel, habitasse risus ligula ac cras congue integer. Dapibus vulputate mattis euismod proin mollis vivamus lacus potenti porttitor, nam sociis consequat primis facilisis eget erat dignissim nisl, platea bibendum semper class gravida hendrerit phasellus dis. Non taciti tristique viverra felis vivamus malesuada orci consequat quis, etiam libero integer ante varius lacus mattis laoreet ornare, torquent fusce accumsan in venenatis nisi dictumst purus. Magna lobortis vel platea nunc placerat commodo suspendisse eros donec, mi aptent scelerisque neque facilisi fusce proin.', 'Lorem ipsum dolor sit amet consectetur adipiscing elit faucibus, magnis natoque metus potenti duis tempor litora, sociis placerat ut risus in gravida orci. Aliquet donec nisl etiam mus velit pulvinar, torquent tortor non convallis posuere pellentesque curae, vehicula a class litora placerat. Sollicitudin sed praesent nunc nec venenatis inceptos maecenas molestie nisl, dis duis accumsan iaculis rhoncus pellentesque eleifend a ultrices, lacinia aptent aliquet leo mi commodo mattis orci.\r\n\r\n								Accumsan facilisi mi enim dictum nostra eleifend posuere dignissim hendrerit nunc varius, ultrices sodales himenaeos quis montes massa per cras pretium orci, vehicula vitae imperdiet curabitur erat risus mus sollicitudin class elementum. Natoque etiam dui rutrum risus tincidunt magna condimentum, cras iaculis accumsan sociosqu id class non, mollis venenatis himenaeos fermentum litora vel. Ut sodales a mauris nec tempus imperdiet facilisis dapibus ligula ante, tincidunt aliquet lacinia duis ac cum vel phasellus euismod felis, leo tristique tortor iaculis dui bibendum aliquam consequat habitant. Eleifend vulputate non pretium id ultrices montes, phasellus nisl diam rutrum nostra, pulvinar sed penatibus vitae parturient.\r\n\r\n								At molestie dui condimentum velit potenti ad auctor platea, facilisis netus phasellus etiam fringilla senectus magna fermentum arcu, sapien morbi vel tempus curae urna justo. Scelerisque ut torquent porttitor nunc tempus cum bibendum class, interdum sem varius sed at magna id luctus vel, habitasse risus ligula ac cras congue integer. Dapibus vulputate mattis euismod proin mollis vivamus lacus potenti porttitor, nam sociis consequat primis facilisis eget erat dignissim nisl, platea bibendum semper class gravida hendrerit phasellus dis. Non taciti tristique viverra felis vivamus malesuada orci consequat quis, etiam libero integer ante varius lacus mattis laoreet ornare, torquent fusce accumsan in venenatis nisi dictumst purus. Magna lobortis vel platea nunc placerat commodo suspendisse eros donec, mi aptent scelerisque neque facilisi fusce proin.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('telefono_1','telefono_2','telefono_3','email','direccion') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `tipo`, `descripcion`, `status`, `created_at`, `updated_at`) VALUES
(1, 'telefono_1', '(54 11) 4116-0591', 1, NULL, NULL),
(2, 'telefono_2', '(54 11) 4116-0592', 1, NULL, NULL),
(3, 'telefono_3', '(54 11) 4750-3671', 1, NULL, NULL),
(4, 'email', 'info@opyr.com.ar', 1, NULL, NULL),
(5, 'direccion', 'Caseros 2720, B1678HKF Caseros, Buenos Aires', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion_es` text COLLATE utf8mb4_unicode_ci,
  `slogan_es` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mision_es` text COLLATE utf8mb4_unicode_ci,
  `descripcion_pt` text COLLATE utf8mb4_unicode_ci,
  `slogan_pt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mision_pt` text COLLATE utf8mb4_unicode_ci,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `descripcion_es`, `slogan_es`, `mision_es`, `descripcion_pt`, `slogan_pt`, `mision_pt`, `file_image`, `created_at`, `updated_at`) VALUES
(1, 'OPyR ofrece servicios de venta, reparación y calibración de contadores de partículas, así como también, realizamos servicio de calificación y montaje de equipamiento para áreas blancas.\r\n										Realizamos Calibración de contadores de partículas en aire y gases, como también calibración de generador de aerosoles, anemómetros y balómetros, \r\n										Somos especialistas en soporte técnico y nuestra misión es acompañar a nuestros clientes en sus necesidades y actividades. Estamos convencidos de que es un buen ejercicio trabajar de manera conjunta, para enriquecer los resultados.', 'Máxima calidad, confiabilidad y seguridad de nuestros servicios', 'Nuestra misión es acompañar a nuestros clientes en sus necesidades y actividades. Trabajamos de manera conjunta con nuestro equipo de profesionales para brindar el mejor servicio de atención. \r\n										Asumimos un compromiso de excelencia en la calidad de nuestros servicios y productos. Ofrecemos servicio de calidad, avalado por más de 10 años de experiencia y presencia.', 'Oferece serviços de venda, reparo e calibração de contadores de partículas, bem como, realizamos serviços de qualificação e montagem de equipamentos para áreas brancas. Realizamos a calibração de contadores de partículas em ar e gases, assim como calibração de aerossóis, anemômetros e balômetros, somos especialistas em suporte técnico e nossa missão é acompanhar nossos clientes em suas necessidades e atividades. Estamos convencidos de que é um bom exercício trabalhar juntos para enriquecer os resultados.', 'Máxima qualidade, confiabilidade e segurança dos nossos serviços', 'Nossa missão é acompanhar nossos clientes em suas necessidades e atividades. Trabalhamos em conjunto com nossa equipe de profissionais para prestar o melhor serviço. Assumimos um compromisso com a excelência na qualidade de nossos serviços e produtos. Oferecemos um serviço de qualidade, apoiado por mais de 10 anos de experiência e presença.', 'empresa__empresa.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagens`
--

CREATE TABLE `imagens` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `novedad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacions`
--

CREATE TABLE `informacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo_es` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_es` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_pt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `informacions`
--

INSERT INTO `informacions` (`id`, `titulo_es`, `titulo_pt`, `descripcion_es`, `descripcion_pt`, `file_image`, `created_at`, `updated_at`) VALUES
(1, 'Partículas OPyR', 'Partículas OPyR', 'OPyR ofrece servicios de venta, reparación y calibración; así como también, servicio de calificación y equipamiento. Somos especialistas en soporte técnico y nuestra misión es acompañar a nuestros clientes en sus necesidades y actividades', 'OPyR oferece serviços de vendas, reparo e calibração; bem como serviço de qualificação e equipamentos. Somos especialistas em suporte técnico e nossa missão é acompanhar nossos clientes em suas necessidades e atividades', 'home__informacions.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ubicacion` enum('navbar','footer','favicon') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `ubicacion`, `file_image`, `created_at`, `updated_at`) VALUES
(1, 'navbar', 'logos__logo-principal.png', NULL, NULL),
(2, 'footer', 'logos__logo-footer.png', NULL, NULL),
(3, 'favicon', 'logos__favicon.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion_es` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seccion_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword_es` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword_pt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion_es` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion_pt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `seccion_es`, `seccion_pt`, `keyword_es`, `keyword_pt`, `descripcion_es`, `descripcion_pt`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', 'home', 'home', 'Página principal', 'Home', '/', NULL, NULL),
(2, 'Empresa', 'Empresa', 'empresa', 'empresa', 'Descripción de la empresa', 'Descrição da empresa', '/empresa', NULL, NULL),
(3, 'Productos', 'Productos', 'productos', 'productos', 'Catálogo de Productos', 'Catálogo de produtos', '/productos', NULL, NULL),
(4, 'Servicios', 'Serviços', 'servicios', 'Serviços', 'Servicios brindados por la empresa.', 'Serviços prestados pela empresa.', '/servicios', NULL, NULL),
(5, 'Distribuidores', 'Distribuidores', 'distribuidores', 'distribuidores', 'Distribuidores de la empresa.', 'Distribuidores da empresa.', '/distribuidores', NULL, NULL),
(6, 'Contacto', 'Entre em contato', 'contacto', 'entre em contato', 'Zona de contacto', 'Área de contato', '/contacto', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(136, '2014_10_12_000000_create_users_table', 1),
(137, '2014_10_12_100000_create_password_resets_table', 1),
(138, '2018_11_05_150618_create_datos_table', 1),
(139, '2018_11_05_150731_create_logos_table', 1),
(140, '2018_11_05_153326_create_metadatos_table', 1),
(141, '2018_11_05_172127_create_admins_table', 1),
(142, '2018_11_07_190826_create_empresas_table', 1),
(143, '2018_11_07_190856_create_sliders_table', 1),
(144, '2018_12_11_145318_create_condicions_table', 1),
(145, '2019_01_07_180404_create_informacions_table', 1),
(146, '2019_01_08_210806_create_servicios_table', 1),
(147, '2019_01_08_211050_create_textos_table', 1),
(148, '2019_01_09_104214_create_categorias_table', 1),
(149, '2019_01_09_133745_create_novedads_table', 1),
(150, '2019_01_09_141618_create_imagens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedads`
--

CREATE TABLE `novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo_es` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo_pt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto_es` text COLLATE utf8mb4_unicode_ci,
  `texto_pt` text COLLATE utf8mb4_unicode_ci,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-image.jpg',
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `novedads`
--

INSERT INTO `novedads` (`id`, `titulo_es`, `titulo_pt`, `texto_es`, `texto_pt`, `file_image`, `orden`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Novedad', 'Novidade', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat a ut deserunt harum officiis mollitia expedita animi, ipsa minus. Libero, voluptatibus. Omnis dolorem voluptatum quo similique modi sunt vero ut!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae numquam illo provident culpa esse ducimus perspiciatis tempora nulla doloremque, inventore aperiam iste id, laudantium optio reprehenderit consequatur cum soluta debitis. ', 'novedades__novedad1.jpg', 'aa', 1, NULL, NULL),
(2, 'Novedad', 'Novidade', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat a ut deserunt harum officiis mollitia expedita animi, ipsa minus. Libero, voluptatibus. Omnis dolorem voluptatum quo similique modi sunt vero ut!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae numquam illo provident culpa esse ducimus perspiciatis tempora nulla doloremque, inventore aperiam iste id, laudantium optio reprehenderit consequatur cum soluta debitis. ', 'novedades__novedad2.jpg', 'bb', 2, NULL, NULL),
(3, 'Novedad', 'Novidade', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat a ut deserunt harum officiis mollitia expedita animi, ipsa minus. Libero, voluptatibus. Omnis dolorem voluptatum quo similique modi sunt vero ut!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae numquam illo provident culpa esse ducimus perspiciatis tempora nulla doloremque, inventore aperiam iste id, laudantium optio reprehenderit consequatur cum soluta debitis. ', 'novedades__novedad3.jpg', 'cc', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion_es` text COLLATE utf8mb4_unicode_ci,
  `descripcion_pt` text COLLATE utf8mb4_unicode_ci,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `descripcion_es`, `descripcion_pt`, `file_image`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Centro de diagnóstico y análisis de partículas', 'Centro de diagnóstico e análise de partículas', 'servicios__servicio1.jpg', 'aa', NULL, NULL),
(2, 'Estudio de particulado por tecnología láser', 'Estudo de partículas por tecnologia laser', 'servicios__servicio2.jpg', 'bb', NULL, NULL),
(3, 'Recuento partículas', 'Contagem de partículas', 'servicios__servicio3.jpg', 'cc', NULL, NULL),
(4, 'Análisis y evolución de estado de los sistemas', 'Análise e evolução do estado dos sistemas', 'servicios__servicio4.jpg', 'dd', NULL, NULL),
(5, 'Control de sistemas de agua pura y de generación de agua para inyectables', 'Controle de sistemas de água pura e geração de água para injetáveis', 'servicios__servicio5.jpg', 'ee', NULL, NULL),
(6, 'Control de nivel de contaminación particulada en envases', 'Controle do nível de contaminação por partículas em contêineres', 'servicios__servicio6.jpg', 'ff', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `titulo_es` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo_pt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion_es` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion_pt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `file_image`, `titulo_es`, `titulo_pt`, `descripcion_es`, `descripcion_pt`, `seccion`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'sliders__slider1.jpg', 'SUMINISTRO INTEGRAL', 'FORNECIMENTO ABRANGENTE', 'Optimización de Procesos y Recursos', 'Otimização de Processos e Recursos', 'home', 'aa', NULL, NULL),
(2, 'sliders__slider2.jpg', 'SERVICIO DE EXCELENCIA', 'SERVIÇO DE EXCELÊNCIA', 'Análisis y Calibración de Partículas', 'Análise e Calibração de Partículas', 'empresa', 'aa', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos`
--

CREATE TABLE `textos` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto1_es` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto2_es` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto1_pt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto2_pt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `textos`
--

INSERT INTO `textos` (`id`, `texto1_es`, `texto2_es`, `texto1_pt`, `texto2_pt`, `ubicacion`, `created_at`, `updated_at`) VALUES
(1, 'Servicio llave en mano', 'Contamos con un equipo de profesionales capacitados y con alta experiencia en el rubro. Nos dedicamos a brindar  un servicio integral y asesoramiento personalizado adecuado a las necesidades propias de nuestros clientes.', 'Serviço chave na mão', 'Temos uma equipe de profissionais treinados com alta experiência no campo. Dedicamo-nos a fornecer um serviço abrangente e aconselhamento personalizado adequado às necessidades dos nossos clientes.', 'texto-servicios', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `parent_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ana', 'anita', 'anita@osole.es', NULL, '$2y$10$CVWMSjicXIEgf3EZirJ2QOwjejdod1I4GurUhnT8ftJZi83rJM4xG', 1, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicions`
--
ALTER TABLE `condicions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imagens_novedad_id_foreign` (`novedad_id`);

--
-- Indices de la tabla `informacions`
--
ALTER TABLE `informacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedads`
--
ALTER TABLE `novedads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novedads_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `textos`
--
ALTER TABLE `textos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_parent_id_foreign` (`parent_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `condicions`
--
ALTER TABLE `condicions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informacions`
--
ALTER TABLE `informacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `novedads`
--
ALTER TABLE `novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `textos`
--
ALTER TABLE `textos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `imagens_novedad_id_foreign` FOREIGN KEY (`novedad_id`) REFERENCES `novedads` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `novedads`
--
ALTER TABLE `novedads`
  ADD CONSTRAINT `novedads_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
