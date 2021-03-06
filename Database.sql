USE [Speech]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Goals]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goals](
	[GoalId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ProfileId] [int] NOT NULL,
	[Completed] [bit] NOT NULL,
 CONSTRAINT [PK_Goals] PRIMARY KEY CLUSTERED 
(
	[GoalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notes]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[NoteId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ProfileId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[ProfileId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ClientFirst] [nvarchar](max) NULL,
	[ClientLast] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[DOB] [datetime2](7) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/24/2017 10:58:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170519194743_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170719052450_AddContactTable', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170719210844_AddGoalsTable', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170719211738_OneToMany', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170719214058_AddGoalsCompleted', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170719214211_UpdateGoals', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170721231220_AddNotesTable', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170722002528_DateToNotes', N'1.0.0-rtm-21431')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'2ce50fc6-a2e9-4f05-8bb5-08f0748fa183', N'303158af-77d5-4329-bf7d-e5076d41b009', N'User', N'USER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'9918ec6e-e30e-4b07-ab4c-e9fe7bc08f54', N'0b4861e5-f067-433f-88a7-7a2c1a1c8595', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a33ffe9d-2c9c-45bd-bd1a-baebabb0ec86', N'9918ec6e-e30e-4b07-ab4c-e9fe7bc08f54')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'81c62e71-df5e-403b-b704-89045f23688c', 0, N'614ba07c-f3a7-462d-a2f2-cf70d560824e', N'kristen@gmail.com', 0, 1, NULL, N'KRISTEN@GMAIL.COM', N'KRISTEN', N'AQAAAAEAACcQAAAAEGU2yz3t86jK/hgoupTdvE3Urieyf2imgO4PmWro+ptMlD4GtwRN2Sg9xRLl1kbnpg==', NULL, 0, N'b1caa019-a42b-49eb-8d99-cf990ee5afca', 0, N'kristen')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'89811e26-eadb-47e5-892f-e51ff722c995', 0, N'066ab39c-a8a2-48b7-9e0f-f77f98874ef3', N'sean@gmail.com', 0, 1, NULL, N'SEAN@GMAIL.COM', N'SEAN', N'AQAAAAEAACcQAAAAEBd6raUk1X37Gq0Q4Bkd88ldHjdLI4MFj+HiGU6G0whA7m2TS72KXTW36nYj9K8R8Q==', NULL, 0, N'f723168d-8f5c-4133-a4fa-2e5ffff4318f', 0, N'sean')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'9b558feb-af3a-4df4-b443-5d2536a5ac04', 0, N'f154f8a2-640f-4066-8b8b-b02d8fe78f68', N'nicky9022@yahoo.com', 0, 1, NULL, N'RACHEL@GMAIL.COM', N'RACHEL', N'AQAAAAEAACcQAAAAECSGmFl2uq18Sr+rK+8Vbp8jIsXHbea1UsvmhapXTJC7YxJOQas7WwnSdCFU2asdiw==', NULL, 0, N'0f4e044b-eda2-4e39-b8be-807b6ec03bb5', 0, N'rachel')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'a33ffe9d-2c9c-45bd-bd1a-baebabb0ec86', 0, N'060289f5-9e52-48c9-bad8-a4ab5a63dd3d', N'dayna@gmail.com', 0, 1, NULL, N'DAYNA@GMAIL.COM', N'DAYNA', N'AQAAAAEAACcQAAAAECiKNBTyCPUNTchmXBTI7uKaXlqrwa38ItvrL05Vqc1/kn5y6QvUM9lFgb0tu8uXtQ==', NULL, 0, N'3f3b489d-03a9-45e6-a787-5c63b85f7893', 0, N'dayna')
SET IDENTITY_INSERT [dbo].[Goals] ON 

INSERT [dbo].[Goals] ([GoalId], [Description], [ProfileId], [Completed]) VALUES (4016, N'Say words beginning with ''s'' correctly 55% of the time.', 3007, 1)
INSERT [dbo].[Goals] ([GoalId], [Description], [ProfileId], [Completed]) VALUES (6016, N'Say words ending in ''s'' correctly 75% of the time.', 3007, 0)
SET IDENTITY_INSERT [dbo].[Goals] OFF
SET IDENTITY_INSERT [dbo].[Notes] ON 

INSERT [dbo].[Notes] ([NoteId], [Description], [ProfileId], [Date]) VALUES (1014, N'He is making great progress!', 3007, CAST(N'2017-07-24T22:39:30.0057184' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Notes] OFF
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([ProfileId], [ApplicationUserId], [ClientFirst], [ClientLast], [Comment], [DOB], [FirstName], [LastName], [UserName]) VALUES (2006, N'a33ffe9d-2c9c-45bd-bd1a-baebabb0ec86', N'Jorden', N'Sanders', N'I''m Admin', CAST(N'2017-05-13T00:00:00.0000000' AS DateTime2), N'Dayna', N'Sanders', N'dayna')
INSERT [dbo].[Profiles] ([ProfileId], [ApplicationUserId], [ClientFirst], [ClientLast], [Comment], [DOB], [FirstName], [LastName], [UserName]) VALUES (2008, N'81c62e71-df5e-403b-b704-89045f23688c', N'Michelle', N'Smith', N'Michelle is a sweet girl but has Autism and needs some extra help.', CAST(N'2013-06-25T00:00:00.0000000' AS DateTime2), N'Kristen', N'Smith', N'kristen')
INSERT [dbo].[Profiles] ([ProfileId], [ApplicationUserId], [ClientFirst], [ClientLast], [Comment], [DOB], [FirstName], [LastName], [UserName]) VALUES (2009, N'89811e26-eadb-47e5-892f-e51ff722c995', N'Aaron', N'Peterson', N'Aaron has not been able to say many words or sounds yet and we don''t know why. Please help us understand what is going on and help him to improve his speech ability.', CAST(N'2014-04-30T00:00:00.0000000' AS DateTime2), N'Sean', N'Peterson', N'sean')
INSERT [dbo].[Profiles] ([ProfileId], [ApplicationUserId], [ClientFirst], [ClientLast], [Comment], [DOB], [FirstName], [LastName], [UserName]) VALUES (3007, N'9b558feb-af3a-4df4-b443-5d2536a5ac04', N'Michael', N'Williams', N'He has had a lisp for many years and we would like for him to break out of that habit.', CAST(N'2009-05-07T00:00:00.0000000' AS DateTime2), N'Rachel', N'Williams', N'rachel')
SET IDENTITY_INSERT [dbo].[Profiles] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([ReviewId], [Description], [Name]) VALUES (67239, N'This was the best thing I could have ever done for my son. Asides from correcting his speech impediment, his confidence shot through the roof and he always had such a blast.', N'Rachel')
INSERT [dbo].[Reviews] ([ReviewId], [Description], [Name]) VALUES (67240, N'I cannot put into words how thankful I am for Dayna and Speech Solutions. As my family and I live in a mountainous area of the PNW we do not have easy access to many services like this, but the online option was fantastic and greatly improved my daughter''s life.', N'Kristen')
INSERT [dbo].[Reviews] ([ReviewId], [Description], [Name]) VALUES (67241, N'This is great. My daughter made so much progress and I definitely recommend it.', N'Sean')
INSERT [dbo].[Reviews] ([ReviewId], [Description], [Name]) VALUES (69239, N'Having my child get therapy sessions through teletherapy rather than in-person saved our family so much time and money. She made huge progress and really enjoyed being on the computer.', N'Mike')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
ALTER TABLE [dbo].[Goals] ADD  DEFAULT ((0)) FOR [ProfileId]
GO
ALTER TABLE [dbo].[Goals] ADD  DEFAULT ((0)) FOR [Completed]
GO
ALTER TABLE [dbo].[Notes] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [Date]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Goals]  WITH CHECK ADD  CONSTRAINT [FK_Goals_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([ProfileId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Goals] CHECK CONSTRAINT [FK_Goals_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([ProfileId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_AspNetUsers_ApplicationUserId]
GO
