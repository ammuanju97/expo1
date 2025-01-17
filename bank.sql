USE [dreamzBank]
GO
/****** Object:  Table [dbo].[tbl_transaction]    Script Date: 03/23/2017 13:05:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_transaction](
	[tId] [int] IDENTITY(1,1) NOT NULL,
	[fromAccountNo] [varchar](50) NULL,
	[toAccountNo] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[tId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_AccountDetails]    Script Date: 03/23/2017 13:05:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AccountDetails](
	[Aid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[accountNo] [nvarchar](50) NULL,
	[cardNo] [nvarchar](50) NULL,
	[cvv] [nvarchar](50) NULL,
	[transactionPassword] [varchar](50) NULL,
	[balance] [decimal](18, 2) NULL,
 CONSTRAINT [PK_AccountDetails] PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
