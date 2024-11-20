USE PreguntadORT;
GO

-- Tabla Categoria
CREATE TABLE Categorias (
    IdCategoria INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL
);
GO

-- Tabla Dificultad
CREATE TABLE Dificultades (
    IdDificultad INT PRIMARY KEY IDENTITY(1,1),
    Nivel NVARCHAR(50) NOT NULL
);
GO

-- Tabla Pregunta
CREATE TABLE Preguntas (
    IdPregunta INT PRIMARY KEY IDENTITY(1,1),
    Texto NVARCHAR(MAX) NOT NULL,
    IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria),
    IdDificultad INT FOREIGN KEY REFERENCES Dificultad(IdDificultad)
);
GO

-- Tabla Respuesta
CREATE TABLE Respuestas (
    IdRespuesta INT PRIMARY KEY IDENTITY(1,1),
    Texto NVARCHAR(MAX) NOT NULL,
    EsCorrecta BIT NOT NULL,
    IdPregunta INT FOREIGN KEY REFERENCES Pregunta(IdPregunta)
);
GO

INSERT INTO Categorias (Nombre) 
VALUES 
    ('Geograf�a'),
    ('Historia'),
    ('Ciencia'),
    ('Entretenimiento'),
    ('Deportes');
GO

--Geograf�a
--F�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad)
    ('�Cu�l es la capital de Italia?', 1, 1),
    ('�En qu� continente se encuentra Brasil?', 1, 1),
    ('�Cu�l es el r�o m�s largo del mundo?', 1, 1),
    ('�Cu�l es el desierto m�s grande del mundo?', 1, 1),
    ('�En qu� pa�s se encuentra la Torre Eiffel?', 1, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Roma', 1, 1), ('Mil�n', 0, 1), ('Venecia', 0, 1), ('N�poles', 0, 1),
    ('Am�rica del Sur', 1, 2), ('�frica', 0, 2), ('Asia', 0, 2), ('Europa', 0, 2),
    ('Amazonas', 1, 3), ('Nilo', 0, 3), ('Yangts�', 0, 3), ('Misisipi', 0, 3),
    ('Sahara', 1, 4), ('Gobi', 0, 4), ('Atacama', 0, 4), ('Kalahari', 0, 4),
    ('Francia', 1, 5), ('Italia', 0, 5), ('Espa�a', 0, 5), ('Alemania', 0, 5);
GO

--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qu� pa�s tiene m�s costas en el mundo?', 1, 2),
    ('�D�nde se encuentra el Monte Everest?', 1, 2),
    ('�Cu�l es el pa�s m�s peque�o del mundo?', 1, 2),
    ('�Qu� mar separa Europa de �frica?', 1, 2),
    ('�Cu�l es la ciudad m�s poblada del mundo?', 1, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Canad�', 1, 6), ('Rusia', 0, 6), ('Australia', 0, 6), ('Indonesia', 0, 6),
    ('En la frontera entre Nepal y China', 1, 7), ('India', 0, 7), ('Pakist�n', 0, 7), ('Afganist�n', 0, 7),
    ('Ciudad del Vaticano', 1, 8), ('M�naco', 0, 8), ('San Marino', 0, 8), ('Liechtenstein', 0, 8),
    ('Mar Mediterr�neo', 1, 9), ('Mar Rojo', 0, 9), ('Mar Negro', 0, 9), ('Mar Caspio', 0, 9),
    ('Tokio', 1, 10), ('Delhi', 0, 10), ('Shanghai', 0, 10), ('S�o Paulo', 0, 10);
GO
--Dif�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Cu�l es el pa�s con m�s islas en el mundo?', 1, 3),
    ('�D�nde est� el desierto de Atacama?', 1, 3),
    ('�Qu� pa�s tiene la mayor poblaci�n musulmana?', 1, 3),
    ('�Cu�l es la capital de Mongolia?', 1, 3),
    ('�Qu� pa�s tiene la selva m�s grande del mundo?', 1, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Suecia', 1, 11), ('Noruega', 0, 11), ('Filipinas', 0, 11), ('Grecia', 0, 11),
    ('Chile', 1, 12), ('Per�', 0, 12), ('Argentina', 0, 12), ('Bolivia', 0, 12),
    ('Indonesia', 1, 13), ('Pakist�n', 0, 13), ('Banglad�s', 0, 13), ('Turqu�a', 0, 13),
    ('Ul�n Bator', 1, 14), ('Biskek', 0, 14), ('Astana', 0, 14), ('Dushamb�', 0, 14),
    ('Brasil', 1, 15), ('Congo', 0, 15), ('Indonesia', 0, 15), ('Madagascar', 0, 15);
GO
--Historia
--F�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qui�n fue el primer presidente de los Estados Unidos?', 2, 1),
    ('�En qu� a�o termin� la Segunda Guerra Mundial?', 2, 1),
    ('�Qui�n descubri� Am�rica?', 2, 1),
    ('�Qu� imperio construy� el Coliseo?', 2, 1),
    ('�Qui�n fue el l�der del Imperio Napole�nico?', 2, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('George Washington', 1, 16), ('Abraham Lincoln', 0, 16), ('Thomas Jefferson', 0, 16), ('John Adams', 0, 16),
    ('1945', 1, 17), ('1939', 0, 17), ('1941', 0, 17), ('1944', 0, 17),
    ('Crist�bal Col�n', 1, 18), ('Amerigo Vespucci', 0, 18), ('Fernando de Magallanes', 0, 18), ('Hern�n Cort�s', 0, 18),
    ('Imperio Romano', 1, 19), ('Imperio Griego', 0, 19), ('Imperio Bizantino', 0, 19), ('Imperio Otomano', 0, 19),
    ('Napole�n Bonaparte', 1, 20), ('Luis XIV', 0, 20), ('Carlos Magno', 0, 20), ('Felipe II', 0, 20);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�En qu� a�o comenz� la Revoluci�n Francesa?', 2, 2),
    ('�Qu� civilizaci�n construy� las pir�mides de Giza?', 2, 2),
    ('�Qui�n fue el primer emperador de Roma?', 2, 2),
    ('�En qu� a�o cay� el Imperio Romano de Occidente?', 2, 2),
    ('�Qu� pa�s lider� la Revoluci�n Industrial?', 2, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('1789', 1, 21), ('1776', 0, 21), ('1799', 0, 21), ('1804', 0, 21),
    ('Egipto', 1, 22), ('Mesopotamia', 0, 22), ('Asiria', 0, 22), ('Babilonia', 0, 22),
    ('Augusto', 1, 23), ('Julio C�sar', 0, 23), ('Tiberio', 0, 23), ('Ner�n', 0, 23),
    ('476 d.C.', 1, 24), ('410 d.C.', 0, 24), ('395 d.C.', 0, 24), ('1453 d.C.', 0, 24),
    ('Reino Unido', 1, 25), ('Alemania', 0, 25), ('Francia', 0, 25), ('Estados Unidos', 0, 25);
GO
--Dif�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qui�n fue el primer fara�n de Egipto?', 2, 3),
    ('�Cu�l es el documento m�s antiguo conocido que tiene el c�digo de leyes escrito?', 2, 3),
    ('�Qu� guerra se luch� entre 1337 y 1453?', 2, 3),
    ('�Qui�n fue el fundador del Imperio Mongol?', 2, 3),
    ('�En qu� a�o se firm� la Carta Magna?', 2, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Narmer', 1, 26), ('Tutankam�n', 0, 26), ('Rams�s II', 0, 26), ('Cleopatra', 0, 26),
    ('C�digo de Hammurabi', 1, 27), ('Edicto de Asoka', 0, 27), ('Las Doce Tablas', 0, 27), ('Ley de las XII Tablas', 0, 27),
    ('La Guerra de los Cien A�os', 1, 28), ('La Guerra de las Rosas', 0, 28), ('La Guerra de Sucesi�n Espa�ola', 0, 28), ('La Guerra de los Treinta A�os', 0, 28),
    ('Gengis Kan', 1, 29), ('Kublai Kan', 0, 29), ('Tamerl�n', 0, 29), ('Ogodei Kan', 0, 29),
    ('1215', 1, 30), ('1066', 0, 30), ('1492', 0, 30), ('1689', 0, 30);
GO
--Ciencia
--F�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Cu�l es el planeta m�s cercano al Sol?', 3, 1),
    ('�Qu� gas respiramos?', 3, 1),
    ('�Qu� animal es conocido como el "rey de la selva"?', 3, 1),
    ('�Cu�ntos sentidos tiene el ser humano?', 3, 1),
    ('�Qu� tipo de animal es una ballena?', 3, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, PreguntaId) 
VALUES 
    ('Mercurio', 1, 31), ('Venus', 0, 31), ('Tierra', 0, 31), ('Marte', 0, 31),
    ('Ox�geno', 1, 32), ('Nitr�geno', 0, 32), ('Hidr�geno', 0, 32), ('Di�xido de carbono', 0, 32),
    ('Le�n', 1, 33), ('Tigre', 0, 33), ('Elefante', 0, 33), ('Jirafa', 0, 33),
    ('Cinco', 1, 34), ('Cuatro', 0, 34), ('Seis', 0, 34), ('Siete', 0, 34),
    ('Mam�fero', 1, 35), ('Pez', 0, 35), ('Anfibio', 0, 35), ('Reptil', 0, 35);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qu� es el H2O?', 3, 2),
    ('�Qui�n formul� la teor�a de la relatividad?', 3, 2),
    ('�Cu�l es el �rgano m�s grande del cuerpo humano?', 3, 2),
    ('�Qu� cient�fico descubri� la penicilina?', 3, 2),
    ('�Cu�l es el elemento qu�mico m�s abundante en la atm�sfera terrestre?', 3, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Agua', 1, 36), ('Di�xido de carbono', 0, 36), ('Ox�geno', 0, 36), ('Hidr�geno', 0, 36),
    ('Albert Einstein', 1, 37), ('Isaac Newton', 0, 37), ('Galileo Galilei', 0, 37), ('Nikola Tesla', 0, 37),
    ('La piel', 1, 38), ('El coraz�n', 0, 38), ('El h�gado', 0, 38), ('Los pulmones', 0, 38),
    ('Alexander Fleming', 1, 39), ('Louis Pasteur', 0, 39), ('Marie Curie', 0, 39), ('Gregor Mendel', 0, 39),
    ('Nitr�geno', 1, 40), ('Ox�geno', 0, 40), ('Arg�n', 0, 40), ('Di�xido de carbono', 0, 40);
GO
--Dif�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Cu�l es la part�cula subat�mica con carga negativa?', 3, 3),
    ('�Qu� es el bos�n de Higgs?', 3, 3),
    ('�Qu� es un agujero negro?', 3, 3),
    ('�Qui�n desarroll� la teor�a de la evoluci�n por selecci�n natural?', 3, 3),
    ('�Qu� es el ADN?', 3, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Electr�n', 1, 41), ('Prot�n', 0, 41), ('Neutr�n', 0, 41), ('Quark', 0, 41),
    ('Una part�cula fundamental que da masa a otras part�culas', 1, 42), ('Una estrella colapsada', 0, 42), ('Una forma de energ�a', 0, 42), ('Un tipo de materia oscura', 0, 42),
    ('Una regi�n del espacio donde la gravedad es tan fuerte que nada puede escapar', 1, 43), ('Una galaxia', 0, 43), ('Un planeta', 0, 43), ('Una estrella', 0, 43),
    ('Charles Darwin', 1, 44), ('Gregor Mendel', 0, 44), ('Louis Pasteur', 0, 44), ('Alfred Wallace', 0, 44),
    ('�cido desoxirribonucleico', 1, 45), ('Prote�na', 0, 45), ('Enzima', 0, 45), ('L�pido', 0, 45);
GO
--Entretenimiento
--F�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Cu�l es el nombre del rat�n m�s famoso de Disney?', 4, 1),
    ('�Qu� superh�roe es conocido como el Hombre de Acero?', 4, 1),
    ('�En qu� pel�cula animada aparece el personaje Simba?', 4, 1),
    ('�Qui�n es el director de la pel�cula "Titanic"?', 4, 1),
    ('�Qu� serie de televisi�n popular tiene a un grupo de amigos viviendo en Nueva York?', 4, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Mickey Mouse', 1, 41), ('Donald Duck', 0, 41), ('Goofy', 0, 41), ('Pluto', 0, 41),
    ('Superman', 1, 42), ('Batman', 0, 42), ('Spiderman', 0, 42), ('Hulk', 0, 42),
    ('El Rey Le�n', 1, 43), ('Aladd�n', 0, 43), ('La Sirenita', 0, 43), ('Blancanieves', 0, 43),
    ('James Cameron', 1, 44), ('Steven Spielberg', 0, 44), ('Christopher Nolan', 0, 44), ('Quentin Tarantino', 0, 44),
    ('Friends', 1, 45), ('The Office', 0, 45), ('Seinfeld', 0, 45), ('How I Met Your Mother', 0, 45);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qu� banda brit�nica lanz� el �lbum "Abbey Road"?', 4, 2),
    ('�Qui�n es el creador de la serie animada "Los Simpson"?', 4, 2),
    ('�En qu� a�o se estren� la primera pel�cula de "Star Wars"?', 4, 2),
    ('�Qu� actor interpret� a Jack Sparrow en "Piratas del Caribe"?', 4, 2),
    ('�Cu�l es la pel�cula animada m�s taquillera de todos los tiempos?', 4, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('The Beatles', 1, 46), ('The Rolling Stones', 0, 46), ('Pink Floyd', 0, 46), ('Led Zeppelin', 0, 46),
    ('Matt Groening', 1, 47), ('Seth MacFarlane', 0, 47), ('Trey Parker', 0, 47), ('Mike Judge', 0, 47),
    ('1977', 1, 48), ('1980', 0, 48), ('1983', 0, 48), ('1974', 0, 48),
    ('Johnny Depp', 1, 49), ('Orlando Bloom', 0, 49), ('Brad Pitt', 0, 49), ('Tom Cruise', 0, 49),
    ('Frozen', 1, 50), ('Toy Story 3', 0, 50), ('El Rey Le�n', 0, 50), ('Shrek 2', 0, 50);
GO
--Dif�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qui�n escribi� la novela "Cien a�os de soledad"?', 4, 3),
    ('�Qu� pel�cula gan� el primer premio Oscar a Mejor Pel�cula?', 4, 3),
    ('�En qu� a�o se lanz� el videojuego "The Legend of Zelda"?', 4, 3),
    ('�Qui�n es el creador de "Harry Potter"?', 4, 3),
    ('�Qu� cantante es conocido como "El Rey del Pop"?', 4, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Gabriel Garc�a M�rquez', 1, 51), ('Mario Vargas Llosa', 0, 51), ('Isabel Allende', 0, 51), ('Julio Cort�zar', 0, 51),
    ('Wings', 1, 52), ('Gone with the Wind', 0, 52), ('The Jazz Singer', 0, 52), ('All Quiet on the Western Front', 0, 52),
    ('1986', 1, 53), ('1985', 0, 53), ('1984', 0, 53), ('1987', 0, 53),
    ('J.K. Rowling', 1, 54), ('J.R.R. Tolkien', 0, 54), ('George R.R. Martin', 0, 54), ('Stephen King', 0, 54),
    ('Michael Jackson', 1, 55), ('Elvis Presley', 0, 55), ('Prince', 0, 55), ('David Bowie', 0, 55);
GO
--Deporte
--F�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qu� pa�s gan� la Copa Mundial de la FIFA 2018?', 5, 1),
    ('�Qu� deporte se practica en Wimbledon?', 5, 1),
    ('�Cu�ntos jugadores tiene un equipo de f�tbol en el campo?', 5, 1),
    ('�Qu� atleta es conocido como "El Rayo"?', 5, 1),
    ('�Qu� deporte se juega con una pelota ovalada y postes en forma de "H"?', 5, 1);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Francia', 1, 56), ('Croacia', 0, 56), ('Alemania', 0, 56), ('Brasil', 0, 56),
    ('Tenis', 1, 57), ('Golf', 0, 57), ('Cr�quet', 0, 57), ('F�tbol', 0, 57),
    ('11', 1, 58), ('10', 0, 58), ('12', 0, 58), ('9', 0, 58),
    ('Usain Bolt', 1, 59), ('Michael Phelps', 0, 59), ('Cristiano Ronaldo', 0, 59), ('LeBron James', 0, 59),
    ('Rugby', 1, 60), ('F�tbol americano', 0, 60), ('Baloncesto', 0, 60), ('Hockey', 0, 60);
GO
--Medio
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qui�n tiene el r�cord de m�s goles en una Copa Mundial de la FIFA?', 5, 2),
    ('�En qu� ciudad se celebraron los Juegos Ol�mpicos de 2008?', 5, 2),
    ('�Cu�l es el equipo de la NBA con m�s campeonatos ganados?', 5, 2),
    ('�Qu� deporte se juega en el "Super Bowl"?', 5, 2),
    ('�En qu� pa�s se origin� el judo?', 5, 2);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Miroslav Klose', 1, 61), ('Ronaldo', 0, 61), ('Pel�', 0, 61), ('Gerd M�ller', 0, 61),
    ('Pek�n', 1, 62), ('Londres', 0, 62), ('Atenas', 0, 62), ('S�dney', 0, 62),
    ('Los Angeles Lakers', 1, 63), ('Boston Celtics', 0, 63), ('Chicago Bulls', 0, 63), ('Golden State Warriors', 0, 63),
    ('F�tbol americano', 1, 64), ('Baloncesto', 0, 64), ('B�isbol', 0, 64), ('Hockey', 0, 64),
    ('Jap�n', 1, 65), ('Corea del Sur', 0, 65), ('China', 0, 65), ('Rusia', 0, 65);
GO
--Dif�cil
INSERT INTO Preguntas (Texto, IdCategoria, IdDificultad) 
VALUES 
    ('�Qui�n es el m�ximo goleador en la historia de la Champions League?', 5, 3),
    ('�Qu� equipo de b�isbol tiene m�s t�tulos de la Serie Mundial?', 5, 3),
    ('�Qu� pa�s ha ganado m�s medallas en los Juegos Ol�mpicos de Verano?', 5, 3),
    ('�Cu�l es el pa�s con m�s victorias en el Tour de Francia?', 5, 3),
    ('�En qu� a�o gan� Rafael Nadal su primer t�tulo de Roland Garros?', 5, 3);
GO

INSERT INTO Respuestas (Texto, EsCorrecta, IdPregunta) 
VALUES 
    ('Cristiano Ronaldo', 1, 66), ('Lionel Messi', 0, 66), ('Ra�l', 0, 66), ('Robert Lewandowski', 0, 66),
    ('New York Yankees', 1, 67), ('Los Angeles Dodgers', 0, 67), ('San Francisco Giants', 0, 67), ('St. Louis Cardinals', 0, 67),
    ('Estados Unidos', 1, 68), ('China', 0, 68), ('Rusia', 0, 68), ('Reino Unido', 0, 68),
    ('Francia', 1, 69), ('Espa�a', 0, 69), ('Italia', 0, 69), ('B�lgica', 0, 69),
    ('2005', 1, 70), ('2004', 0, 70), ('2006', 0, 70), ('2003', 0, 70);
GO

INSERT INTO Dificultades (Nivel)
VALUES
    ('Fácil'),
    ('Medio'),
    ('Difícil');
GO

