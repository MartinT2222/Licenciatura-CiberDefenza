```sql
-- Tabla de Artistas
CREATE TABLE Artistas (
    ArtistaID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Pais VARCHAR(50),
    FechaNacimiento DATE
);

-- Tabla de Álbumes
CREATE TABLE Albumes (
    AlbumID INT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    AnioLanzamiento INT,
    ArtistaID INT,
    FOREIGN KEY (ArtistaID) REFERENCES Artistas(ArtistaID)
);

-- Tabla de Canciones
CREATE TABLE Canciones (
    CancionID INT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Duracion_segundos INT,
    Genero VARCHAR(50),
    AlbumID INT,
    FOREIGN KEY (AlbumID) REFERENCES Albumes(AlbumID)
);

-- Tabla de Ventas
CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY,
    FechaVenta DATE NOT NULL,
    AlbumID INT,
    Cantidad INT NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (AlbumID) REFERENCES Albumes(AlbumID)
);

-- Tabla de Premios
CREATE TABLE Premios (
    PremioID INT PRIMARY KEY,
    NombrePremio VARCHAR(100) NOT NULL,
    AnioEntrega INT,
    ArtistaID INT,
    FOREIGN KEY (ArtistaID) REFERENCES Artistas(ArtistaID)
);

-- Tabla de Fans Destacados
CREATE TABLE FansDestacados (
    FanID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Pais VARCHAR(50)
);

INSERT INTO Artistas (ArtistaID, Nombre, Pais, FechaNacimiento) VALUES
(1, 'Queen', 'Reino Unido', NULL), -- Es una banda, no tiene fecha de nacimiento
(2, 'Michael Jackson', 'Estados Unidos', '1958-08-29'),
(3, 'Gustavo Cerati', 'Argentina', '1959-08-11'),
(4, 'The Beatles', 'Reino Unido', NULL),
(5, 'Adele', 'Reino Unido', '1988-05-05'),
(6, 'Dua Lipa', 'Reino Unido', '1995-08-22'),
(7, 'Taylor Swift', 'Estados Unidos', '1989-12-13'),
(8, 'Bad Bunny', 'Puerto Rico', '1994-03-10'),
(9, 'Beyoncé', 'Estados Unidos', '1981-09-04'),
(10, 'Coldplay', 'Reino Unido', NULL),
(11, 'Lana Del Rey', 'Estados Unidos', '1985-06-21'),
(12, 'Rosalía', 'España', '1992-09-25'),
(13, 'Ed Sheeran', 'Reino Unido', '1991-02-17'),
(14, 'Shakira', 'Colombia', '1977-02-02'),
(15, 'Eminem', 'Estados Unidos', '1972-10-17'),
(16, 'Rihanna', 'Barbados', '1988-02-20'),
(17, 'Drake', 'Canadá', '1986-10-24'),
(18, 'Harry Styles', 'Reino Unido', '1994-02-01'),
(19, 'SZA', 'Estados Unidos', '1989-11-08'),
(20, 'Fito Páez', 'Argentina', '1963-03-13'),
(21, 'Soda Stereo', 'Argentina', NULL);

INSERT INTO Albumes (AlbumID, Titulo, AnioLanzamiento, ArtistaID) VALUES
(101, 'A Night at the Opera', 1975, 1),
(102, 'Thriller', 1982, 2),
(103, 'Dynamo', 1988, 3),
(104, 'Bad', 1987, 2),
(105, 'Abbey Road', 1969, 4),
(106, '21', 2011, 5),
(107, 'Future Nostalgia', 2020, 6),
(108, '1989 (Taylor''s Version)', 2023, 7),
(109, 'Un Verano Sin Ti', 2022, 8),
(110, 'A Head Full of Dreams', 2015, 10),
(111, 'Lemonade', 2016, 9),
(112, 'Norman F***ing Rockwell!', 2019, 11),
(113, 'Motomami', 2022, 12),
(114, 'Thriller 25', 2008, 2),
(115, '÷ (Divide)', 2017, 13),
(116, 'Fijación Oral Vol. 1', 2005, 14),
(117, 'The Eminem Show', 2002, 15),
(118, 'Anti', 2016, 16),
(119, 'Scorpion', 2018, 17),
(120, 'Harry''s House', 2022, 18),
(121, 'SOS', 2022, 19),
(122, 'El Amor Después del Amor', 1992, 20),
(123, 'Canción Animal', 1990, 21),
(124, 'Thriller 40', 2022, 2);

INSERT INTO Canciones (CancionID, Titulo, Duracion_segundos, Genero, AlbumID) VALUES
(1001, 'Bohemian Rhapsody', 355, 'Rock', 101),
(1002, 'Thriller', 357, 'Pop', 102),
(1003, 'Beat It', 258, 'Pop-Rock', 102),
(1004, 'De Musica Ligera', 221, 'Rock Latino', 103),
(1005, 'Bad', 246, 'Pop', 104),
(1006, 'Come Together', 259, 'Rock', 105),
(1007, 'Hello', 295, 'Pop', 106),
(1008, 'New Rules', 212, 'Pop', 107),
(1009, 'Cruel Summer', 178, 'Synth-Pop', 108),
(1010, 'Tití Me Preguntó', 243, 'Reggaeton', 109),
(1011, 'Don''t Stop Me Now', 209, 'Rock', 101),
(1012, 'Billie Jean', 294, 'Pop', 102),
(1013, 'Unisono', 320, 'Rock Latino', 103),
(1014, 'Yellow Submarine', 158, 'Rock', 105),
(1015, 'Rolling in the Deep', 228, 'Soul', 106),
(1016, 'Shape of You', 233, 'Pop', 115),
(1017, 'Waka Waka', 202, 'Pop Latino', 116),
(1018, 'Lose Yourself', 326, 'Hip-Hop', 117),
(1019, 'Work', 220, 'Dancehall', 118),
(1020, 'God''s Plan', 225, 'Hip-Hop', 119),
(1021, 'As It Was', 167, 'Pop', 120),
(1022, 'Kill Bill', 234, 'R&B', 121),
(1023, 'Mariposa Tecknicolor', 188, 'Rock Latino', 122),
(1024, 'Dejaré la Ciudad', 167, 'Rock Latino', 103),
(1025, 'The Way You Make Me Feel', 298, 'Pop', 104),
(1026, 'Something', 182, 'Rock', 105),
(1027, 'Set Fire to the Rain', 241, 'Pop', 106),
(1028, 'Levitating', 203, 'Pop', 107),
(1029, 'Shake It Off', 219, 'Pop', 108),
(1030, 'Moscow Mule', 240, 'Reggaeton', 109),
(1031, 'Hymn for the Weekend', 258, 'Pop', 110),
(1032, 'Freedom', 289, 'R&B', 111),
(1033, 'Venice Bitch', 576, 'Pop Psicodélico', 112),
(1034, 'Saoko', 154, 'Experimental', 113),
(1035, 'Billie Jean (demo)', 320, 'Pop', 114),
(1036, 'Castle on the Hill', 261, 'Folk Pop', 115),
(1037, 'Hips Don''t Lie', 218, 'Pop Latino', 116),
(1038, 'Without Me', 290, 'Hip-Hop', 117),
(1039, 'Kiss It Better', 293, 'R&B', 118),
(1040, 'In My Feelings', 217, 'Hip-Hop', 119),
(1041, 'Late Night Talking', 177, 'Pop', 120),
(1042, 'The Weekend', 265, 'R&B', 121),
(1043, 'A Rodar Mi Vida', 252, 'Rock Latino', 122),
(1044, 'En el Séptimo Día', 266, 'Rock Latino', 123),
(1045, 'Human Nature', 246, 'R&B', 102),
(1046, 'Chantaje', 201, 'Reggaeton', 116),
(1047, 'The Next Episode', 260, 'Hip-Hop', 117),
(1048, 'Formation', 226, 'Pop', 111),
(1049, 'Happier Than Ever', 270, 'Indie', 112);

INSERT INTO Ventas (VentaID, FechaVenta, AlbumID, Cantidad, Precio) VALUES
(501, '2025-05-10', 102, 1, 12.99),
(502, '2025-05-12', 101, 2, 15.50),
(503, '2025-05-15', 102, 1, 12.99),
(504, '2025-05-16', 104, 1, 11.99),
(505, '2025-05-17', 106, 5, 9.99),
(506, '2025-05-18', 109, 10, 14.50),
(507, '2025-05-19', 108, 3, 16.00),
(508, '2025-05-20', 105, 1, 13.99),
(509, '2025-05-21', 107, 2, 11.50),
(510, '2025-05-22', 102, 3, 12.99),
(511, '2025-05-23', 108, 2, 16.00),
(512, '2025-05-24', 111, 4, 14.99),
(513, '2025-05-25', 113, 1, 13.50),
(514, '2025-05-26', 115, 6, 10.99),
(515, '2025-05-27', 118, 2, 12.50),
(516, '2025-05-28', 120, 5, 15.99),
(517, '2025-05-29', 122, 1, 12.00),
(518, '2025-05-30', 102, 2, 12.99),
(519, '2025-05-31', 107, 1, 11.50),
(520, '2025-06-01', 108, 4, 16.00),
(521, '2025-06-02', 109, 2, 14.50),
(522, '2025-06-03', 115, 1, 10.99),
(523, '2025-06-04', 117, 3, 13.99),
(524, '2025-06-05', 121, 2, 14.99);

INSERT INTO Premios (PremioID, NombrePremio, AnioEntrega, ArtistaID) VALUES
(2001, 'Grammy Awards', 1984, 2),
(2002, 'Brit Awards', 1977, 1),
(2003, 'Grammy Awards', 2012, 5),
(2004, 'Grammy Awards', 2021, 6),
(2005, 'Latin Grammy', 2022, 8),
(2006, 'Latin Grammy', 2023, 12),
(2007, 'Grammy Awards', 2017, 9),
(2008, 'Brit Awards', 2018, 13),
(2009, 'MTV Video Music Awards', 2005, 14),
(2010, 'Grammy Awards', 2023, 18),
(2011, 'Grammy Awards', 2023, 19),
(2012, 'Latin Grammy', 2023, 20);

INSERT INTO FansDestacados (FanID, Nombre, Pais) VALUES
(1, 'Taylor Swift', 'Estados Unidos'), -- Un artista que también es fan
(2, 'Harry Styles', 'Reino Unido'),    -- Otro artista que es fan
(3, 'Carla Perez', 'España'),
(4, 'Pedro García', 'México'),
(5, 'Liam Gallagher', 'Reino Unido'),  -- Un artista no en la tabla Artistas
(6, 'Taylor Swift', 'Estados Unidos'), -- Ejemplo de dato duplicado para UNION
(7, 'Rosalía', 'España');            -- Artista que también es fan

```