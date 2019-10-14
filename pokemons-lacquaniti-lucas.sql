SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pokemons-lacquaniti-lucas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `numero` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `numero`, `nombre`, `tipo`, `imagen`) VALUES
(43, 2, 'Ivysaur', 2, '/pokemons-lacquaniti-lucas/public/img/uploaded/ivysaur.png'),
(46, 6, 'Charizard', 1, '/pokemons-lacquaniti-lucas/public/img/uploaded/charizard.png'),
(48, 3, 'Venusaur', 2, '/pokemons-lacquaniti-lucas/public/img/uploaded/venusaur.png'),
(49, 4, 'Charmander', 1, '/pokemons-lacquaniti-lucas/public/img/uploaded/charmander.png'),
(50, 5, 'Charmeleon', 1, '/pokemons-lacquaniti-lucas/public/img/uploaded/charmeleon.png'),
(51, 7, 'Squirtle', 3, '/pokemons-lacquaniti-lucas/public/img/uploaded/squirtle.png'),
(52, 8, 'Wartortle', 3, '/pokemons-lacquaniti-lucas/public/img/uploaded/wartortle.png'),
(53, 9, 'Blastoise', 3, '/pokemons-lacquaniti-lucas/public/img/uploaded/blastoise.png'),
(60, 25, 'Pikachu', 7, '/pokemons-lacquaniti-lucas/public/img/uploaded/pikachu.png'),
(61, 131, 'Lapras', 4, '/pokemons-lacquaniti-lucas/public/img/uploaded/lapras.png'),
(62, 150, 'Mewtwo', 8, '/pokemons-lacquaniti-lucas/public/img/uploaded/mewtwo.png'),
(63, 93, 'Haunter', 9, '/pokemons-lacquaniti-lucas/public/img/uploaded/haunter.png'),
(64, 59, 'Arcanine', 1, '/pokemons-lacquaniti-lucas/public/img/uploaded/arcanine.png'),
(66, 1, 'Bulbasaur', 2, '/pokemons-lacquaniti-lucas/public/img/uploaded/bulbasaur.png'),
(67, 133, 'Eevee', 10, '/pokemons-lacquaniti-lucas/public/img/uploaded/eevee.png'),
(68, 0, 'Lacqua', 11, '/pokemons-lacquaniti-lucas/public/img/uploaded/4f5a20ae-e758-4c64-944b-4d744293c3b6.png'),
(69, 143, 'Snorlax', 10, '/pokemons-lacquaniti-lucas/public/img/uploaded/snorlax.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `descripcion`) VALUES
(1, 'Fuego'),
(2, 'Planta'),
(3, 'Agua'),
(4, 'Hielo'),
(5, 'Tierra'),
(6, 'Roca'),
(7, 'Eléctrico'),
(8, 'Psíquico'),
(9, 'Fantasma'),
(10, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(1000) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `user`, `password`) VALUES
(6, 'root', 'lacquax');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pokemon_ibfk_1` (`tipo`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;