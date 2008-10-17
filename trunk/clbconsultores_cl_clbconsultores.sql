-- phpMyAdmin SQL Dump
-- version 2.6.3-pl1
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 17-10-2008 a las 13:06:12
-- Versión del servidor: 4.1.20
-- Versión de PHP: 4.3.9
-- 
-- Base de datos: `clbconsultores_cl_clbconsultores`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `comunas`
-- 

DROP TABLE IF EXISTS `comunas`;
CREATE TABLE IF NOT EXISTS `comunas` (
  `codigoInterno` int(11) unsigned NOT NULL default '0',
  `nombre` varchar(255) default NULL,
  `padre` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`codigoInterno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `comunas`
-- 

INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (346, 'ALTO HOSPICIO', 1);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (296, 'CAMINA', 1);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (297, 'COLCHANE', 1);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (3, 'HUARA', 1);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (2, 'IQUIQUE', 1);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (4, 'PICA', 1);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (5, 'POZO ALMONTE', 1);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (7, 'ANTOFAGASTA', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (10, 'CALAMA', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (298, 'MARIA ELENA', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (8, 'MEJILLONES', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (300, 'OLLAGÜE', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (301, 'SAN PEDRO DE ATACAMA', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (299, 'SIERRA GORDA', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (9, 'TALTAL', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (6, 'TOCOPILLA', 2);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (302, 'ALTO DEL CARMEN', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (14, 'CALDERA', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (11, 'CHAÑARAL', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (13, 'COPIAPO', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (12, 'DIEGO DE ALMAGRO', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (17, 'FREIRINA', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (18, 'HUASCO', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (15, 'TIERRA AMARILLA', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (16, 'VALLENAR', 3);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (22, 'ANDACOLLO', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (31, 'CANELA', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (29, 'COMBARBALA', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (21, 'COQUIMBO', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (30, 'ILLAPEL', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (20, 'LA HIGUERA', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (19, 'LA SERENA', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (33, 'LOS VILOS', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (26, 'MONTE PATRIA', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (25, 'OVALLE', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (24, 'PAIHUANO', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (27, 'PUNITAQUI', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (28, 'RIO HURTADO', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (32, 'SALAMANCA', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (23, 'VICUÑA', 4);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (44, 'ALGARROBO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (56, 'CABILDO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (67, 'CALLE LARGA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (46, 'CARTAGENA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (40, 'CASABLANCA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (63, 'CATEMU', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (340, 'CONCON', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (45, 'EL QUISCO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (47, 'EL TABO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (51, 'HIJUELAS', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (41, 'ISLA DE PASCUA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (321, 'JUAN FERNANDEZ', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (50, 'LA CALERA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (49, 'LA CRUZ', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (59, 'LA LIGUA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (53, 'LIMACHE', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (65, 'LLAY LLAY', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (66, 'LOS ANDES', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (52, 'NOGALES', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (54, 'OLMUE', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (62, 'PANQUEHUE', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (57, 'PAPUDO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (55, 'PETORCA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (36, 'PUCHUNCAVI', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (61, 'PUTAENDO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (48, 'QUILLOTA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (38, 'QUILPUE', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (35, 'QUINTERO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (68, 'RINCONADA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (42, 'SAN ANTONIO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (69, 'SAN ESTEBAN', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (60, 'SAN FELIPE', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (64, 'SANTA MARIA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (43, 'SANTO DOMINGO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (34, 'VALPARAISO', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (39, 'VILLA ALEMANA', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (37, 'VIÑA DEL MAR', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (58, 'ZAPALLAR', 5);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (132, 'CHEPICA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (125, 'CHIMBARONGO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (110, 'CODEGUA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (114, 'COINCO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (113, 'COLTAUCO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (112, 'DOÑIHUE', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (107, 'GRANEROS', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (139, 'LA ESTRELLA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (116, 'LAS CABRAS', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (136, 'LITUECHE', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (129, 'LOLOL', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (106, 'MACHALI', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (122, 'MALLOA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (134, 'MARCHIGUE', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (126, 'NANCAGUA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (138, 'NAVIDAD', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (120, 'OLIVAR', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (130, 'PALMILLA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (133, 'PAREDONES', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (131, 'PERALILLO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (115, 'PEUMO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (118, 'PICHIDEGUA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (137, 'PICHILEMU', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (127, 'PLACILLA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (135, 'PUMANQUE', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (123, 'QUINTA DE TILCOCO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (105, 'RANCAGUA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (121, 'RENGO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (119, 'REQUINOA', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (124, 'SAN FERNANDO', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (111, 'SAN FRANCISCO DE MOSTAZAL', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (117, 'SAN VICENTE', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (128, 'SANTA CRUZ', 6);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (166, 'CAUQUENES', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (167, 'CHANCO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (161, 'COLBUN', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (157, 'CONSTITUCION', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (155, 'CUREPTO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (140, 'CURICO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (158, 'EMPEDRADO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (144, 'HUALAÑE', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (145, 'LICANTEN', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (159, 'LINARES', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (162, 'LONGAVI', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (154, 'MAULE', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (147, 'MOLINA', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (164, 'PARRAL', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (152, 'PELARCO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (320, 'PELLUHUE', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (153, 'PENCAHUE', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (143, 'RAUCO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (165, 'RETIRO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (149, 'RIO CLARO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (141, 'ROMERAL', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (148, 'SAGRADA FAMILIA', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (151, 'SAN CLEMENTE', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (156, 'SAN JAVIER', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (341, 'SAN RAFAEL', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (150, 'TALCA', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (142, 'TENO', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (146, 'VICHUQUEN', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (163, 'VILLA ALEGRE', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (160, 'YERBAS BUENAS', 7);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (303, 'ANTUCO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (198, 'ARAUCO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (180, 'BULNES', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (208, 'CABRERO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (201, 'CAÑETE', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (344, 'CHIGUAYANTE', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (168, 'CHILLAN', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (342, 'CHILLAN VIEJO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (175, 'COBQUECURA', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (186, 'COELEMU', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (170, 'COIHUECO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (188, 'CONCEPCION', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (202, 'CONTULMO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (194, 'CORONEL', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (197, 'CURANILAHUE', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (185, 'EL CARMEN', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (193, 'FLORIDA', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (192, 'HUALQUI', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (210, 'LAJA', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (199, 'LEBU', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (200, 'LOS ALAMOS', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (204, 'LOS ANGELES', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (195, 'LOTA', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (214, 'MULCHEN', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (212, 'NACIMIENTO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (213, 'NEGRETE', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (174, 'NINHUE', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (184, 'PEMUCO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (191, 'PENCO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (169, 'PINTO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (171, 'PORTEZUELO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (215, 'QUILACO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (206, 'QUILLECO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (182, 'QUILLON', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (172, 'QUIRIHUE', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (187, 'RANQUIL', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (176, 'SAN CARLOS', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (178, 'SAN FABIAN', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (177, 'SAN GREGORIO DE ÑIQUEN', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (181, 'SAN IGNACIO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (179, 'SAN NICOLAS', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (343, 'SAN PEDRO DE LA PAZ', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (211, 'SAN ROSENDO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (205, 'SANTA BARBARA', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (196, 'SANTA JUANA', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (189, 'TALCAHUANO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (203, 'TIRUA', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (190, 'TOME', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (173, 'TREHUACO', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (209, 'TUCAPEL', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (207, 'YUMBEL', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (183, 'YUNGAY', 8);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (216, 'ANGOL', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (235, 'CARAHUE', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (220, 'COLLIPULLI', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (230, 'CUNCO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (225, 'CURACAUTIN', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (305, 'CURARREHUE', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (221, 'ERCILLA', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (229, 'FREIRE', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (232, 'GALVARINO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (238, 'GORBEA', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (231, 'LAUTARO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (240, 'LONCOCHE', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (226, 'LONQUIMAY', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (218, 'LOS SAUCES', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (223, 'LUMACO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (304, 'MELIPEUCO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (234, 'NUEVA IMPERIAL', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (345, 'PADRE LAS CASAS', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (233, 'PERQUENCO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (237, 'PITRUFQUEN', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (242, 'PUCON', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (236, 'PUERTO SAAVEDRA', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (217, 'PUREN', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (219, 'RENAICO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (227, 'TEMUCO', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (306, 'TEODORO SCHMIDT', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (239, 'TOLTEN', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (222, 'TRAIGUEN', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (224, 'VICTORIA', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (228, 'VILCUN', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (241, 'VILLARRICA', 9);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (277, 'ANCUD', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (265, 'CALBUCO', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (270, 'CASTRO', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (280, 'CHAITEN', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (271, 'CHONCHI', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (262, 'COCHAMO', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (276, 'CURACO DE VELEZ', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (279, 'DALCAHUE', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (268, 'FRESIA', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (269, 'FRUTILLAR', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (281, 'FUTALEUFU', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (308, 'HUALAIHUE', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (267, 'LLANQUIHUE', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (264, 'LOS MUERMOS', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (263, 'MAULLIN', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (255, 'OSORNO', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (282, 'PALENA', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (261, 'PUERTO MONTT', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (258, 'PUERTO OCTAY', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (266, 'PUERTO VARAS', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (274, 'PUQUELDON', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (260, 'PURRANQUE', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (256, 'PUYEHUE', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (272, 'QUEILEN', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (273, 'QUELLON', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (278, 'QUEMCHI', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (275, 'QUINCHAO', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (259, 'RIO NEGRO', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (307, 'SAN JUAN DE LA COSTA', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (257, 'SAN PABLO', 10);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (285, 'AYSEN', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (287, 'CHILE CHICO', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (286, 'CISNES', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (289, 'COCHRANE', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (284, 'COYHAIQUE', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (309, 'GUAITECAS', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (312, 'LAGO VERDE', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (310, 'O´HIGGINS', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (288, 'RIO IBAÑEZ', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (311, 'TORTEL', 11);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (316, 'LAGUNA BLANCA', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (319, 'NAVARINO', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (292, 'PORVENIR', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (317, 'PRIMAVERA', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (291, 'PUERTO NATALES', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (290, 'PUNTA ARENAS', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (314, 'RIO VERDE', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (315, 'SAN GREGORIO', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (318, 'TIMAUKEL', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (313, 'TORRES DEL PAINE', 12);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (109, 'ALHUE', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (103, 'BUIN', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (99, 'CALERA DE TANGO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (333, 'CERRILLOS', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (324, 'CERRO NAVIA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (76, 'COLINA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (75, 'CONCHALI', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (83, 'CURACAVI', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (338, 'EL BOSQUE', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (89, 'EL MONTE', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (328, 'ESTACION CENTRAL', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (334, 'HUECHURABA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (330, 'INDEPENDENCIA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (87, 'ISLA DE MAIPO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (96, 'LA CISTERNA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (93, 'LA FLORIDA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (97, 'LA GRANJA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (327, 'LA PINTANA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (92, 'LA REINA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (78, 'LAMPA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (71, 'LAS CONDES', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (332, 'LO BARNECHEA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (337, 'LO ESPEJO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (325, 'LO PRADO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (323, 'MACUL', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (94, 'MAIPU', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (90, 'MARIA PINTO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (88, 'MELIPILLA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (91, 'ÑUÑOA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (339, 'PADRE HURTADO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (104, 'PAINE', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (336, 'PEDRO AGUIRRE CERDA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (85, 'PEÑAFLOR', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (322, 'PEÑALOLEN', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (101, 'PIRQUE', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (72, 'PROVIDENCIA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (82, 'PUDAHUEL', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (100, 'PUENTE ALTO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (79, 'QUILICURA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (81, 'QUINTA NORMAL', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (329, 'RECOLETA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (77, 'RENCA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (98, 'SAN BERNARDO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (335, 'SAN JOAQUIN', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (102, 'SAN JOSE DE MAIPO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (95, 'SAN MIGUEL', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (108, 'SAN PEDRO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (326, 'SAN RAMON', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (70, 'SANTIAGO CENTRO', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (73, 'SANTIAGO OESTE', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (84, 'SANTIAGO SUR', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (86, 'TALAGANTE', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (80, 'TIL-TIL', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (331, 'VITACURA', 13);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (244, 'CORRAL', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (248, 'FUTRONO', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (251, 'LA UNION', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (254, 'LAGO RANCO', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (249, 'LANCO', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (247, 'LOS LAGOS', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (246, 'MAFIL', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (245, 'MARIQUINA', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (243, 'VALDIVIA', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (250, 'PANGUIPULLI', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (252, 'PAILLACO', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (253, 'RIO BUENO', 14);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (1, 'ARICA', 15);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (295, 'CAMARONES', 15);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (293, 'GENERAL LAGOS', 15);
INSERT INTO `comunas` (`codigoInterno`, `nombre`, `padre`) VALUES (294, 'PUTRE', 15);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_carreras`
-- 

DROP TABLE IF EXISTS `mgg_carreras`;
CREATE TABLE IF NOT EXISTS `mgg_carreras` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=396 ;

-- 
-- Volcar la base de datos para la tabla `mgg_carreras`
-- 

INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (5, '	Abogacía / Derecho / Leyes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (6, '	Actuario	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (7, '	Administración de Empresas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (8, '	Administración de Empresas de Servicios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (9, '	Administración de Empresas Turísticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (10, '	Administración de Hoteles y Restaurantes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (11, '	Administración de Negocios Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (12, '	Administración de Predios Agrícolas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (13, '	Administración de Ventas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (14, '	Administración en Producción Gastronómica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (15, '	Administración Financiera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (16, '	Administración Hotelera Profesional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (17, '	Administración Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (18, '	Administración Pública / Gestión Pública	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (19, '	Administración y Producción Agropecuaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (20, '	Agronomía / Agroindustria / Ing. Agrícola	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (21, '	Análisis de Sistemas / Analista Programador	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (22, '	Antropología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (23, '	Arqueología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (24, '	Arquitectura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (25, '	Arte Dramático / Actuación / Teatro	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (26, '	Artes / Artes Plásticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (27, '	Asistente de Odontología Dental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (28, '	Asistente Ejecutivo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (29, '	Asistente Judicial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (30, '	Astronomía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (31, '	Automatización y Control Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (32, '	Auxiliar Paramédico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (33, '	Bachiller en Ciencias Religiosas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (34, '	Bachillerato en Ciencias	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (35, '	Bachillerato en Humanidades	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (36, '	Bacteriología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (37, '	Bibliotecología / Documentación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (38, '	Bíoanalisis / Biotecnología Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (39, '	Biología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (40, '	Biología en Gestión de Recursos Naturales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (41, '	Biología Marina	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (42, '	Bioquímica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (43, '	Biotecnología / Bioingeniería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (44, '	Caligrafía Pública	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (45, '	Canto / Interpretación en Canto	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (46, '	Cartografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (47, '	Chofer / Transporte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (48, '	Ciencia Política / Licenciatura en Ciencia Política	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (49, '	Ciencias Físicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (50, '	Cine / Séptimo Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (51, '	Comercio Internacional / Comercio Exterior	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (52, '	Computación e Informática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (53, '	Comunicación Audiovisual / Multimedial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (54, '	Comunicación Social / Empresarial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (55, '	Consejería Educacional y Vocacional Enseñanza Básica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (56, '	Consejería Educacional y Vocacional Enseñanza Media	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (57, '	Conservación Industrial de Alimentos por Frío	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (58, '	Construcción Civil	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (59, '	Construcciones Metálicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (60, '	Contador Auditor / Auditoría	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (62, '	Contador General / Contabilidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (63, '	Cosmetología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (64, '	Danza / Interpretación en Danza 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (65, '	Decoración de Interiores	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (66, '	Dibujo de Proyectos de Arquitectura e Ingenieria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (67, '	Dibujo Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (69, '	Dibujo Técnico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (70, '	Dibujo y Proyectos Industriales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (71, '	Diplomado	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (72, '	Dirección de Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (73, '	Dirección y Producción	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (74, '	Dirección y Producción de eventos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (76, '	Diseño	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (77, '	Diseño de Interiores / Decoración	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (78, '	Diseño de Interiores y Mobiliario	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (79, '	Diseño de Objetos y Ambientes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (80, '	Diseño de Vestuario / Textil / Moda	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (81, '	Diseño Digital	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (83, '	Diseño Editorial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (84, '	Diseño Gráfico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (85, '	Diseño Industria / Dibujo Proyectos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (86, '	Diseño y Producción de Areas Verdes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (87, '	Diseño y Programación Multimedia / Diseño Digital	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (88, '	Ecología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (90, '	Economía 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (91, '	Ecoturismo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (92, '	Educación Parvularia / Inicial / Párvulo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (93, '	Electricidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (94, '	Electromecánico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (95, '	Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (97, '	Electrónica de Sistemas Computarizados	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (98, '	Enfermería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (99, '	Escenografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (100, '	Escultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (101, '	Estadísticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (102, '	Estética	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (104, '	Filosofía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (105, '	Finanzas Bancarias / Negocios Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (106, '	Física / Ciencias Físicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (107, '	Fisioterapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (108, '	Fonoaudiología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (109, '	Fotografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (111, '	Frigorista Electromecánico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (112, '	Fuerzas Armadas / Milicia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (113, '	Gasfitería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (114, '	Gastronomía / Cocina	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (115, '	Geografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (116, '	Geología / Ciencias Geológicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (118, '	Geomensura / Topografía / Agrimensura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (119, '	Geoquímica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (120, '	Guardia de Seguridad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (121, '	Higienista Dental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (122, '	Historia / Licenciatura en Historia 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (123, '	Historia del Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (125, '	Historia y Geografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (126, '	Hotelería / Administración Hotelera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (127, '	Idiomas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (128, '	Ilustración Digital	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (129, '	Informática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (130, '	Informática Biomédica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (132, '	Ingeniería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (133, '	Ingeniería Aerospacial / Aeronáutica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (134, '	Ingeniería Ambiental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (135, '	Ingeniería Biomédica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (136, '	Ingeniería Civil / Civil	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (137, '	Ingeniería Civil Eléctrica / Ingeniería Eléctrica 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (139, '	Ingeniería Civil Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (140, '	Ingeniería Civil en Electricidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (141, '	Ingeniería Civil en Informática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (142, '	Ingenieria Civil en Sonido	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (143, '	Ingeniería Civil Industrial / Ingeniería Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (144, '	Ingeniería Civil Mecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (146, '	Ingeniería Comercial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (147, '	Ingeniería de Diseño / Automatización Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (148, '	Ingeniería de Ejecución	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (149, '	Ingeniería de Ejecución en Administración	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (150, '	Ingeniería de Ejecución en Administración Hotelera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (151, '	Ingeniería de Ejecución en Administración Turística	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (153, '	Ingeniería de Ejecución en Marketing	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (154, '	Ingeniería de Ejecución en Mecánica Automotriz y Autotrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (155, '	Ingeniería de Ejecución en Sonido	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (156, '	Ingeniería de Información y Control de Gestión	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (157, '	Ingeniería de Petróleos / Petroquímica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (158, '	Ingeniería de Producción	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (160, '	Ingeniería Electrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (161, '	Ingeniería en Acuicultura / Acuicultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (162, '	Ingeniería en Administración Agroindustrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (163, '	Ingeniería en Administración de Operaciones	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (164, '	Ingeniería en Administración Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (165, '	Ingeniería en Agronegocios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (167, '	Ingeniería en Alimentos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (168, '	Ingeniería en Automatización y Control Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (169, '	Ingeniería en Bioinformática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (170, '	Ingenieria en Biotecnología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (171, '	Ingeniería en Computación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (172, '	Ingeniería en Conectividad y Redes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (174, '	Ingeniería en Construcción	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (175, '	Ingeniería en Control e Instrumentación Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (176, '	Ingeniería en Deportes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (177, '	Ingeniería en Electricidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (178, '	Ingeniería en Fabricación y montaje Ind. 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (179, '	Ingeniería en Geografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (181, '	Ingeniería en Geomensura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (182, '	Ingeniería en Gestión	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (183, '	Ingeniería en Gestión de Calidad y Ambiente	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (184, '	Ingeniería en Gestión de Negocios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (185, '	Ingeniería en Gestión y Control de Calidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (186, '	Ingeniería en Gestión y Desarrollo Tecnológico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (188, '	Ingeniería en Industrias de la Madera	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (189, '	Ingeniería en Informática / Sistemas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (190, '	Ingeniería en Logística	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (191, '	Ingeniería en Mantenimiento Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (192, '	Ingeniería en manufactura industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (193, '	Ingeniería en Mecatrónica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (195, '	Ingeniería en Metalmecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (196, '	Ingeniería en Minas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (197, '	Ingenieria en Negocios Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (198, '	Ingeniería en Obras Civiles	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (199, '	Ingeniería en Prevención de Riesgos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (200, '	Ingeniería en procesos de la madera 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (202, '	Ingeniería en Proyectos Industriales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (203, '	Ingeniería en Recursos Naturales Renovables	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (204, '	Ingeniería en Refrigeración y Climatización 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (205, '	Ingeniería en Telecomunicaciones	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (206, '	Ingeniería en Transporte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (207, '	Ingeniería Forestal	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (209, '	Ingeniería Hidráulica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (210, '	Ingeniería Matemáticas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (211, '	Ingeniería Mecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (212, '	Ingeniería Metálica / Metalúrgica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (213, '	Ingeniería Naval	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (214, '	Ingeniería Pesquera / Cultivos Marinos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (216, '	Ingeniería Química	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (217, '	Jardinería / Floricultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (218, '	Junior / Cadete / Oficinista 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (219, '	Kinesiología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (220, '	Laboratorio Dental / Mecánica Dental	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (221, '	Licenciatura en Arte / Bellas Artes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (223, '	Licenciatura en Ciencias Biológicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (224, '	Licenciatura en Ciencias Religiosas y Estudios Eclesiásticos	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (225, '	Licenciatura en Educación / Magisterio	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (226, '	Licenciatura en Literatura / Literatura / Letras	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (227, '	Maestro Mayor de Obras	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (228, '	Magister	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (230, '	Magister en Ciencias de la Educación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (231, '	Manteniemiento de Maquinaria de Planta	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (232, '	Manteniemiento de Maquinaria Pesada	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (233, '	Mantenimiento Industrial / Producción Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (234, '	Marketing / Mercadotecnia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (235, '	Matemática 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (237, '	Matrón (a)	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (238, '	Mayordomo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (239, '	MBA	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (240, '	Mecánica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (241, '	Mecánica Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (242, '	Medicina 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (244, '	Medicina Veterinaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (245, '	Meteorología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (246, '	Microbiología industrial de alimentos 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (247, '	Minero Metalúrgico 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (248, '	Modelista de Vestuario 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (249, '	Museología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (251, '	Música 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (252, '	Músico - Terapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (253, '	Musicoterapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (254, '	Notario Público / Escribano Público	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (255, '	Nutrición / Nutrición y Dietética	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (256, '	Nutrición y Alimentación Institucional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (258, '	Obstetricia y Puericultura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (259, '	Oceanografía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (260, '	Odontología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (261, '	Oftalmología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (262, '	Optometría	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (263, '	Orfebrería / Joyería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (265, '	Orientación Familiar	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (266, '	Paisajismo / Diseño de Paisaje 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (267, '	Panadero	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (268, '	Párvulo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (269, '	Pastelería Internacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (270, '	Pedagogía	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (272, '	Pedagogía Básica / Educación Básica / Primaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (273, '	Pedagogía Educación Media en Lenguaje y Comunicación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (274, '	Pedagogía en Ciencias 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (275, '	Pedagogía en Cs. Naturales y Física	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (276, '	Pedagogía en Cs. Naturales y Química	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (277, '	Pedagogía en Educación Diferencial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (279, '	Pedagogía en Educación Física y Deporte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (280, '	Pedagogía en Historia / Ciencias Sociales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (281, '	Pedagogía en Inglés / Idiomas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (282, '	Pedagogía en Lengua Castellana y Comunicación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (283, '	Pedagogía en Matemáticas / Computación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (284, '	Pedagogía en Música / Arte	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (286, '	Pedagogía en Religión	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (287, '	Pedagogía Media / Educación Media / Secundaria	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (288, '	Pedagogía Media en Religión y Educación Moral	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (289, '	Periodismo / Comunicación Social	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (290, '	Perito Criminalístico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (291, '	Piloto / Aviación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (293, '	Pintura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (294, '	Preparador Físico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (295, '	Prevención de Riesgos / Seguridad Industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (296, '	Producción Gastronómica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (297, '	Producción Musical	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (298, '	Programación	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (300, '	Psicología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (301, '	Psicología Clínica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (302, '	Psicología Educacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (303, '	Psicología Laboral	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (304, '	Psicopedagogía / Educación Diferencial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (305, '	Publicidad - Comunicación Social	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (307, '	Publicidad Profesional Mención Marketing y Medios	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (308, '	Publicidad Técnica Mención Marketing Promocional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (309, '	Química / Analista Químico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (310, '	Química Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (311, '	Química Marina	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (312, '	Química y Farmacia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (314, '	Químico Laboratista Industrial	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (315, '	Recursos Humanos / Relaciones Industriales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (316, '	Redes y Comunicación de Datos / Conectividad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (317, '	Relaciones del Trabajo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (318, '	Relaciones Internacionales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (319, '	Relaciones Públicas	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (321, '	Sacerdocio	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (322, '	Secretariado	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (323, '	Secretariado Bilingue	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (324, '	Servicios Domésticos 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (325, '	Sevicios Domésticos / Empleada Doméstica	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (326, '	Sociología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (328, '	Técnico / Tecnólogo / Técnico Superior	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (329, '	Técnico Agrícola	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (330, '	Técnico AudioVisual	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (331, '	Técnico Control de producción industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (332, '	Técnico de RadioDiagnóstico y Radioterapia	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (333, '	Técnico en Administración de Programas Sociales	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (335, '	Técnico en Construcción 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (336, '	Técnico en control de calidad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (337, '	Técnico en Diseño editorial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (338, '	Técnico en Diseño Gráfico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (339, '	Técnico en Edificación 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (340, '	Técnico en Electricidad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (342, '	Técnico en Electricidad Industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (343, '	Técnico en Enfermería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (344, '	Técnico en Fabricación y montaje Industrial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (345, '	Técnico en Geomensura 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (346, '	Técnico en Gestión y Control de calidad 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (347, '	Técnico en Logística 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (349, '	Técnico en Matricería 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (350, '	Técnico en Medio Ambiente 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (351, '	Técnico en Metalmecánica 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (352, '	Técnico en Obras civiles 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (353, '	Técnico en Oleohidráulica y Neumática	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (354, '	Técnico en Planificación Vial 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (356, '	Técnico en Procesos de la madera 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (357, '	Técnico en Refrigeración 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (358, '	Técnico en Restauración	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (359, '	Técnico en Soporte Computacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (360, '	Técnico en Topografia 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (361, '	Técnico en Tránsito y Transporte 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (363, '	Técnico Jurídico	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (364, '	Técnico Marino	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (365, '	Técnico Superior en Administración Agrícola	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (366, '	Técnico Veterinario	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (367, '	Tecnología en gestión Forestal 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (368, '	Técnología en Minería	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (370, '	Tecnología en Minería y Metalurgía 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (371, '	Tecnología en Recursos del Mar	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (372, '	Tecnología en Sonido	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (373, '	Tecnología Forestal 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (374, '	Tecnología Industrial de alimentos del mar 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (375, '	Tecnología Industrial de la madera 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (377, '	Tecnología Industrial de los alimentos 	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (378, '	Tecnología Médica / Laboratorio	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (379, '	Telecomunicaciones	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (380, '	Teología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (381, '	Terapia Física	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (382, '	Terapia Ocupacional	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (384, '	Trabajo Social / Servicio Social	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (385, '	Traducción / Intérprete	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (386, '	Tripulante de Cabina / Azafata(o)	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (387, '	Turismo  / Administración en Turismo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (388, '	Turismo de Aventura	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (389, '	Turismo Técnico Mención Empresas de Viajes	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (391, '	Turismo Técnico Mención Tráfico y Carga Aérea	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (392, '	Ufología	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (393, '	Urbanismo	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (394, '	Venta y Publicidad	');
INSERT INTO `mgg_carreras` (`id`, `nombre`) VALUES (395, '	Zootecnia / Zoología	');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_comunas`
-- 

DROP TABLE IF EXISTS `mgg_comunas`;
CREATE TABLE IF NOT EXISTS `mgg_comunas` (
  `id` int(11) NOT NULL default '0',
  `relacion` int(11) default NULL,
  `nombre` text,
  `cd_cod_area` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_comunas`
-- 

INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (1, 1, 'Arica', '2');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (2, 1, 'Camarones', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (3, 3, 'Putre', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (4, 3, 'General Lagos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (5, 2, 'Iquique', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (6, 53, 'Camiña', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (7, 53, 'Colchane', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (8, 53, 'Huara', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (9, 53, 'Pica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (10, 53, 'Pozo Almonte', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (11, 2, 'Alto Hospicio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (12, 6, 'Tocopilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (13, 6, 'María Elena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (14, 5, 'Calama', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (15, 5, 'Ollagüe', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (16, 5, 'San Pedro De Atacama', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (17, 4, 'Antofagasta', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (18, 4, 'Mejillones', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (19, 4, 'Sierra Gorda', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (20, 4, 'Taltal', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (21, 8, 'Chañaral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (22, 8, 'Diego De Almagro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (23, 7, 'Copiapó', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (24, 7, 'Caldera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (25, 7, 'Tierra Amarilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (26, 9, 'Vallenar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (27, 9, 'Alto Del Carmen', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (28, 9, 'Freirina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (29, 9, 'Huasco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (30, 10, 'La Serena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (31, 10, 'Coquimbo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (32, 10, 'Andacollo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (33, 10, 'La Higuera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (34, 10, 'Paiguano', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (35, 10, 'Vicuña', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (36, 12, 'Ovalle', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (37, 12, 'Río Hurtado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (38, 12, 'Monte Patria', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (39, 12, 'Combarbalá', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (40, 12, 'Punitaqui', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (41, 11, 'Illapel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (42, 11, 'Canela', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (43, 11, 'Los Vilos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (44, 11, 'Salamanca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (45, 13, 'Valparaíso', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (46, 13, 'Casablanca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (47, 13, 'Concón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (48, 13, 'Juan Fernández', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (49, 13, 'Puchuncaví', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (50, 13, 'Quilpué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (51, 13, 'Quintero', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (52, 13, 'Villa Alemana', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (53, 13, 'Viña Del Mar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (54, 16, 'Petorca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (55, 16, 'La Ligua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (56, 16, 'Cabildo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (57, 16, 'Papudo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (58, 16, 'Zapallar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (59, 15, 'Los Andes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (60, 15, 'Calle Larga', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (61, 15, 'Rinconada', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (62, 15, 'San Esteban', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (63, 19, 'San Felipe', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (64, 19, 'Catemu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (65, 19, 'Llay Llay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (66, 19, 'Panquehue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (67, 19, 'Putaendo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (68, 19, 'Santa María', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (69, 17, 'Quillota', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (70, 17, 'La Calera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (71, 17, 'Hijuelas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (72, 17, 'La Cruz', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (73, 17, 'Limache', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (74, 17, 'Nogales', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (75, 17, 'Olmué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (76, 18, 'San Antonio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (77, 18, 'Algarrobo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (78, 18, 'Cartagena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (79, 18, 'El Quisco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (80, 18, 'El Tabo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (81, 18, 'Santo Domingo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (82, 14, 'Isla De Pascua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (83, 20, 'Rancagua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (84, 20, 'Codegua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (85, 20, 'Coinco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (86, 20, 'Coltauco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (87, 20, 'Doñihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (88, 20, 'Graneros', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (89, 20, 'Las Cabras', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (90, 20, 'Machalí', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (91, 20, 'Malloa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (92, 20, 'Mostazal', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (93, 20, 'Olivar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (94, 20, 'Peumo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (95, 20, 'Pichidegua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (96, 20, 'Quinta De Tilcoco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (97, 20, 'Rengo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (98, 20, 'Requínoa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (99, 20, 'San Vicente De Tagua Tagua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (100, 22, 'San Fernando', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (101, 22, 'Chépica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (102, 22, 'Chimbarongo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (103, 22, 'Lolol', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (104, 22, 'Nancagua', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (105, 22, 'Palmilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (106, 22, 'Peralillo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (107, 22, 'Placilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (108, 22, 'Pumanque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (109, 22, 'Santa Cruz', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (110, 21, 'Pichilemu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (111, 21, 'La Estrella', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (112, 21, 'Litueche', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (113, 21, 'Marchihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (114, 21, 'Navidad', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (115, 21, 'Paredones', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (116, 25, 'Curicó', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (117, 25, 'Teno', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (118, 25, 'Romeral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (119, 25, 'Sagrada Familia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (120, 25, 'Molina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (121, 25, 'Hualañé', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (122, 25, 'Vichuquén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (123, 25, 'Licantén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (124, 25, 'Rauco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (125, 23, 'Talca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (126, 23, 'Constitución', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (127, 23, 'Curepto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (128, 23, 'Empedrado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (129, 23, 'Maule', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (130, 23, 'Pelarco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (131, 23, 'Pencahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (132, 23, 'Río Claro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (133, 23, 'San Clemente', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (134, 23, 'San Rafael', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (135, 26, 'Linares', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (136, 26, 'Colbún', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (137, 26, 'Longaví', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (138, 26, 'Parral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (139, 26, 'Retiro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (140, 26, 'San Javier', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (141, 26, 'Villa Alegre', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (142, 26, 'Yerbas Buenas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (143, 24, 'Cauquenes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (144, 24, 'Chanco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (145, 24, 'Pelluhue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (146, 30, 'Chillán', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (147, 30, 'Bulnes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (148, 30, 'Cobquecura', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (149, 30, 'Coelemu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (150, 30, 'Coihueco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (151, 30, 'Chillán Viejo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (152, 30, 'El Carmen', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (153, 30, 'Ninhue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (154, 30, 'Ñiquén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (155, 30, 'Pemuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (156, 30, 'Pinto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (157, 30, 'Portezuelo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (158, 30, 'Quillón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (159, 30, 'Quirihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (160, 30, 'Ránquil', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (161, 30, 'San Carlos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (162, 30, 'San Fabián', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (163, 30, 'San Ignacio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (164, 30, 'San Nicolás', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (165, 30, 'Treguaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (166, 30, 'Yungay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (167, 29, 'Los Angeles', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (168, 29, 'Antuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (169, 29, 'Cabrero', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (170, 29, 'Laja', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (171, 29, 'Mulchén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (172, 29, 'Nacimiento', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (173, 29, 'Negrete', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (174, 29, 'Quilaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (175, 29, 'Quilleco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (176, 29, 'San Rosendo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (177, 29, 'Santa Bárbara', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (178, 29, 'Tucapel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (179, 29, 'Yumbel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (180, 29, 'Alto Bio Bio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (181, 27, 'Concepción', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (182, 27, 'Coronel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (183, 27, 'Chiguayante', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (184, 27, 'Florida', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (185, 27, 'Hualqui', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (186, 27, 'Lota', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (187, 27, 'Penco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (188, 27, 'San Pedro De La Paz', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (189, 27, 'Santa Juana', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (190, 27, 'Talcahuano', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (191, 27, 'Tomé', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (192, 27, 'Hualpén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (193, 28, 'Lebu', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (194, 28, 'Arauco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (195, 28, 'Cañete', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (196, 28, 'Contulmo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (197, 28, 'Curanilahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (198, 28, 'Los Alamos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (199, 28, 'Tirúa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (200, 32, 'Angol', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (201, 32, 'Collipulli', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (202, 32, 'Curacautín', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (203, 32, 'Ercilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (204, 32, 'Lonquimay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (205, 32, 'Los Sauces', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (206, 32, 'Lumaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (207, 32, 'Purén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (208, 32, 'Renaico', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (209, 32, 'Traiguén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (210, 32, 'Victoria', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (211, 31, 'Temuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (212, 31, 'Carahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (213, 31, 'Cunco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (214, 31, 'Curarrehue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (215, 31, 'Freire', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (216, 31, 'Galvarino', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (217, 31, 'Gorbea', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (218, 31, 'Lautaro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (219, 31, 'Loncoche', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (220, 31, 'Melipeuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (221, 31, 'Nueva Imperial', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (222, 31, 'Padre Las Casas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (223, 31, 'Perquenco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (224, 31, 'Pitrufquén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (225, 31, 'Pucón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (226, 31, 'Teodoro Schmidt', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (227, 31, 'Toltén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (228, 31, 'Vilcún', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (229, 31, 'Villarrica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (230, 31, 'Saavedra', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (231, 37, 'Valdivia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (232, 37, 'Corral', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (233, 52, 'Futrono', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (234, 52, 'La Unión', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (235, 52, 'Lago Ranco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (236, 37, 'Lanco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (237, 37, 'Los Lagos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (238, 37, 'Máfil', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (239, 37, 'Mariquina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (240, 37, 'Paillaco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (241, 37, 'Panguipulli', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (242, 52, 'Río Bueno', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (243, 35, 'Osorno', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (244, 35, 'Puerto Octay', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (245, 35, 'Purranque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (246, 35, 'Puyehue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (247, 35, 'Río Negro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (248, 35, 'San Juan De La Costa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (249, 35, 'San Pablo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (250, 33, 'Puerto Montt', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (251, 33, 'Calbuco', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (252, 33, 'Cochamó', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (253, 33, 'Fresia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (254, 33, 'Frutillar', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (255, 33, 'Los Muermos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (256, 33, 'Llanquihue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (257, 33, 'Maullín', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (258, 33, 'Puerto Varas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (259, 34, 'Castro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (260, 34, 'Ancud', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (261, 34, 'Chonchi', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (262, 34, 'Curaco De Vélez', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (263, 34, 'Dalcahue', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (264, 34, 'Puqueldón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (265, 34, 'Queilén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (266, 34, 'Quellón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (267, 34, 'Quemchi', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (268, 34, 'Quinchao', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (269, 36, 'Chaitén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (270, 36, 'Futaleufú', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (271, 36, 'Hualaihué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (272, 36, 'Palena', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (273, 40, 'Cochrane', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (274, 40, 'O''higgins', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (275, 40, 'Tortel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (276, 39, 'Aisén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (277, 39, 'Cisnes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (278, 39, 'Guaitecas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (279, 38, 'Coihaique', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (280, 38, 'Lago Verde', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (281, 41, 'Chile Chico', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (282, 41, 'Río Ibáñez', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (283, 45, 'Torres Del Paine', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (284, 45, 'Natales', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (285, 42, 'San Gregorio', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (286, 42, 'Río Verde', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (287, 42, 'Laguna Blanca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (288, 42, 'Punta Arenas', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (289, 44, 'Timaukel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (290, 44, 'Primavera', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (291, 44, 'Porvenir', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (292, 43, 'Antártica', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (293, 43, 'Cabo De Hornos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (294, 46, 'La Reina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (295, 46, 'Santiago', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (296, 46, 'Pudahuel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (297, 46, 'Providencia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (298, 46, 'Peñalolén', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (299, 46, 'Pedro Aguirre Cerda', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (300, 46, 'Ñuñoa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (301, 46, 'Maipú', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (302, 46, 'Macul', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (303, 46, 'Lo Prado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (304, 46, 'Lo Espejo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (305, 46, 'Quinta Normal', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (306, 46, 'Las Condes', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (307, 46, 'Recoleta', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (308, 46, 'La Pintana', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (309, 46, 'La Granja', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (310, 46, 'La Florida', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (311, 46, 'La Cisterna', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (312, 46, 'Independencia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (313, 46, 'Huechuraba', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (314, 46, 'Estación Central', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (315, 46, 'El Bosque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (316, 46, 'Conchalí', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (317, 46, 'Cerro Navia', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (318, 46, 'Cerrillos', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (319, 46, 'Lo Barnechea', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (320, 46, 'Vitacura', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (321, 46, 'San Ramón', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (322, 46, 'San Miguel', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (323, 46, 'San Joaquín', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (324, 46, 'Renca', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (325, 46, 'Quilicura', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (326, 47, 'San José De Maipo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (327, 47, 'Pirque', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (328, 47, 'Puente Alto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (329, 50, 'Melipilla', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (330, 50, 'María Pinto', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (331, 50, 'Curacaví', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (332, 50, 'Alhué', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (333, 50, 'San Pedro', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (334, 51, 'Padre Hurtado', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (335, 51, 'Isla De Maipo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (336, 51, 'El Monte', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (337, 51, 'Talagante', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (338, 51, 'Peñaflor', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (339, 49, 'Buin', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (340, 49, 'Calera De Tango', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (341, 49, 'Paine', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (342, 49, 'San Bernardo', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (343, 48, 'Tiltil', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (344, 48, 'Lampa', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (345, 48, 'Colina', '0');
INSERT INTO `mgg_comunas` (`id`, `relacion`, `nombre`, `cd_cod_area`) VALUES (346, 31, 'Cholchol', '0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_comunas_backup`
-- 

DROP TABLE IF EXISTS `mgg_comunas_backup`;
CREATE TABLE IF NOT EXISTS `mgg_comunas_backup` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `relacion` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `mgg_comunas_backup`
-- 

INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (1, 'Arica', 1);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (2, 'Camarones', 1);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (3, 'Putre', 2);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (4, 'General Lagos', 2);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (5, 'Iquique', 3);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (6, 'Alto Hospicio', 3);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (7, 'Pozo Almonte', 4);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (8, 'Camiña', 4);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (9, 'Colchane', 4);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (10, 'Huara', 4);
INSERT INTO `mgg_comunas_backup` (`id`, `nombre`, `relacion`) VALUES (11, 'Pica', 4);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_curriculum`
-- 

DROP TABLE IF EXISTS `mgg_curriculum`;
CREATE TABLE IF NOT EXISTS `mgg_curriculum` (
  `rut` int(11) NOT NULL default '0',
  `password` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `nombres` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `apellido1` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `apellido2` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `presentacion` text character set utf8 collate utf8_unicode_ci,
  `fnacimiento` date NOT NULL default '0000-00-00',
  `genero` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `nacionalidad` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `estadocivil` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `direccion` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `region` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `provincia` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `comuna` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `fonocasa` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `fonomovil` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `fonooficina` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `email` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `colegio` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `anoegresocolegio` year(4) NOT NULL default '0000',
  `carrera` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `mencion` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `institucion` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `estadoestudio` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `anoegresosuperior` year(4) NOT NULL default '0000',
  `titulos` text character set utf8 collate utf8_unicode_ci,
  `anolaboral` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `cargo` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `empresa` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `objetivos` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `logros` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `software` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `nivelsoftware` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `ingles` int(1) default '0',
  `nivelingles` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `frances` int(1) default '0',
  `nivelfrances` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `aleman` int(1) default '0',
  `nivelaleman` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `espanol` int(1) default '0',
  `nivelespanol` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `italiano` int(1) default '0',
  `nivelitaliano` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `otro` varchar(100) character set utf8 collate utf8_unicode_ci default '0',
  `nivelotro` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `experienciaextra` text character set utf8 collate utf8_unicode_ci,
  `pretensionrenta` int(11) NOT NULL default '0',
  `regionlaboral` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `disponibilidad` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `areainteres` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `acceso` char(1) character set utf8 collate utf8_unicode_ci NOT NULL default '0',
  PRIMARY KEY  (`rut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_curriculum`
-- 

INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`) VALUES (16480615, '03e966c680', 'Mauricio Esteban', 'GarcÃ­a', 'GonzÃ¡lez', 'Hola', '1987-06-21', 'Masculino', 'Chilena', 'Soltero(a)', 'San Guillermo 0358', '1', '2', '3', '2-2557802', '8-2845022', '2-1234567', 'mauri@garcia.com', 'Liceo Rosa Tocornal', 2004, '2', 'Edificios', '4', 'Titulado', 2007, 'Ninguno', '1989-2003', 'Ninguno', 'Ninguna', '', '', 'Nada', 'Avanzado', 1, 'TraducciÃ³n', 0, NULL, 0, NULL, 1, 'Hablado', 0, NULL, NULL, NULL, '123', 100, '1', 'Inmediata', '', '0');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`) VALUES (12607631, '2e1ae967cb', 'Daniel', 'Francisco', 'Zamorano', 'Me llamo daniel y soy muy incompetente, pero hago que pase piola', '1998-05-03', 'Masculino', 'Chileno', 'Soltero(a)', 'Luz 2929', '1', '2', '4', '234567', '3453454353', '4645747456', 'dzamorano@gmail.com', 'Las Condes', 1960, '2', 'solo eso', '2', 'Estudiando', 1999, 'En nda', '2005-2005', 'Jefe', 'Lotus', 'Ningunho', '', 'lotus', 'BÃ¡sico', 1, 'Hablado', NULL, NULL, NULL, NULL, 1, 'Hablado', NULL, NULL, 'ruso', NULL, 'Juego Cricket', 500, '1', 'Inmediata', 'pesca con mosca', '0');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`) VALUES (8756876, 'c41f34de90', 'Pedro', 'Retamal', 'Palacios', 'fiwufiushfiuwhei fheji', '1990-01-07', 'Masculino', 'chilena', 'Separado(a)', 'gergterg 656456', '1', '2', '3', '475754747', '75755675', '7567567567', 'dzamorano@gmail.com', 'dsfregdgdfg', 2004, '1', 'Egresado', '2', 'Titulado', 2000, 'jbjdfjkdsjkf ahjkÂºadjkhajshdÂºajsdhjashÂºdjhajkda   jdÂºjkash jdÂºhdjkdjÂº jasÂºdjasjdj h jshdÂºjadjkÂº jka', '2006-2002', 'adasd', 'asdasda', 'asdasd', 'asdasd', 'Lotus', 'Avanzado', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'asdasdasdasd', 200, '1', 'Inmediata', 'Basquetbol', '0');
INSERT INTO `mgg_curriculum` (`rut`, `password`, `nombres`, `apellido1`, `apellido2`, `presentacion`, `fnacimiento`, `genero`, `nacionalidad`, `estadocivil`, `direccion`, `region`, `provincia`, `comuna`, `fonocasa`, `fonomovil`, `fonooficina`, `email`, `colegio`, `anoegresocolegio`, `carrera`, `mencion`, `institucion`, `estadoestudio`, `anoegresosuperior`, `titulos`, `anolaboral`, `cargo`, `empresa`, `objetivos`, `logros`, `software`, `nivelsoftware`, `ingles`, `nivelingles`, `frances`, `nivelfrances`, `aleman`, `nivelaleman`, `espanol`, `nivelespanol`, `italiano`, `nivelitaliano`, `otro`, `nivelotro`, `experienciaextra`, `pretensionrenta`, `regionlaboral`, `disponibilidad`, `areainteres`, `acceso`) VALUES (15536433, '421d15ea10', 'JosÃ© Patricio', 'GarcÃ­a', 'GonzÃ¡lez', '', '1983-04-15', 'Masculino', 'Chilena', 'Soltero(a)', 'San Guillermo 0358', '13', '47', '328', '', '', '', '', 'DuocUC', 2007, '6', 'ActuaciÃ³n', '7', 'Egresado', 2007, '', '', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_instituciones`
-- 

DROP TABLE IF EXISTS `mgg_instituciones`;
CREATE TABLE IF NOT EXISTS `mgg_instituciones` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=301 ;

-- 
-- Volcar la base de datos para la tabla `mgg_instituciones`
-- 

INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (5, 'Academia Politécnica Militar');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (6, '	Academia Técnica Naval	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (7, '	AIEP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (8, '	C.F.T. ABACUS  I.T.C.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (10, '	C.F.T. Acuario Data de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (11, '	C.F.T. Alemán de Viña del Mar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (12, '	C.F.T. Alexander Von Humboldt	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (13, '	C.F.T. ALFA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (14, '	C.F.T. Alpes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (15, '	C.F.T. Andrés Bello	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (17, '	C.F.T. AquaTech	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (18, '	C.F.T. Austral	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (19, '	C.F.T. Barros Arana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (20, '	C.F.T. Cámara de Comercio de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (21, '	C.F.T. Carlos Thielemann Martin	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (22, '	C.F.T. Cedecom	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (24, '	C.F.T. CEDEP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (25, '	C.F.T. CEDUC - UCN	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (26, '	C.F.T. CEFONOR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (27, '	C.F.T. CEITEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (28, '	C.F.T. Cenafom	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (29, '	C.F.T. CENCO	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (31, '	C.F.T. Centro de Enseñanza de Alta Costura Paulina Diard	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (32, '	C.F.T. Centro de Estudios Navieros Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (33, '	C.F.T. Centro de Estudios Paramédicos de Santiago CEPSA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (34, '	C.F.T. Centro de Estudios Turísticos CET	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (35, '	C.F.T. Centro Tecnológico Superior INFOMED	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (36, '	C.F.T. CEPA de la III Región	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (38, '	C.F.T. CEPONAL	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (39, '	C.F.T. Chileno-Norteamericano	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (40, '	C.F.T. CIARTES	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (41, '	C.F.T. COLCHAGUA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (42, '	C.F.T. CRECIC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (43, '	C.F.T. CROWNLIET	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (45, '	C.F.T. de Educación Superior Agrícola Miguel Covarrubias Valdés	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (46, '	C.F.T. de ENAC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (47, '	C.F.T. de la Industria Gráfica o CFT.  INGRAF	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (48, '	C.F.T. de Tarapacá	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (49, '	C.F.T. del Medio Ambiente	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (50, '	C.F.T. Diego Portales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (52, '	C.F.T. ECATEMA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (53, '	C.F.T. EDUCAP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (54, '	C.F.T. El Libertador	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (55, '	C.F.T. El Roble	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (56, '	C.F.T. English Language Training Center	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (57, '	C.F.T. ESANE DEL NORTE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (59, '	C.F.T. Escuela de Administración Agrícola de la S.N.A.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (60, '	C.F.T. Escuela de Altos Estudios de la Comunicación y Educación EACE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (61, '	C.F.T. Escuela de Artes Aplicadas Oficios del Fuego	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (62, '	C.F.T. Escuela de Ciencias Turísticas e Idiomas EDECTI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (63, '	C.F.T. Escuela de Contabilidad y Administración, Centro de Estudios Contables ECACEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (64, '	C.F.T. Escuela de Interpretes INCENI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (66, '	C.F.T. Escuela Superior de Administración de Negocios - ESANE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (67, '	C.F.T. Escuela Superior de Comercio Exterior	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (68, '	C.F.T. Escuela Superior de Comercio Exterior de Santiago ESCES	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (69, '	C.F.T. Estudio Profesor Valero	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (70, '	C.F.T. ESUCOMEX	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (71, '	C.F.T. Eugenio González Rojas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (73, '	C.F.T. FIRENZE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (74, '	C.F.T. FONTANAR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (75, '	C.F.T. Genoveva Guarniero	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (76, '	C.F.T. ICADE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (77, '	C.F.T. ICEL	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (78, '	C.F.T. Ignacio Domeyko	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (80, '	C.F.T. INCOR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (81, '	C.F.T. INFOEDUC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (82, '	C.F.T. INSEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (83, '	C.F.T. INSES	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (84, '	C.F.T. Instituto Central de Capacitación Educacional ICCE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (85, '	C.F.T. Instituto Chileno Alemán de Cultura de San Antonio	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (87, '	C.F.T. Instituto Chileno Británico de Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (88, '	C.F.T. Instituto de Capacitación Luis Alberto Vera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (89, '	C.F.T. Instituto de Formación Empresarial IFE Escuela de Negocios	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (90, '	C.F.T. Instituto INTEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (91, '	C.F.T. Instituto Superior Alemán de Comercio INSALCO	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (92, '	C.F.T. Instituto Superior de Computación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (94, '	C.F.T. Instituto Superior de Electrónica GAMMA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (95, '	C.F.T. Instituto Superior de Estudios Jurídicos CANON	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (96, '	C.F.T. Instituto Técnológico de Computación - I.T.C.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (97, '	C.F.T. INTECTUR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (98, '	C.F.T. International House	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (99, '	C.F.T. INTESAN	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (101, '	C.F.T. IPROSEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (102, '	C.F.T. ITESA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (103, '	C.F.T. ITUR	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (104, '	C.F.T. Javiera Carrera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (105, '	C.F.T. Jhon F. Kennedy	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (106, '	C.F.T. Jorge Alvarez Echeverría	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (108, '	C.F.T. Juan Bohon	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (109, '	C.F.T. La Calera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (110, '	C.F.T. LAPLACE	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (111, '	C.F.T. Los Fundadores	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (112, '	C.F.T. Los Leones	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (113, '	C.F.T. Lota-Arauco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (115, '	C.F.T. Massachusetts	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (116, '	C.F.T. Osorno	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (117, '	C.F.T. PRODATA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (118, '	C.F.T. PUKARA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (119, '	C.F.T. Salesianos Don Bosco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (120, '	C.F.T. San Agustín de Talca	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (122, '	C.F.T. Santa María del Trabajo	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (123, '	C.F.T. Santo Tomás	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (124, '	C.F.T. Simón Bolivar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (125, '	C.F.T. SOEDUC Aconcagua	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (126, '	C.F.T. SOEDUC La Ligua	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (127, '	C.F.T. SOESTA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (129, '	C.F.T. TECCON	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (130, '	C.F.T. Tecnológico PROTEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (131, '	C.F.T. UDA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (132, '	C.F.T. Umbrale de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (133, '	C.F.T. UTEM	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (134, '	C.F.T. y Capacitación CEFOTEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (136, '	C.F.T. ZIPTER	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (137, '	CEAT	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (138, '	Complejo Educacional Lo Barnechea	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (139, '	DuocUC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (140, '	Ejército de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (141, '	Escuela de Aviación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (143, '	Escuela de Carabineros	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (144, '	Escuela de Comunicación Mónica Herrera	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (145, '	Escuela de Diseño V Región	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (146, '	Escuela de Ingeniería Naval	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (147, '	Escuela de Investigaciones	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (148, '	Escuela de la Fuerza Aérea de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (150, '	Escuela de Locutores de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (151, '	Escuela de Medicina V Región	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (152, '	Escuela de música	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (153, '	Escuela Militar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (154, '	Escuela Naval	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (155, '	ESE - Estudios Superiores de la Empresa	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (157, '	I.P.  Santo Tomás	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (158, '	I.P. Adventista	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (159, '	I.P. Agrario Adolfo Matthei	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (160, '	I.P. Alemán Wilhelm Von Humboldt	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (161, '	I.P. Alpes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (162, '	I.P. Andalien	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (164, '	I.P. Asociación Chilena de Seguridad	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (165, '	I.P. Carlos Casanueva	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (166, '	I.P. CEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (167, '	I.P. Cenafom	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (168, '	I.P. CEPECH	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (169, '	I.P. Chileno Británico de Cultura	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (171, '	I.P. CIISA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (172, '	I.P. Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (173, '	I.P. De Arte y Comunicación ARCOS	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (174, '	I.P. de Ciencias de la Computación Acuario Data	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (175, '	I.P. de Ciencias y Artes INCACEA	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (176, '	I.P. de Ciencias y Educación Helen Keller	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (178, '	I.P. de ENAC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (179, '	I.P. de Estudios bancarios Guillermo Subercaseaux	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (180, '	I.P. de Formación Empresarial	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (181, '	I.P. de las Comunicaciones PROCOM	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (182, '	I.P. de Los Angeles	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (183, '	I.P. de Providencia	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (185, '	I.P. del Pacífico	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (186, '	I.P. Diego Portales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (187, '	I.P. Dr. Virginio Gómez G.	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (188, '	I.P. EATRI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (189, '	I.P. ECACEC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (190, '	I.P. Escuela de Contadores Auditores de Santiago	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (192, '	I.P. Escuela Latinoamericana de Idiomas ELADI	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (193, '	I.P. Escuela Moderna de Música	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (194, '	I.P. Escuela Nacional de Relaciones Públicas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (195, '	I.P. ESUCOMEX	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (196, '	I.P. Hogar Catequístico	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (197, '	I.P. INDAE o Campus	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (199, '	I.P. Instituto Profesional de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (200, '	I.P. La Araucana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (201, '	I.P. Latinoamericano de Comercio Exterior	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (202, '	I.P. Libertador de Los Andes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (203, '	I.P. Los Leones	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (204, '	I.P. Luis Galdames	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (206, '	I.P. Manpower	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (207, '	I.P. Nacional del Fútbol	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (208, '	I.P. Profesional Campus	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (209, '	I.P. San Bartolomé de La Serena	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (210, '	I.P. Superior de Artes y Ciencias de la Comunicación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (211, '	I.P. Superior de Electrónica Gamma	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (213, '	I.P. Teatro la Casa	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (214, '	I.P. Valle Central	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (215, '	IEDE Escuela de Negocios Española	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (216, '	INACAP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (217, '	Instituto AIEP	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (218, '	Otra Institución	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (220, '	Pontificia U. Católica de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (221, '	Pontificia U. Católica de Valparaíso	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (222, '	Seminario	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (223, '	Técnico Industrial (SOFOFA)	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (224, '	U. Academia de Humanismo Cristiano	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (225, '	U. Adolfo Ibañez	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (227, '	U. Alberto Hurtado	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (228, '	U. Alonso de Ovalle	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (229, '	U. Arcis	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (230, '	U. Arturo Prat de Iquique	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (231, '	U. Austral de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (232, '	U. Autónoma del Sur	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (234, '	U. Bernardo O`Higgins	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (235, '	U. Bolivariana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (236, '	U. Católica Blas Cañas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (237, '	U. Católica Cardenal Raúl Silva Henríquez	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (238, '	U. Católica de la Santísima Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (239, '	U. Católica de Temuco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (241, '	U. Católica del Maule	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (242, '	U. Católica del Norte	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (243, '	U. Central	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (244, '	U. de Aconcagua	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (245, '	U. de Antofagasta	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (246, '	U. de Atacama	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (248, '	U. de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (249, '	U. de Ciencias de la Informática	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (250, '	U. de Concepción	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (251, '	U. de La Frontera de Temuco	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (252, '	U. de la Serena	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (253, '	U. de las Américas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (255, '	U. de los Andes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (256, '	U. de los Lagos	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (257, '	U. de Magallanes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (258, '	U. de Playa Ancha	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (259, '	U. de Puerto Varas	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (260, '	U. de San Andrés	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (262, '	U. de Santiago de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (263, '	U. de Talca	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (264, '	U. de Tarapacá	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (265, '	U. de Valparaíso	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (266, '	U. de Viña del Mar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (267, '	U. del Bío Bío	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (269, '	U. del Desarrollo	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (270, '	U. del Mar	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (271, '	U. del Pacífico	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (272, '	U. Diego Portales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (273, '	U. Educares	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (274, '	U. Finis Terrae	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (276, '	U. Francisco de Aguirre de la Serena	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (277, '	U. Francisco de Vitoria	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (278, '	U. Gabriela Mistral	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (279, '	U. Iberoamericana de Ciencias y Tecnología, UNICYT	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (280, '	U. Internacional SEK	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (281, '	U. La República	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (283, '	U. las Condes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (284, '	U. Mariano Egaña	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (285, '	U. Mayor	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (286, '	U. Metropolitana de Ciencias de la Educación	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (287, '	U. Miguel de Cervantes	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (288, '	U. Nacional Andrés Bello	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (290, '	U. San Sebastián	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (291, '	U. Santo Tomás	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (292, '	U. Técnica Federico Santa María	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (293, '	U. Tecnológica Metropolitana	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (294, '	U. Tecnológica Vicente Pérez Rosales	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (295, '	U. UNIACC	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (297, '	Universidad Adventista de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (298, '	Universidad Marítima de Chile	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (299, '	Universidad Pedro de Valdivia	');
INSERT INTO `mgg_instituciones` (`id`, `nombre`) VALUES (300, '	Universidad Tecnológica de Chile INACAP (UTC)	');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_provincias`
-- 

DROP TABLE IF EXISTS `mgg_provincias`;
CREATE TABLE IF NOT EXISTS `mgg_provincias` (
  `id` int(11) NOT NULL default '0',
  `relacion` int(11) default NULL,
  `nombre` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_provincias`
-- 

INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (1, 15, 'Arica');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (2, 1, 'Iquique');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (3, 15, 'Parinacota');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (4, 2, 'Antofagasta');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (5, 2, 'El Loa');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (6, 2, 'Tocopilla');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (7, 3, 'Copiapó');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (8, 3, 'Chañaral');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (9, 3, 'Huasco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (10, 4, 'Elqui');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (11, 4, 'Choapa');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (12, 4, 'Limarí');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (13, 5, 'Valparaíso');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (14, 5, 'Isla de Pascua');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (15, 5, 'Los Andes');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (16, 5, 'Petorca');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (17, 5, 'Quillota');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (18, 5, 'San Antonio');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (19, 5, 'San Felipe de Aconcagua');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (20, 6, 'Cachapoal');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (21, 6, 'Cardenal Caro');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (22, 6, 'Colchagua');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (23, 7, 'Talca');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (24, 7, 'Cauquenes');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (25, 7, 'Curicó');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (26, 7, 'Linares');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (27, 8, 'Concepción');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (28, 8, 'Arauco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (29, 8, 'Biobío');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (30, 8, 'Ñuble');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (31, 9, 'Cautín');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (32, 9, 'Malleco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (33, 10, 'Llanquihue');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (34, 10, 'Chiloé');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (35, 10, 'Osorno');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (36, 10, 'Palena');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (37, 14, 'Valdivia');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (38, 11, 'Coihaique');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (39, 11, 'Aisén');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (40, 11, 'Capitán Prat');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (41, 11, 'General Carrera');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (42, 12, 'Magallenes');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (43, 12, 'Antártica Chilena');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (44, 12, 'Tierra del Fuego');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (45, 12, 'Ultima Esperanza');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (46, 13, 'Santiago');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (47, 13, 'Cordillera');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (48, 13, 'Chacabuco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (49, 13, 'Maipo');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (50, 13, 'Melipilla');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (51, 13, 'Talagante');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (52, 14, 'Ranco');
INSERT INTO `mgg_provincias` (`id`, `relacion`, `nombre`) VALUES (53, 1, 'Del Tamarugal');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_provincias_backup`
-- 

DROP TABLE IF EXISTS `mgg_provincias_backup`;
CREATE TABLE IF NOT EXISTS `mgg_provincias_backup` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `relacion` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `mgg_provincias_backup`
-- 

INSERT INTO `mgg_provincias_backup` (`id`, `nombre`, `relacion`) VALUES (7, 'Iquique', 1);
INSERT INTO `mgg_provincias_backup` (`id`, `nombre`, `relacion`) VALUES (6, 'Parinacota', 1);
INSERT INTO `mgg_provincias_backup` (`id`, `nombre`, `relacion`) VALUES (5, 'Arica', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_regiones`
-- 

DROP TABLE IF EXISTS `mgg_regiones`;
CREATE TABLE IF NOT EXISTS `mgg_regiones` (
  `id` int(11) NOT NULL default '0',
  `nombre` text,
  `cd_reg_ncorto` text,
  `cd_reg_orden` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mgg_regiones`
-- 

INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (1, 'I Región de Tarapacá', 'Región I', 2);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (2, 'II Región de Antofagasta', 'Región II', 3);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (3, 'III Región de Atacama', 'Región III', 4);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (4, 'IV Región de Coquimbo', 'Región IV', 5);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (5, 'V Región de Valparaíso', 'Región V', 6);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (6, 'VI Región del Libertador General Bernardo O''higgins', 'Región VI', 7);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (7, 'VII Región del Maule', 'Región VII', 8);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (8, 'VIII Región del Biobío', 'Región VIII', 9);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (9, 'IX Región de la Araucanía', 'Región IX', 10);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (10, 'X Región de los Lagos', 'Región X', 12);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (11, 'XI Región Aysén del General Carlos Ibáñez del Campo', 'Región XI', 13);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (12, 'XII Región de Magallanes y de la Antártica Chilena', 'Región XII', 14);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (13, 'Región Metropolitana de Santiago', 'Región Metropolitana', 15);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (14, 'XIV Región de Los Rios', 'Región XIV', 11);
INSERT INTO `mgg_regiones` (`id`, `nombre`, `cd_reg_ncorto`, `cd_reg_orden`) VALUES (15, 'XV Región de Arica y Parinacota', 'Región XV', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mgg_regiones_backup`
-- 

DROP TABLE IF EXISTS `mgg_regiones_backup`;
CREATE TABLE IF NOT EXISTS `mgg_regiones_backup` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- Volcar la base de datos para la tabla `mgg_regiones_backup`
-- 

INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (14, 'Región de Los Ríos');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (13, 'Región Metropolitana');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (12, 'Región de Magallanes y la Antártica Chilena');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (11, 'Región de Aysén del General Carlos Ibáñez del Campo');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (10, 'Región de Los Lagos');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (9, 'Región de la Araucanía');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (8, 'Región del Bío-Bío');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (7, 'Región del Maule');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (6, 'Región del Libertador General Bernardo O Higgins');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (5, 'Región de Valparaiso');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (4, 'Región de Coquimbo');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (3, 'Región de Atacama');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (2, 'Región de Antofagasta');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (1, 'Región de Tarapacá');
INSERT INTO `mgg_regiones_backup` (`id`, `nombre`) VALUES (15, 'Región de Arica y Parinacota');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `regiones`
-- 

DROP TABLE IF EXISTS `regiones`;
CREATE TABLE IF NOT EXISTS `regiones` (
  `codigo` int(11) NOT NULL default '0',
  `nombre` char(255) default NULL,
  `orden` int(11) NOT NULL default '0',
  `activo` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `regiones`
-- 

INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (14, 'Región de Los Ríos', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (13, 'Región Metropolitana', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (12, 'Región de Magallanes y la Antártica Chilena', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (11, 'Región de Aysén del General Carlos Ibáñez del Campo', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (10, 'Región de Los Lagos', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (9, 'Región de la Araucanía', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (8, 'Región del Bío-Bío', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (7, 'Región del Maule', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (6, 'Región del Libertador General Bernardo O Higgins', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (5, 'Región de Valparaiso', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (4, 'Región de Coquimbo', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (3, 'Región de Atacama', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (2, 'Región de Antofagasta', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (1, 'Región de Tarapacá', 0, 1);
INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES (15, 'Región de Arica y Parinacota', 0, 1);
