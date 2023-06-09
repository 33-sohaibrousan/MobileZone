USE [MobileZone]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[quntity] [int] NULL,
	[price] [decimal](18, 0) NULL,
	[total_price] [decimal](18, 0) NULL,
	[product_name] [varchar](255) NULL,
	[product_image] [varchar](255) NULL,
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NULL,
	[category_img] [varchar](255) NULL,
	[category_desc] [varchar](255) NULL,
	[category_logo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactinfo]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactinfo](
	[firstname] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[messege] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[order_datails_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[product_quantity] [int] NULL,
	[total_price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_datails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NULL,
	[total_price] [decimal](6, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](50) NULL,
	[product_description] [varchar](255) NULL,
	[product_img1] [varchar](255) NULL,
	[product_img2] [varchar](255) NULL,
	[product_img3] [varchar](255) NULL,
	[price] [decimal](18, 0) NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[comment] [varchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/23/2023 5:29:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[phoneNumber] [int] NULL,
	[role] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name], [category_img], [category_desc], [category_logo]) VALUES (1, N'samsung', N'images\Samsung_Logo.svg.png', N'
Samsung Galaxy  is a series of computing and mobile computing devices that are designed, manufactured and 
marketed by Samsung Electronics.', N'images\Samsung_Logo.svg.png')
INSERT [dbo].[Category] ([category_id], [category_name], [category_img], [category_desc], [category_logo]) VALUES (2, N'Apple', N'/img/OIP.jpeg', N'
Apple is considered one of the best manufacturers of smart phones. The phones manufactured by Apple, for example, the "iPhone", are characterized by 
strength and smoothness', N'/img/OIP.jpeg')
INSERT [dbo].[Category] ([category_id], [category_name], [category_img], [category_desc], [category_logo]) VALUES (3, N'Xiaomi', N'/img/OIP (1).jpeg', N'
Xiaomi is a privately owned company that designs, develops, and sells smartphones, an Android-based OS, and other consumer electronics. 
Xiaomi also makes fitness trackers,', N'/img/OIP (1).jpeg')
INSERT [dbo].[Category] ([category_id], [category_name], [category_img], [category_desc], [category_logo]) VALUES (4, N'Oppo', N'/img/OIP (2).jpeg', N'
Oppo is one of the Chinese phone brands thats currently gaining popularity in the West, with its wide selection of smartphones hitting a broad ', N'images\Samsung_Logo.svg.png')
INSERT [dbo].[Category] ([category_id], [category_name], [category_img], [category_desc], [category_logo]) VALUES (5, N'Huawei', N'/img/OIP (4).jpeg', N'
Huawei is the second-biggest smartphone maker in the world, after Samsung, as of the first quarter of 2019.', N'/img/OIP (4).jpeg')
INSERT [dbo].[Category] ([category_id], [category_name], [category_img], [category_desc], [category_logo]) VALUES (6, N'Oneplus', N'/img/OIP (3).jpeg', N'
A China-based manufacturer of Android smartphones. Introduced in 2014, OnePlus models are unlocked Android smartphones with quad-core 
Snapdragon CPUs and up to 8GB RAM ', N'/img/OIP (3).jpeg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [firstName], [lastName], [email], [password], [phoneNumber], [role]) VALUES (1, N'Haitham', N'Hazaimeh', N'haitham@gmail.com', N'9', 778095538, NULL)
INSERT [dbo].[Users] ([id], [firstName], [lastName], [email], [password], [phoneNumber], [role]) VALUES (2, N'sohaib', N'alrousan', N'sohaib@gmail.com', N'33', 79055, NULL)
INSERT [dbo].[Users] ([id], [firstName], [lastName], [email], [password], [phoneNumber], [role]) VALUES (3, N'admin', N'0', N'admin@gmail.com', N'3', 790552460, N'admin')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('user') FOR [role]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
