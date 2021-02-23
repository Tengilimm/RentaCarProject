CREATE TABLE [dbo].[Brands] (
    [Id]   INT  IDENTITY (1, 1) NOT NULL,
    [Name] TEXT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Colors] (
    [Id]   INT  IDENTITY (1, 1) NOT NULL,
    [Name] TEXT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Cars] (
    [Id]          INT  IDENTITY (1, 1) NOT NULL,
    [BrandId]     INT  NOT NULL,
    [ColorId]     INT  NULL,
    [ModelYear]   INT  NULL,
    [DailyPrice]  INT  DEFAULT ((0)) NOT NULL,
    [Description] TEXT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_color] FOREIGN KEY ([ColorId]) REFERENCES [dbo].[Colors] ([Id]),
    CONSTRAINT [fk_brand] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brands] ([Id])
);

CREATE TABLE [dbo].[Users] (
    [Id]        INT  IDENTITY (1, 1) NOT NULL,
    [FirstName] TEXT NOT NULL,
    [LastName]  TEXT NOT NULL,
    [Email]     TEXT NULL,
    [Password]  TEXT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Customers] (
    [Id]          INT  IDENTITY (1, 1) NOT NULL,
    [UserId]      INT  NOT NULL,
    [CompanyName] TEXT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_user] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

CREATE TABLE [dbo].[Rentals] (
    [Id]         INT      IDENTITY (1, 1) NOT NULL,
    [CarId]      INT      NOT NULL,
    [CustomerId] INT      NOT NULL,
    [RentDate]   DATETIME NOT NULL,
    [ReturnDate] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_cars] FOREIGN KEY ([CarId]) REFERENCES [dbo].[Cars] ([Id]),
    CONSTRAINT [fk_customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id])
);

SET IDENTITY_INSERT [dbo].[Brands] ON
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (1, N'BMW')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (2, N'Audi')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (3, N'Honda')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (4, N'Mercedes')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (5, N'Fiat')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (6, N'WolksWagen')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (7, N'Nissan')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (8, N'Ferrari')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (9, N'Rolls Royce')
INSERT INTO [dbo].[Brands] ([Id], [Name]) VALUES (10, N'Volvo')
SET IDENTITY_INSERT [dbo].[Brands] OFF

SET IDENTITY_INSERT [dbo].[Colors] ON
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Siyah')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (2, N'Beyaz')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (3, N'Yesil')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (4, N'Kirmizi')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (5, N'Sari')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (6, N'Mavi')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (7, N'Turuncu')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Kahverengi')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (9, N'Mor')
INSERT INTO [dbo].[Colors] ([Id], [Name]) VALUES (10, N'Gri')
SET IDENTITY_INSERT [dbo].[Colors] OFF

SET IDENTITY_INSERT [dbo].[Cars] ON
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (1, 1, 1, 2015, 250, N'Istanbul/ Günlük 400 TL Kiralik BMW ')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (2, 2, 2, 2017, 350, N'Istanbul- Ankara / Günlük 200 TL Audi ')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (3, 5, 10, 2017, 125, N'Ankara / Günlük 125 TL Kiralik Fiat Elegance')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (4, 6, 2, 2016, 300, N'Antalya / Günlük 230 TL Kiralik Wolkswagen Passat')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5, 8, 4, 2019, 750, N'Istanbul/ Günlük 150 TL Kiralik Ferrari Sport ')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (6, 10, 3, 2018, 350, N'Istanbul/ Günlük 250 TL Kiralik Volvo')
SET IDENTITY_INSERT [dbo].[Cars] OFF

SET IDENTITY_INSERT [dbo].[Users] ON
INSERT INTO [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password]) VALUES (1, N'Oğuzhan', N'TENGİLİMOĞLU', N'', NULL)
INSERT INTO [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password]) VALUES (2, N'Batuhan', N'TENGİLİMOĞLU', NULL, NULL)
INSERT INTO [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password]) VALUES (3, N'Güneş', N'TENGİLİMOĞLU', N'gunes_tufan@hotmail.com', N'gunestufan')
INSERT INTO [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password]) VALUES (4, N'Veli  ', N'TENGİLİMOĞLU', N'veli_tengilimoglu@hotmail.com', N'velitengilim')
SET IDENTITY_INSERT [dbo].[Users] OFF

SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT INTO [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (1, 1, N'InfoPark')
INSERT INTO [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (2, 2, N'TCMB')
INSERT INTO [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (3, 3, N'KOC')
INSERT INTO [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (4, 4, N'SABANCI')
SET IDENTITY_INSERT [dbo].[Customers] OFF

SET IDENTITY_INSERT [dbo].[Rentals] ON
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate], [ReturnDate]) VALUES (1, 1, 1, N'2008-11-09 15:45:21', N'2008-11-11 13:23:44')
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate], [ReturnDate]) VALUES (15, 2, 3, N'2019-07-21 07:00:00', N'2019-08-01 09:00:00')
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate], [ReturnDate]) VALUES (2009, 4, 2, N'2021-02-12 00:00:00', N'2021-02-15 00:00:00')
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate], [ReturnDate]) VALUES (3002, 4, 2, N'2021-02-14 00:00:00', NULL)
SET IDENTITY_INSERT [dbo].[Rentals] OFF
