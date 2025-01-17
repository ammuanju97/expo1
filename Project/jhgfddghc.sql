USE [expomanagement]
GO
/****** Object:  Table [dbo].[userticketbuk]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userticketbuk](
	[ticketbookid] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[expoId] [int] NULL,
	[date] [nvarchar](50) NULL,
	[ticketid] [int] NULL,
	[amount] [decimal](18, 0) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_userticketbuk] PRIMARY KEY CLUSTERED 
(
	[ticketbookid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[userticketbuk] ON
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (1, 3, 1, N'02/02/2017', 1, CAST(50 AS Decimal(18, 0)), N'issued')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (2, 3, 0, N'1/13/2017 11:34:53 AM', 0, CAST(50 AS Decimal(18, 0)), N'booked')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (3, 6, 3, N'13/6/2017', 1, CAST(50 AS Decimal(18, 0)), N'paid')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (4, 6, 0, N'3/2/2017 10:10:44 PM', 0, CAST(50 AS Decimal(18, 0)), N'booked')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (5, 1, 4, N'12/2/2017', 2, CAST(120 AS Decimal(18, 0)), N'booked')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (6, 7, 1, N'12/12/2017', 2, CAST(120 AS Decimal(18, 0)), N'paid')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (7, 7, 0, N'3/4/2017 2:31:35 AM', 0, CAST(120 AS Decimal(18, 0)), N'issued')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (8, 7, 0, N'3/4/2017 2:32:25 AM', 0, CAST(240 AS Decimal(18, 0)), N'booked')
INSERT [dbo].[userticketbuk] ([ticketbookid], [userId], [expoId], [date], [ticketid], [amount], [status]) VALUES (9, 7, 1, N'02/02/2017', 2, CAST(120 AS Decimal(18, 0)), N'booked')
SET IDENTITY_INSERT [dbo].[userticketbuk] OFF
/****** Object:  Table [dbo].[userreg]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userreg](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[logid] [int] NULL,
	[name] [varchar](50) NULL,
	[age] [int] NULL,
	[housename] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[place] [varchar](50) NULL,
	[mobileno] [bigint] NULL,
	[emailid] [varchar](50) NULL,
 CONSTRAINT [PK_userreg] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[userreg] ON
INSERT [dbo].[userreg] ([userId], [logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (1, 2, N'anju', 29, N'olickal', N'india', N'kerala', N'cannanore', N'payyyavoor', 1234567890, N'anju@gmail.com')
INSERT [dbo].[userreg] ([userId], [logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (2, 3, N'anu', 24, N'olickal', N'india', N'kerala', N'cannanore', N'payyyavoor', 1234567890, N'anu@gmail.com')
INSERT [dbo].[userreg] ([userId], [logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (3, 6, N'rinto', 26, N'kayutkal', N'india', N'kerala', N'cannanore', N'chempothotttty', 3456789012, N'rinto@gmail.com')
INSERT [dbo].[userreg] ([userId], [logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (4, 11, N'robin', 30, N'olickal', N'india', N'kerala', N'cannanore', N'payyavoor', 1478520366, N'robin@gmail.com')
INSERT [dbo].[userreg] ([userId], [logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (5, 12, N'minu', 26, N'kkkkkkkaaallala', N'india', N'kerala', N'calicut', N'kappad', 7539512064, N'minu@gmail.com')
INSERT [dbo].[userreg] ([userId], [logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (6, 13, N'josna', 25, N'mundakall', N'india', N'kerala', N'calicut', N'kkkkk', 1234567899, N'josna@gmal.com')
INSERT [dbo].[userreg] ([userId], [logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (7, 14, N'sijo', 28, N'kaithakal', N'india', N'kerala', N'cannanore', N'chempathotty', 1203654789, N'anjutennyson@gmail.com')
SET IDENTITY_INSERT [dbo].[userreg] OFF
/****** Object:  Table [dbo].[userorder]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userorder](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[companyid] [int] NULL,
	[productid] [int] NULL,
	[quantity] [decimal](18, 0) NULL,
	[total] [decimal](18, 0) NULL,
	[date] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_userorder] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[userorder] ON
INSERT [dbo].[userorder] ([orderid], [userid], [companyid], [productid], [quantity], [total], [date], [status]) VALUES (1, 3, 1, 1, CAST(2 AS Decimal(18, 0)), CAST(2444 AS Decimal(18, 0)), N'1/13/2017 12:09:42 PM', N'pending')
SET IDENTITY_INSERT [dbo].[userorder] OFF
/****** Object:  Table [dbo].[temtab]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temtab](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[companyid] [int] NULL,
	[productid] [int] NULL,
	[quantity] [decimal](18, 0) NULL,
	[total] [decimal](18, 0) NULL,
	[date] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_temtab] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[temtab] ON
INSERT [dbo].[temtab] ([orderid], [userid], [companyid], [productid], [quantity], [total], [date], [status]) VALUES (1, 3, 1, 1, CAST(2 AS Decimal(18, 0)), CAST(2444 AS Decimal(18, 0)), N'1/13/2017 12:09:42 PM', N'purchase')
INSERT [dbo].[temtab] ([orderid], [userid], [companyid], [productid], [quantity], [total], [date], [status]) VALUES (2, 6, 1, 3, CAST(2 AS Decimal(18, 0)), CAST(70000 AS Decimal(18, 0)), N'3/2/2017 10:01:16 PM', N'purchase')
INSERT [dbo].[temtab] ([orderid], [userid], [companyid], [productid], [quantity], [total], [date], [status]) VALUES (3, 6, 1, 1, CAST(3 AS Decimal(18, 0)), CAST(3666 AS Decimal(18, 0)), N'3/2/2017 10:07:06 PM', N'purchase')
INSERT [dbo].[temtab] ([orderid], [userid], [companyid], [productid], [quantity], [total], [date], [status]) VALUES (4, 6, 1, 3, CAST(6 AS Decimal(18, 0)), CAST(210000 AS Decimal(18, 0)), N'3/2/2017 10:07:42 PM', N'purchase')
INSERT [dbo].[temtab] ([orderid], [userid], [companyid], [productid], [quantity], [total], [date], [status]) VALUES (5, 7, 1, 3, CAST(2 AS Decimal(18, 0)), CAST(70000 AS Decimal(18, 0)), N'3/4/2017 2:27:36 AM', N'purchase')
SET IDENTITY_INSERT [dbo].[temtab] OFF
/****** Object:  Table [dbo].[sugges]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sugges](
	[sugId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[companyId] [int] NULL,
	[description] [varchar](max) NULL,
	[reply] [varchar](max) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_sugges] PRIMARY KEY CLUSTERED 
(
	[sugId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sugges] ON
INSERT [dbo].[sugges] ([sugId], [userId], [companyId], [description], [reply], [status]) VALUES (1, 6, 3, N'make quick', N'0', N'pending')
INSERT [dbo].[sugges] ([sugId], [userId], [companyId], [description], [reply], [status]) VALUES (2, 7, 2, N'aDFAG', N'0', N'pending')
INSERT [dbo].[sugges] ([sugId], [userId], [companyId], [description], [reply], [status]) VALUES (3, 7, 2, N'aDFAG', N'0', N'pending')
SET IDENTITY_INSERT [dbo].[sugges] OFF
/****** Object:  Table [dbo].[sendnotify]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sendnotify](
	[notifyId] [int] IDENTITY(1,1) NOT NULL,
	[sendersid] [int] NULL,
	[details] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_sendnotify] PRIMARY KEY CLUSTERED 
(
	[notifyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sendnotify] ON
INSERT [dbo].[sendnotify] ([notifyId], [sendersid], [details], [type], [status]) VALUES (1, 5, N'expo starts on 13/4/2017', N'user', N'pending')
INSERT [dbo].[sendnotify] ([notifyId], [sendersid], [details], [type], [status]) VALUES (2, 5, N'', N'user', N'pending')
INSERT [dbo].[sendnotify] ([notifyId], [sendersid], [details], [type], [status]) VALUES (3, 5, N'stated', N'user', N'pending')
INSERT [dbo].[sendnotify] ([notifyId], [sendersid], [details], [type], [status]) VALUES (4, 5, N'started', N'user', N'pending')
SET IDENTITY_INSERT [dbo].[sendnotify] OFF
/****** Object:  Table [dbo].[purchase]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchase](
	[orderdetailsid] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[total] [nvarchar](50) NULL,
	[date] [nvarchar](max) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_orderdetails] PRIMARY KEY CLUSTERED 
(
	[orderdetailsid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[purchase] ON
INSERT [dbo].[purchase] ([orderdetailsid], [userId], [total], [date], [status]) VALUES (1, 3, N'2444', N'1/13/2017 12:10:01 PM', N'deliver')
INSERT [dbo].[purchase] ([orderdetailsid], [userId], [total], [date], [status]) VALUES (2, 6, N'70000', N'3/2/2017 10:01:57 PM', N'purchase')
INSERT [dbo].[purchase] ([orderdetailsid], [userId], [total], [date], [status]) VALUES (3, 6, N'213666', N'3/2/2017 10:08:23 PM', N'purchase')
INSERT [dbo].[purchase] ([orderdetailsid], [userId], [total], [date], [status]) VALUES (4, 7, N'70000', N'3/4/2017 2:27:42 AM', N'purchase')
INSERT [dbo].[purchase] ([orderdetailsid], [userId], [total], [date], [status]) VALUES (5, 7, N'70000', N'3/4/2017 2:28:00 AM', N'purchase')
SET IDENTITY_INSERT [dbo].[purchase] OFF
/****** Object:  Table [dbo].[login1]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login1](
	[logid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_login1] PRIMARY KEY CLUSTERED 
(
	[logid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[login1] ON
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (1, N'admin', N'admin', N'admin', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (2, N'anju', N'123456', N'user', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (3, N'anu', N'123456', N'user', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (4, N'kalyan', N'12345', N'company', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (5, N'sachin', N'sachin', N'exhibitor', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (6, N'rinto', N'rinto', N'user', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (8, N'ligin', N'ligin', N'exhibitor', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (10, N'sam', N'sam', N'company', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (11, N'robin', N'robin', N'user', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (12, N'minu', N'minu', N'user', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (13, N'josna', N'josna1', N'user', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (14, N'sijo', N'sijo', N'user', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (15, N'kalayan', N'kalayan', N'company', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (16, N'lulu', N'lulu', N'company', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (17, N'apple', N'apple', N'company', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (19, N'ligin', N'ligin', N'exhibitor', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (20, N'jo', N'jo', N'exhibitor', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (21, N'john', N'john', N'exhibitor', N'approved')
INSERT [dbo].[login1] ([logid], [username], [password], [type], [status]) VALUES (22, N'a', N'a', N'exhibitor', N'approved')
SET IDENTITY_INSERT [dbo].[login1] OFF
/****** Object:  Table [dbo].[invitecompany]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[invitecompany](
	[InviteId] [int] IDENTITY(1,1) NOT NULL,
	[expoId] [int] NULL,
	[companyid] [int] NULL,
	[details] [varchar](max) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_invitecompany] PRIMARY KEY CLUSTERED 
(
	[InviteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[invitecompany] ON
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (1, 1, 1, N'we have conduct an expo in the moth of april', N'accepted')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (2, 1, 1, N'', N'accepted')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (3, 5, 1, N'ivited', N'accepted')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (4, 4, 1, N'ivited', N'accepted')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (5, 3, 1, N'ivited', N'accepted')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (6, 2, 1, N'ivited', N'accepted')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (7, 1, 1, N'ivited', N'accepted')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (8, 1, 2, N'invite', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (9, 2, 2, N'invite', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (10, 3, 2, N'invite', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (11, 4, 2, N'invite', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (12, 5, 2, N'invite', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (13, 1, 3, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (14, 2, 3, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (15, 4, 3, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (16, 3, 3, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (17, 5, 3, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (18, 1, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (19, 3, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (20, 4, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (21, 5, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (22, 2, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (23, 1, 6, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (24, 2, 6, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (25, 3, 6, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (26, 4, 6, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (27, 5, 6, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (28, 1, 5, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (29, 2, 5, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (30, 3, 5, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (31, 5, 5, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (32, 4, 5, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (33, 1, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (34, 2, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (35, 3, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (36, 4, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (37, 5, 4, N'invited', N'Requested')
INSERT [dbo].[invitecompany] ([InviteId], [expoId], [companyid], [details], [status]) VALUES (38, 3, 6, N'invited', N'Requested')
SET IDENTITY_INSERT [dbo].[invitecompany] OFF
/****** Object:  Table [dbo].[expodetails]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[expodetails](
	[expoId] [int] IDENTITY(1,1) NOT NULL,
	[exhibitorId] [int] NULL,
	[expotitle] [varchar](50) NULL,
	[expotype] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[subcategory] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[place] [varchar](50) NULL,
	[numberofbooth] [varchar](50) NULL,
	[image] [varchar](max) NULL,
	[plans] [varchar](max) NULL,
	[startingdate] [nvarchar](50) NULL,
	[endingdate] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_expoDetails] PRIMARY KEY CLUSTERED 
(
	[expoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[expodetails] ON
INSERT [dbo].[expodetails] ([expoId], [exhibitorId], [expotitle], [expotype], [category], [subcategory], [country], [state], [district], [place], [numberofbooth], [image], [plans], [startingdate], [endingdate], [status]) VALUES (1, 5, N'cannore expo', N'full day', N'dress', N'sari', N'india', N'kerala', N'cannanoore', N'payyavoor', N'123', N'28-kavya-madhavan.jpg', N'download (5).jpg', N'13/4/2017', N'15/4/2017', N'approved')
INSERT [dbo].[expodetails] ([expoId], [exhibitorId], [expotitle], [expotype], [category], [subcategory], [country], [state], [district], [place], [numberofbooth], [image], [plans], [startingdate], [endingdate], [status]) VALUES (2, 5, N'ghdjajl', N'hghjjklk', N'dress', N'sari', N'india', N'kerala', N'kannur', N'angadikadavu', N'fdgfhkjkljlj', N'7-love-photography.preview.jpg', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg', N'ffhgjh', N'gfygjhh', N'registered')
INSERT [dbo].[expodetails] ([expoId], [exhibitorId], [expotitle], [expotype], [category], [subcategory], [country], [state], [district], [place], [numberofbooth], [image], [plans], [startingdate], [endingdate], [status]) VALUES (3, 5, N'kerala fare', N'natural products', N'dress', N'sari', N'india', N'karnattaka', N'mangloor', N'putthoor', N'45', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg', N'3D-Beach-Wallpaper-HD-Download.jpg', N'12/2/2017', N'13/3/2017', N'approved')
INSERT [dbo].[expodetails] ([expoId], [exhibitorId], [expotitle], [expotype], [category], [subcategory], [country], [state], [district], [place], [numberofbooth], [image], [plans], [startingdate], [endingdate], [status]) VALUES (4, 5, N'consumer fare', N'all', N'dress', N'sari', N'india', N'karnattaka', N'mangloor', N'putthoor', N'456', N'colorful-easter-eggs-holiday-hd-wallpaper-1920x1200-10811.jpg', N'Autumn-Garden-HD-Wallpaper1.jpg', N'14/3/2017', N'17/5/2017', N'approved')
INSERT [dbo].[expodetails] ([expoId], [exhibitorId], [expotitle], [expotype], [category], [subcategory], [country], [state], [district], [place], [numberofbooth], [image], [plans], [startingdate], [endingdate], [status]) VALUES (5, 5, N'we fare', N'any kind', N'mobile', N'samsung', N'india', N'karnattaka', N'mangloor', N'putthoor', N'75', N'best-hd-wallpaper-nature-24.jpg', N'3D-Beach-Wallpaper-HD-Download.jpg', N'7/8/2017', N'4/9/2017', N'approved')
SET IDENTITY_INSERT [dbo].[expodetails] OFF
/****** Object:  Table [dbo].[exbootalloc]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[exbootalloc](
	[allocationid] [int] IDENTITY(1,1) NOT NULL,
	[expoid] [int] NULL,
	[companyid] [int] NULL,
	[boothnumber] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_exbootalloc] PRIMARY KEY CLUSTERED 
(
	[allocationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[exbootalloc] ON
INSERT [dbo].[exbootalloc] ([allocationid], [expoid], [companyid], [boothnumber], [status]) VALUES (1, 1, 1, N'12', N'allocated')
INSERT [dbo].[exbootalloc] ([allocationid], [expoid], [companyid], [boothnumber], [status]) VALUES (4, 4, 1, N'45', N'allocated')
SET IDENTITY_INSERT [dbo].[exbootalloc] OFF
/****** Object:  Table [dbo].[exbitorreg]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[exbitorreg](
	[ExhibitorId] [int] IDENTITY(1,1) NOT NULL,
	[logid] [int] NULL,
	[exhibitorname] [varchar](50) NULL,
	[age] [int] NULL,
	[gender] [varchar](50) NULL,
	[experience] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[mobilenumber] [bigint] NULL,
	[emailid] [varchar](50) NULL,
	[photo] [varchar](max) NULL,
 CONSTRAINT [PK_exbitorreg] PRIMARY KEY CLUSTERED 
(
	[ExhibitorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[exbitorreg] ON
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (1, 5, N'sachin', 23, N'Male', N'More than two years', N'abc(h)
xyz nagar
payyavoor', N'India', N'kerala', N'calicut', 1234567890, N'sachin@gmial.com', N'images (14).jpg')
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (2, 8, N'ligin', 25, N'Male', N'More than one year', N'ligin
abc(h)
xyz nagar', N'India', N'kerala', N'calicut', 1236547852, N'ligin@gmail.com', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg')
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (3, 9, N'ligin', 25, N'Male', N'More than one year', N'abc(h)
xyz nagr', N'India', N'kerala', N'calicut', 1236547890, N'ligin@gmail.com', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg')
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (4, 18, N'ligin', 27, N'Male', N'More than two years', N'hghjhjkkuui', N'India', N'kerala', N'calicut', 1230654789, N'ligi@gmail.com', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg')
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (5, 19, N'ligin', 28, N'Male', N'More than two years', N'jdjdsujjdjdjdsule', N'India', N'kerala', N'calicut', 1230456987, N'ligin@gmail.com', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg')
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (6, 20, N'jo', 26, N'Male', N'More than two years', N'hdefukeokfeyiomfeyueomhf', N'India', N'kerala', N'calicut', 1236547890, N'jo@gmail.com', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg')
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (7, 21, N'john', 27, N'Male', N'More than two years', N'hjksiuojkfldlsf;fuu4jfj', N'India', N'kerala', N'calicut', 1478520369, N'anjutennyson@gmail.com', N'1920x1080_hyde_park_sydney_spring_time-1228509.jpg')
INSERT [dbo].[exbitorreg] ([ExhibitorId], [logid], [exhibitorname], [age], [gender], [experience], [address], [country], [state], [district], [mobilenumber], [emailid], [photo]) VALUES (8, 22, N'a', 23, N'Female', N'Less than one year', N'qwdd', N'India', N'kerala', N'calicut', 4555555554, N'anjutennyson@gmail.com', N'16142647_996142453863752_8266539150611017907_n.jpg')
SET IDENTITY_INSERT [dbo].[exbitorreg] OFF
/****** Object:  Table [dbo].[exbaddticket]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[exbaddticket](
	[ticketId] [int] IDENTITY(1,1) NOT NULL,
	[expoId] [int] NULL,
	[tickettype] [varchar](50) NULL,
	[ticketrate] [float] NULL,
 CONSTRAINT [PK_exbticket] PRIMARY KEY CLUSTERED 
(
	[ticketId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[exbaddticket] ON
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (1, 1, N'Single', 50)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (2, 1, N'Children', 120)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (3, 5, N'Family(4)', 500)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (4, 5, N'Single', 150)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (5, 5, N'Children', 100)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (6, 4, N'Single', 60)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (7, 4, N'Family(4)', 650)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (8, 4, N'Children', 100)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (9, 3, N'Single', 250)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (10, 3, N'Family(4)', 100)
INSERT [dbo].[exbaddticket] ([ticketId], [expoId], [tickettype], [ticketrate]) VALUES (11, 3, N'Children', 100)
SET IDENTITY_INSERT [dbo].[exbaddticket] OFF
/****** Object:  Table [dbo].[comrequest]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comrequest](
	[requestid] [int] IDENTITY(1,1) NOT NULL,
	[exhibitorId] [int] NULL,
	[expoid] [int] NULL,
	[companyid] [int] NULL,
	[description] [nvarchar](max) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_comrequest] PRIMARY KEY CLUSTERED 
(
	[requestid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comrequest] ON
INSERT [dbo].[comrequest] ([requestid], [exhibitorId], [expoid], [companyid], [description], [status]) VALUES (1, 1, 1, 1, N'dwd', N'pending')
SET IDENTITY_INSERT [dbo].[comrequest] OFF
/****** Object:  Table [dbo].[comprodetails]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comprodetails](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[companyId] [int] NULL,
	[categoryId] [int] NULL,
	[subcategory] [varchar](50) NULL,
	[productname] [varchar](50) NULL,
	[productquantity] [int] NULL,
	[description] [varchar](max) NULL,
	[price] [decimal](18, 2) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_comprodetails] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comprodetails] ON
INSERT [dbo].[comprodetails] ([productId], [companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (1, 1, 1, N'1', N'dsd', 34, N'fafdsfs', CAST(1222.00 AS Decimal(18, 2)), N'pending')
INSERT [dbo].[comprodetails] ([productId], [companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (3, 0, 1, N'1', N'KANCHIPURAM', 25, N'GFFGHJ', CAST(35000.00 AS Decimal(18, 2)), N'pending')
INSERT [dbo].[comprodetails] ([productId], [companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (5, 0, 1, N'1', N'banars', 33, N'bhjhj', CAST(78900.00 AS Decimal(18, 2)), N'pending')
INSERT [dbo].[comprodetails] ([productId], [companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (6, 0, 2, N'2', N'nano', 34, N'asdfffg', CAST(1230000.00 AS Decimal(18, 2)), N'pending')
INSERT [dbo].[comprodetails] ([productId], [companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (7, 0, 3, N'3', N'galaxy', 123, N'ssdafafd', CAST(12300.00 AS Decimal(18, 2)), N'pending')
INSERT [dbo].[comprodetails] ([productId], [companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (8, 5, 5, N'5', N'desiner', 46, N'good smooth perfect', CAST(3600.00 AS Decimal(18, 2)), N'pending')
INSERT [dbo].[comprodetails] ([productId], [companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (9, 5, 1, N'1', N'rajathsani', 35, N'shifon', CAST(400000.00 AS Decimal(18, 2)), N'pending')
SET IDENTITY_INSERT [dbo].[comprodetails] OFF
/****** Object:  Table [dbo].[companyregist]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companyregist](
	[companyId] [int] IDENTITY(1,1) NOT NULL,
	[logid] [int] NULL,
	[companyname] [varchar](50) NULL,
	[companytype] [varchar](50) NULL,
	[companyexperience] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[streetaddress] [varchar](50) NULL,
	[landmark] [varchar](50) NULL,
 CONSTRAINT [PK_companyregist] PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[companyregist] ON
INSERT [dbo].[companyregist] ([companyId], [logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (1, 4, N'kalyan', N'dress', N'More than two years', N'india', N'kerala', N'calicut', N'calicut
near iit', N'kappad')
INSERT [dbo].[companyregist] ([companyId], [logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (2, 7, N'kvr', N'vehicle', N'More than two years', N'india', N'kerala', N'calicut', N'erty
kappad', N'kappad')
INSERT [dbo].[companyregist] ([companyId], [logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (3, 10, N'samsung', N'mobiles', N'More than two years', N'india', N'kerala', N'calicut', N'abc
xyz', N'kappad')
INSERT [dbo].[companyregist] ([companyId], [logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (4, 15, N'kalayan', N'ornaments', N'More than two years', N'india', N'kerala', N'calicut', N'kakkkk
hdhjhjad', N'kapapad')
INSERT [dbo].[companyregist] ([companyId], [logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (5, 16, N'lulu', N'gold', N'More than two years', N'india', N'kerala', N'calicut', N'jhhjkjjg
hjhjjhjh', N'kkkkkk')
INSERT [dbo].[companyregist] ([companyId], [logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (6, 17, N'apple', N'mobile', N'More than two years', N'india', N'kerala', N'calicut', N'jkklffsdkyeewd
akjjkaejuiei', N'ajajjajjee')
SET IDENTITY_INSERT [dbo].[companyregist] OFF
/****** Object:  Table [dbo].[adminland]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminland](
	[landmarkid] [int] IDENTITY(1,1) NOT NULL,
	[country] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[place] [varchar](50) NULL,
 CONSTRAINT [PK_adminland] PRIMARY KEY CLUSTERED 
(
	[landmarkid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[adminland] ON
INSERT [dbo].[adminland] ([landmarkid], [country], [state], [district], [place]) VALUES (1, N'india', N'kerala', N'cannanoore', N'payyavoor')
INSERT [dbo].[adminland] ([landmarkid], [country], [state], [district], [place]) VALUES (2, N'india', N'kerala', N'kannur', N'angadikadavu')
INSERT [dbo].[adminland] ([landmarkid], [country], [state], [district], [place]) VALUES (3, N'india', N'karnattaka', N'mangloor', N'putthoor')
INSERT [dbo].[adminland] ([landmarkid], [country], [state], [district], [place]) VALUES (4, N'usa', N'america', N'chicago', N'aaa')
INSERT [dbo].[adminland] ([landmarkid], [country], [state], [district], [place]) VALUES (5, N'japan', N'tokiyo', N'assd', N'asd')
INSERT [dbo].[adminland] ([landmarkid], [country], [state], [district], [place]) VALUES (6, N'china', N'asdfgg', N'dfghhj', N'kll')
INSERT [dbo].[adminland] ([landmarkid], [country], [state], [district], [place]) VALUES (7, N'usa', N'newjersey', N'st1', N'st2')
SET IDENTITY_INSERT [dbo].[adminland] OFF
/****** Object:  Table [dbo].[admincat]    Script Date: 03/04/2017 02:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admincat](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [varchar](50) NULL,
	[subcategoryname] [varchar](50) NULL,
 CONSTRAINT [PK_admincat] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admincat] ON
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (1, N'dress', N'sari')
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (2, N'vehicle', N'car')
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (3, N'mobile', N'samsung')
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (4, N'mobile', N'apple')
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (5, N'churidar', N'masakali')
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (6, N'car', N'nano')
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (7, N'car', N'odii')
INSERT [dbo].[admincat] ([categoryId], [categoryname], [subcategoryname]) VALUES (8, N'soap', N'beauty')
SET IDENTITY_INSERT [dbo].[admincat] OFF
