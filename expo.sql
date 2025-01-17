USE [expomanagement]
GO
/****** Object:  Table [dbo].[sendnotify]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[login1]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[userticketbuk]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[companyregist]    Script Date: 04/20/2017 16:19:26 ******/
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
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_companyregist] PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adminland]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[admincat]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[exbaddticket]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[expodetails]    Script Date: 04/20/2017 16:19:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[expodetails](
	[expoId] [int] IDENTITY(1,1) NOT NULL,
	[exhibitorId] [int] NOT NULL,
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
/****** Object:  Table [dbo].[exbootalloc]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[exbitorreg]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[comprodetails]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[userreg]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[invitecompany]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[purchase]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[userorder]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[temtab]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[sugges]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  Table [dbo].[comrequest]    Script Date: 04/20/2017 16:19:26 ******/
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
/****** Object:  ForeignKey [FK_comprodetails_admincat]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[comprodetails]  WITH CHECK ADD  CONSTRAINT [FK_comprodetails_admincat] FOREIGN KEY([categoryId])
REFERENCES [dbo].[admincat] ([categoryId])
GO
ALTER TABLE [dbo].[comprodetails] CHECK CONSTRAINT [FK_comprodetails_admincat]
GO
/****** Object:  ForeignKey [FK_comprodetails_companyregist]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[comprodetails]  WITH CHECK ADD  CONSTRAINT [FK_comprodetails_companyregist] FOREIGN KEY([companyId])
REFERENCES [dbo].[companyregist] ([companyId])
GO
ALTER TABLE [dbo].[comprodetails] CHECK CONSTRAINT [FK_comprodetails_companyregist]
GO
/****** Object:  ForeignKey [FK_comrequest_companyregist]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[comrequest]  WITH CHECK ADD  CONSTRAINT [FK_comrequest_companyregist] FOREIGN KEY([companyid])
REFERENCES [dbo].[companyregist] ([companyId])
GO
ALTER TABLE [dbo].[comrequest] CHECK CONSTRAINT [FK_comrequest_companyregist]
GO
/****** Object:  ForeignKey [FK_comrequest_exbitorreg]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[comrequest]  WITH CHECK ADD  CONSTRAINT [FK_comrequest_exbitorreg] FOREIGN KEY([exhibitorId])
REFERENCES [dbo].[exbitorreg] ([ExhibitorId])
GO
ALTER TABLE [dbo].[comrequest] CHECK CONSTRAINT [FK_comrequest_exbitorreg]
GO
/****** Object:  ForeignKey [FK_comrequest_expodetails]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[comrequest]  WITH CHECK ADD  CONSTRAINT [FK_comrequest_expodetails] FOREIGN KEY([expoid])
REFERENCES [dbo].[expodetails] ([expoId])
GO
ALTER TABLE [dbo].[comrequest] CHECK CONSTRAINT [FK_comrequest_expodetails]
GO
/****** Object:  ForeignKey [FK_exbaddticket_exbaddticket]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[exbaddticket]  WITH CHECK ADD  CONSTRAINT [FK_exbaddticket_exbaddticket] FOREIGN KEY([ticketId])
REFERENCES [dbo].[exbaddticket] ([ticketId])
GO
ALTER TABLE [dbo].[exbaddticket] CHECK CONSTRAINT [FK_exbaddticket_exbaddticket]
GO
/****** Object:  ForeignKey [FK_exbitorreg_login1]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[exbitorreg]  WITH CHECK ADD  CONSTRAINT [FK_exbitorreg_login1] FOREIGN KEY([logid])
REFERENCES [dbo].[login1] ([logid])
GO
ALTER TABLE [dbo].[exbitorreg] CHECK CONSTRAINT [FK_exbitorreg_login1]
GO
/****** Object:  ForeignKey [FK_exbootalloc_companyregist]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[exbootalloc]  WITH CHECK ADD  CONSTRAINT [FK_exbootalloc_companyregist] FOREIGN KEY([companyid])
REFERENCES [dbo].[companyregist] ([companyId])
GO
ALTER TABLE [dbo].[exbootalloc] CHECK CONSTRAINT [FK_exbootalloc_companyregist]
GO
/****** Object:  ForeignKey [FK_exbootalloc_expodetails]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[exbootalloc]  WITH CHECK ADD  CONSTRAINT [FK_exbootalloc_expodetails] FOREIGN KEY([expoid])
REFERENCES [dbo].[expodetails] ([expoId])
GO
ALTER TABLE [dbo].[exbootalloc] CHECK CONSTRAINT [FK_exbootalloc_expodetails]
GO
/****** Object:  ForeignKey [FK_invitecompany_companyregist]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[invitecompany]  WITH CHECK ADD  CONSTRAINT [FK_invitecompany_companyregist] FOREIGN KEY([companyid])
REFERENCES [dbo].[companyregist] ([companyId])
GO
ALTER TABLE [dbo].[invitecompany] CHECK CONSTRAINT [FK_invitecompany_companyregist]
GO
/****** Object:  ForeignKey [FK_invitecompany_expodetails]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[invitecompany]  WITH CHECK ADD  CONSTRAINT [FK_invitecompany_expodetails] FOREIGN KEY([expoId])
REFERENCES [dbo].[expodetails] ([expoId])
GO
ALTER TABLE [dbo].[invitecompany] CHECK CONSTRAINT [FK_invitecompany_expodetails]
GO
/****** Object:  ForeignKey [FK_purchase_userreg]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[purchase]  WITH CHECK ADD  CONSTRAINT [FK_purchase_userreg] FOREIGN KEY([userId])
REFERENCES [dbo].[userreg] ([userId])
GO
ALTER TABLE [dbo].[purchase] CHECK CONSTRAINT [FK_purchase_userreg]
GO
/****** Object:  ForeignKey [FK_sugges_companyregist]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[sugges]  WITH CHECK ADD  CONSTRAINT [FK_sugges_companyregist] FOREIGN KEY([companyId])
REFERENCES [dbo].[companyregist] ([companyId])
GO
ALTER TABLE [dbo].[sugges] CHECK CONSTRAINT [FK_sugges_companyregist]
GO
/****** Object:  ForeignKey [FK_sugges_userreg]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[sugges]  WITH CHECK ADD  CONSTRAINT [FK_sugges_userreg] FOREIGN KEY([userId])
REFERENCES [dbo].[userreg] ([userId])
GO
ALTER TABLE [dbo].[sugges] CHECK CONSTRAINT [FK_sugges_userreg]
GO
/****** Object:  ForeignKey [FK_temtab_companyregist]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[temtab]  WITH CHECK ADD  CONSTRAINT [FK_temtab_companyregist] FOREIGN KEY([companyid])
REFERENCES [dbo].[companyregist] ([companyId])
GO
ALTER TABLE [dbo].[temtab] CHECK CONSTRAINT [FK_temtab_companyregist]
GO
/****** Object:  ForeignKey [FK_temtab_comprodetails]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[temtab]  WITH CHECK ADD  CONSTRAINT [FK_temtab_comprodetails] FOREIGN KEY([productid])
REFERENCES [dbo].[comprodetails] ([productId])
GO
ALTER TABLE [dbo].[temtab] CHECK CONSTRAINT [FK_temtab_comprodetails]
GO
/****** Object:  ForeignKey [FK_temtab_userreg]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[temtab]  WITH CHECK ADD  CONSTRAINT [FK_temtab_userreg] FOREIGN KEY([userid])
REFERENCES [dbo].[userreg] ([userId])
GO
ALTER TABLE [dbo].[temtab] CHECK CONSTRAINT [FK_temtab_userreg]
GO
/****** Object:  ForeignKey [FK_userorder_companyregist]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[userorder]  WITH CHECK ADD  CONSTRAINT [FK_userorder_companyregist] FOREIGN KEY([companyid])
REFERENCES [dbo].[companyregist] ([companyId])
GO
ALTER TABLE [dbo].[userorder] CHECK CONSTRAINT [FK_userorder_companyregist]
GO
/****** Object:  ForeignKey [FK_userorder_comprodetails]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[userorder]  WITH CHECK ADD  CONSTRAINT [FK_userorder_comprodetails] FOREIGN KEY([productid])
REFERENCES [dbo].[comprodetails] ([productId])
GO
ALTER TABLE [dbo].[userorder] CHECK CONSTRAINT [FK_userorder_comprodetails]
GO
/****** Object:  ForeignKey [FK_userorder_userreg]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[userorder]  WITH CHECK ADD  CONSTRAINT [FK_userorder_userreg] FOREIGN KEY([userid])
REFERENCES [dbo].[userreg] ([userId])
GO
ALTER TABLE [dbo].[userorder] CHECK CONSTRAINT [FK_userorder_userreg]
GO
/****** Object:  ForeignKey [FK_userreg_login1]    Script Date: 04/20/2017 16:19:26 ******/
ALTER TABLE [dbo].[userreg]  WITH CHECK ADD  CONSTRAINT [FK_userreg_login1] FOREIGN KEY([logid])
REFERENCES [dbo].[login1] ([logid])
GO
ALTER TABLE [dbo].[userreg] CHECK CONSTRAINT [FK_userreg_login1]
GO
