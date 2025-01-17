USE [expomanagement]
GO
/****** Object:  Table [dbo].[userticketbuk]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[userreg]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[userorder]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[temtab]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[sugges]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[sendnotify]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[purchase]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[login1]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[invitecompany]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[expodetails]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[exbootalloc]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[exbitorreg]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[exbaddticket]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[comrequest]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[comprodetails]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[companyregist]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[adminland]    Script Date: 11/16/2016 16:27:53 ******/
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
/****** Object:  Table [dbo].[admincat]    Script Date: 11/16/2016 16:27:53 ******/
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
