USE PreguntadORT;
GO

-- Tabla Categorias
CREATE TABLE Categorias (
    IdCategoria INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL
);
GO

-- Tabla Dificultades
CREATE TABLE Dificultades (
    IdDificultad INT PRIMARY KEY IDENTITY(1,1),
    Nivel NVARCHAR(50) NOT NULL
);
GO

-- Tabla Preguntas
CREATE TABLE Preguntas (
    IdPregunta INT PRIMARY KEY IDENTITY(1,1),
    Texto NVARCHAR(MAX) NOT NULL,
    IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria),
    IdDificultad INT FOREIGN KEY REFERENCES Dificultades(IdDificultad)
);
GO

-- Tabla Respuestas
CREATE TABLE Respuestas (
    IdRespuesta INT PRIMARY KEY IDENTITY(1,1),
    Texto NVARCHAR(MAX) NOT NULL,
    EsCorrecta BIT NOT NULL,
    IdPregunta INT FOREIGN KEY REFERENCES Preguntas(IdPregunta)
);
GO

INSERT INTO Categorias (Nombre) 
VALUES 
    ('Geografia'),
    ('Historia'),
    ('Ciencia'),
    ('Entretenimiento'),
    ('Deportes');
GO

INSERT INTO Dificultades (Nivel)
VALUES
    ('Fácil'),
    ('Medio'),
    ('Difícil');
GO

--Geografia
--Facil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    (N'¿Cuál es la capital de Italia?', 1, 1),
    (N'¿En qué continente se encuentra Brasil?', 1, 1),
    (N'¿Cuál es el río más largo del mundo?', 1, 1),
    (N'¿Cuál es el desierto más grande del mundo?', 1, 1),
    (N'¿En qué país se encuentra la Torre Eiffel?', 1, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta)
VALUES
    (N'Roma', 1, 1), (N'Milán', 0, 1), (N'Venecia', 0, 1), (N'Nápoles', 0, 1),
    (N'América del Sur', 1, 2), (N'África', 0, 2), (N'Asia', 0, 2), (N'Europa', 0, 2),
    (N'Amazonas', 1, 3), (N'Nilo', 0, 3), (N'Yangtsé', 0, 3), (N'Misisipi', 0, 3),
    (N'Sahara', 1, 4), (N'Gobi', 0, 4), (N'Atacama', 0, 4), (N'Kalahari', 0, 4),
    (N'Francia', 1, 5), (N'Italia', 0, 5), (N'España', 0, 5), (N'Alemania', 0, 5);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Cuál es la capital de Australia?', 4, 2),
    ('¿Qué continente tiene más países?', 4, 2),
    ('¿Cuál es el río más largo del mundo?', 4, 2),
    ('¿Qué país tiene la mayor población del mundo?', 4, 2),
    ('¿En qué país se encuentra la Torre Eiffel?', 4, 2);
GO

INSERT INTO Respuestas (Texto, IdPregunta, EsCorrecta) 
VALUES 
    ('Canberra', 26, 1),
    ('África', 27, 1),
    ('Nilo', 28, 1),
    ('China', 29, 1),
    ('Francia', 30, 1);
GO
--Dificil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Cuál es el país más grande del mundo por superficie?', 2, 3),
    ('¿Qué ciudad es conocida como "La ciudad de los canales"?', 2, 3),
    ('¿Qué desierto es el más grande del mundo?', 2, 3),
    ('¿Qué río es el más largo del mundo?', 2, 3),
    ('¿Qué país tiene la mayor cantidad de islas en el mundo?', 2, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Rusia', 1, 71), ('Canadá', 0, 71), ('China', 0, 71), ('Estados Unidos', 0, 71),
    ('Venecia', 1, 72), ('Ámsterdam', 0, 72), ('Brujas', 0, 72), ('Bangkok', 0, 72),
    ('Antártida', 1, 73), ('Sahara', 0, 73), ('Gobi', 0, 73), ('Kalahari', 0, 73),
    ('Amazonas', 1, 74), ('Nilo', 0, 74), ('Yangtsé', 0, 74), ('Misisipi', 0, 74),
    ('Suecia', 1, 75), ('Noruega', 0, 75), ('Filipinas', 0, 75), ('Indonesia', 0, 75);
GO
--Historia
--Facil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    (N'¿Quién fue el primer presidente de los Estados Unidos?', 2, 1),
    (N'¿En qué año terminó la Segunda Guerra Mundial?', 2, 1),
    (N'¿Quién descubrió América?', 2, 1),
    (N'¿Qué imperio construyó el Coliseo?', 2, 1),
    (N'¿Quién fue el líder del Imperio Napoleónico?', 2, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta)
VALUES
    (N'George Washington', 1, 6), (N'Abraham Lincoln', 0, 6), (N'Thomas Jefferson', 0, 6), (N'John Adams', 0, 6),
    (N'1945', 1, 7), (N'1939', 0, 7), (N'1941', 0, 7), (N'1944', 0, 7),
    (N'Cristóbal Colón', 1, 8), (N'Amerigo Vespucci', 0, 8), (N'Fernando de Magallanes', 0, 8), (N'Hernán Cortés', 0, 8),
    (N'Imperio Romano', 1, 9), (N'Imperio Griego', 0, 9), (N'Imperio Bizantino', 0, 9), (N'Imperio Otomano', 0, 9),
    (N'Napoleón Bonaparte', 1, 10), (N'Luis XIV', 0, 10), (N'Carlos Magno', 0, 10), (N'Felipe II', 0, 10);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿En qué año comenzó la Segunda Guerra Mundial?', 3, 2),
    ('¿Quién fue el primer presidente de los Estados Unidos?', 3, 2),
    ('¿Qué imperio construyó la Muralla China?', 3, 2),
    ('¿Cuál fue la capital del Imperio Azteca?', 3, 2),
    ('¿En qué año cayó el Muro de Berlín?', 3, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('1939', 1, 76), ('1941', 0, 76), ('1937', 0, 76), ('1945', 0, 76),
    ('George Washington', 1, 77), ('Thomas Jefferson', 0, 77), ('John Adams', 0, 77), ('Benjamin Franklin', 0, 77),
    ('Dinastía Qin', 1, 78), ('Dinastía Han', 0, 78), ('Dinastía Ming', 0, 78), ('Dinastía Tang', 0, 78),
    ('Tenochtitlán', 1, 79), ('Cuzco', 0, 79), ('Teotihuacán', 0, 79), ('Chichén Itzá', 0, 79),
    ('1989', 1, 80), ('1990', 0, 80), ('1987', 0, 80), ('1991', 0, 80);
GO
--Dificil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Quién fue el último emperador romano de Occidente?', 3, 3),
    ('¿En qué año comenzó la Revolución Francesa?', 3, 3),
    ('¿Qué imperio conquistó a los aztecas?', 3, 3),
    ('¿Quién fue el líder del movimiento civil por los derechos civiles en los EE. UU. en la década de 1960?', 3, 3),
    ('¿En qué año cayó el Muro de Berlín?', 3, 3);
GO

INSERT INTO Respuestas (Texto, IdPregunta, EsCorrecta) 
VALUES 
    ('Rómulo Augústulo', 21, 1),
    ('1789', 22, 1),
    ('El Imperio Español', 23, 1),
    ('Martin Luther King Jr.', 24, 1),
    ('1989', 25, 1);
GO
--Ciencia
--Fácil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Cuál es el símbolo químico del oxígeno?', 2, 1),
    ('¿Cuántos planetas hay en el sistema solar?', 2, 1),
    ('¿De qué está hecha la luz blanca?', 2, 1),
    ('¿Qué es la fotosíntesis?', 2, 1),
    ('¿Qué gas constituye el 21% del aire que respiramos?', 2, 1);
GO

INSERT INTO Respuestas (Texto, IdPregunta, EsCorrecta) 
VALUES 
    ('O', 6, 1),
    ('8', 7, 1),
    ('Luz blanca está compuesta por todos los colores del espectro visible', 8, 1),
    ('La fotosíntesis es el proceso por el cual las plantas producen su alimento', 9, 1),
    ('Oxígeno', 10, 1);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Qué planeta es conocido como el "planeta rojo"?', 2, 2),
    ('¿Cuál es el órgano más grande del cuerpo humano?', 2, 2),
    ('¿Qué científico desarrolló la teoría de la relatividad?', 2, 2),
    ('¿En qué parte del cuerpo humano se encuentra la glándula tiroides?', 2, 2),
    ('¿Cuál es el elemento más abundante en el universo?', 2, 2);
GO

INSERT INTO Respuestas (Texto, IdPregunta, EsCorrecta) 
VALUES 
    ('Marte', 11, 1),
    ('La piel', 12, 1),
    ('Albert Einstein', 13, 1),
    ('En el cuello', 14, 1),
    ('Hidrógeno', 15, 1);
GO
--Dificil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Cuál es la ley de la termodinámica que establece que la entropía de un sistema aislado tiende a aumentar con el tiempo?', 2, 3),
    ('¿Quién propuso la teoría de la evolución por selección natural?', 2, 3),
    ('¿Qué es la energía oscura?', 2, 3),
    ('¿En qué año se descubrió el ADN?', 2, 3),
    ('¿Qué partículas subatómicas fueron descubiertas por J.J. Thomson?', 2, 3);
GO

INSERT INTO Respuestas (Texto, IdPregunta, EsCorrecta) 
VALUES 
    ('Segunda ley de la termodinámica', 16, 1),
    ('Charles Darwin', 17, 1),
    ('Es una forma de energía invisible que acelera la expansión del universo', 18, 1),
    ('1953', 19, 1),
    ('Electrones', 20, 1);
GO
--Entretenimiento
--Facil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Quién interpretó a Jack Dawson en la película Titanic?', 1, 1),
    ('¿Quién es conocido como el "Rey del Pop"?', 1, 1),
    ('¿En qué película aparece el personaje de "Forrest Gump"?', 1, 1),
    ('¿Qué banda cantó la canción "Bohemian Rhapsody"?', 1, 1),
    ('¿Cuál es el nombre del mago protagonista de la saga de libros y películas de "Harry Potter"?', 1, 1);
GO

INSERT INTO Respuestas (Texto, IdPregunta, EsCorrecta) 
VALUES 
    ('Leonardo DiCaprio', 1, 1),
    ('Michael Jackson', 2, 1),
    ('Forrest Gump', 3, 1),
    ('Queen', 4, 1),
    ('Harry Potter', 5, 1);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Qué banda británica lanzó el álbum "Abbey Road"?', 4, 2),
    ('¿Quién es el creador de la serie animada "Los Simpson"?', 4, 2),
    ('¿En qué año se estrenó la primera película de "Star Wars"?', 4, 2),
    ('¿Qué actor interpretó a Jack Sparrow en "Piratas del Caribe"?', 4, 2),
    ('¿En qué ciudad se desarrolla la serie "Stranger Things"?', 4, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('The Beatles', 1, 46), ('The Rolling Stones', 0, 46), ('Queen', 0, 46), ('Pink Floyd', 0, 46),
    ('Matt Groening', 1, 47), ('Seth MacFarlane', 0, 47), ('Trey Parker', 0, 47), ('Mike Judge', 0, 47),
    ('1977', 1, 48), ('1980', 0, 48), ('1982', 0, 48), ('1990', 0, 48),
    ('Johnny Depp', 1, 49), ('Orlando Bloom', 0, 49), ('Brad Pitt', 0, 49), ('Keanu Reeves', 0, 49),
    ('Hawkins', 1, 50), ('Los Angeles', 0, 50), ('Chicago', 0, 50), ('New York', 0, 50);
GO
--Dificil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Qué director es conocido por sus películas de suspenso como "Psicosis" y "Vértigo"?', 4, 3),
    ('¿En qué película aparece el personaje "Forrest Gump"?', 4, 3),
    ('¿Qué actor interpretó al Joker en "The Dark Knight"?', 4, 3),
    ('¿Quién ganó el Oscar a Mejor Director por la película "La La Land"?', 4, 3),
    ('¿Cuál es el nombre del personaje principal de la película "Matrix"?', 4, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Alfred Hitchcock', 1, 51), ('Steven Spielberg', 0, 51), ('Martin Scorsese', 0, 51), ('Quentin Tarantino', 0, 51),
    ('Forrest Gump', 1, 52), ('El Lobo de Wall Street', 0, 52), ('Inception', 0, 52), ('El Gran Gatsby', 0, 52),
    ('Heath Ledger', 1, 53), ('Jared Leto', 0, 53), ('Jack Nicholson', 0, 53), ('Joaquin Phoenix', 0, 53),
    ('Damien Chazelle', 1, 54), ('Christopher Nolan', 0, 54), ('Quentin Tarantino', 0, 54), ('Martin Scorsese', 0, 54),
    ('Neo', 1, 55), ('Morpheus', 0, 55), ('Trinity', 0, 55), ('Agent Smith', 0, 55);
GO
--Deporte
--Facil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Cuántos jugadores hay en un equipo de fútbol?', 5, 1),
    ('¿En qué deporte se utiliza una raqueta y una pelota?', 5, 1),
    ('¿Quién es conocido como "El Rey del Fútbol"?', 5, 1),
    ('¿Cuál es el evento deportivo más visto del mundo?', 5, 1),
    ('¿Qué deporte se practica en Wimbledon?', 5, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('11', 1, 56), ('10', 0, 56), ('12', 0, 56), ('9', 0, 56),
    ('Tenis', 1, 57), ('Bádminton', 0, 57), ('Squash', 0, 57), ('Ping Pong', 0, 57),
    ('Pelé', 1, 58), ('Maradona', 0, 58), ('Messi', 0, 58), ('Cristiano Ronaldo', 0, 58),
    ('La Copa del Mundo', 1, 59), ('Los Juegos Olímpicos', 0, 59), ('La Fórmula 1', 0, 59), ('El Super Bowl', 0, 59),
    ('Tenis', 1, 60), ('Golf', 0, 60), ('Críquet', 0, 60), ('Hockey', 0, 60);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿En qué país se originó el fútbol?', 5, 2),
    ('¿Cuántos sets necesita ganar un jugador para ganar un partido de tenis?', 5, 2),
    ('¿Qué jugador de baloncesto tiene el récord de más puntos en la NBA?', 5, 2),
    ('¿Cuál es el trofeo del campeonato de la NFL?', 5, 2),
    ('¿Qué país ganó la primera Copa Mundial de Fútbol en 1930?', 5, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Inglaterra', 1, 61), ('Brasil', 0, 61), ('España', 0, 61), ('Italia', 0, 61),
    ('3', 1, 62), ('2', 0, 62), ('4', 0, 62), ('5', 0, 62),
    ('Kareem Abdul-Jabbar', 1, 63), ('Michael Jordan', 0, 63), ('LeBron James', 0, 63), ('Wilt Chamberlain', 0, 63),
    ('Vince Lombardi Trophy', 1, 64), ('Stanley Cup', 0, 64), ('FIFA World Cup', 0, 64), ('Heisman Trophy', 0, 64),
    ('Uruguay', 1, 65), ('Argentina', 0, 65), ('Brasil', 0, 65), ('Italia', 0, 65);
GO
--Dificil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('¿Quién tiene el récord de más medallas olímpicas?', 5, 3),
    ('¿En qué año se celebraron los primeros Juegos Olímpicos modernos?', 5, 3),
    ('¿Cuál es el país con más medallas olímpicas en la historia?', 5, 3),
    ('¿Qué deporte se juega con una pelota y un bate en forma de diamante?', 5, 3),
    ('¿Cuál es el país con más victorias en la Copa Davis?', 5, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Michael Phelps', 1, 66), ('Usain Bolt', 0, 66), ('Carl Lewis', 0, 66), ('Simone Biles', 0, 66),
    ('1896', 1, 67), ('1900', 0, 67), ('1912', 0, 67), ('1888', 0, 67),
    ('Estados Unidos', 1, 68), ('China', 0, 68), ('Rusia', 0, 68), ('Alemania', 0, 68),
    ('Béisbol', 1, 69), ('Críquet', 0, 69), ('Hockey', 0, 69), ('Softbol', 0, 69),
    ('Estados Unidos', 1, 70), ('España', 0, 70), ('Australia', 0, 70), ('Francia', 0, 70);
GO



