CREATE DATABASE [Filmes]

USE [Filmes]


SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Atores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrimeiroNome] [varchar](20) NULL,
	[UltimoNome] [varchar](20) NULL,
	[Genero] [varchar](1) NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ElencoFilme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAtor] [int] NOT NULL,
	[IdFilme] [int] NULL,
	[Papel] [varchar](30) NULL,
 CONSTRAINT [PK_ElencoFilme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Filmes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Ano] [int] NULL,
	[Duracao] [int] NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[FilmesGenero]    Script Date: 08/05/2022 23:14:01 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[FilmesGenero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGenero] [int] NULL,
	[IdFilme] [int] NULL,
 CONSTRAINT [PK_FilmesGenero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Generos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Genero] [varchar](20) NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Atores] ON 

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (1, N'James', N'Stewart', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (2, N'Deborah', N'Kerr', N'F')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (3, N'Peter', N'OToole', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (4, N'Robert', N'DeNiro', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (6, N'Harrison', N'Ford', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (7, N'Stephen', N'Baldwin', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (8, N'Jack', N'Nicholson', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (9, N'Mark', N'Wahlberg', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (10, N'Woody', N'Allen', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (11, N'Claire', N'Danes', N'F')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (12, N'Tim', N'Robbins', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (13, N'Kevin', N'Spacey', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (14, N'Kate', N'Winslet', N'F')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (15, N'Robin', N'Williams', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (16, N'Jon', N'Voight', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (17, N'Ewan', N'McGrer', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (18, N'Christian', N'Bale', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (19, N'Maggie', N'Gyllenhaal', N'F')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (20, N'Dev', N'Patel', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (21, N'Siurney', N'Weaver', N'F')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (22, N'David', N'Aston', N'M')

INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (23, N'Ali', N'Astin', N'F')

SET IDENTITY_INSERT [dbo].[Atores] OFF

SET IDENTITY_INSERT [dbo].[ElencoFilme] ON 

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (1, 1, 1, N'John Scottie Ferguson')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (2, 2, 2, N'Miss Giddens')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (3, 3, 3, N'T.E. Lawrence')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (4, 4, 4, N'Michael')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (5, 6, 6, N'Rick Deckard')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (6, 7, 8, N'McManus')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (7, 9, 10, N'Eddie Adams')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (8, 10, 11, N'Alvy Singer')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (9, 11, 12, N'San')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (10, 12, 13, N'Andy Dufresne')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (11, 13, 14, N'Lester Burnham')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (12, 14, 15, N'Rose DeWitt Bukater')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (13, 15, 16, N'Sean Maguire')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (14, 16, 17, N'Ed')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (15, 17, 18, N'Renton')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (16, 19, 20, N'Elizabeth Darko')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (17, 20, 21, N'Older Jamal')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (18, 21, 22, N'Ripley')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (19, 13, 23, N'Bobby Darin')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (20, 8, 9, N'J.J. Gittes')

INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (21, 18, 19, N'Alfred Borden')

SET IDENTITY_INSERT [dbo].[ElencoFilme] OFF

SET IDENTITY_INSERT [dbo].[Filmes] ON 

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (1, N'Um Corpo que Cai', 1958, 128)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (2, N'Os Inocentes', 1961, 100)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (3, N'Lawrence da Arábia', 1962, 216)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (4, N'O Franco Atirador', 1978, 183)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (5, N'Amadeus', 1984, 160)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (6, N'Blade Runner', 1982, 117)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (7, N'De Olhos Bem Fechados', 1999, 159)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (8, N'Os Suspeitos', 1995, 106)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (9, N'Chinatown', 1974, 130)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (10, N'Boogie Nights - Prazer Sem Limites', 1997, 155)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (11, N'Noivo Neurótico, Noiva Nervosa', 1977, 93)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (12, N'Princesa Mononoke', 1997, 134)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (13, N'Um Sonho de Liberdade', 1994, 142)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (14, N'Beleza Americana', 1999, 122)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (15, N'Titanic', 1997, 194)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (16, N'Gênio Indomável', 1997, 126)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (17, N'Amar pesadelo', 1972, 109)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (18, N'Trainspotting - Sem Limites', 1996, 94)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (19, N'O Grande Truque', 2006, 130)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (20, N'Donnie Darko', 2001, 113)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (21, N'Quem Quer Ser um Milionário?', 2008, 120)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (22, N'Aliens, O Resgate', 1986, 137)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (23, N'Uma Vida sem Limites', 2004, 118)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (24, N'Avatar', 2009, 162)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (25, N'Coração Valente', 1995, 178)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (26, N'Os Sete Samurais', 1954, 207)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (27, N'A Viagem de Chihiro', 2001, 125)

INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (28, N'De Volta para o Futuro', 1985, 116)

SET IDENTITY_INSERT [dbo].[Filmes] OFF

SET IDENTITY_INSERT [dbo].[FilmesGenero] ON 

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (1, 1, 22)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (2, 2, 17)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (3, 2, 3)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (4, 3, 12)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (5, 5, 11)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (6, 6, 8)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (7, 6, 13)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (8, 7, 26)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (9, 7, 28)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (10, 7, 18)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (11, 7, 21)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (12, 8, 2)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (13, 9, 23)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (14, 10, 7)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (15, 10, 27)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (16, 10, 1)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (17, 11, 14)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (18, 12, 6)

INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (19, 13, 4)

SET IDENTITY_INSERT [dbo].[FilmesGenero] OFF

SET IDENTITY_INSERT [dbo].[Generos] ON 

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (1, N'Ação')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (2, N'Aventura')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (3, N'Animação')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (4, N'Biografia')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (5, N'Comédia')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (6, N'Crime')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (7, N'Drama')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (8, N'Horror')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (9, N'Musical')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (10, N'Mistério')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (11, N'Romance')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (12, N'Suspense')

INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (13, N'Guerra')

SET IDENTITY_INSERT [dbo].[Generos] OFF

ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0] FOREIGN KEY([IdAtor])
REFERENCES [dbo].[Atores] ([Id])

ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0]

ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdFil__2D27B809] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])

ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdFil__2D27B809]

ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdFil__2F10007B] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])

ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdFil__2F10007B]

ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Generos] ([Id])

ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42]
