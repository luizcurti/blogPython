-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Mar-2020 às 22:21
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog_django`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add post', 1, 'add_post'),
(2, 'Can change post', 1, 'change_post'),
(3, 'Can delete post', 1, 'delete_post'),
(4, 'Can view post', 1, 'view_post'),
(5, 'Can add categoria', 2, 'add_categoria'),
(6, 'Can change categoria', 2, 'change_categoria'),
(7, 'Can delete categoria', 2, 'delete_categoria'),
(8, 'Can view categoria', 2, 'view_categoria'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session'),
(33, 'Can add comentario', 9, 'add_comentario'),
(34, 'Can change comentario', 9, 'change_comentario'),
(35, 'Can delete comentario', 9, 'delete_comentario'),
(36, 'Can view comentario', 9, 'view_comentario'),
(37, 'Can add attachment', 10, 'add_attachment'),
(38, 'Can change attachment', 10, 'change_attachment'),
(39, 'Can delete attachment', 10, 'delete_attachment'),
(40, 'Can view attachment', 10, 'view_attachment');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$IyClX1DfviMg$5U6vTOEWpEEd6FBjn3GlkrOqatyJgXXxGS7ykgkLqXw=', '2020-03-23 21:47:04.919866', 1, 'luizcurti', '', '', 'luiz_curti@hotmail.com', 1, 1, '2020-03-20 20:00:56.516950');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias_categoria`
--

CREATE TABLE `categorias_categoria` (
  `id` int(11) NOT NULL,
  `nome_cat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias_categoria`
--

INSERT INTO `categorias_categoria` (`id`, `nome_cat`) VALUES
(1, 'Tecnologia'),
(2, 'Python'),
(3, 'Django'),
(4, 'Sistemas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios_comentario`
--

CREATE TABLE `comentarios_comentario` (
  `id` int(11) NOT NULL,
  `nome_comentario` varchar(150) NOT NULL,
  `email_comentario` varchar(254) NOT NULL,
  `comentario` longtext NOT NULL,
  `data_comentario` datetime(6) NOT NULL,
  `publicado_comentario` tinyint(1) NOT NULL,
  `post_comentario_id` int(11) NOT NULL,
  `usuario_comentario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios_comentario`
--

INSERT INTO `comentarios_comentario` (`id`, `nome_comentario`, `email_comentario`, `comentario`, `data_comentario`, `publicado_comentario`, `post_comentario_id`, `usuario_comentario_id`) VALUES
(2, 'Marcelo', 'marcelo@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 2, 1),
(3, 'Rafael', 'rafael@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 3, 1),
(4, 'Alberto', 'alberto@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 4, 1),
(5, 'Solange', 'solante@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 5, 1),
(6, 'Maria', 'maria@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 6, 1),
(7, 'Fernanda', 'fernanda@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 7, 1),
(8, 'Suelen', 'suelen@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 8, 1),
(9, 'Bruno', 'bruno@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 9, 1),
(10, 'Samanta', 'samanta@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 10, 1),
(11, 'Alexandre', 'alexandre@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 11, 1),
(12, 'Samara', 'samara@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 12, 1),
(13, 'Kelly', 'kelly@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 13, 1),
(14, 'Jose', 'jose@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 14, 1),
(15, 'Junior', 'junior@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 15, 1),
(16, 'Rafaela', 'rafael@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 16, 1),
(17, 'Karina', 'karina@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 17, 1),
(18, 'Inacio', 'inacio@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 18, 1),
(19, 'Tatiana', 'tatiana@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 19, 1),
(20, 'Marcos', 'marcos@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 20, 1),
(21, 'Janaina', 'janaina@mail.com.br', 'Teste de comentario', '2020-03-23 15:40:58.000000', 1, 21, 1),
(22, 'Marcelo', 'marcelo@mail.com.br', 'Teste de comentario 2', '2020-03-23 20:58:32.398700', 1, 19, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-20 21:50:32.918451', '1', 'Categoria object (1)', 1, '[{\"added\": {}}]', 2, 1),
(2, '2020-03-20 21:54:42.510252', '1', 'Post object (1)', 1, '[{\"added\": {}}]', 1, 1),
(3, '2020-03-20 22:08:52.824125', '1', 'Luiz Curti', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-03-23 15:09:35.058316', '2', 'Python', 1, '[{\"added\": {}}]', 2, 1),
(5, '2020-03-23 15:09:40.764759', '3', 'django', 1, '[{\"added\": {}}]', 2, 1),
(6, '2020-03-23 15:09:51.464681', '4', 'Sistemas', 1, '[{\"added\": {}}]', 2, 1),
(7, '2020-03-23 15:15:50.946441', '2', 'Post 1 / 20', 1, '[{\"added\": {}}]', 1, 1),
(8, '2020-03-23 15:16:29.151070', '3', 'Post 2 / 20', 1, '[{\"added\": {}}]', 1, 1),
(9, '2020-03-23 15:16:56.876211', '4', 'Post 3 / 20', 1, '[{\"added\": {}}]', 1, 1),
(10, '2020-03-23 15:17:35.080993', '5', 'Post 4 / 20', 1, '[{\"added\": {}}]', 1, 1),
(11, '2020-03-23 15:18:54.487179', '3', 'Post 2 / 20', 2, '[{\"changed\": {\"fields\": [\"Imagem\"]}}]', 1, 1),
(12, '2020-03-23 15:19:16.971039', '5', 'Post 4 / 20', 2, '[{\"changed\": {\"fields\": [\"Imagem\"]}}]', 1, 1),
(13, '2020-03-23 15:19:56.909958', '6', 'Post 5 / 20', 1, '[{\"added\": {}}]', 1, 1),
(14, '2020-03-23 15:20:20.674872', '1', 'Test de Post', 3, '', 1, 1),
(15, '2020-03-23 15:22:18.614950', '7', 'Post 6 / 20 - Python', 1, '[{\"added\": {}}]', 1, 1),
(16, '2020-03-23 15:22:59.697908', '8', 'Post 7 / 20 - Python', 1, '[{\"added\": {}}]', 1, 1),
(17, '2020-03-23 15:23:48.827124', '9', 'Post 8 / 20 - Python', 1, '[{\"added\": {}}]', 1, 1),
(18, '2020-03-23 15:24:17.279764', '10', 'Post 9 / 20 - Python', 1, '[{\"added\": {}}]', 1, 1),
(19, '2020-03-23 15:24:52.433859', '11', 'Post 10 / 20 - Python', 1, '[{\"added\": {}}]', 1, 1),
(20, '2020-03-23 15:27:11.789485', '12', 'Post 11 / 20 - Django', 1, '[{\"added\": {}}]', 1, 1),
(21, '2020-03-23 15:27:37.211536', '13', 'Post 12 / 20 - Django', 1, '[{\"added\": {}}]', 1, 1),
(22, '2020-03-23 15:28:08.398430', '14', 'Post 13 / 20 - Django', 1, '[{\"added\": {}}]', 1, 1),
(23, '2020-03-23 15:28:30.852311', '15', 'Post 14 / 20 - Django', 1, '[{\"added\": {}}]', 1, 1),
(24, '2020-03-23 15:29:03.166346', '16', 'Post 15 / 20 - Django', 1, '[{\"added\": {}}]', 1, 1),
(25, '2020-03-23 15:29:15.118612', '3', 'Django', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 2, 1),
(26, '2020-03-23 15:29:45.974473', '2', 'Post 1 / 20 - Tecnologia', 2, '[{\"changed\": {\"fields\": [\"Titulo\"]}}]', 1, 1),
(27, '2020-03-23 15:29:47.895016', '3', 'Post 2 / 20 - Tecnologia', 2, '[{\"changed\": {\"fields\": [\"Titulo\"]}}]', 1, 1),
(28, '2020-03-23 15:29:49.582016', '4', 'Post 3 / 20 - Tecnologia', 2, '[{\"changed\": {\"fields\": [\"Titulo\"]}}]', 1, 1),
(29, '2020-03-23 15:29:51.306019', '6', 'Post 5 / 20 - Tecnologia', 2, '[{\"changed\": {\"fields\": [\"Titulo\"]}}]', 1, 1),
(30, '2020-03-23 15:30:07.025437', '5', 'Post 4 / 20 - Tecnologia', 2, '[{\"changed\": {\"fields\": [\"Titulo\"]}}]', 1, 1),
(31, '2020-03-23 15:35:28.443076', '17', 'Post 16 / 20 - Sistemas', 1, '[{\"added\": {}}]', 1, 1),
(32, '2020-03-23 15:35:56.657746', '18', 'Post 17 / 20 - Sistemas', 1, '[{\"added\": {}}]', 1, 1),
(33, '2020-03-23 15:36:45.361069', '19', 'Post 18 / 20 - Sistemas', 1, '[{\"added\": {}}]', 1, 1),
(34, '2020-03-23 15:37:14.843240', '20', 'Post 19 / 20 - Sistemas', 1, '[{\"added\": {}}]', 1, 1),
(35, '2020-03-23 15:37:41.233968', '21', 'Post 20 / 20 - Sistemas', 1, '[{\"added\": {}}]', 1, 1),
(36, '2020-03-23 15:46:23.306292', '2', 'Marcelo', 1, '[{\"added\": {}}]', 9, 1),
(37, '2020-03-23 15:55:28.699636', '3', 'Rafael', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(38, '2020-03-23 15:55:33.106787', '4', 'Alberto', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(39, '2020-03-23 15:55:37.039566', '5', 'Solange', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(40, '2020-03-23 15:55:40.589625', '6', 'Maria', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(41, '2020-03-23 15:55:44.309762', '7', 'Fernanda', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(42, '2020-03-23 15:55:47.871583', '8', 'Suelen', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(43, '2020-03-23 15:55:51.114690', '9', 'Bruno', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(44, '2020-03-23 15:56:17.573740', '7', 'Fernanda', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(45, '2020-03-23 15:56:20.928540', '8', 'Suelen', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(46, '2020-03-23 15:56:26.081525', '9', 'Bruno', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(47, '2020-03-23 15:59:32.768325', '10', 'Samanta', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(48, '2020-03-23 15:59:36.664698', '11', 'Alexandre', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(49, '2020-03-23 15:59:40.192427', '12', 'Samara', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(50, '2020-03-23 15:59:44.071472', '13', 'Kelly', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(51, '2020-03-23 15:59:48.084338', '14', 'Jose', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(52, '2020-03-23 15:59:51.938358', '15', 'Junior', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(53, '2020-03-23 15:59:55.867328', '16', 'Rafaela', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(54, '2020-03-23 15:59:59.674449', '17', 'Karina', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(55, '2020-03-23 16:00:04.079332', '18', 'Inacio', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(56, '2020-03-23 16:00:07.789424', '19', 'Tatiana', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(57, '2020-03-23 16:00:11.728291', '20', 'Marcos', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(58, '2020-03-23 16:00:15.730554', '21', 'Janaina', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 9, 1),
(59, '2020-03-23 19:18:43.398920', '17', 'Post 16 / 20 - Sistemas', 2, '[{\"changed\": {\"fields\": [\"Imagem\"]}}]', 1, 1),
(60, '2020-03-23 19:48:18.859810', '21', 'Post 20 / 20 - Sistemas', 2, '[{\"changed\": {\"fields\": [\"Publicado\"]}}]', 1, 1),
(61, '2020-03-23 19:48:28.828795', '21', 'Post 20 / 20 - Sistemas', 2, '[{\"changed\": {\"fields\": [\"Publicado\"]}}]', 1, 1),
(62, '2020-03-23 19:48:28.894794', '15', 'Post 14 / 20 - Django', 2, '[{\"changed\": {\"fields\": [\"Publicado\"]}}]', 1, 1),
(63, '2020-03-23 20:58:44.245285', '22', 'Marcelo', 2, '[{\"changed\": {\"fields\": [\"Publicado\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(2, 'categorias', 'categoria'),
(9, 'comentarios', 'comentario'),
(7, 'contenttypes', 'contenttype'),
(10, 'django_summernote', 'attachment'),
(1, 'posts', 'post'),
(8, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-20 19:52:35.079353'),
(2, 'auth', '0001_initial', '2020-03-20 19:52:36.141854'),
(3, 'admin', '0001_initial', '2020-03-20 19:52:40.719980'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-20 19:52:41.891856'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-20 19:52:41.969979'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-20 19:52:42.407476'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-20 19:52:42.954355'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-20 19:52:43.266854'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-20 19:52:43.360604'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-20 19:52:43.985603'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-20 19:52:44.016853'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-20 19:52:44.079354'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-20 19:52:44.157478'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-20 19:52:44.282484'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-20 19:52:44.376229'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-20 19:52:44.469978'),
(17, 'categorias', '0001_initial', '2020-03-20 19:52:44.626224'),
(18, 'posts', '0001_initial', '2020-03-20 19:52:44.860605'),
(19, 'sessions', '0001_initial', '2020-03-20 19:52:45.813728'),
(20, 'comentarios', '0001_initial', '2020-03-20 21:47:17.314864'),
(21, 'django_summernote', '0001_initial', '2020-03-20 22:17:18.016345'),
(22, 'django_summernote', '0002_update-help_text', '2020-03-20 22:17:18.074345'),
(23, 'categorias', '0002_auto_20200323_1815', '2020-03-23 21:15:25.066086'),
(24, 'comentarios', '0002_auto_20200323_1815', '2020-03-23 21:15:27.137937'),
(25, 'posts', '0002_auto_20200323_1815', '2020-03-23 21:15:29.027938');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2uo5lttpvvshaatzj0ti2qpb9pwo1mdu', 'ZTY2YWFkNzAzZGVhYWZkYTA0NGNlNjQ5OWFkNmNiMmM4Mzc3MmQxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjI1ZTFjODA0MWE5MmE3NjRkMzg0MmU2MDg4OGQxNWMxMjE1NzNlIn0=', '2020-04-03 23:04:50.527783'),
('5kd31widv79wtuv61elp75g5slq60306', 'NmRkNzllYzIwMTcwMGFjYWE3MWRmY2ZjYzIwM2JlOTlhY2I5OWY0MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzEzZTAyMDBlNGIxY2UyZDAyZmU1MmRhNmIxODRkMjRiYmY1NTViIn0=', '2020-04-06 21:47:05.001864'),
('s1o1watf56qms3e2pmrdmt6oq7mn4z5o', 'ZTY2YWFkNzAzZGVhYWZkYTA0NGNlNjQ5OWFkNmNiMmM4Mzc3MmQxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjI1ZTFjODA0MWE5MmE3NjRkMzg0MmU2MDg4OGQxNWMxMjE1NzNlIn0=', '2020-04-03 23:09:39.130782');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_summernote_attachment`
--

CREATE TABLE `django_summernote_attachment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_post`
--

CREATE TABLE `posts_post` (
  `id` int(11) NOT NULL,
  `titulo_post` varchar(255) NOT NULL,
  `data_post` datetime(6) NOT NULL,
  `conteudo_post` longtext NOT NULL,
  `excerto_post` longtext NOT NULL,
  `imagem_post` varchar(100) DEFAULT NULL,
  `publicado_post` tinyint(1) NOT NULL,
  `autor_post_id` int(11) NOT NULL,
  `categoria_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posts_post`
--

INSERT INTO `posts_post` (`id`, `titulo_post`, `data_post`, `conteudo_post`, `excerto_post`, `imagem_post`, `publicado_post`, `autor_post_id`, `categoria_post_id`) VALUES
(2, 'Post 1 / 20 - Tecnologia', '2020-03-23 15:13:11.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit pulvinar turpis, a tristique tortor rhoncus non. Praesent non ligula sed urna sagittis tristique sit amet eu dolor. Praesent ac gravida nisi. Mauris vitae pellentesque felis. Curabitur in odio mattis, semper urna eu, tristique augue. Duis condimentum urna a tempus sagittis. Integer sollicitudin justo quis est gravida gravida. Praesent placerat mauris id augue tempus placerat. Cras et tristique lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam purus risus, suscipit ac ex eget, aliquam hendrerit orci.', 'Pellentesque vitae molestie mi, sit amet eleifend nibh. Duis maximus vel nunc at fermentum. Ut mattis luctus tempus. Vivamus condimentum egestas molestie. Nunc fringilla vehicula metus. Nam quis sem elit. Curabitur molestie aliquam lectus in ultricies.', 'post_img/2020/03/23/1.jpg', 1, 1, 1),
(3, 'Post 2 / 20 - Tecnologia', '2020-03-23 15:15:51.000000', 'Duis consequat molestie enim eu hendrerit. Proin a justo tempus, posuere est nec, dignissim ex. Proin diam eros, bibendum sed auctor rutrum, volutpat in lectus. Vestibulum consectetur venenatis pulvinar. Suspendisse ante erat, auctor sed tortor ac, varius tempor massa. Sed nec dui in tortor pulvinar mollis sit amet vel nulla. In turpis orci, pharetra ac tortor in, consectetur ultrices purus. Curabitur vitae leo nec libero consectetur malesuada. Duis vitae eleifend metus, vel vulputate ante. Aenean auctor finibus mollis. Nulla non lacinia velit. Mauris interdum odio id arcu facilisis, in dapibus neque condimentum. Pellentesque tincidunt sit amet odio vitae gravida. Cras dignissim, ante sed malesuada rutrum, urna diam bibendum massa, ac posuere lacus eros consequat metus.', 'Pellentesque vitae justo congue, dictum nisl vulputate, tristique ligula. Quisque pellentesque sodales ex sit amet pharetra. Sed condimentum ipsum eu commodo dapibus. Vivamus accumsan consectetur euismod. Aenean nec interdum enim. Nullam tincidunt nisi fermentum molestie ultricies. Suspendisse suscipit imperdiet sapien id facilisis. Aliquam erat volutpat. Morbi libero quam, feugiat ut purus in, ornare tincidunt risus. Maecenas porttitor mauris tellus, in porta sem rhoncus sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer pretium a nunc vitae tincidunt. Nam ut arcu auctor, porta lorem sed, auctor sapien.', 'post_img/2020/03/23/2.jfif', 1, 1, 1),
(4, 'Post 3 / 20 - Tecnologia', '2020-03-23 15:16:29.000000', 'Quisque nec tellus non metus varius dignissim non ut ex. Pellentesque vel tempus ipsum. Curabitur ultrices dui massa, a volutpat risus tempus eu. Curabitur efficitur leo eu est fringilla tincidunt. Pellentesque eget arcu mollis, dapibus nibh ut, ultricies lectus. Proin at diam non ex maximus pellentesque at at metus. Sed at congue mi. Fusce et porta odio. Nullam iaculis imperdiet rutrum. Proin odio erat, feugiat id efficitur sit amet, commodo vel eros. Ut tempus interdum dui, in rutrum lacus gravida a. Cras ornare, nisi non ornare tincidunt, lorem diam pulvinar est, sed luctus est sem eget odio. In imperdiet, magna id eleifend varius, erat mauris efficitur tellus, vitae aliquet metus elit at ante. Vestibulum ut sapien ut arcu placerat elementum.', 'Pellentesque vitae molestie mi, sit amet eleifend nibh. Duis maximus vel nunc at fermentum. Ut mattis luctus tempus. Vivamus condimentum egestas molestie. Nunc fringilla vehicula metus. Nam quis sem elit. Curabitur molestie aliquam lectus in ultricies.', 'post_img/2020/03/23/3.jfif', 1, 1, 1),
(5, 'Post 4 / 20 - Tecnologia', '2020-03-23 15:16:57.000000', 'Duis consequat molestie enim eu hendrerit. Proin a justo tempus, posuere est nec, dignissim ex. Proin diam eros, bibendum sed auctor rutrum, volutpat in lectus. Vestibulum consectetur venenatis pulvinar. Suspendisse ante erat, auctor sed tortor ac, varius tempor massa. Sed nec dui in tortor pulvinar mollis sit amet vel nulla. In turpis orci, pharetra ac tortor in, consectetur ultrices purus. Curabitur vitae leo nec libero consectetur malesuada. Duis vitae eleifend metus, vel vulputate ante. Aenean auctor finibus mollis. Nulla non lacinia velit. Mauris interdum odio id arcu facilisis, in dapibus neque condimentum. Pellentesque tincidunt sit amet odio vitae gravida. Cras dignissim, ante sed malesuada rutrum, urna diam bibendum massa, ac posuere lacus eros consequat metus.', 'Pellentesque vitae molestie mi, sit amet eleifend nibh. Duis maximus vel nunc at fermentum. Ut mattis luctus tempus. Vivamus condimentum egestas molestie. Nunc fringilla vehicula metus. Nam quis sem elit. Curabitur molestie aliquam lectus in ultricies.', 'post_img/2020/03/23/4.jfif', 1, 1, 1),
(6, 'Post 5 / 20 - Tecnologia', '2020-03-23 15:19:24.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit pulvinar turpis, a tristique tortor rhoncus non. Praesent non ligula sed urna sagittis tristique sit amet eu dolor. Praesent ac gravida nisi. Mauris vitae pellentesque felis. Curabitur in odio mattis, semper urna eu, tristique augue. Duis condimentum urna a tempus sagittis. Integer sollicitudin justo quis est gravida gravida. Praesent placerat mauris id augue tempus placerat. Cras et tristique lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam purus risus, suscipit ac ex eget, aliquam hendrerit orci.', 'Pellentesque vitae molestie mi, sit amet eleifend nibh. Duis maximus vel nunc at fermentum. Ut mattis luctus tempus. Vivamus condimentum egestas molestie. Nunc fringilla vehicula metus. Nam quis sem elit. Curabitur molestie aliquam lectus in ultricies.', 'post_img/2020/03/23/5_vGPGCUP.jfif', 1, 1, 1),
(7, 'Post 6 / 20 - Python', '2020-03-23 15:20:28.000000', 'Nam eleifend scelerisque tortor, nec efficitur lectus vehicula at. Suspendisse viverra lectus ipsum, nec varius augue sollicitudin eget. Aenean ut mi justo. Pellentesque lobortis aliquet felis eget finibus. Suspendisse iaculis metus et feugiat pellentesque. Maecenas pulvinar nisl ut porta porta. Maecenas mauris enim, commodo nec tortor ac, condimentum fermentum ipsum. In at venenatis tortor. Integer ultricies non quam id pulvinar. In a sollicitudin elit. Donec faucibus lorem iaculis, iaculis nisi sit amet, semper neque. Vivamus aliquam libero eu orci scelerisque accumsan. Mauris tempor lectus sit amet risus molestie venenatis eu id neque.', 'In lobortis elementum orci quis interdum. Aliquam justo dolor, lacinia quis elit at, tristique dictum purus. Quisque sit amet sapien egestas, consectetur quam ut, condimentum sem. Morbi sapien sapien, auctor vel convallis non, finibus a sapien. Vivamus arcu ligula, lobortis ac facilisis nec, tempor ac magna. Curabitur nisi neque, efficitur non velit sit amet, gravida euismod orci. Suspendisse dignissim pellentesque massa, a fringilla sem ornare elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ut erat vel risus consequat volutpat sed vitae purus. Etiam placerat nibh et est malesuada, sagittis mollis felis feugiat. Nullam faucibus lacus nunc, quis tempus mauris porttitor id. Morbi at diam vestibulum, rhoncus est at, euismod leo. In iaculis accumsan congue. Proin rhoncus iaculis vestibulum.', 'post_img/2020/03/23/6.jfif', 1, 1, 2),
(8, 'Post 7 / 20 - Python', '2020-03-23 15:22:18.000000', 'Sed vitae ipsum nisl. Nullam auctor scelerisque massa eu dapibus. Aliquam hendrerit eros nunc, at elementum sapien consectetur non. Ut accumsan faucibus lectus, nec aliquam tortor dignissim id. Aliquam a dui nibh. Nam aliquet, nisi vel convallis mollis, ex urna consectetur lorem, nec semper ipsum metus feugiat enim. Maecenas ipsum urna, tincidunt eget justo at, lobortis iaculis arcu. Maecenas ultrices sem lorem, id gravida lorem dictum nec. Quisque eu nisi tempus, euismod arcu ac, bibendum metus. Fusce ante mauris, suscipit in laoreet eu, auctor a massa. Cras facilisis posuere nunc, et iaculis neque. Suspendisse lacinia sit amet ipsum sed semper. Fusce efficitur diam eu felis finibus, et convallis ligula molestie.', 'Duis ut purus auctor, aliquet eros a, efficitur quam. Morbi rutrum, eros id rutrum congue, elit leo pellentesque elit, non congue turpis mi ornare diam. Morbi vestibulum in nulla in pulvinar. Aenean congue felis porttitor velit sagittis, quis dapibus dui blandit. Pellentesque lacinia sem sit amet enim faucibus sagittis. Donec a magna ut nibh tempor fringilla. Donec hendrerit massa ipsum, convallis commodo arcu vehicula id. Ut pellentesque dui vitae sem mattis, quis condimentum felis sagittis. Integer varius neque vel accumsan tincidunt. Nulla accumsan, elit ut dapibus laoreet, augue arcu mattis mauris, vitae convallis sem nunc ut lorem. In eget ligula eu ligula sollicitudin bibendum nec rhoncus orci. Proin facilisis eget eros at interdum. Donec id enim facilisis, tristique ipsum sit amet, sodales dolor. Vestibulum ullamcorper erat vulputate urna consectetur, egestas ullamcorper lorem luctus. Duis ac feugiat enim, nec lobortis tortor.', 'post_img/2020/03/23/7.jfif', 1, 1, 2),
(9, 'Post 8 / 20 - Python', '2020-03-23 15:22:59.000000', 'In lobortis elementum orci quis interdum. Aliquam justo dolor, lacinia quis elit at, tristique dictum purus. Quisque sit amet sapien egestas, consectetur quam ut, condimentum sem. Morbi sapien sapien, auctor vel convallis non, finibus a sapien. Vivamus arcu ligula, lobortis ac facilisis nec, tempor ac magna. Curabitur nisi neque, efficitur non velit sit amet, gravida euismod orci. Suspendisse dignissim pellentesque massa, a fringilla sem ornare elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ut erat vel risus consequat volutpat sed vitae purus. Etiam placerat nibh et est malesuada, sagittis mollis felis feugiat. Nullam faucibus lacus nunc, quis tempus mauris porttitor id. Morbi at diam vestibulum, rhoncus est at, euismod leo. In iaculis accumsan congue. Proin rhoncus iaculis vestibulum.', 'Vivamus non elit at mi pretium congue eget at sem. Morbi feugiat nunc sem, sagittis accumsan purus malesuada id. Integer volutpat ultricies aliquet. In feugiat nisl ultricies, bibendum libero non, posuere elit. Nunc eget justo eget turpis tempor imperdiet. Cras euismod sed mauris in ornare. Nulla non dignissim sem. Aliquam varius placerat imperdiet. Ut eget risus non eros cursus dignissim nec vitae ligula. Mauris odio sem, dignissim vel lobortis eu, bibendum vitae erat. Aenean eget blandit ante. Nunc quis turpis quis tortor iaculis ultricies id eget dui. Vestibulum a volutpat mauris. In id lobortis metus, a placerat nibh. Praesent ac pellentesque nulla, vitae suscipit purus. Ut dignissim iaculis pretium.', 'post_img/2020/03/23/8.jfif', 1, 1, 2),
(10, 'Post 9 / 20 - Python', '2020-03-23 15:23:49.000000', 'Duis ut purus auctor, aliquet eros a, efficitur quam. Morbi rutrum, eros id rutrum congue, elit leo pellentesque elit, non congue turpis mi ornare diam. Morbi vestibulum in nulla in pulvinar. Aenean congue felis porttitor velit sagittis, quis dapibus dui blandit. Pellentesque lacinia sem sit amet enim faucibus sagittis. Donec a magna ut nibh tempor fringilla. Donec hendrerit massa ipsum, convallis commodo arcu vehicula id. Ut pellentesque dui vitae sem mattis, quis condimentum felis sagittis. Integer varius neque vel accumsan tincidunt. Nulla accumsan, elit ut dapibus laoreet, augue arcu mattis mauris, vitae convallis sem nunc ut lorem. In eget ligula eu ligula sollicitudin bibendum nec rhoncus orci. Proin facilisis eget eros at interdum. Donec id enim facilisis, tristique ipsum sit amet, sodales dolor. Vestibulum ullamcorper erat vulputate urna consectetur, egestas ullamcorper lorem luctus. Duis ac feugiat enim, nec lobortis tortor.', 'Sed vitae ipsum nisl. Nullam auctor scelerisque massa eu dapibus. Aliquam hendrerit eros nunc, at elementum sapien consectetur non. Ut accumsan faucibus lectus, nec aliquam tortor dignissim id. Aliquam a dui nibh. Nam aliquet, nisi vel convallis mollis, ex urna consectetur lorem, nec semper ipsum metus feugiat enim. Maecenas ipsum urna, tincidunt eget justo at, lobortis iaculis arcu. Maecenas ultrices sem lorem, id gravida lorem dictum nec. Quisque eu nisi tempus, euismod arcu ac, bibendum metus. Fusce ante mauris, suscipit in laoreet eu, auctor a massa. Cras facilisis posuere nunc, et iaculis neque. Suspendisse lacinia sit amet ipsum sed semper. Fusce efficitur diam eu felis finibus, et convallis ligula molestie.', 'post_img/2020/03/23/9.jfif', 1, 1, 2),
(11, 'Post 10 / 20 - Python', '2020-03-23 15:24:17.000000', 'Duis ut purus auctor, aliquet eros a, efficitur quam. Morbi rutrum, eros id rutrum congue, elit leo pellentesque elit, non congue turpis mi ornare diam. Morbi vestibulum in nulla in pulvinar. Aenean congue felis porttitor velit sagittis, quis dapibus dui blandit. Pellentesque lacinia sem sit amet enim faucibus sagittis. Donec a magna ut nibh tempor fringilla. Donec hendrerit massa ipsum, convallis commodo arcu vehicula id. Ut pellentesque dui vitae sem mattis, quis condimentum felis sagittis. Integer varius neque vel accumsan tincidunt. Nulla accumsan, elit ut dapibus laoreet, augue arcu mattis mauris, vitae convallis sem nunc ut lorem. In eget ligula eu ligula sollicitudin bibendum nec rhoncus orci. Proin facilisis eget eros at interdum. Donec id enim facilisis, tristique ipsum sit amet, sodales dolor. Vestibulum ullamcorper erat vulputate urna consectetur, egestas ullamcorper lorem luctus. Duis ac feugiat enim, nec lobortis tortor.', 'Nam eleifend scelerisque tortor, nec efficitur lectus vehicula at. Suspendisse viverra lectus ipsum, nec varius augue sollicitudin eget. Aenean ut mi justo. Pellentesque lobortis aliquet felis eget finibus. Suspendisse iaculis metus et feugiat pellentesque. Maecenas pulvinar nisl ut porta porta. Maecenas mauris enim, commodo nec tortor ac, condimentum fermentum ipsum. In at venenatis tortor. Integer ultricies non quam id pulvinar. In a sollicitudin elit. Donec faucibus lorem iaculis, iaculis nisi sit amet, semper neque. Vivamus aliquam libero eu orci scelerisque accumsan. Mauris tempor lectus sit amet risus molestie venenatis eu id neque.', 'post_img/2020/03/23/10.png', 1, 1, 2),
(12, 'Post 11 / 20 - Django', '2020-03-23 15:24:52.000000', 'Sed vitae ipsum nisl. Nullam auctor scelerisque massa eu dapibus. Aliquam hendrerit eros nunc, at elementum sapien consectetur non. Ut accumsan faucibus lectus, nec aliquam tortor dignissim id. Aliquam a dui nibh. Nam aliquet, nisi vel convallis mollis, ex urna consectetur lorem, nec semper ipsum metus feugiat enim. Maecenas ipsum urna, tincidunt eget justo at, lobortis iaculis arcu. Maecenas ultrices sem lorem, id gravida lorem dictum nec. Quisque eu nisi tempus, euismod arcu ac, bibendum metus. Fusce ante mauris, suscipit in laoreet eu, auctor a massa. Cras facilisis posuere nunc, et iaculis neque. Suspendisse lacinia sit amet ipsum sed semper. Fusce efficitur diam eu felis finibus, et convallis ligula molestie.', 'In lobortis elementum orci quis interdum. Aliquam justo dolor, lacinia quis elit at, tristique dictum purus. Quisque sit amet sapien egestas, consectetur quam ut, condimentum sem. Morbi sapien sapien, auctor vel convallis non, finibus a sapien. Vivamus arcu ligula, lobortis ac facilisis nec, tempor ac magna. Curabitur nisi neque, efficitur non velit sit amet, gravida euismod orci. Suspendisse dignissim pellentesque massa, a fringilla sem ornare elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ut erat vel risus consequat volutpat sed vitae purus. Etiam placerat nibh et est malesuada, sagittis mollis felis feugiat. Nullam faucibus lacus nunc, quis tempus mauris porttitor id. Morbi at diam vestibulum, rhoncus est at, euismod leo. In iaculis accumsan congue. Proin rhoncus iaculis vestibulum.', 'post_img/2020/03/23/11.jfif', 1, 1, 3),
(13, 'Post 12 / 20 - Django', '2020-03-23 15:27:11.000000', 'Nam eleifend scelerisque tortor, nec efficitur lectus vehicula at. Suspendisse viverra lectus ipsum, nec varius augue sollicitudin eget. Aenean ut mi justo. Pellentesque lobortis aliquet felis eget finibus. Suspendisse iaculis metus et feugiat pellentesque. Maecenas pulvinar nisl ut porta porta. Maecenas mauris enim, commodo nec tortor ac, condimentum fermentum ipsum. In at venenatis tortor. Integer ultricies non quam id pulvinar. In a sollicitudin elit. Donec faucibus lorem iaculis, iaculis nisi sit amet, semper neque. Vivamus aliquam libero eu orci scelerisque accumsan. Mauris tempor lectus sit amet risus molestie venenatis eu id neque', 'Duis ut purus auctor, aliquet eros a, efficitur quam. Morbi rutrum, eros id rutrum congue, elit leo pellentesque elit, non congue turpis mi ornare diam. Morbi vestibulum in nulla in pulvinar. Aenean congue felis porttitor velit sagittis, quis dapibus dui blandit. Pellentesque lacinia sem sit amet enim faucibus sagittis. Donec a magna ut nibh tempor fringilla. Donec hendrerit massa ipsum, convallis commodo arcu vehicula id. Ut pellentesque dui vitae sem mattis, quis condimentum felis sagittis. Integer varius neque vel accumsan tincidunt. Nulla accumsan, elit ut dapibus laoreet, augue arcu mattis mauris, vitae convallis sem nunc ut lorem. In eget ligula eu ligula sollicitudin bibendum nec rhoncus orci. Proin facilisis eget eros at interdum. Donec id enim facilisis, tristique ipsum sit amet, sodales dolor. Vestibulum ullamcorper erat vulputate urna consectetur, egestas ullamcorper lorem luctus. Duis ac feugiat enim, nec lobortis tortor.', 'post_img/2020/03/23/12.png', 1, 1, 3),
(14, 'Post 13 / 20 - Django', '2020-03-23 15:27:37.000000', 'Nam eleifend scelerisque tortor, nec efficitur lectus vehicula at. Suspendisse viverra lectus ipsum, nec varius augue sollicitudin eget. Aenean ut mi justo. Pellentesque lobortis aliquet felis eget finibus. Suspendisse iaculis metus et feugiat pellentesque. Maecenas pulvinar nisl ut porta porta. Maecenas mauris enim, commodo nec tortor ac, condimentum fermentum ipsum. In at venenatis tortor. Integer ultricies non quam id pulvinar. In a sollicitudin elit. Donec faucibus lorem iaculis, iaculis nisi sit amet, semper neque. Vivamus aliquam libero eu orci scelerisque accumsan. Mauris tempor lectus sit amet risus molestie venenatis eu id neque.', 'In lobortis elementum orci quis interdum. Aliquam justo dolor, lacinia quis elit at, tristique dictum purus. Quisque sit amet sapien egestas, consectetur quam ut, condimentum sem. Morbi sapien sapien, auctor vel convallis non, finibus a sapien. Vivamus arcu ligula, lobortis ac facilisis nec, tempor ac magna. Curabitur nisi neque, efficitur non velit sit amet, gravida euismod orci. Suspendisse dignissim pellentesque massa, a fringilla sem ornare elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ut erat vel risus consequat volutpat sed vitae purus. Etiam placerat nibh et est malesuada, sagittis mollis felis feugiat. Nullam faucibus lacus nunc, quis tempus mauris porttitor id. Morbi at diam vestibulum, rhoncus est at, euismod leo. In iaculis accumsan congue. Proin rhoncus iaculis vestibulum.', 'post_img/2020/03/23/13.jfif', 1, 1, 3),
(15, 'Post 14 / 20 - Django', '2020-03-23 15:28:08.000000', 'Vivamus non elit at mi pretium congue eget at sem. Morbi feugiat nunc sem, sagittis accumsan purus malesuada id. Integer volutpat ultricies aliquet. In feugiat nisl ultricies, bibendum libero non, posuere elit. Nunc eget justo eget turpis tempor imperdiet. Cras euismod sed mauris in ornare. Nulla non dignissim sem. Aliquam varius placerat imperdiet. Ut eget risus non eros cursus dignissim nec vitae ligula. Mauris odio sem, dignissim vel lobortis eu, bibendum vitae erat. Aenean eget blandit ante. Nunc quis turpis quis tortor iaculis ultricies id eget dui. Vestibulum a volutpat mauris. In id lobortis metus, a placerat nibh. Praesent ac pellentesque nulla, vitae suscipit purus. Ut dignissim iaculis pretium.', 'In lobortis elementum orci quis interdum. Aliquam justo dolor, lacinia quis elit at, tristique dictum purus. Quisque sit amet sapien egestas, consectetur quam ut, condimentum sem. Morbi sapien sapien, auctor vel convallis non, finibus a sapien. Vivamus arcu ligula, lobortis ac facilisis nec, tempor ac magna. Curabitur nisi neque, efficitur non velit sit amet, gravida euismod orci. Suspendisse dignissim pellentesque massa, a fringilla sem ornare elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ut erat vel risus consequat volutpat sed vitae purus. Etiam placerat nibh et est malesuada, sagittis mollis felis feugiat. Nullam faucibus lacus nunc, quis tempus mauris porttitor id. Morbi at diam vestibulum, rhoncus est at, euismod leo. In iaculis accumsan congue. Proin rhoncus iaculis vestibulum.', 'post_img/2020/03/23/14.jfif', 1, 1, 3),
(16, 'Post 15 / 20 - Django', '2020-03-23 15:28:31.000000', 'Nam eleifend scelerisque tortor, nec efficitur lectus vehicula at. Suspendisse viverra lectus ipsum, nec varius augue sollicitudin eget. Aenean ut mi justo. Pellentesque lobortis aliquet felis eget finibus. Suspendisse iaculis metus et feugiat pellentesque. Maecenas pulvinar nisl ut porta porta. Maecenas mauris enim, commodo nec tortor ac, condimentum fermentum ipsum. In at venenatis tortor. Integer ultricies non quam id pulvinar. In a sollicitudin elit. Donec faucibus lorem iaculis, iaculis nisi sit amet, semper neque. Vivamus aliquam libero eu orci scelerisque accumsan. Mauris tempor lectus sit amet risus molestie venenatis eu id neque.', 'In lobortis elementum orci quis interdum. Aliquam justo dolor, lacinia quis elit at, tristique dictum purus. Quisque sit amet sapien egestas, consectetur quam ut, condimentum sem. Morbi sapien sapien, auctor vel convallis non, finibus a sapien. Vivamus arcu ligula, lobortis ac facilisis nec, tempor ac magna. Curabitur nisi neque, efficitur non velit sit amet, gravida euismod orci. Suspendisse dignissim pellentesque massa, a fringilla sem ornare elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ut erat vel risus consequat volutpat sed vitae purus. Etiam placerat nibh et est malesuada, sagittis mollis felis feugiat. Nullam faucibus lacus nunc, quis tempus mauris porttitor id. Morbi at diam vestibulum, rhoncus est at, euismod leo. In iaculis accumsan congue. Proin rhoncus iaculis vestibulum.', 'post_img/2020/03/23/15.jfif', 1, 1, 3),
(17, 'Post 16 / 20 - Sistemas', '2020-03-23 15:32:48.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id porta ex. Pellentesque consectetur dapibus sagittis. Donec tristique, nisl eu tincidunt ornare, lectus ligula commodo ipsum, non finibus ex orci at lacus. Vivamus quis mi varius, eleifend odio at, maximus orci. Proin erat nulla, finibus vitae ultrices at, rhoncus vel lacus. Praesent euismod urna eu tellus euismod, id vulputate quam maximus. Nulla facilisi. Nunc ac sagittis massa. Etiam vulputate malesuada tortor, id suscipit libero maximus a. Suspendisse turpis erat, blandit efficitur dignissim id, tristique id elit. Morbi gravida semper tempus. Morbi tristique molestie nibh, id feugiat dolor aliquet eu. Nullam malesuada id nisl vitae efficitur. Fusce id feugiat ex. Nam vestibulum efficitur felis.', 'Vestibulum non auctor mi. Quisque leo urna, consequat quis tempor non, auctor id erat. Vivamus scelerisque in metus non fermentum. In id sapien in nisl posuere facilisis non id nisi. Proin tincidunt, erat ut suscipit sodales, sapien tortor semper nulla, nec euismod dui mi at risus. Mauris ut cursus ex. Maecenas laoreet pretium turpis, non finibus nulla malesuada quis. Sed scelerisque porttitor felis ac consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'post_img/2020/03/23/16.jpg', 1, 1, 4),
(18, 'Post 17 / 20 - Sistemas', '2020-03-23 15:35:28.000000', 'Morbi vestibulum, nibh quis mattis tempor, nunc odio imperdiet erat, at gravida odio neque vitae odio. Fusce vitae ligula justo. Morbi et lectus eget mauris euismod imperdiet vel a felis. Etiam eu lobortis dolor. Donec nisi lorem, rhoncus in ante ut, eleifend imperdiet dui. Praesent euismod venenatis massa vitae mollis. Praesent scelerisque porttitor dui id elementum. Vivamus tristique, quam sed maximus aliquam, quam leo placerat libero, a porttitor metus erat sed eros. Sed sit amet diam massa. Quisque elementum imperdiet eleifend. Aliquam eleifend lacinia dolor eget ullamcorper. Curabitur nibh tellus, volutpat quis felis eu, laoreet semper turpis', 'Vestibulum non auctor mi. Quisque leo urna, consequat quis tempor non, auctor id erat. Vivamus scelerisque in metus non fermentum. In id sapien in nisl posuere facilisis non id nisi. Proin tincidunt, erat ut suscipit sodales, sapien tortor semper nulla, nec euismod dui mi at risus. Mauris ut cursus ex. Maecenas laoreet pretium turpis, non finibus nulla malesuada quis. Sed scelerisque porttitor felis ac consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'post_img/2020/03/23/17.jfif', 1, 1, 4),
(19, 'Post 18 / 20 - Sistemas', '2020-03-23 15:35:57.000000', 'Morbi vestibulum, nibh quis mattis tempor, nunc odio imperdiet erat, at gravida odio neque vitae odio. Fusce vitae ligula justo. Morbi et lectus eget mauris euismod imperdiet vel a felis. Etiam eu lobortis dolor. Donec nisi lorem, rhoncus in ante ut, eleifend imperdiet dui. Praesent euismod venenatis massa vitae mollis. Praesent scelerisque porttitor dui id elementum. Vivamus tristique, quam sed maximus aliquam, quam leo placerat libero, a porttitor metus erat sed eros. Sed sit amet diam massa. Quisque elementum imperdiet eleifend. Aliquam eleifend lacinia dolor eget ullamcorper. Curabitur nibh tellus, volutpat quis felis eu, laoreet semper turpis.', 'Vestibulum non auctor mi. Quisque leo urna, consequat quis tempor non, auctor id erat. Vivamus scelerisque in metus non fermentum. In id sapien in nisl posuere facilisis non id nisi. Proin tincidunt, erat ut suscipit sodales, sapien tortor semper nulla, nec euismod dui mi at risus. Mauris ut cursus ex. Maecenas laoreet pretium turpis, non finibus nulla malesuada quis. Sed scelerisque porttitor felis ac consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'post_img/2020/03/23/18.jfif', 1, 1, 4),
(20, 'Post 19 / 20 - Sistemas', '2020-03-23 15:36:45.000000', 'Quisque pellentesque ante eu urna euismod tempus. Integer orci tortor, tincidunt sit amet ullamcorper nec, pharetra sed urna. Praesent fermentum eleifend laoreet. Praesent pellentesque scelerisque metus sit amet venenatis. Proin dignissim mi et malesuada tempor. Fusce porta felis suscipit mauris interdum, non scelerisque nisi fermentum. Aenean vel malesuada metus. Vivamus ex elit, tincidunt eu facilisis nec, blandit vitae leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla consectetur varius magna et convallis. Phasellus commodo, leo sit amet blandit ultrices, felis lacus iaculis nibh, at finibus sem risus non risus. Sed tincidunt ornare augue facilisis dapibus. Donec sed urna massa. In quis sapien ac dui vulputate auctor. Quisque tempor placerat diam eu pharetra.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id porta ex. Pellentesque consectetur dapibus sagittis. Donec tristique, nisl eu tincidunt ornare, lectus ligula commodo ipsum, non finibus ex orci at lacus. Vivamus quis mi varius, eleifend odio at, maximus orci. Proin erat nulla, finibus vitae ultrices at, rhoncus vel lacus. Praesent euismod urna eu tellus euismod, id vulputate quam maximus. Nulla facilisi. Nunc ac sagittis massa. Etiam vulputate malesuada tortor, id suscipit libero maximus a. Suspendisse turpis erat, blandit efficitur dignissim id, tristique id elit. Morbi gravida semper tempus. Morbi tristique molestie nibh, id feugiat dolor aliquet eu. Nullam malesuada id nisl vitae efficitur. Fusce id feugiat ex. Nam vestibulum efficitur felis.', 'post_img/2020/03/23/19.jfif', 1, 1, 4),
(21, 'Post 20 / 20 - Sistemas', '2020-03-23 15:37:15.000000', 'Morbi vestibulum, nibh quis mattis tempor, nunc odio imperdiet erat, at gravida odio neque vitae odio. Fusce vitae ligula justo. Morbi et lectus eget mauris euismod imperdiet vel a felis. Etiam eu lobortis dolor. Donec nisi lorem, rhoncus in ante ut, eleifend imperdiet dui. Praesent euismod venenatis massa vitae mollis. Praesent scelerisque porttitor dui id elementum. Vivamus tristique, quam sed maximus aliquam, quam leo placerat libero, a porttitor metus erat sed eros. Sed sit amet diam massa. Quisque elementum imperdiet eleifend. Aliquam eleifend lacinia dolor eget ullamcorper. Curabitur nibh tellus, volutpat quis felis eu, laoreet semper turpis.', 'Sed blandit suscipit odio, ac suscipit augue accumsan quis. Donec pellentesque nunc mattis urna eleifend pellentesque. Etiam vel leo nec risus pulvinar pretium. Duis interdum at lacus vitae pharetra. Mauris fringilla purus lacus, at ultricies risus rhoncus eu. Vestibulum eu dolor sit amet magna elementum congue. Ut eget tellus eu odio dignissim tempus. Curabitur posuere, dolor vitae mattis lacinia, felis erat porttitor enim, at rhoncus tellus mauris eu dui.', 'post_img/2020/03/23/20.jfif', 1, 1, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `categorias_categoria`
--
ALTER TABLE `categorias_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comentarios_comentario`
--
ALTER TABLE `comentarios_comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentarios_comentar_post_comentario_id_53878aa5_fk_posts_pos` (`post_comentario_id`),
  ADD KEY `comentarios_comentar_usuario_comentario_i_acf93584_fk_auth_user` (`usuario_comentario_id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts_post`
--
ALTER TABLE `posts_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_autor_post_id_d9516541_fk_auth_user_id` (`autor_post_id`),
  ADD KEY `posts_post_categoria_post_id_463bc0df_fk_categorias_categoria_id` (`categoria_post_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias_categoria`
--
ALTER TABLE `categorias_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `comentarios_comentario`
--
ALTER TABLE `comentarios_comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `posts_post`
--
ALTER TABLE `posts_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `comentarios_comentario`
--
ALTER TABLE `comentarios_comentario`
  ADD CONSTRAINT `comentarios_comentar_post_comentario_id_53878aa5_fk_posts_pos` FOREIGN KEY (`post_comentario_id`) REFERENCES `posts_post` (`id`),
  ADD CONSTRAINT `comentarios_comentar_usuario_comentario_i_acf93584_fk_auth_user` FOREIGN KEY (`usuario_comentario_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `posts_post`
--
ALTER TABLE `posts_post`
  ADD CONSTRAINT `posts_post_autor_post_id_d9516541_fk_auth_user_id` FOREIGN KEY (`autor_post_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `posts_post_categoria_post_id_463bc0df_fk_categorias_categoria_id` FOREIGN KEY (`categoria_post_id`) REFERENCES `categorias_categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
