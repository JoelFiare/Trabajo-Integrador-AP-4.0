-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2023 a las 22:35:03
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pronosticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apostadores`
--

CREATE TABLE `apostadores` (
  `dni` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `apostadores`
--

INSERT INTO `apostadores` (`dni`, `Nombre`) VALUES
(12345678, 'María Martínez Ruiz'),
(23456789, 'Juan Ramírez Santos'),
(34567890, 'Ana Torres Jiménez'),
(87654321, 'Laura García Pérez'),
(98765432, 'Carlos Fernández Gómez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `Equipo` varchar(50) NOT NULL,
  `Partidos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`Equipo`, `Partidos`) VALUES
('Argentina', 7),
('Australia', 4),
('Belgium', 3),
('Brazil', 5),
('Cameroon', 3),
('Canada', 3),
('Costa Rica', 3),
('Croatia', 7),
('Denmark', 3),
('Ecuador', 3),
('England', 5),
('France', 7),
('Germany', 3),
('Ghana', 3),
('Iran', 3),
('Japan', 4),
('Mexico', 3),
('Morocco', 7),
('Netherlands', 5),
('Poland', 4),
('Portugal', 5),
('Qatar', 3),
('Saudi Arabia', 3),
('Senegal', 4),
('Serbia', 3),
('South Korea', 4),
('Spain', 4),
('Switzerland', 4),
('Tunisia', 3),
('Uruguay', 3),
('USMNT', 4),
('Wales', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `idPartido` int(11) NOT NULL,
  `EquipoA` varchar(50) DEFAULT NULL,
  `GolesA` int(11) DEFAULT NULL,
  `GolesB` int(11) DEFAULT NULL,
  `EquipoB` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`idPartido`, `EquipoA`, `GolesA`, `GolesB`, `EquipoB`) VALUES
(101, 'Qatar', 0, 2, 'Ecuador'),
(102, 'England', 6, 2, 'Iran'),
(103, 'Senegal', 0, 2, 'Netherlands'),
(104, 'USMNT', 1, 1, 'Wales'),
(105, 'Argentina', 1, 2, 'Saudi Arabia'),
(106, 'Denmark', 0, 0, 'Tunisia'),
(107, 'Mexico', 0, 0, 'Poland'),
(108, 'France', 4, 1, 'Australia'),
(109, 'Morocco', 0, 0, 'Croatia'),
(110, 'Germany', 1, 2, 'Japan'),
(111, 'Spain', 7, 0, 'Costa Rica'),
(112, 'Belgium', 1, 0, 'Canada'),
(113, 'Switzerland', 1, 0, 'Cameroon'),
(114, 'Uruguay', 0, 0, 'South Korea'),
(115, 'Portugal', 3, 2, 'Ghana'),
(116, 'Brazil', 2, 0, 'Serbia'),
(201, 'Wales', 0, 2, 'Iran'),
(202, 'Qatar', 1, 3, 'Senegal'),
(203, 'Netherlands', 1, 1, 'Ecuador'),
(204, 'England', 0, 0, 'USMNT'),
(205, 'Tunisia', 0, 1, 'Australia'),
(206, 'Poland', 2, 0, 'Saudi Arabia'),
(207, 'France', 2, 1, 'Denmark'),
(208, 'Argentina', 2, 0, 'Mexico'),
(209, 'Japan', 0, 1, 'Costa Rica'),
(210, 'Belgium', 0, 2, 'Morocco'),
(211, 'Croatia', 4, 1, 'Canada'),
(212, 'Spain', 1, 1, 'Germany'),
(213, 'Cameroon', 3, 3, 'Serbia'),
(214, 'South Korea', 2, 3, 'Ghana'),
(215, 'Brazil', 1, 0, 'Switzerland'),
(216, 'Portugal', 2, 0, 'Uruguay'),
(301, 'Ecuador', 1, 2, 'Senegal'),
(302, 'Netherlands', 2, 0, 'Qatar'),
(303, 'Wales', 0, 3, 'England'),
(304, 'Iran', 0, 1, 'USMNT'),
(305, 'Australia', 1, 0, 'Denmark'),
(306, 'Tunisia', 1, 0, 'France'),
(307, 'Saudi Arabia', 1, 2, 'Mexico'),
(308, 'Poland', 0, 2, 'Argentina'),
(309, 'Croatia', 0, 0, 'Belgium'),
(310, 'Canada', 1, 2, 'Morocco'),
(311, 'Japan', 2, 1, 'Spain'),
(312, 'Costa Rica', 2, 4, 'Germany'),
(313, 'Ghana', 0, 2, 'Uruguay'),
(314, 'South Korea', 2, 1, 'Portugal'),
(315, 'Cameroon', 1, 0, 'Brazil'),
(316, 'Serbia', 2, 3, 'Switzerland'),
(401, 'Netherlands', 3, 1, 'USMNT'),
(402, 'Argentina', 2, 1, 'Australia'),
(403, 'France', 3, 1, 'Poland'),
(404, 'England', 3, 0, 'Senegal'),
(405, 'Japan', 1, 1, 'Croatia'),
(406, 'Brazil', 4, 1, 'South Korea'),
(407, 'Morocco', 0, 0, 'Spain'),
(408, 'Portugal', 6, 1, 'Switzerland'),
(501, 'Croatia', 1, 1, 'Brazil'),
(502, 'Netherlands', 2, 2, 'Argentina'),
(503, 'Morocco', 1, 0, 'Portugal'),
(504, 'England', 1, 2, 'France'),
(601, 'Argentina', 3, 0, 'Croatia'),
(602, 'France', 2, 0, 'Morocco'),
(701, 'Croatia', 2, 1, 'Morocco'),
(702, 'Argentina', 3, 3, 'France');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pronostico`
--

CREATE TABLE `pronostico` (
  `ID` int(11) NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `idPartido` int(11) DEFAULT NULL,
  `EquipoA` varchar(50) DEFAULT NULL,
  `Pronostico` int(11) DEFAULT NULL,
  `EquipoB` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pronostico`
--

INSERT INTO `pronostico` (`ID`, `dni`, `idPartido`, `EquipoA`, `Pronostico`, `EquipoB`) VALUES
(0, 98765432, 101, 'Qatar', 3, 'Ecuador'),
(0, 98765432, 102, 'England', 1, 'Iran'),
(0, 98765432, 103, 'Senegal', 3, 'Netherlands'),
(0, 98765432, 104, 'USMNT', 2, 'Wales'),
(0, 98765432, 105, 'Argentina', 3, 'Saudi Arabia'),
(0, 98765432, 106, 'Denmark', 2, 'Tunisia'),
(0, 98765432, 107, 'Mexico', 2, 'Poland'),
(0, 98765432, 108, 'France', 1, 'Australia'),
(0, 98765432, 109, 'Morocco', 2, 'Croatia'),
(0, 98765432, 110, 'Germany', 3, 'Japan'),
(0, 98765432, 111, 'Spain', 1, 'Costa Rica'),
(0, 98765432, 112, 'Belgium', 1, 'Canada'),
(0, 98765432, 113, 'Switzerland', 1, 'Cameroon'),
(0, 98765432, 114, 'Uruguay', 2, 'South Korea'),
(0, 98765432, 115, 'Portugal', 1, 'Ghana'),
(0, 98765432, 116, 'Brazil', 1, 'Serbia'),
(0, 98765432, 201, 'Wales', 3, 'Iran'),
(0, 98765432, 202, 'Qatar', 1, 'Senegal'),
(0, 98765432, 203, 'Netherlands', 2, 'Ecuador'),
(0, 98765432, 204, 'England', 3, 'USMNT'),
(0, 98765432, 205, 'Tunisia', 3, 'Australia'),
(0, 98765432, 206, 'Poland', 1, 'Saudi Arabia'),
(0, 98765432, 207, 'France', 1, 'Denmark'),
(0, 98765432, 208, 'Argentina', 3, 'Mexico'),
(0, 98765432, 209, 'Japan', 2, 'Costa Rica'),
(0, 98765432, 210, 'Belgium', 1, 'Morocco'),
(0, 98765432, 211, 'Croatia', 2, 'Canada'),
(0, 98765432, 212, 'Spain', 2, 'Germany'),
(0, 98765432, 213, 'Cameroon', 2, 'Serbia'),
(0, 98765432, 214, 'South Korea', 2, 'Ghana'),
(0, 98765432, 215, 'Brazil', 2, 'Switzerland'),
(0, 98765432, 216, 'Portugal', 2, 'Uruguay'),
(0, 98765432, 301, 'Ecuador', 3, 'Senegal'),
(0, 98765432, 302, 'Netherlands', 3, 'Qatar'),
(0, 98765432, 303, 'Wales', 3, 'England'),
(0, 98765432, 304, 'Iran', 2, 'USMNT'),
(0, 98765432, 305, 'Australia', 3, 'Denmark'),
(0, 98765432, 306, 'Tunisia', 3, 'France'),
(0, 98765432, 307, 'Saudi Arabia', 1, 'Mexico'),
(0, 98765432, 308, 'Poland', 1, 'Argentina'),
(0, 98765432, 309, 'Croatia', 1, 'Belgium'),
(0, 98765432, 310, 'Canada', 3, 'Morocco'),
(0, 98765432, 311, 'Japan', 1, 'Spain'),
(0, 98765432, 312, 'Costa Rica', 2, 'Germany'),
(0, 98765432, 313, 'Ghana', 1, 'Uruguay'),
(0, 98765432, 314, 'South Korea', 2, 'Portugal'),
(0, 98765432, 315, 'Cameroon', 3, 'Brazil'),
(0, 98765432, 316, 'Serbia', 3, 'Switzerland'),
(0, 98765432, 401, 'Netherlands', 2, 'USMNT'),
(0, 98765432, 402, 'Argentina', 2, 'Australia'),
(0, 98765432, 403, 'France', 1, 'Poland'),
(0, 98765432, 404, 'England', 1, 'Senegal'),
(0, 98765432, 405, 'Japan', 3, 'Croatia'),
(0, 98765432, 406, 'Brazil', 1, 'South Korea'),
(0, 98765432, 407, 'Morocco', 3, 'Spain'),
(0, 98765432, 408, 'Portugal', 3, 'Switzerland'),
(0, 98765432, 501, 'Croatia', 3, 'Brazil'),
(0, 98765432, 502, 'Netherlands', 3, 'Argentina'),
(0, 98765432, 503, 'Morocco', 1, 'Portugal'),
(0, 98765432, 504, 'England', 3, 'France'),
(0, 98765432, 601, 'Argentina', 3, 'Croatia'),
(0, 98765432, 602, 'France', 3, 'Morocco'),
(0, 98765432, 701, 'Croatia', 1, 'Morocco'),
(0, 98765432, 702, 'Argentina', 1, 'France'),
(0, 87654321, 101, 'Qatar', 2, 'Ecuador'),
(0, 87654321, 102, 'England', 2, 'Iran'),
(0, 87654321, 103, 'Senegal', 2, 'Netherlands'),
(0, 87654321, 104, 'USMNT', 3, 'Wales'),
(0, 87654321, 105, 'Argentina', 3, 'Saudi Arabia'),
(0, 87654321, 106, 'Denmark', 3, 'Tunisia'),
(0, 87654321, 107, 'Mexico', 1, 'Poland'),
(0, 87654321, 108, 'France', 1, 'Australia'),
(0, 87654321, 109, 'Morocco', 3, 'Croatia'),
(0, 87654321, 110, 'Germany', 1, 'Japan'),
(0, 87654321, 111, 'Spain', 1, 'Costa Rica'),
(0, 87654321, 112, 'Belgium', 2, 'Canada'),
(0, 87654321, 113, 'Switzerland', 1, 'Cameroon'),
(0, 87654321, 114, 'Uruguay', 2, 'South Korea'),
(0, 87654321, 115, 'Portugal', 1, 'Ghana'),
(0, 87654321, 116, 'Brazil', 3, 'Serbia'),
(0, 87654321, 201, 'Wales', 2, 'Iran'),
(0, 87654321, 202, 'Qatar', 3, 'Senegal'),
(0, 87654321, 203, 'Netherlands', 2, 'Ecuador'),
(0, 87654321, 204, 'England', 3, 'USMNT'),
(0, 87654321, 205, 'Tunisia', 1, 'Australia'),
(0, 87654321, 206, 'Poland', 2, 'Saudi Arabia'),
(0, 87654321, 207, 'France', 2, 'Denmark'),
(0, 87654321, 208, 'Argentina', 3, 'Mexico'),
(0, 87654321, 209, 'Japan', 2, 'Costa Rica'),
(0, 87654321, 210, 'Belgium', 2, 'Morocco'),
(0, 87654321, 211, 'Croatia', 2, 'Canada'),
(0, 87654321, 212, 'Spain', 2, 'Germany'),
(0, 87654321, 213, 'Cameroon', 1, 'Serbia'),
(0, 87654321, 214, 'South Korea', 2, 'Ghana'),
(0, 87654321, 215, 'Brazil', 2, 'Switzerland'),
(0, 87654321, 216, 'Portugal', 1, 'Uruguay'),
(0, 87654321, 301, 'Ecuador', 2, 'Senegal'),
(0, 87654321, 302, 'Netherlands', 1, 'Qatar'),
(0, 87654321, 303, 'Wales', 1, 'England'),
(0, 87654321, 304, 'Iran', 2, 'USMNT'),
(0, 87654321, 305, 'Australia', 2, 'Denmark'),
(0, 87654321, 306, 'Tunisia', 1, 'France'),
(0, 87654321, 307, 'Saudi Arabia', 3, 'Mexico'),
(0, 87654321, 308, 'Poland', 2, 'Argentina'),
(0, 87654321, 309, 'Croatia', 1, 'Belgium'),
(0, 87654321, 310, 'Canada', 1, 'Morocco'),
(0, 87654321, 311, 'Japan', 2, 'Spain'),
(0, 87654321, 312, 'Costa Rica', 2, 'Germany'),
(0, 87654321, 313, 'Ghana', 1, 'Uruguay'),
(0, 87654321, 314, 'South Korea', 3, 'Portugal'),
(0, 87654321, 315, 'Cameroon', 3, 'Brazil'),
(0, 87654321, 316, 'Serbia', 3, 'Switzerland'),
(0, 87654321, 401, 'Netherlands', 2, 'USMNT'),
(0, 87654321, 402, 'Argentina', 1, 'Australia'),
(0, 87654321, 403, 'France', 1, 'Poland'),
(0, 87654321, 404, 'England', 1, 'Senegal'),
(0, 87654321, 405, 'Japan', 1, 'Croatia'),
(0, 87654321, 406, 'Brazil', 1, 'South Korea'),
(0, 87654321, 407, 'Morocco', 2, 'Spain'),
(0, 87654321, 408, 'Portugal', 2, 'Switzerland'),
(0, 87654321, 501, 'Croatia', 1, 'Brazil'),
(0, 87654321, 502, 'Netherlands', 2, 'Argentina'),
(0, 87654321, 503, 'Morocco', 3, 'Portugal'),
(0, 87654321, 504, 'England', 1, 'France'),
(0, 87654321, 601, 'Argentina', 3, 'Croatia'),
(0, 87654321, 602, 'France', 3, 'Morocco'),
(0, 87654321, 701, 'Croatia', 3, 'Morocco'),
(0, 87654321, 702, 'Argentina', 1, 'France'),
(0, 34567890, 101, 'Qatar', 2, 'Ecuador'),
(0, 34567890, 102, 'England', 3, 'Iran'),
(0, 34567890, 103, 'Senegal', 1, 'Netherlands'),
(0, 34567890, 104, 'USMNT', 2, 'Wales'),
(0, 34567890, 105, 'Argentina', 3, 'Saudi Arabia'),
(0, 34567890, 106, 'Denmark', 2, 'Tunisia'),
(0, 34567890, 107, 'Mexico', 2, 'Poland'),
(0, 34567890, 108, 'France', 2, 'Australia'),
(0, 34567890, 109, 'Morocco', 3, 'Croatia'),
(0, 34567890, 110, 'Germany', 2, 'Japan'),
(0, 34567890, 111, 'Spain', 3, 'Costa Rica'),
(0, 34567890, 112, 'Belgium', 2, 'Canada'),
(0, 34567890, 113, 'Switzerland', 1, 'Cameroon'),
(0, 34567890, 114, 'Uruguay', 2, 'South Korea'),
(0, 34567890, 115, 'Portugal', 2, 'Ghana'),
(0, 34567890, 116, 'Brazil', 3, 'Serbia'),
(0, 34567890, 201, 'Wales', 2, 'Iran'),
(0, 34567890, 202, 'Qatar', 1, 'Senegal'),
(0, 34567890, 203, 'Netherlands', 1, 'Ecuador'),
(0, 34567890, 204, 'England', 1, 'USMNT'),
(0, 34567890, 205, 'Tunisia', 1, 'Australia'),
(0, 34567890, 206, 'Poland', 1, 'Saudi Arabia'),
(0, 34567890, 207, 'France', 3, 'Denmark'),
(0, 34567890, 208, 'Argentina', 2, 'Mexico'),
(0, 34567890, 209, 'Japan', 3, 'Costa Rica'),
(0, 34567890, 210, 'Belgium', 2, 'Morocco'),
(0, 34567890, 211, 'Croatia', 1, 'Canada'),
(0, 34567890, 212, 'Spain', 1, 'Germany'),
(0, 34567890, 213, 'Cameroon', 3, 'Serbia'),
(0, 34567890, 214, 'South Korea', 1, 'Ghana'),
(0, 34567890, 215, 'Brazil', 2, 'Switzerland'),
(0, 34567890, 216, 'Portugal', 3, 'Uruguay'),
(0, 34567890, 301, 'Ecuador', 2, 'Senegal'),
(0, 34567890, 302, 'Netherlands', 2, 'Qatar'),
(0, 34567890, 303, 'Wales', 1, 'England'),
(0, 34567890, 304, 'Iran', 1, 'USMNT'),
(0, 34567890, 305, 'Australia', 3, 'Denmark'),
(0, 34567890, 306, 'Tunisia', 2, 'France'),
(0, 34567890, 307, 'Saudi Arabia', 3, 'Mexico'),
(0, 34567890, 308, 'Poland', 2, 'Argentina'),
(0, 34567890, 309, 'Croatia', 1, 'Belgium'),
(0, 34567890, 310, 'Canada', 1, 'Morocco'),
(0, 34567890, 311, 'Japan', 3, 'Spain'),
(0, 34567890, 312, 'Costa Rica', 3, 'Germany'),
(0, 34567890, 313, 'Ghana', 3, 'Uruguay'),
(0, 34567890, 314, 'South Korea', 2, 'Portugal'),
(0, 34567890, 315, 'Cameroon', 3, 'Brazil'),
(0, 34567890, 316, 'Serbia', 1, 'Switzerland'),
(0, 34567890, 401, 'Netherlands', 3, 'USMNT'),
(0, 34567890, 402, 'Argentina', 3, 'Australia'),
(0, 34567890, 403, 'France', 2, 'Poland'),
(0, 34567890, 404, 'England', 2, 'Senegal'),
(0, 34567890, 405, 'Japan', 3, 'Croatia'),
(0, 34567890, 406, 'Brazil', 3, 'South Korea'),
(0, 34567890, 407, 'Morocco', 3, 'Spain'),
(0, 34567890, 408, 'Portugal', 2, 'Switzerland'),
(0, 34567890, 501, 'Croatia', 2, 'Brazil'),
(0, 34567890, 502, 'Netherlands', 1, 'Argentina'),
(0, 34567890, 503, 'Morocco', 1, 'Portugal'),
(0, 34567890, 504, 'England', 1, 'France'),
(0, 34567890, 601, 'Argentina', 3, 'Croatia'),
(0, 34567890, 602, 'France', 1, 'Morocco'),
(0, 34567890, 701, 'Croatia', 3, 'Morocco'),
(0, 34567890, 702, 'Argentina', 1, 'France'),
(0, 23456789, 101, 'Qatar', 2, 'Ecuador'),
(0, 23456789, 102, 'England', 2, 'Iran'),
(0, 23456789, 103, 'Senegal', 3, 'Netherlands'),
(0, 23456789, 104, 'USMNT', 1, 'Wales'),
(0, 23456789, 105, 'Argentina', 1, 'Saudi Arabia'),
(0, 23456789, 106, 'Denmark', 3, 'Tunisia'),
(0, 23456789, 107, 'Mexico', 1, 'Poland'),
(0, 23456789, 108, 'France', 3, 'Australia'),
(0, 23456789, 109, 'Morocco', 1, 'Croatia'),
(0, 23456789, 110, 'Germany', 2, 'Japan'),
(0, 23456789, 111, 'Spain', 1, 'Costa Rica'),
(0, 23456789, 112, 'Belgium', 3, 'Canada'),
(0, 23456789, 113, 'Switzerland', 1, 'Cameroon'),
(0, 23456789, 114, 'Uruguay', 1, 'South Korea'),
(0, 23456789, 115, 'Portugal', 2, 'Ghana'),
(0, 23456789, 116, 'Brazil', 2, 'Serbia'),
(0, 23456789, 201, 'Wales', 2, 'Iran'),
(0, 23456789, 202, 'Qatar', 3, 'Senegal'),
(0, 23456789, 203, 'Netherlands', 1, 'Ecuador'),
(0, 23456789, 204, 'England', 2, 'USMNT'),
(0, 23456789, 205, 'Tunisia', 2, 'Australia'),
(0, 23456789, 206, 'Poland', 2, 'Saudi Arabia'),
(0, 23456789, 207, 'France', 3, 'Denmark'),
(0, 23456789, 208, 'Argentina', 2, 'Mexico'),
(0, 23456789, 209, 'Japan', 2, 'Costa Rica'),
(0, 23456789, 210, 'Belgium', 2, 'Morocco'),
(0, 23456789, 211, 'Croatia', 3, 'Canada'),
(0, 23456789, 212, 'Spain', 1, 'Germany'),
(0, 23456789, 213, 'Cameroon', 2, 'Serbia'),
(0, 23456789, 214, 'South Korea', 1, 'Ghana'),
(0, 23456789, 215, 'Brazil', 2, 'Switzerland'),
(0, 23456789, 216, 'Portugal', 1, 'Uruguay'),
(0, 23456789, 301, 'Ecuador', 2, 'Senegal'),
(0, 23456789, 302, 'Netherlands', 2, 'Qatar'),
(0, 23456789, 303, 'Wales', 2, 'England'),
(0, 23456789, 304, 'Iran', 3, 'USMNT'),
(0, 23456789, 305, 'Australia', 1, 'Denmark'),
(0, 23456789, 306, 'Tunisia', 2, 'France'),
(0, 23456789, 307, 'Saudi Arabia', 2, 'Mexico'),
(0, 23456789, 308, 'Poland', 3, 'Argentina'),
(0, 23456789, 309, 'Croatia', 3, 'Belgium'),
(0, 23456789, 310, 'Canada', 1, 'Morocco'),
(0, 23456789, 311, 'Japan', 2, 'Spain'),
(0, 23456789, 312, 'Costa Rica', 3, 'Germany'),
(0, 23456789, 313, 'Ghana', 2, 'Uruguay'),
(0, 23456789, 314, 'South Korea', 1, 'Portugal'),
(0, 23456789, 315, 'Cameroon', 1, 'Brazil'),
(0, 23456789, 316, 'Serbia', 1, 'Switzerland'),
(0, 23456789, 401, 'Netherlands', 1, 'USMNT'),
(0, 23456789, 402, 'Argentina', 2, 'Australia'),
(0, 23456789, 403, 'France', 2, 'Poland'),
(0, 23456789, 404, 'England', 3, 'Senegal'),
(0, 23456789, 405, 'Japan', 1, 'Croatia'),
(0, 23456789, 406, 'Brazil', 1, 'South Korea'),
(0, 23456789, 407, 'Morocco', 2, 'Spain'),
(0, 23456789, 408, 'Portugal', 3, 'Switzerland'),
(0, 23456789, 501, 'Croatia', 3, 'Brazil'),
(0, 23456789, 502, 'Netherlands', 3, 'Argentina'),
(0, 23456789, 503, 'Morocco', 2, 'Portugal'),
(0, 23456789, 504, 'England', 3, 'France'),
(0, 23456789, 601, 'Argentina', 2, 'Croatia'),
(0, 23456789, 602, 'France', 1, 'Morocco'),
(0, 23456789, 701, 'Croatia', 3, 'Morocco'),
(0, 23456789, 702, 'Argentina', 2, 'France'),
(0, 12345678, 101, 'Qatar', 3, 'Ecuador'),
(0, 12345678, 102, 'England', 2, 'Iran'),
(0, 12345678, 103, 'Senegal', 3, 'Netherlands'),
(0, 12345678, 104, 'USMNT', 1, 'Wales'),
(0, 12345678, 105, 'Argentina', 1, 'Saudi Arabia'),
(0, 12345678, 106, 'Denmark', 1, 'Tunisia'),
(0, 12345678, 107, 'Mexico', 1, 'Poland'),
(0, 12345678, 108, 'France', 3, 'Australia'),
(0, 12345678, 109, 'Morocco', 3, 'Croatia'),
(0, 12345678, 110, 'Germany', 1, 'Japan'),
(0, 12345678, 111, 'Spain', 2, 'Costa Rica'),
(0, 12345678, 112, 'Belgium', 3, 'Canada'),
(0, 12345678, 113, 'Switzerland', 2, 'Cameroon'),
(0, 12345678, 114, 'Uruguay', 2, 'South Korea'),
(0, 12345678, 115, 'Portugal', 3, 'Ghana'),
(0, 12345678, 116, 'Brazil', 2, 'Serbia'),
(0, 12345678, 201, 'Wales', 1, 'Iran'),
(0, 12345678, 202, 'Qatar', 1, 'Senegal'),
(0, 12345678, 203, 'Netherlands', 1, 'Ecuador'),
(0, 12345678, 204, 'England', 2, 'USMNT'),
(0, 12345678, 205, 'Tunisia', 2, 'Australia'),
(0, 12345678, 206, 'Poland', 3, 'Saudi Arabia'),
(0, 12345678, 207, 'France', 2, 'Denmark'),
(0, 12345678, 208, 'Argentina', 2, 'Mexico'),
(0, 12345678, 209, 'Japan', 2, 'Costa Rica'),
(0, 12345678, 210, 'Belgium', 1, 'Morocco'),
(0, 12345678, 211, 'Croatia', 1, 'Canada'),
(0, 12345678, 212, 'Spain', 2, 'Germany'),
(0, 12345678, 213, 'Cameroon', 1, 'Serbia'),
(0, 12345678, 214, 'South Korea', 1, 'Ghana'),
(0, 12345678, 215, 'Brazil', 3, 'Switzerland'),
(0, 12345678, 216, 'Portugal', 3, 'Uruguay'),
(0, 12345678, 301, 'Ecuador', 3, 'Senegal'),
(0, 12345678, 302, 'Netherlands', 3, 'Qatar'),
(0, 12345678, 303, 'Wales', 2, 'England'),
(0, 12345678, 304, 'Iran', 2, 'USMNT'),
(0, 12345678, 305, 'Australia', 2, 'Denmark'),
(0, 12345678, 306, 'Tunisia', 3, 'France'),
(0, 12345678, 307, 'Saudi Arabia', 1, 'Mexico'),
(0, 12345678, 308, 'Poland', 3, 'Argentina'),
(0, 12345678, 309, 'Croatia', 3, 'Belgium'),
(0, 12345678, 310, 'Canada', 3, 'Morocco'),
(0, 12345678, 311, 'Japan', 2, 'Spain'),
(0, 12345678, 312, 'Costa Rica', 2, 'Germany'),
(0, 12345678, 313, 'Ghana', 2, 'Uruguay'),
(0, 12345678, 314, 'South Korea', 1, 'Portugal'),
(0, 12345678, 315, 'Cameroon', 2, 'Brazil'),
(0, 12345678, 316, 'Serbia', 1, 'Switzerland'),
(0, 12345678, 401, 'Netherlands', 1, 'USMNT'),
(0, 12345678, 402, 'Argentina', 1, 'Australia'),
(0, 12345678, 403, 'France', 1, 'Poland'),
(0, 12345678, 404, 'England', 3, 'Senegal'),
(0, 12345678, 405, 'Japan', 3, 'Croatia'),
(0, 12345678, 406, 'Brazil', 1, 'South Korea'),
(0, 12345678, 407, 'Morocco', 3, 'Spain'),
(0, 12345678, 408, 'Portugal', 1, 'Switzerland'),
(0, 12345678, 501, 'Croatia', 1, 'Brazil'),
(0, 12345678, 502, 'Netherlands', 1, 'Argentina'),
(0, 12345678, 503, 'Morocco', 2, 'Portugal'),
(0, 12345678, 504, 'England', 1, 'France'),
(0, 12345678, 601, 'Argentina', 1, 'Croatia'),
(0, 12345678, 602, 'France', 3, 'Morocco'),
(0, 12345678, 701, 'Croatia', 2, 'Morocco'),
(0, 12345678, 702, 'Argentina', 2, 'France');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apostadores`
--
ALTER TABLE `apostadores`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`Equipo`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`idPartido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
