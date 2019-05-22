USE [GameHubGlobal_DB]
GO
/****** Object:  Table [dbo].[gAttendance]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gAttendance](
	[Idx] [int] NOT NULL,
	[Money] [int] NOT NULL,
	[Gem] [int] NOT NULL,
	[Bonus] [int] NOT NULL,
 CONSTRAINT [PK_gAttendance] PRIMARY KEY CLUSTERED 
(
	[Idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gAttendance_Log]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gAttendance_Log](
	[RegDay] [nvarchar](10) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gAttendance_Log] PRIMARY KEY CLUSTERED 
(
	[RegDay] ASC,
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gAvata_Log]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gAvata_Log](
	[LogIdx] [int] IDENTITY(1,1) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[AvataIdx] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gAvata_Log] PRIMARY KEY CLUSTERED 
(
	[LogIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gAvataBox]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gAvataBox](
	[UserIdx] [int] NOT NULL,
	[AvataIdx] [int] NOT NULL,
	[Avata] [int] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gAvataShop]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gAvataShop](
	[AvataIdx] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ImageUrl] [nvarchar](100) NOT NULL,
	[Money] [bigint] NOT NULL,
	[best] [int] NOT NULL,
	[Gem] [int] NOT NULL,
	[UseTime] [int] NOT NULL,
	[Hot] [int] NOT NULL,
	[Free] [int] NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gAvataShop] PRIMARY KEY CLUSTERED 
(
	[AvataIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gBaccaratLog]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gBaccaratLog](
	[LogNo] [varchar](20) NOT NULL,
	[RoomNo] [int] NOT NULL,
	[Round] [int] NOT NULL,
	[ResultJokbo] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gBaccaratLog] PRIMARY KEY CLUSTERED 
(
	[LogNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gBaccaratUserLog]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gBaccaratUserLog](
	[LogNo] [varchar](20) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[SelBeting] [int] NOT NULL,
	[BetingMoney] [bigint] NOT NULL,
	[WinLoseMoney] [bigint] NOT NULL,
	[FirstUserMoney] [bigint] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gBaccaratUserLog] PRIMARY KEY CLUSTERED 
(
	[LogNo] ASC,
	[UserIdx] ASC,
	[SelBeting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gBotLog]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gBotLog](
	[LogNo] [varchar](50) NULL,
	[RoomNo] [int] NOT NULL,
	[Nick] [varchar](100) NOT NULL,
	[StartUser] [int] NOT NULL,
	[GameCount] [int] NOT NULL,
	[LoopCount] [int] NOT NULL,
	[BotType] [int] NOT NULL,
	[FirstBeting] [int] NOT NULL,
	[OpenType] [int] NOT NULL,
	[MyCard] [varchar](100) NOT NULL,
	[BotRand] [int] NOT NULL,
	[CallMoney] [bigint] NOT NULL,
	[Beting] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gBotNick]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gBotNick](
	[Nick] [varchar](100) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gBotNick] PRIMARY KEY CLUSTERED 
(
	[Nick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gBox]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gBox](
	[BoxIdx] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Money] [bigint] NOT NULL,
	[Gem] [int] NOT NULL,
	[ItemIdx] [int] NOT NULL,
	[GetItem] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gBugTable]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gBugTable](
	[LogNo] [varchar](20) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[OldFirstMoney] [bigint] NOT NULL,
	[FirstMoney] [bigint] NOT NULL,
	[UserMoney] [bigint] NOT NULL,
	[WinLoseMoney] [bigint] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gBugTable] PRIMARY KEY CLUSTERED 
(
	[LogNo] ASC,
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gCash_Log]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gCash_Log](
	[CashIdx] [int] IDENTITY(1,1) NOT NULL,
	[GemIdx] [int] NOT NULL,
	[Useridx] [int] NOT NULL,
	[Cash] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[UserGroup] [int] NULL,
 CONSTRAINT [PK_gCash_Log] PRIMARY KEY CLUSTERED 
(
	[CashIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gCash_Log2]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gCash_Log2](
	[Cashidx] [int] IDENTITY(1,1) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[GemIdx] [int] NOT NULL,
	[Cash] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gCash_Log2] PRIMARY KEY CLUSTERED 
(
	[Cashidx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gConnLog]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gConnLog](
	[LogIdx] [int] IDENTITY(1,1) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[IP] [nvarchar](20) NOT NULL,
	[InReg] [datetime] NULL,
	[OutReg] [datetime] NULL,
 CONSTRAINT [PK_gConnLog] PRIMARY KEY CLUSTERED 
(
	[LogIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gConnToken]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gConnToken](
	[UserIdx] [bigint] NOT NULL,
	[TokenKey] [varchar](20) NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gConnUser]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gConnUser](
	[UserIdx] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[Room] [int] NOT NULL,
	[Enty] [int] NOT NULL,
	[IP] [nvarchar](20) NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gConnUser] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gContinuation]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gContinuation](
	[RegDay] [nvarchar](10) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[ConDay] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gContinuation] PRIMARY KEY CLUSTERED 
(
	[RegDay] ASC,
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gCoupon]    Script Date: 2018-12-28 오전 10:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gCoupon](
	[CouponNum] [nvarchar](30) NOT NULL,
	[CouponUse] [int] NOT NULL,
	[CouponType] [int] NOT NULL,
 CONSTRAINT [PK_gCoupon] PRIMARY KEY CLUSTERED 
(
	[CouponNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gCoupon_Log]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gCoupon_Log](
	[UserIdx] [int] NOT NULL,
	[CouponNum] [nvarchar](30) NOT NULL,
	[CouponType] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gCoupon_Type]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gCoupon_Type](
	[CouponType] [int] NOT NULL,
	[Money] [bigint] NOT NULL,
	[Gem] [int] NOT NULL,
	[PickIdx] [int] NOT NULL,
	[BonusMoney] [int] NOT NULL,
	[OverLap] [int] NOT NULL,
	[Account] [int] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gCoupon_Type] PRIMARY KEY CLUSTERED 
(
	[CouponType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gDbError]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gDbError](
	[GamePort] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gDisConnUser]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gDisConnUser](
	[UserIdx] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[Room] [int] NOT NULL,
	[SeedMoney] [int] NOT NULL,
	[IP] [nvarchar](20) NOT NULL,
	[GameAuto] [int] NOT NULL,
	[TableMoney] [bigint] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gDisConnUser] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gDummy]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gDummy](
	[Enty] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
 CONSTRAINT [PK_gDummy] PRIMARY KEY CLUSTERED 
(
	[Enty] ASC,
	[GameKind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gEvent_User]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gEvent_User](
	[EventIdx] [int] NOT NULL,
	[UserIdx] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gEvent_Work]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gEvent_Work](
	[EventIdx] [int] IDENTITY(1,1) NOT NULL,
	[EventStartTime] [datetime] NOT NULL,
	[EventEndTime] [datetime] NOT NULL,
	[Money] [int] NOT NULL,
	[Gem] [int] NOT NULL,
	[BonusMoney] [int] NOT NULL,
	[Pick] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gEventAttendance]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gEventAttendance](
	[EventIdx] [int] NOT NULL,
	[EventDay] [int] NOT NULL,
	[EventMoney] [int] NOT NULL,
	[EventBonusMoney] [int] NOT NULL,
	[EventGem] [int] NOT NULL,
	[EventPick] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gEventAttendance_Log]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gEventAttendance_Log](
	[RegDay] [varchar](10) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[EventIdx] [int] NOT NULL,
	[EventDay] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gEventAttendance_Log] PRIMARY KEY CLUSTERED 
(
	[RegDay] ASC,
	[UserIdx] ASC,
	[EventIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gEventTime]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gEventTime](
	[EventIdx] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
 CONSTRAINT [PK_gEventTime] PRIMARY KEY CLUSTERED 
(
	[EventIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gFaceBook_Log]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gFaceBook_Log](
	[UserIdx] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gFreeCharge]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gFreeCharge](
	[UserIdx] [int] NOT NULL,
	[Free] [int] NOT NULL,
	[Video] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gGame_Notice]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gGame_Notice](
	[Notice] [nvarchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gGame_Notice_Log]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gGame_Notice_Log](
	[UserIdx] [int] NOT NULL,
 CONSTRAINT [PK_gGame_Notice_Log] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gGameLog]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gGameLog](
	[Logidx] [nvarchar](20) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[Room] [int] NOT NULL,
	[Rank] [int] NOT NULL,
	[UserMoney] [bigint] NOT NULL,
	[WinLoseMoney] [bigint] NOT NULL,
	[Jokbo] [nvarchar](30) NULL,
	[LastBetting] [nvarchar](10) NULL,
	[CardInfo] [nvarchar](40) NULL,
	[SeedMoney] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gGameLog] PRIMARY KEY CLUSTERED 
(
	[Logidx] DESC,
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gGem_Log]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gGem_Log](
	[LogIdx] [int] IDENTITY(1,1) NOT NULL,
	[Useridx] [int] NOT NULL,
	[Gem] [int] NOT NULL,
	[MyGem] [int] NOT NULL,
	[Explain] [nvarchar](100) NULL,
	[RegDate] [datetime] NOT NULL,
	[UserGroup] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gGemShop]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gGemShop](
	[GemIdx] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ImageUrl] [nvarchar](100) NOT NULL,
	[Gem] [int] NOT NULL,
	[Per] [int] NOT NULL,
	[Best] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[GoogleKey] [nvarchar](20) NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gShop] PRIMARY KEY CLUSTERED 
(
	[GemIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gHistory]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gHistory](
	[RoomIdx] [int] NOT NULL,
	[HIstory] [varchar](300) NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gHistory] PRIMARY KEY CLUSTERED 
(
	[RoomIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gInitDay]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gInitDay](
	[RegDay] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_gInitDay] PRIMARY KEY CLUSTERED 
(
	[RegDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gJackPot]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gJackPot](
	[Money] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gLimitDay]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gLimitDay](
	[UserGroup] [int] NOT NULL,
	[DayMoney] [bigint] NOT NULL,
 CONSTRAINT [PK_gDayLimit] PRIMARY KEY CLUSTERED 
(
	[UserGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gLimitDay2]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gLimitDay2](
	[UserIdx] [int] NOT NULL,
	[DayMoney] [bigint] NOT NULL,
 CONSTRAINT [PK_gLimitDay] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gLive]    Script Date: 2018-12-28 오전 10:14:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gLive](
	[Live] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMember]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMember](
	[UserIdx] [int] IDENTITY(1001,1) NOT NULL,
	[UserID] [nvarchar](100) NULL,
	[PassWD] [varbinary](100) NOT NULL,
	[Nick] [nvarchar](100) NULL,
	[RegID] [nvarchar](250) NULL,
	[Avata] [int] NOT NULL,
	[Social] [int] NOT NULL,
	[Gem] [int] NOT NULL,
	[Money] [bigint] NOT NULL,
	[Email] [nvarchar](100) NULL,
	[bonsa] [int] NULL,
	[chongpan] [int] NULL,
	[RegDate] [datetime] NOT NULL,
	[Block] [int] NULL,
	[kcertCI] [nvarchar](2000) NULL,
	[kcertCIDate] [datetime] NULL,
	[UserGroup] [int] NULL,
	[Mileage] [bigint] NULL,
 CONSTRAINT [PK_gMember_1] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gmember_Add]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gmember_Add](
	[UserIdx] [int] NOT NULL,
	[Total] [int] NOT NULL,
	[Win] [int] NOT NULL,
	[Lose] [int] NOT NULL,
	[TodayMoney] [bigint] NOT NULL,
 CONSTRAINT [PK_gmember_Add] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMileageTable]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMileageTable](
	[VIPLevel] [int] NOT NULL,
	[MileageRate] [float] NOT NULL,
 CONSTRAINT [PK_gMileageTable] PRIMARY KEY CLUSTERED 
(
	[VIPLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMission_Today_Choice]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMission_Today_Choice](
	[Idx] [int] NOT NULL,
	[MIdx] [int] NOT NULL,
 CONSTRAINT [PK_gMission_Choice] PRIMARY KEY CLUSTERED 
(
	[Idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMission_Today_Content]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMission_Today_Content](
	[MIdx] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MType] [int] NOT NULL,
	[MNum] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
	[MBonusMoney] [bigint] NOT NULL,
 CONSTRAINT [PK_gMission] PRIMARY KEY CLUSTERED 
(
	[MIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMission_Today_Game]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMission_Today_Game](
	[UserIdx] [int] NOT NULL,
	[TotGame] [int] NOT NULL,
	[WinGame] [int] NOT NULL,
	[OneWin] [int] NOT NULL,
	[TwoWin] [int] NOT NULL,
	[TriWin] [int] NOT NULL,
	[Buy] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMission_Today_Result]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMission_Today_Result](
	[UserIdx] [int] NOT NULL,
	[MType] [int] NOT NULL,
	[MCount] [int] NOT NULL,
	[MFinish] [int] NOT NULL,
	[MGet] [int] NOT NULL,
	[RegDate] [datetime] NULL,
 CONSTRAINT [PK_gMission_Result] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC,
	[MType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMission_Total_Content]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMission_Total_Content](
	[MIdx] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MType] [int] NOT NULL,
	[MNum] [int] NOT NULL,
	[MBonusMoney] [int] NOT NULL,
	[MGem] [int] NOT NULL,
	[MRandPick] [int] NOT NULL,
	[GameKind] [int] NOT NULL,
 CONSTRAINT [PK_gMission_Total_Content] PRIMARY KEY CLUSTERED 
(
	[MIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMission_Total_Game]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMission_Total_Game](
	[UserIdx] [int] NOT NULL,
	[TotGame] [int] NOT NULL,
	[WinGame] [int] NOT NULL,
	[Room1] [int] NOT NULL,
	[Room2] [int] NOT NULL,
	[Room3] [int] NOT NULL,
	[Room4] [int] NOT NULL,
	[Room5] [int] NOT NULL,
	[Secretary_Buy] [int] NOT NULL,
	[MaxBetting] [int] NOT NULL,
	[FullHouse] [int] NOT NULL,
	[FourCardJokbo] [int] NOT NULL,
	[SFJokbo] [int] NOT NULL,
	[RSFJokbo] [int] NOT NULL,
 CONSTRAINT [PK_gMission_Total] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gMission_Total_Result]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gMission_Total_Result](
	[UserIdx] [int] NOT NULL,
	[MIdx] [int] NOT NULL,
	[MCount] [int] NOT NULL,
	[MFinish] [int] NOT NULL,
	[MGet] [int] NOT NULL,
	[RegDate] [datetime] NULL,
 CONSTRAINT [PK_gMission_Total_Result] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC,
	[MIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gNotice]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gNotice](
	[NIdx] [int] NOT NULL,
	[IsCheck] [int] NOT NULL,
	[Ver] [int] NOT NULL,
	[Msg] [nvarchar](250) NULL,
 CONSTRAINT [PK_gNotice] PRIMARY KEY CLUSTERED 
(
	[NIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gOption]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gOption](
	[UserIdx] [int] NOT NULL,
	[Auto] [int] NOT NULL,
	[Push] [int] NOT NULL,
	[NightPush] [int] NOT NULL,
 CONSTRAINT [PK_gOption] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gPickShop]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gPickShop](
	[PickIdx] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ImageUrl] [nvarchar](100) NOT NULL,
	[UseTime] [int] NOT NULL,
	[Rubi] [int] NOT NULL,
	[RewardMoney] [bigint] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[PickSort] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gPictorial]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gPictorial](
	[UserIdx] [int] NOT NULL,
	[PicIdx] [int] NOT NULL,
	[RegDate] [datetime] NULL,
 CONSTRAINT [PK_gPictorial] PRIMARY KEY CLUSTERED 
(
	[UserIdx] ASC,
	[PicIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gPlayCoin_Log]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gPlayCoin_Log](
	[LogIdx] [bigint] IDENTITY(1,1) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[Item] [nvarchar](30) NULL,
	[PaymentId] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gPlayCoin_Log] PRIMARY KEY CLUSTERED 
(
	[LogIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gPlayCoinShop]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gPlayCoinShop](
	[PlayCoinIdx] [int] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[PlayCoin] [int] NOT NULL,
 CONSTRAINT [PK_gPlayCoinShop] PRIMARY KEY CLUSTERED 
(
	[PlayCoinIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gPostBox]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gPostBox](
	[PostIdx] [int] IDENTITY(1,1) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Gem] [int] NOT NULL,
	[Money] [int] NOT NULL,
	[BonusMoney] [int] NOT NULL,
	[PickIdx] [int] NOT NULL,
	[OwnDay] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gPostBox] PRIMARY KEY CLUSTERED 
(
	[PostIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gReceipt]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gReceipt](
	[paymentid] [int] NOT NULL,
	[GameItem] [nvarchar](30) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[Finish] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_gReceipt] PRIMARY KEY CLUSTERED 
(
	[paymentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gServer]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gServer](
	[Ver] [int] NOT NULL,
	[IsMsg] [int] NOT NULL,
	[Msg] [nvarchar](500) NULL,
	[RegDate] [datetime] NULL,
 CONSTRAINT [PK_gServer] PRIMARY KEY CLUSTERED 
(
	[Ver] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gSetingCard]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gSetingCard](
	[GameKind] [int] NOT NULL,
	[Rand] [int] NOT NULL,
	[Card] [nvarchar](200) NOT NULL,
	[UserCard] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_gSetingCard] PRIMARY KEY CLUSTERED 
(
	[GameKind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gSlot_Chance]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gSlot_Chance](
	[SlotNum] [int] NOT NULL,
	[Jokbo] [int] NOT NULL,
	[StartChance] [int] NOT NULL,
	[EndChance] [int] NOT NULL,
	[Money] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gSlotInfo]    Script Date: 2018-12-28 오전 10:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gSlotInfo](
	[MachineNo] [int] NOT NULL,
	[MachineName] [nvarchar](50) NOT NULL,
	[BPLInfo] [nvarchar](100) NOT NULL,
	[TotalCoinIn] [bigint] NOT NULL,
	[TotalCoinOut] [bigint] NOT NULL,
 CONSTRAINT [PK_gSlotInfo] PRIMARY KEY CLUSTERED 
(
	[MachineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gSlotLog]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gSlotLog](
	[LogIdx] [bigint] IDENTITY(1,1) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[MachineNo] [int] NOT NULL,
	[BetTime] [datetime] NOT NULL,
	[BeforeMoney] [bigint] NOT NULL,
	[TotalBet] [int] NOT NULL,
	[Prize] [bigint] NOT NULL,
	[AfterMoney] [bigint] NOT NULL,
	[BetResult] [text] NULL,
 CONSTRAINT [PK_gSlotLog] PRIMARY KEY CLUSTERED 
(
	[LogIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gStartPai]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gStartPai](
	[LogNo] [varchar](20) NOT NULL,
	[GameKind] [int] NOT NULL,
	[StartPai] [varchar](200) NOT NULL,
 CONSTRAINT [PK_gStartPai] PRIMARY KEY CLUSTERED 
(
	[LogNo] ASC,
	[GameKind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gTest]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gTest](
	[nCount] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sAdMember]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sAdMember](
	[ad_idx] [int] IDENTITY(1,1) NOT NULL,
	[ad_id] [nvarchar](50) NOT NULL,
	[ad_pw] [varbinary](256) NOT NULL,
	[ad_name] [nvarchar](50) NOT NULL,
	[ad_level] [int] NOT NULL,
	[ad_use] [tinyint] NOT NULL,
	[ad_date] [datetime] NOT NULL,
 CONSTRAINT [PK_sAdMember_1] PRIMARY KEY CLUSTERED 
(
	[ad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sAdMember_Login]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sAdMember_Login](
	[ad_history] [bigint] IDENTITY(1,1) NOT NULL,
	[ad_id] [nvarchar](50) NULL,
	[ad_ip] [nvarchar](50) NULL,
	[ad_state] [int] NULL,
	[ad_date] [datetime] NULL,
 CONSTRAINT [PK_sAdMember_Login] PRIMARY KEY CLUSTERED 
(
	[ad_history] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sFaq]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sFaq](
	[faq_idx] [bigint] IDENTITY(1,1) NOT NULL,
	[faq_title] [nvarchar](100) NULL,
	[faq_content] [nvarchar](max) NULL,
	[faq_Gtype] [int] NOT NULL,
	[faq_Qtype] [int] NOT NULL,
	[faq_Use] [int] NOT NULL,
	[faq_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_sFaq] PRIMARY KEY CLUSTERED 
(
	[faq_idx] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sForbidden]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sForbidden](
	[fb_idx] [bigint] IDENTITY(1,1) NOT NULL,
	[fb_txt] [nvarchar](50) NULL,
	[fb_date] [datetime] NOT NULL,
 CONSTRAINT [PK_sForbidden] PRIMARY KEY CLUSTERED 
(
	[fb_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sGame_Notice_Log]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sGame_Notice_Log](
	[Notice] [varchar](300) NULL,
	[ad_idx] [int] NULL,
	[ad_ip] [nvarchar](50) NULL,
	[ad_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sGameGuide]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sGameGuide](
	[gg_idx] [int] IDENTITY(1,1) NOT NULL,
	[gg_title] [nvarchar](50) NULL,
	[gg_memo] [nvarchar](1000) NULL,
	[gg_file1] [nvarchar](100) NULL,
	[gg_file2] [nvarchar](100) NULL,
	[gg_use] [int] NOT NULL,
	[gg_Gtype] [int] NOT NULL,
	[gg_orderby] [int] NOT NULL,
	[gg_lan] [int] NOT NULL,
	[gg_date] [datetime] NOT NULL,
 CONSTRAINT [PK_sGameGuide] PRIMARY KEY CLUSTERED 
(
	[gg_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sGameType]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sGameType](
	[g_idx] [int] NOT NULL,
	[g_Num] [int] NOT NULL,
	[g_Name] [nvarchar](100) NULL,
	[g_Use] [int] NOT NULL,
	[g_date] [datetime] NOT NULL,
 CONSTRAINT [PK_sGameType] PRIMARY KEY CLUSTERED 
(
	[g_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sGameType_Log]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sGameType_Log](
	[g_idx] [int] NULL,
	[g_Num] [int] NULL,
	[g_Name] [nvarchar](100) NULL,
	[g_Use] [int] NULL,
	[g_date] [datetime] NULL,
	[g_adidx] [int] NULL,
	[g_adip] [nvarchar](50) NULL,
	[g_addate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slot_log]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slot_log](
	[LogIdx] [int] IDENTITY(1,1) NOT NULL,
	[UserIdx] [int] NOT NULL,
	[SlotNum] [int] NOT NULL,
	[BetingMoney] [int] NOT NULL,
	[UserMoney] [bigint] NOT NULL,
	[BonusMoney] [bigint] NOT NULL,
	[WinMoney] [bigint] NOT NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_slot_log] PRIMARY KEY CLUSTERED 
(
	[LogIdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sMember_DelLog]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sMember_DelLog](
	[UserIdx] [int] NULL,
	[UserID] [nvarchar](100) NULL,
	[PassWD] [varbinary](100) NULL,
	[Nick] [nvarchar](100) NULL,
	[RegID] [nvarchar](250) NULL,
	[Avata] [int] NULL,
	[Social] [int] NULL,
	[Gem] [int] NULL,
	[Money] [bigint] NULL,
	[Email] [nvarchar](100) NULL,
	[bonsa] [int] NULL,
	[chongpan] [int] NULL,
	[RegDate] [datetime] NULL,
	[Block] [int] NULL,
	[kcertCI] [nvarchar](2000) NULL,
	[kcertCIDate] [datetime] NULL,
	[UserGroup] [int] NULL,
	[Mileage] [bigint] NULL,
	[ad_idx] [int] NULL,
	[ad_ip] [nvarchar](50) NULL,
	[ad_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sMember_PassFind_Log]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sMember_PassFind_Log](
	[upf_idx] [bigint] IDENTITY(1,1) NOT NULL,
	[upf_UserId] [nvarchar](100) NOT NULL,
	[upf_Email] [nvarchar](100) NOT NULL,
	[upf_IP] [nvarchar](50) NOT NULL,
	[upf_date] [datetime] NOT NULL,
	[upf_state] [int] NOT NULL,
 CONSTRAINT [PK_sMember_PassFind_Log] PRIMARY KEY CLUSTERED 
(
	[upf_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sNotice]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sNotice](
	[gn_idx] [bigint] IDENTITY(1,1) NOT NULL,
	[gn_title] [nvarchar](100) NULL,
	[gn_content] [nvarchar](max) NULL,
	[gn_Gtype] [int] NOT NULL,
	[gn_Stype] [int] NOT NULL,
	[gn_status] [int] NOT NULL,
	[gn_date] [datetime] NOT NULL,
 CONSTRAINT [PK_sNotice] PRIMARY KEY CLUSTERED 
(
	[gn_idx] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sNotice_Log]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sNotice_Log](
	[NIdx] [int] NULL,
	[IsCheck] [int] NULL,
	[Ver] [int] NULL,
	[Msg] [nvarchar](250) NULL,
	[ad_idx] [int] NULL,
	[ad_ip] [nvarchar](50) NULL,
	[ad_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sQuestionType]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sQuestionType](
	[gqt_idx] [bigint] IDENTITY(1,1) NOT NULL,
	[gqt_memo] [nvarchar](max) NULL,
	[gqt_use] [int] NOT NULL,
	[gqt_date] [datetime] NOT NULL,
 CONSTRAINT [PK_sQuestionType] PRIMARY KEY CLUSTERED 
(
	[gqt_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sServiceCenter]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sServiceCenter](
	[sb_idx] [bigint] IDENTITY(1,1) NOT NULL,
	[sb_UserID] [nvarchar](100) NULL,
	[sb_content] [nvarchar](max) NULL,
	[sb_answer] [nvarchar](max) NULL,
	[sb_use] [int] NOT NULL,
	[sb_email] [nvarchar](100) NULL,
	[sb_phone] [nvarchar](50) NULL,
	[sb_gtype] [int] NOT NULL,
	[sb_qtype] [int] NOT NULL,
	[sb_Udate] [datetime] NOT NULL,
	[sb_Adate] [datetime] NULL,
 CONSTRAINT [PK_sServiceCenter] PRIMARY KEY CLUSTERED 
(
	[sb_idx] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sSetingCard_Log]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sSetingCard_Log](
	[GameKind] [int] NULL,
	[Rand] [int] NULL,
	[Card] [nvarchar](200) NULL,
	[UserCard] [nvarchar](200) NULL,
	[UserIP] [nvarchar](50) NULL,
	[RegDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sTerms]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sTerms](
	[gt_idx] [int] IDENTITY(1,1) NOT NULL,
	[gt_term] [nvarchar](max) NULL,
	[gt_use] [int] NOT NULL,
	[gt_type] [nvarchar](50) NULL,
	[gt_Gtype] [int] NOT NULL,
	[gt_Lan] [int] NULL,
	[gt_date] [datetime] NOT NULL,
 CONSTRAINT [PK_sTerms] PRIMARY KEY CLUSTERED 
(
	[gt_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sTerms_Log]    Script Date: 2018-12-28 오전 10:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sTerms_Log](
	[gt_idx] [int] NULL,
	[gt_term] [nvarchar](max) NULL,
	[gt_use] [int] NULL,
	[gt_type] [nvarchar](50) NULL,
	[gt_Gtype] [int] NULL,
	[gt_Lan] [int] NULL,
	[gt_date] [datetime] NULL,
	[gt_adidx] [int] NULL,
	[gt_adip] [nvarchar](50) NULL,
	[gt_addate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[gAttendance] ADD  CONSTRAINT [DF_gAttendance_Money]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[gAttendance] ADD  CONSTRAINT [DF_gAttendance_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[gAttendance] ADD  CONSTRAINT [DF_gAttendance_Bonus]  DEFAULT ((0)) FOR [Bonus]
GO
ALTER TABLE [dbo].[gAttendance_Log] ADD  CONSTRAINT [DF_gAttendance_Log_Day]  DEFAULT ((1)) FOR [Day]
GO
ALTER TABLE [dbo].[gAvata_Log] ADD  CONSTRAINT [DF_gAvata_Log_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gAvataBox] ADD  CONSTRAINT [DF_gAvataBox_Avata]  DEFAULT ((0)) FOR [Avata]
GO
ALTER TABLE [dbo].[gAvataBox] ADD  CONSTRAINT [DF_gAvataBox_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gAvataShop] ADD  CONSTRAINT [DF_gAvataShop_Hot]  DEFAULT ((0)) FOR [Hot]
GO
ALTER TABLE [dbo].[gAvataShop] ADD  CONSTRAINT [DF_gAvataShop_Free]  DEFAULT ((0)) FOR [Free]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_GameCount]  DEFAULT ((0)) FOR [GameCount]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_LoopCount]  DEFAULT ((0)) FOR [LoopCount]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_BotType]  DEFAULT ((0)) FOR [BotType]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_FirstBeting]  DEFAULT ((0)) FOR [FirstBeting]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_OpenType]  DEFAULT ((0)) FOR [OpenType]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_BotRand]  DEFAULT ((0)) FOR [BotRand]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_CallMoney]  DEFAULT ((0)) FOR [CallMoney]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_Beting]  DEFAULT ((0)) FOR [Beting]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_GameKind]  DEFAULT ((0)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gBotLog] ADD  CONSTRAINT [DF_gBotLog_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gBotNick] ADD  CONSTRAINT [DF_gBotNick_UserIdx]  DEFAULT ((0)) FOR [UserIdx]
GO
ALTER TABLE [dbo].[gBotNick] ADD  CONSTRAINT [DF_gBotNick_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gBox] ADD  CONSTRAINT [DF_gBox_Money]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[gBox] ADD  CONSTRAINT [DF_gBox_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[gBox] ADD  CONSTRAINT [DF_gBox_GetItem]  DEFAULT ((0)) FOR [GetItem]
GO
ALTER TABLE [dbo].[gBugTable] ADD  CONSTRAINT [DF_gBugTable_OldFirstMoney]  DEFAULT ((0)) FOR [OldFirstMoney]
GO
ALTER TABLE [dbo].[gBugTable] ADD  CONSTRAINT [DF_gBugTable_FirstMoney]  DEFAULT ((0)) FOR [FirstMoney]
GO
ALTER TABLE [dbo].[gBugTable] ADD  CONSTRAINT [DF_gBugTable_UserMoney]  DEFAULT ((0)) FOR [UserMoney]
GO
ALTER TABLE [dbo].[gBugTable] ADD  CONSTRAINT [DF_gBugTable_WinLoseMoney]  DEFAULT ((0)) FOR [WinLoseMoney]
GO
ALTER TABLE [dbo].[gCash_Log] ADD  CONSTRAINT [DF_gCash_Log_GameKind]  DEFAULT ((1)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gCash_Log] ADD  CONSTRAINT [DF_gCash_Log_GroupIdx]  DEFAULT ((0)) FOR [UserGroup]
GO
ALTER TABLE [dbo].[gCash_Log2] ADD  CONSTRAINT [DF_gCash_Log2_Cash]  DEFAULT ((0)) FOR [Cash]
GO
ALTER TABLE [dbo].[gCash_Log2] ADD  CONSTRAINT [DF_gCash_Log2_GameKind]  DEFAULT ((2)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gCash_Log2] ADD  CONSTRAINT [DF_gCash_Log2_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gConnUser] ADD  CONSTRAINT [DF_gConnUser_GameKind]  DEFAULT ((0)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gConnUser] ADD  CONSTRAINT [DF_gConnUser_Room]  DEFAULT ((0)) FOR [Room]
GO
ALTER TABLE [dbo].[gConnUser] ADD  CONSTRAINT [DF_gConnUser_Enty]  DEFAULT ((0)) FOR [Enty]
GO
ALTER TABLE [dbo].[gConnUser] ADD  CONSTRAINT [DF_gConnUser_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gContinuation] ADD  CONSTRAINT [DF_Table_1_continuation]  DEFAULT ((0)) FOR [ConDay]
GO
ALTER TABLE [dbo].[gCoupon] ADD  CONSTRAINT [DF_gCoupon_CouponUse]  DEFAULT ((0)) FOR [CouponUse]
GO
ALTER TABLE [dbo].[gCoupon_Log] ADD  CONSTRAINT [DF_gCoupon_Log_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gCoupon_Type] ADD  CONSTRAINT [DF_gCoupon_Type_Money]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[gCoupon_Type] ADD  CONSTRAINT [DF_gCoupon_Type_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[gCoupon_Type] ADD  CONSTRAINT [DF_gCoupon_Type_PickIdx]  DEFAULT ((0)) FOR [PickIdx]
GO
ALTER TABLE [dbo].[gCoupon_Type] ADD  CONSTRAINT [DF_gCoupon_Type_BonusMoney]  DEFAULT ((0)) FOR [BonusMoney]
GO
ALTER TABLE [dbo].[gCoupon_Type] ADD  CONSTRAINT [DF_gCoupon_Type_OverLap]  DEFAULT ((0)) FOR [OverLap]
GO
ALTER TABLE [dbo].[gCoupon_Type] ADD  CONSTRAINT [DF_gCoupon_Type_Account]  DEFAULT ((0)) FOR [Account]
GO
ALTER TABLE [dbo].[gDisConnUser] ADD  CONSTRAINT [DF_gDisConnUser_GameKind]  DEFAULT ((0)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gDisConnUser] ADD  CONSTRAINT [DF_gDisConnUser_SeedMoney]  DEFAULT ((0)) FOR [SeedMoney]
GO
ALTER TABLE [dbo].[gDisConnUser] ADD  CONSTRAINT [DF_gDisConnUser_GameAuto]  DEFAULT ((0)) FOR [GameAuto]
GO
ALTER TABLE [dbo].[gDisConnUser] ADD  CONSTRAINT [DF_gDisConnUser_TableMoney]  DEFAULT ((0)) FOR [TableMoney]
GO
ALTER TABLE [dbo].[gDisConnUser] ADD  CONSTRAINT [DF_gDisConnUser_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gDummy] ADD  CONSTRAINT [DF_gDummy_GameKind]  DEFAULT ((2)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gEvent_User] ADD  CONSTRAINT [DF_gEvent_User_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gEvent_Work] ADD  CONSTRAINT [DF_gEvent_Work_Money]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[gEvent_Work] ADD  CONSTRAINT [DF_gEvent_Work_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[gEvent_Work] ADD  CONSTRAINT [DF_gEvent_Work_Pick]  DEFAULT ((3000)) FOR [Pick]
GO
ALTER TABLE [dbo].[gEvent_Work] ADD  CONSTRAINT [DF_gEvent_Work_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gEventAttendance] ADD  CONSTRAINT [DF_gEventAttendance_EventMoney]  DEFAULT ((0)) FOR [EventMoney]
GO
ALTER TABLE [dbo].[gEventAttendance] ADD  CONSTRAINT [DF_gEventAttendance_EventBonusMoney]  DEFAULT ((0)) FOR [EventBonusMoney]
GO
ALTER TABLE [dbo].[gEventAttendance] ADD  CONSTRAINT [DF_gEventAttendance_EventGem]  DEFAULT ((0)) FOR [EventGem]
GO
ALTER TABLE [dbo].[gEventAttendance] ADD  CONSTRAINT [DF_gEventAttendance_EventPick]  DEFAULT ((0)) FOR [EventPick]
GO
ALTER TABLE [dbo].[gFreeCharge] ADD  CONSTRAINT [DF_Table_1_Free]  DEFAULT ((0)) FOR [Free]
GO
ALTER TABLE [dbo].[gFreeCharge] ADD  CONSTRAINT [DF_Table_1_Video]  DEFAULT ((0)) FOR [Video]
GO
ALTER TABLE [dbo].[gGameLog] ADD  CONSTRAINT [DF_gGameLog_GameKind]  DEFAULT ((1)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gGameLog] ADD  CONSTRAINT [DF_gGameLog_Room]  DEFAULT ((0)) FOR [Room]
GO
ALTER TABLE [dbo].[gGameLog] ADD  CONSTRAINT [DF_gGameLog_WinLose]  DEFAULT ((0)) FOR [WinLoseMoney]
GO
ALTER TABLE [dbo].[gGameLog] ADD  CONSTRAINT [DF_gGameLog_SeedMoney]  DEFAULT ((0)) FOR [SeedMoney]
GO
ALTER TABLE [dbo].[gGem_Log] ADD  CONSTRAINT [DF_gGem_Log_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[gGem_Log] ADD  CONSTRAINT [DF_gGem_Log_MyGem]  DEFAULT ((0)) FOR [MyGem]
GO
ALTER TABLE [dbo].[gGem_Log] ADD  CONSTRAINT [DF_gGem_Log_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gGem_Log] ADD  CONSTRAINT [DF_gGem_Log_UserGroup]  DEFAULT ((0)) FOR [UserGroup]
GO
ALTER TABLE [dbo].[gGemShop] ADD  CONSTRAINT [DF_gShop_Present]  DEFAULT ((0)) FOR [Per]
GO
ALTER TABLE [dbo].[gGemShop] ADD  CONSTRAINT [DF_gShop_Best]  DEFAULT ((0)) FOR [Best]
GO
ALTER TABLE [dbo].[gJackPot] ADD  CONSTRAINT [DF_gJackPot_Money]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[gLimitDay] ADD  CONSTRAINT [DF_gDayLimit_DayMoney]  DEFAULT ((0)) FOR [DayMoney]
GO
ALTER TABLE [dbo].[gLimitDay2] ADD  CONSTRAINT [DF_gLimitDay_DayMoney]  DEFAULT ((0)) FOR [DayMoney]
GO
ALTER TABLE [dbo].[gLive] ADD  CONSTRAINT [DF_gLive_Live]  DEFAULT ((1)) FOR [Live]
GO
ALTER TABLE [dbo].[gMember] ADD  CONSTRAINT [DF_gMember_Avata]  DEFAULT ((2007)) FOR [Avata]
GO
ALTER TABLE [dbo].[gMember] ADD  CONSTRAINT [DF_gMember_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[gMember] ADD  CONSTRAINT [DF_gMember_Money]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[gMember] ADD  CONSTRAINT [DF_gMember_bonsa]  DEFAULT ((0)) FOR [bonsa]
GO
ALTER TABLE [dbo].[gMember] ADD  CONSTRAINT [DF_gMember_chongpan]  DEFAULT ((0)) FOR [chongpan]
GO
ALTER TABLE [dbo].[gMember] ADD  CONSTRAINT [DF_gMember_Block]  DEFAULT ((0)) FOR [Block]
GO
ALTER TABLE [dbo].[gMember] ADD  CONSTRAINT [DF_gMember_UserGroup]  DEFAULT ((0)) FOR [UserGroup]
GO
ALTER TABLE [dbo].[gmember_Add] ADD  CONSTRAINT [DF_gmember_Add_Total]  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[gmember_Add] ADD  CONSTRAINT [DF_gmember_Add_Win]  DEFAULT ((0)) FOR [Win]
GO
ALTER TABLE [dbo].[gmember_Add] ADD  CONSTRAINT [DF_gmember_Add_Lose]  DEFAULT ((0)) FOR [Lose]
GO
ALTER TABLE [dbo].[gmember_Add] ADD  CONSTRAINT [DF_gmember_Add_TodayMoney]  DEFAULT ((0)) FOR [TodayMoney]
GO
ALTER TABLE [dbo].[gMission_Today_Content] ADD  CONSTRAINT [DF_gMission_MNum]  DEFAULT ((0)) FOR [MNum]
GO
ALTER TABLE [dbo].[gMission_Today_Content] ADD  CONSTRAINT [DF_gMission_Today_Content_GameKind]  DEFAULT ((0)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gMission_Today_Content] ADD  CONSTRAINT [DF_gMission_Today_Content_MBonusMoney]  DEFAULT ((0)) FOR [MBonusMoney]
GO
ALTER TABLE [dbo].[gMission_Today_Game] ADD  CONSTRAINT [DF_Table_1_TGame]  DEFAULT ((0)) FOR [TotGame]
GO
ALTER TABLE [dbo].[gMission_Today_Game] ADD  CONSTRAINT [DF_gMission_Today_WinGame]  DEFAULT ((0)) FOR [WinGame]
GO
ALTER TABLE [dbo].[gMission_Today_Game] ADD  CONSTRAINT [DF_gMission_Today_OneWin]  DEFAULT ((0)) FOR [OneWin]
GO
ALTER TABLE [dbo].[gMission_Today_Game] ADD  CONSTRAINT [DF_gMission_Today_TwoWin]  DEFAULT ((0)) FOR [TwoWin]
GO
ALTER TABLE [dbo].[gMission_Today_Game] ADD  CONSTRAINT [DF_gMission_Today_TriWin]  DEFAULT ((0)) FOR [TriWin]
GO
ALTER TABLE [dbo].[gMission_Today_Game] ADD  CONSTRAINT [DF_gMission_Today_Buy]  DEFAULT ((0)) FOR [Buy]
GO
ALTER TABLE [dbo].[gMission_Today_Result] ADD  CONSTRAINT [DF_gMission_Result_MType]  DEFAULT ((0)) FOR [MType]
GO
ALTER TABLE [dbo].[gMission_Today_Result] ADD  CONSTRAINT [DF_gMission_Today_Result_MCount]  DEFAULT ((0)) FOR [MCount]
GO
ALTER TABLE [dbo].[gMission_Today_Result] ADD  CONSTRAINT [DF_gMission_Result_MFinish]  DEFAULT ((0)) FOR [MFinish]
GO
ALTER TABLE [dbo].[gMission_Today_Result] ADD  CONSTRAINT [DF_gMission_Result_MGet]  DEFAULT ((0)) FOR [MGet]
GO
ALTER TABLE [dbo].[gMission_Total_Content] ADD  CONSTRAINT [DF_gMission_Total_Content_MType]  DEFAULT ((0)) FOR [MType]
GO
ALTER TABLE [dbo].[gMission_Total_Content] ADD  CONSTRAINT [DF_gMission_Total_Content_MNum]  DEFAULT ((0)) FOR [MNum]
GO
ALTER TABLE [dbo].[gMission_Total_Content] ADD  CONSTRAINT [DF_gMission_Total_Content_MBonusMoney]  DEFAULT ((0)) FOR [MBonusMoney]
GO
ALTER TABLE [dbo].[gMission_Total_Content] ADD  CONSTRAINT [DF_gMission_Total_Content_MGem]  DEFAULT ((0)) FOR [MGem]
GO
ALTER TABLE [dbo].[gMission_Total_Content] ADD  CONSTRAINT [DF_gMission_Total_Content_MRandPick]  DEFAULT ((0)) FOR [MRandPick]
GO
ALTER TABLE [dbo].[gMission_Total_Content] ADD  CONSTRAINT [DF_gMission_Total_Content_GameKind]  DEFAULT ((0)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_TotGame]  DEFAULT ((0)) FOR [TotGame]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_WinGame]  DEFAULT ((0)) FOR [WinGame]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_Room1]  DEFAULT ((0)) FOR [Room1]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_Room2]  DEFAULT ((0)) FOR [Room2]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_Room3]  DEFAULT ((0)) FOR [Room3]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_Room4]  DEFAULT ((0)) FOR [Room4]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_Room5]  DEFAULT ((0)) FOR [Room5]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_Table_1_Secretary]  DEFAULT ((0)) FOR [Secretary_Buy]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_MaxBetting]  DEFAULT ((0)) FOR [MaxBetting]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_FullHouse]  DEFAULT ((0)) FOR [FullHouse]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_Table_1_FourCard]  DEFAULT ((0)) FOR [FourCardJokbo]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_Table_1_SFCard]  DEFAULT ((0)) FOR [SFJokbo]
GO
ALTER TABLE [dbo].[gMission_Total_Game] ADD  CONSTRAINT [DF_gMission_Total_RSFJokbo]  DEFAULT ((0)) FOR [RSFJokbo]
GO
ALTER TABLE [dbo].[gMission_Total_Result] ADD  CONSTRAINT [DF_gMission_Total_Result_MCount]  DEFAULT ((0)) FOR [MCount]
GO
ALTER TABLE [dbo].[gMission_Total_Result] ADD  CONSTRAINT [DF_gMission_Total_Result_MFinish]  DEFAULT ((0)) FOR [MFinish]
GO
ALTER TABLE [dbo].[gMission_Total_Result] ADD  CONSTRAINT [DF_gMission_Total_Result_MGet]  DEFAULT ((0)) FOR [MGet]
GO
ALTER TABLE [dbo].[gMission_Total_Result] ADD  CONSTRAINT [DF_gMission_Total_Result_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gNotice] ADD  CONSTRAINT [DF_gNotice_IsCheck]  DEFAULT ((0)) FOR [IsCheck]
GO
ALTER TABLE [dbo].[gNotice] ADD  CONSTRAINT [DF_gNotice_Ver]  DEFAULT ((0)) FOR [Ver]
GO
ALTER TABLE [dbo].[gOption] ADD  CONSTRAINT [DF_gOption_Auto]  DEFAULT ((1)) FOR [Auto]
GO
ALTER TABLE [dbo].[gOption] ADD  CONSTRAINT [DF_gOption_Push]  DEFAULT ((1)) FOR [Push]
GO
ALTER TABLE [dbo].[gOption] ADD  CONSTRAINT [DF_gOption_NightPush]  DEFAULT ((1)) FOR [NightPush]
GO
ALTER TABLE [dbo].[gPickShop] ADD  CONSTRAINT [DF_gPickShop_PickSort]  DEFAULT ((0)) FOR [PickSort]
GO
ALTER TABLE [dbo].[gPictorial] ADD  CONSTRAINT [DF_gPictorial_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gPostBox] ADD  CONSTRAINT [DF_gPostBox_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[gPostBox] ADD  CONSTRAINT [DF_gPostBox_Money_1]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[gPostBox] ADD  CONSTRAINT [DF_gPostBox_Money]  DEFAULT ((0)) FOR [BonusMoney]
GO
ALTER TABLE [dbo].[gPostBox] ADD  CONSTRAINT [DF_gPostBox_PIckIdx]  DEFAULT ((0)) FOR [PickIdx]
GO
ALTER TABLE [dbo].[gPostBox] ADD  CONSTRAINT [DF_gPostBox_OwnDay]  DEFAULT ((10)) FOR [OwnDay]
GO
ALTER TABLE [dbo].[gPostBox] ADD  CONSTRAINT [DF_gPostBox_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gReceipt] ADD  CONSTRAINT [DF_gReceipt_Finish]  DEFAULT ((0)) FOR [Finish]
GO
ALTER TABLE [dbo].[gServer] ADD  CONSTRAINT [DF_gServer_Ver]  DEFAULT ((100)) FOR [Ver]
GO
ALTER TABLE [dbo].[gServer] ADD  CONSTRAINT [DF_gServer_IsMsg]  DEFAULT ((0)) FOR [IsMsg]
GO
ALTER TABLE [dbo].[gServer] ADD  CONSTRAINT [DF_gServer_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[gSetingCard] ADD  CONSTRAINT [DF_gSetingCard_GameKind]  DEFAULT ((5)) FOR [GameKind]
GO
ALTER TABLE [dbo].[gSetingCard] ADD  CONSTRAINT [DF_gSetingCard_Rand]  DEFAULT ((1)) FOR [Rand]
GO
ALTER TABLE [dbo].[gSlotInfo] ADD  CONSTRAINT [DF_gSlotInfo_TotalCoinIn]  DEFAULT ((0)) FOR [TotalCoinIn]
GO
ALTER TABLE [dbo].[gSlotInfo] ADD  CONSTRAINT [DF_gSlotInfo_TotalCoinOut]  DEFAULT ((0)) FOR [TotalCoinOut]
GO
ALTER TABLE [dbo].[gTest] ADD  CONSTRAINT [DF_gTest_nCount]  DEFAULT ((0)) FOR [nCount]
GO
ALTER TABLE [dbo].[gTest] ADD  CONSTRAINT [DF_gTest_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[sAdMember] ADD  CONSTRAINT [DF_sAdMember_ad_use]  DEFAULT ((0)) FOR [ad_use]
GO
ALTER TABLE [dbo].[sAdMember] ADD  CONSTRAINT [DF_sAdMember_ad_date]  DEFAULT (getdate()) FOR [ad_date]
GO
ALTER TABLE [dbo].[sAdMember_Login] ADD  CONSTRAINT [DF_sAdMember_Login_ad_state]  DEFAULT ((0)) FOR [ad_state]
GO
ALTER TABLE [dbo].[sAdMember_Login] ADD  CONSTRAINT [DF_sAdMember_Login_ad_date]  DEFAULT (getdate()) FOR [ad_date]
GO
ALTER TABLE [dbo].[sFaq] ADD  CONSTRAINT [DF_sFaq_faq_Use]  DEFAULT ((0)) FOR [faq_Use]
GO
ALTER TABLE [dbo].[sFaq] ADD  CONSTRAINT [DF_sFaq_faq_Date]  DEFAULT (getdate()) FOR [faq_Date]
GO
ALTER TABLE [dbo].[sForbidden] ADD  CONSTRAINT [DF_sForbidden_fb_date]  DEFAULT (getdate()) FOR [fb_date]
GO
ALTER TABLE [dbo].[sGame_Notice_Log] ADD  CONSTRAINT [DF_sGame_Notice_Log_ad_date]  DEFAULT (getdate()) FOR [ad_date]
GO
ALTER TABLE [dbo].[sGameGuide] ADD  CONSTRAINT [DF_sGameGuide_gg_use]  DEFAULT ((0)) FOR [gg_use]
GO
ALTER TABLE [dbo].[sGameGuide] ADD  CONSTRAINT [DF_sGameGuide_gg_lan]  DEFAULT ((1)) FOR [gg_lan]
GO
ALTER TABLE [dbo].[sGameGuide] ADD  CONSTRAINT [DF_sGameGuide_gg_date]  DEFAULT (getdate()) FOR [gg_date]
GO
ALTER TABLE [dbo].[sGameType] ADD  CONSTRAINT [DF_sGameType_g_Num]  DEFAULT ((0)) FOR [g_Num]
GO
ALTER TABLE [dbo].[sGameType] ADD  CONSTRAINT [DF_sGameType_g_Use]  DEFAULT ((0)) FOR [g_Use]
GO
ALTER TABLE [dbo].[sGameType] ADD  CONSTRAINT [DF_sGameType_g_date]  DEFAULT (getdate()) FOR [g_date]
GO
ALTER TABLE [dbo].[sGameType_Log] ADD  CONSTRAINT [DF_sGameType_Log_g_Num]  DEFAULT ((0)) FOR [g_Num]
GO
ALTER TABLE [dbo].[sGameType_Log] ADD  CONSTRAINT [DF_sGameType_Log_g_Use]  DEFAULT ((0)) FOR [g_Use]
GO
ALTER TABLE [dbo].[sGameType_Log] ADD  CONSTRAINT [DF_sGameType_Log_g_date]  DEFAULT (getdate()) FOR [g_date]
GO
ALTER TABLE [dbo].[sGameType_Log] ADD  CONSTRAINT [DF_sGameType_Log_g_addate]  DEFAULT (getdate()) FOR [g_addate]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_Avata]  DEFAULT ((2007)) FOR [Avata]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_Gem]  DEFAULT ((0)) FOR [Gem]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_Money]  DEFAULT ((0)) FOR [Money]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_bonsa]  DEFAULT ((0)) FOR [bonsa]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_chongpan]  DEFAULT ((0)) FOR [chongpan]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_Block]  DEFAULT ((0)) FOR [Block]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_UserGroup]  DEFAULT ((0)) FOR [UserGroup]
GO
ALTER TABLE [dbo].[sMember_DelLog] ADD  CONSTRAINT [DF_sMember_DelLog_ad_date]  DEFAULT (getdate()) FOR [ad_date]
GO
ALTER TABLE [dbo].[sMember_PassFind_Log] ADD  CONSTRAINT [DF_sMember_PassFind_Log_upf_date]  DEFAULT (getdate()) FOR [upf_date]
GO
ALTER TABLE [dbo].[sMember_PassFind_Log] ADD  CONSTRAINT [DF_sMember_PassFind_Log_upf_state]  DEFAULT ((0)) FOR [upf_state]
GO
ALTER TABLE [dbo].[sNotice] ADD  CONSTRAINT [DF_sNotice_gn_status]  DEFAULT ((0)) FOR [gn_status]
GO
ALTER TABLE [dbo].[sNotice] ADD  CONSTRAINT [DF_sNotice_gn_date]  DEFAULT (getdate()) FOR [gn_date]
GO
ALTER TABLE [dbo].[sNotice_Log] ADD  CONSTRAINT [DF_sNotice_Log_IsCheck]  DEFAULT ((0)) FOR [IsCheck]
GO
ALTER TABLE [dbo].[sNotice_Log] ADD  CONSTRAINT [DF_sNotice_Log_Ver]  DEFAULT ((0)) FOR [Ver]
GO
ALTER TABLE [dbo].[sNotice_Log] ADD  CONSTRAINT [DF_sNotice_Log_ad_date]  DEFAULT (getdate()) FOR [ad_date]
GO
ALTER TABLE [dbo].[sQuestionType] ADD  CONSTRAINT [DF_sQuestionType_gqt_use]  DEFAULT ((0)) FOR [gqt_use]
GO
ALTER TABLE [dbo].[sQuestionType] ADD  CONSTRAINT [DF_sQuestionType_gqt_date]  DEFAULT (getdate()) FOR [gqt_date]
GO
ALTER TABLE [dbo].[sServiceCenter] ADD  CONSTRAINT [DF_sServiceCenter_sb_use]  DEFAULT ((0)) FOR [sb_use]
GO
ALTER TABLE [dbo].[sServiceCenter] ADD  CONSTRAINT [DF_sServiceCenter_sb_gtype]  DEFAULT ((1)) FOR [sb_gtype]
GO
ALTER TABLE [dbo].[sServiceCenter] ADD  CONSTRAINT [DF_sServiceCenter_sb_qtype]  DEFAULT ((0)) FOR [sb_qtype]
GO
ALTER TABLE [dbo].[sServiceCenter] ADD  CONSTRAINT [DF_sServiceCenter_sb_Udate]  DEFAULT (getdate()) FOR [sb_Udate]
GO
ALTER TABLE [dbo].[sServiceCenter] ADD  CONSTRAINT [DF_sServiceCenter_sb_Adate]  DEFAULT (getdate()) FOR [sb_Adate]
GO
ALTER TABLE [dbo].[sSetingCard_Log] ADD  CONSTRAINT [DF_sSetingCard_Log_GameKind]  DEFAULT ((5)) FOR [GameKind]
GO
ALTER TABLE [dbo].[sSetingCard_Log] ADD  CONSTRAINT [DF_sSetingCard_Log_Rand]  DEFAULT ((1)) FOR [Rand]
GO
ALTER TABLE [dbo].[sSetingCard_Log] ADD  CONSTRAINT [DF__sSetingCa__RegDa__32767D0B]  DEFAULT (getdate()) FOR [RegDate]
GO
ALTER TABLE [dbo].[sTerms] ADD  CONSTRAINT [DF_sTerms_gt_use]  DEFAULT ((0)) FOR [gt_use]
GO
ALTER TABLE [dbo].[sTerms] ADD  CONSTRAINT [DF_sTerms_gt_Gtype]  DEFAULT ((0)) FOR [gt_Gtype]
GO
ALTER TABLE [dbo].[sTerms] ADD  CONSTRAINT [DF_sTerms_gt_Lan]  DEFAULT ((1)) FOR [gt_Lan]
GO
ALTER TABLE [dbo].[sTerms] ADD  CONSTRAINT [DF_sTerms_gt_date]  DEFAULT (getdate()) FOR [gt_date]
GO
ALTER TABLE [dbo].[sTerms_Log] ADD  CONSTRAINT [DF_sTerms_Log_gt_use]  DEFAULT ((0)) FOR [gt_use]
GO
ALTER TABLE [dbo].[sTerms_Log] ADD  CONSTRAINT [DF_sTerms_Log_gt_Gtype]  DEFAULT ((0)) FOR [gt_Gtype]
GO
ALTER TABLE [dbo].[sTerms_Log] ADD  CONSTRAINT [DF_sTerms_Log_gt_Lan]  DEFAULT ((1)) FOR [gt_Lan]
GO
ALTER TABLE [dbo].[sTerms_Log] ADD  CONSTRAINT [DF_sTerms_Log_gt_date]  DEFAULT (getdate()) FOR [gt_date]
GO
ALTER TABLE [dbo].[sTerms_Log] ADD  CONSTRAINT [DF_sTerms_Log_gt_addate]  DEFAULT (getdate()) FOR [gt_addate]
GO
/****** Object:  StoredProcedure [dbo].[TEST_JOKBO_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TEST_JOKBO_SELECT]
	-- Add the parameters for the stored procedure here
	@GamekInd	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select GgType from pictorial.dbo.tGameGenealogyAuto where Ggidx=@GamekInd;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ADULT_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE  [dbo].[USP_ADULT_INSERT]
	-- Add the parameters for the stored procedure here
	@Name		varchar(60) = '',
	@PhoneNo	varchar(15) = '',
	@Gender		varchar(1) = 0,  -- 0 : 남자, 1 : 여자
	@BirthDay	varchar(8),
	@CI			varchar(88),
	@DI			varchar(64),
	@UserIdx	bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @rand varchar(20)
	declare @COUNT int
	declare @RESULT int
	declare @GroupIdx	bigint

	INSERT INTO pictorial.dbo.gAdult(Name, PhoneNo, Gender, BirthDay, CI, DI, UserIdx, RegDate) values(@Name, @PhoneNo, @Gender, @BirthDay, @CI, @DI, @UserIdx, Getdate()); 

	SELECT @GroupIdx = MIN(Adultidx) FROM pictorial.dbo.gAdult WHERE CI=@CI;

	UPDATE pictorial.dbo.gAdult SET @GroupIdx = @GroupIdx WHERE AdultIdx= @@IDENTITY;

	SELECT FLOOR(CAST(DATEDIFF(DAY, @BirthDay  ,GETDATE()) AS INTEGER)/365.2422);
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AVATA_SELECT_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_AVATA_SELECT_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx		int,
	@AvataIdx		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT int
	DECLARE @RESULT int

	SET @RESULT = -1;


    -- Insert statements for procedure here
	DELETE FROM gAvataBox where EndDate < getdate();

	SELECT @COUNT=COUNT(*) FROM gAvataBox WHERE UserIdx=@UserIdx and Avataidx=@AvataIdx;
	
	IF @COUNT > 0 or (@AvataIdx >= 2007 and @AvataIdx <= 2008)
	BEGIN 
		UPDATE gAvataBox SET Avata=0 WHERE UserIdx=@UserIdx and Avata=1;
		UPDATE gAvataBox SET Avata=1 WHERE UserIdx=@UserIdx and Avataidx=@AvataIdx;
		UPDATE pictorial.dbo.gMember SET Avata=@AvataIdx WHERE UserIdx=@UserIdx;

		SET @RESULT = 0;
	END

	SELECT @RESULT;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AVATA_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_AVATA_UPDATE] 
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@AvataIdx		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT2 int
	DECLARE @Result int
	DECLARE @Gem int
	DECLARE @MyGem int
	DECLARE @AvataDay	int
	DECLARE @Money	bigint
	DECLARE @UserGroup int
	DECLARE @UseGem int

	SET @Result = -1;

    -- Insert statements for procedure here
	select @COUNT2= COUNT(*) from gAvataShop WHERE AvataIdx = @AvataIdx;

	IF @COUNT2 > 0 
	begin
		SELECT @Gem = Gem, @AvataDay=UseTime, @Money=Money FROM gAvataShop WHERE AvataIdx = @AvataIdx;
		SELECT @MyGem = Gem, @UserGroup=UserGroup FROM pictorial.dbo.gMember WHERE UserIdx = @UserIdx;

		select @UseGem=isnull(sum(Gem), 0) from pictorial.dbo.gGem_Log where usergroup=@UserGroup and left(convert(char(10), regdate, 23), 7)=left(convert(char(8), getdate(), 23), 7) and gem < 0;

		

		if @UseGem - @Gem >= -5000
		begin
			IF @AvataIdx >= 2007 and @AvataIdx <= 2008 
			begin
				UPDATE pictorial.dbo.gMember SET Avata=@AvataIdx WHERE UserIdx=@UserIdx;
				SET @Result = 0;
			end
			else
			begin
				IF @MyGem >= @Gem
				Begin
					UPDATE pictorial.dbo.gMember SET Gem=Gem-@Gem, Money=Money+@Money WHERE UserIdx=@UserIdx;
					INSERT INTO pictorial.dbo.gGem_Log(Useridx, Gem, MyGem, Explain, RegDate, UserGroup) values(@UserIdx, -@Gem, @MyGem, '아바타구입', getdate(), @UserGroup);

					SELECT @COUNT2 = COUNT(*) FROM gAvataBox WHERE UserIdx=@UserIdx and AvataIdx=@AvataIdx;

					IF @COUNT2 > 0 
						UPDATE gAvataBox SET EndDate = DATEADD(Day, @AvataDay, EndDate) WHERE UserIdx=@UserIdx and AvataIdx=@AvataIdx;
					ELSE
						INSERT INTO gAvataBox(UserIdx, AvataIdx, EndDate, RegDate) values(@UserIdx, @AvataIdx,  CONVERT(CHAR(10), DATEADD(day, @AvataDay, GETDATE()),121), getdate());

					INSERT INTO gAvata_Log(UserIdx, AvataIdx, RegDate) values(@UserIdx, @AvataIdx, getdate());

					SET @Result = 0;
				end
				else
				begin
					SET @Result = -2;
				end
			end
		end
		else
		begin
			SET @Result = -4;
		end
	end
	else
		SET @Result = -3;

	SELECT @Result;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BACCARAT_GAME_LOG]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_BACCARAT_GAME_LOG]
	-- Add the parameters for the stored procedure here
	@LogNo		varchar(20),
	@Room		int,
	@Round		int,
	@Jokbo		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gBaccaratLog(LogNo, RoomNo, Round, ResultJokbo, RegDate) values(@LogNo, @Room, @Round, @Jokbo, getdate());
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BACCARAT_USER_LOG]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_BACCARAT_USER_LOG]
	-- Add the parameters for the stored procedure here
	@LogNo		varchar(20),
	@UserIdx		int,
	@SelBet		int,
	@BetingMoney		bigint,
	@WinLoseMoney		bigint,
	@FirstUserMoney		bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gBaccaratUserLog(LogNo, UserIdx, SelBeting, BetingMoney, WinLoseMoney, FirstUserMoney, RegDate) values(@LogNo, @UserIdx, @SelBet, @BetingMoney, @WinLoseMoney, @FirstUserMoney, getdate());
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BOT_LOG]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_BOT_LOG]
	-- Add the parameters for the stored procedure here
	@LogNo  varchar(50),
	@Room	int,
	@Nick	varchar(100),
	@StartUser	int,
	@GameCount	int,
	@LoopCount	int,
	@BotType	int,
	@FirstBeting	int,
	@OpenType	int,
	@Card		varchar(100),
	@Rand		int,
	@CallMoney	bigint,
	@Beting		int,
	@GameKind	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gBotLog values(@LogNo, @Room, @Nick, @StartUser, @GameCount, @LoopCount, @BotType, @FirstBeting, @OpenType, @Card, @Rand, @CallMoney, @Beting, @GameKind, getdate());
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CASHLIMIT_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_CASHLIMIT_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@Item	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Cash int
	DECLARE @MonthCash	int
	DECLARE @Money		int
	DECLARE @UserGroup int

    -- Insert statements for procedure here

	SELECT @UserGroup=UserGroup from pictorial.dbo.gMember WHERE UserIdx=@UserIdx;

	SELECT @Cash=Price FROM gGemShop WHERE GemIdx=@Item;

	select @MonthCash = isnull(sum(cash), 0) from pictorial.dbo.gCash_Log where usergroup=@UserGroup and left(convert(char(10), regdate, 23), 7)=left(convert(char(8), getdate(), 23), 7);

	SET @Money = @Cash + @MonthCash;

	if @Money > 500000
		SET @Money = -1;
	
	SELECT @Money;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CONNTOKEN_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_CONNTOKEN_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @rand varchar(20)

	SET @rand = SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 8) + SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 8);

	DELETE FROM pictorial.dbo.gConnToken WHERE UserIdx=@UserIdx;

	INSERT INTO pictorial.dbo.gConnToken values(@UserIdx, @rand, getdate());
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CONNTOKEN_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[USP_CONNTOKEN_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


	DECLARE @Result varchar(20)

	SET @Result = '';

	SELECT @RESULT=TokenKey FROM pictorial.dbo.gConnToken WHERE UserIdx=@UserIdx;
		
	SELECT @RESULT;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CONNTOKEN_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[USP_CONNTOKEN_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Token		varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @rand varchar(20)
	declare @COUNT int
	declare @RESULT int

	SET @RESULT = -1;

	SELECT @COUNT=COUNT(*) FROM pictorial.dbo.gConnToken WHERE UserIdx=@UserIdx and TokenKey=@Token;

	IF @COUNT > 0
	BEGIN
		SET @rand = SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 8) + SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 8);
		UPDATE pictorial.dbo.gConnToken SET TokenKey=@rand WHERE UserIdx=@UserIdx;
		SET @RESULT = 1;
	END
	
	SELECT @RESULT;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DAY_INIT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_DAY_INIT]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @COUNT2 int

    -- Insert statements for procedure here
	SELECT @COUNT2=COUNT(*) FROM gInitDay WHERE RegDay=convert(char(10), getdate(), 112);

	IF @COUNT2 = 0 
	begin
		-- 일일업무 랜덤 생성
		UPDATE gMission_Today_Choice SET Midx=(select top 1 MIdx from [dbo].[gMission_Today_Content] where MType=1 order by newid()) WHERE Idx=1;
		UPDATE gMission_Today_Choice SET Midx=(select top 1 MIdx from [dbo].[gMission_Today_Content] where MType=2 order by newid()) WHERE Idx=2;
		UPDATE gMission_Today_Choice SET Midx=(select top 1 MIdx from [dbo].[gMission_Today_Content] where MType=3 order by newid()) WHERE Idx=3;
		UPDATE gMission_Today_Choice SET Midx=(select top 1 MIdx from [dbo].[gMission_Today_Content] where MType=4 order by newid()) WHERE Idx=4;
		UPDATE gMission_Today_Choice SET Midx=(select top 1 MIdx from [dbo].[gMission_Today_Content] where MType=5 order by newid()) WHERE Idx=5;
		UPDATE gMission_Today_Choice SET Midx=(select top 1 MIdx from [dbo].[gMission_Today_Content] where MType=6 order by newid()) WHERE Idx=6;

		-- 일일업무 초기화
		UPDATE gMission_Today_Result SET MCount = 0, MFinish = 0, MGet = 0;

		delete from gPostBox where datediff(dd, getdate(), dateadd(day, 10, RegDate)) < 0 ;

		INSERT INTO gInitDay VALUES(convert(char(10), getdate(), 112));

		UPDATE gMember_Add SET TodayMoney=0;

		UPDATE gFreeCharge SET Free=0, Video=0;

		UPDATE gPostBox SET OwnDay = OwnDay - 1;

		update pictorial.dbo.gLimitDay set DayMoney=0;

		DELETE FROM gPostBox WHERE OwnDay <= 0;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DBERROR]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_DBERROR]
	-- Add the parameters for the stored procedure here
	@GamePort	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO pictorial.dbo.gDbError values(@GamePort, getdate());
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DBLIVE_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_DBLIVE_SELECT]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Live FROM pictorial.dbo.gLive;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DISCONN_DELETE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE[dbo].[USP_DISCONN_DELETE]
-- Add the parameters for the stored procedure here
	@UserIdx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
--	SELECT UserID FROM pictorial.dbo.gMember WHERE UserIdx < 1000 and UserIdx=@UserIdx;
	DELETE FROM pictorial.dbo.gDisConnUser WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DISCONN_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_DISCONN_INSERT] 
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@GameKind	int,
	@Room		int,
	@SeedMoney	int,
	@IP			nvarchar(20),
	@Auto		int = 0,
	@TableMoney	bigint = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gDisConnUser(UserIdx, GameKind, Room, SeedMoney, IP, RegDate, GameAuto, TableMoney) values(@UserIdx, @GameKind, @Room, @SeedMoney, @IP, getdate(), @Auto, @TableMoney);
END
GO
/****** Object:  StoredProcedure [dbo].[USP_EVENT_PICK_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_EVENT_PICK_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@PickIdx	int,
	@EventPickIdx	int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Rand int
	DECLARE @Pick_Select int
	DECLARE @Count2 int
	DECLARE @PickCount int
	DECLARE @Result int
	DECLARE @UseTime int


	SET @Result = -1;
	SET @EventPickIdx = -1;

	IF @PickIdx >= 5000
	BEGIN
		SET @UseTime = 5;
		SET @PickIdx = @PickIdx - 2000;
	END
	ELSE  IF @PickIdx >= 4000
	BEGIN
		SET @UseTime = 2;
		SET @PickIdx = @PickIdx - 1000;
	END
	ELSE
		SET @UseTime = 0;

	SELECT @Rand = cast(100*rand() + 1 as INT);

	IF @PickIdx > 3000
		SELECT @Pick_Select = pic_idx FROM pictorial.dbo.tb_pictorial_chance WHERE Pick_Idx=@PickIdx and @Rand BETWEEN motal_start AND motal_end;
	ELSE
		SELECT @Pick_Select = pic_idx FROM pictorial.dbo.tb_pictorial_chance WHERE @Rand BETWEEN total_start AND total_end;

	if @Pick_Select > 0 
	begin
		SET @EventPickIdx = @Pick_Select;

		SELECT @Count2=Count(*) FROM pictorial.dbo.gSecretaryBox WHERE UserIdx=@UserIdx and Pic_Idx=@Pick_Select;

		if @Count2 > 0
			UPDATE pictorial.dbo.gSecretaryBox SET EndDate = DATEADD(Day, @UseTime, EndDate) WHERE UserIdx=@UserIdx and Pic_Idx=@Pick_Select;
		ELSE
			INSERT INTO pictorial.dbo.gSecretaryBox(UserIdx, Pic_Idx, Secretary, EndDate, RegDate) values(@UserIdx, @Pick_Select, 0, CONVERT(CHAR(10), DATEADD(day, @UseTime, GETDATE()),121), getdate());
	end

--	SELECT @Pick_Select;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_FREEMONEY_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_FREEMONEY_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@FreeMoney	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @COUNT int
	DECLARE @FREE int
	DECLARE @RESULT int

	DECLARE @Secretary int
	DECLARE @Secretary_rating int 
	DECLARE @MaxFree int 
	DECLARE @NowFree int 

	DECLARE @MaxFreeMoney int 

	SET @RESULT = -1;

	SET @Secretary = 0;
	SET @Secretary_rating = 0;
	select @Secretary=A.Pic_Idx,@Secretary_rating=B.pic_rating from pictorial.dbo.gSecretaryBox A LEFT JOIN  pictorial.dbo.tb_pictorial_main B on A.Pic_Idx=B.pic_idx where useridx=@UserIdx and Secretary=1;

	if @Secretary >= 42 and @Secretary <= 44
	begin
		if @Secretary_rating = 3
		begin
			SET @MaxFree = 10;
		end
		else if @Secretary_rating = 2
		begin
			SET @MaxFree = 8;
		end
		else if @Secretary_rating = 1
		begin
			SET @MaxFree = 7;
		end
		else
		begin
			SET @MaxFree = 5;
		end
	end
	else
	begin
		SET @MaxFree = 5;
	end

	if @Secretary >= 39 and @Secretary <= 41
	begin
		if @Secretary_rating = 3
		begin
			SET @MaxFreeMoney = @FreeMoney + 500000;
		end
		else if @Secretary_rating = 2
		begin
			SET @MaxFreeMoney = @FreeMoney + 300000;
		end
		else if @Secretary_rating = 1
		begin
			SET @MaxFreeMoney = @FreeMoney + 200000;
		end
		else
		begin
			SET @MaxFreeMoney = @FreeMoney;
		end
	end
	else
	begin
		SET @MaxFreeMoney = @FreeMoney;
	end

	

	select @NowFree=Free from gFreeCharge where UserIdx=@UserIdx;

	SET @Free = @MaxFree - @NowFree;

    -- Insert statements for procedure here
	SELECT @COUNT=COUNT(*) FROM pictorial.dbo.gMember WHERE UserIdx = @UserIdx and Money < @FreeMoney;
--	SELECT @FREE = Free FROM gFreeCharge WHERE UserIdx = @UserIdx;

	IF @COUNT > 0 and @FREE > 0
	begin
		UPDATE  pictorial.dbo.gMember SET Money = Money + @MaxFreeMoney WHERE UserIdx = @UserIdx;
		UPDATE gFreeCharge SET Free=Free + 1 WHERE UserIdx = @UserIdx;
		SET @RESULT = @FREE - 1;
	end
	else if @FREE = 0
		SET @RESULT = -2;
	else 
		SET @RESULT = -3;

	SELECT @RESULT, @MaxFreeMoney;

END
GO
/****** Object:  StoredProcedure [dbo].[USP_GAME_BOT_NICKCHANGE_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GAME_BOT_NICKCHANGE_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@UserMoney	bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @Nick varchar(100);
	DECLARE @UserMoney2 bigint
	DECLARE @UserGroup int

	UPDATE pictorial.dbo.gMember SET Money=@UserMoney WHERE UserIdx=@UserIdx;

	SELECT @UserGroup=UserGroup FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx;

	UPDATE pictorial.dbo.gLimitDay set DayMoney=0 WHERE UserGroup=@UserGroup;

	UPDATE gBotNick SET UserIdx=0, RegDate=getdate() WHERE UserIdx=@UserIdx;

	SELECT TOP 1 @Nick=Nick FROM (SELECT TOP 30 * FROM gBotNick WHERE UserIdx=0 ORDER BY regdate DESC) A ORDER BY newid(); 

	UPDATE gBotNick SET UserIdx=@UserIdx, RegDate=getdate() WHERE Nick=@NICK;

	SELECT @UserMoney2=Money FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx;

	SELECT @Nick, @UserMoney2;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GAME_LOG]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GAME_LOG] 
	-- Add the parameters for the stored procedure here
	@LogNo		nvarchar(20),
	@UserIdx	int,
	@GameKind	int,
	@Room		int,
	@Rank		int,
	@UserMoney	bigint,
	@WinLoseMoney bigint,
	@Jokbo		nvarchar(40),
	@LastBeting	nvarchar(20) = '',
	@GameInfo	nvarchar(40) = '',
	@SeedMoney int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into gGameLog(Logidx, UserIdx, GameKind, Room, Rank, UserMoney, WinLoseMoney, Jokbo, RegDate, LastBetting, CardInfo, SeedMoney) values(@LogNo, @UserIdx, @GameKind, @Room, @Rank, @UserMoney, @WinLoseMoney, @Jokbo, getdate(), @LastBeting, @GameInfo, @SeedMoney);
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GAME_USER_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE[dbo].[USP_GAME_USER_SELECT]
-- Add the parameters for the stored procedure here
	@UserID	nvarchar(100),
	@PassWD nvarchar(100),
	@Social int = 3
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT UserIdx, UserID, Nick, Avata, Gem, Money, Block FROM gMember WHERE UserID=@UserID and PWDCOMPARE(@PassWD, PassWD) = 1 and Social=@Social;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GAMEKIND_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_GAMEKIND_SELECT]
-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @GameKind int
	DECLARE @SeedMoney int
	DECLARE @Auto int
	DECLARE @TableMoney	bigint

	SET @GameKind = 0;
	SET @SeedMoney = 0;
	SET @Auto = 0;
	SET @TableMoney = 0;

    -- Insert statements for procedure here
	
	SELECT @GameKind=GameKind, @SeedMoney=SeedMoney, @Auto=GameAuto, @TableMoney=TableMoney  FROM gDisConnUser Where UserIdx=@UserIdx;

	SELECT @GameKind, @SeedMoney;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GEM_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_GEM_INSERT] 
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@GemIdx		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT2 int
	DECLARE @Result int
	DECLARE @Gem int
	DECLARE @Cash	int
	DECLARE @MonthCash	int
	DECLARE @MyGem int
	DECLARE @UserGroup int

	SET @Result = -1;

    -- Insert statements for procedure here
	select @COUNT2= COUNT(*) from gGemShop WHERE GemIdx=@GemIdx;

	IF @COUNT2 > 0
	begin
		SELECT @MyGem=Gem, @UserGroup=UserGroup FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx;

		select @MonthCash=isnull(sum(Cash), 0) from pictorial.dbo.gCash_Log WHERE UserIdx=@UserGroup and convert(char(7), RegDate, 112) = convert(char(7), getdate(), 112);

		SELECT @Gem=Gem, @Cash=Price FROM gGemShop WHERE GemIdx=@GemIdx;

		IF @MonthCash + @Cash <= 500000
		BEGIN
			UPDATE pictorial.dbo.gMember SET Gem=Gem+@Gem WHERE UserIdx=@UserIdx;

			INSERT INTO pictorial.dbo.gCash_Log(UserIdx, GemIdx, Cash, RegDate, UserGroup) values(@UserIdx, @GemIdx, @Cash, getdate(), @UserGroup);

			INSERT INTO pictorial.dbo.gGem_Log(Useridx, Gem, MyGem, Explain, RegDate) values(@UserIdx, @Gem, @MyGem, '젬구입', getdate());

			SET @Result = 0;
		END
		ELSE
			SET @Result = -2; -- 한달 캐시 제한 오버
	end

	SELECT @Result;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GEMLIMIT_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[USP_GEMLIMIT_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@AvataIdx	int = 0,
	@PickIdx	int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Gem int
	DECLARE @MonthGem	int
	DECLARE @ToalGem	int
	DECLARE @UserGroup int

	SET @Gem = 0;

    -- Insert statements for procedure here

	SELECT @UserGroup=UserGroup from pictorial.dbo.gMember WHERE UserIdx=@UserIdx;

	IF @PickIdx > 0
		SELECT @Gem=Rubi FROM pictorial.dbo.gPickShop WHERE PickIdx=@PickIdx;
	ELSE
		SELECT @Gem=Gem FROM Poker3DB.dbo.gAvataShop WHERE AvataIdx=@AvataIdx;

	select @MonthGem = isnull(sum(Gem), 0) from pictorial.dbo.gGem_Log where usergroup=@UserGroup and left(convert(char(10), regdate, 23), 7)=left(convert(char(8), getdate(), 23), 7) and Gem < 0;

	SET @ToalGem =@MonthGem - @Gem;

	if @ToalGem < -5000
		SET @ToalGem = -1;
	
	SELECT @ToalGem;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_HISTORY_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[USP_HISTORY_INSERT]
	-- Add the parameters for the stored procedure here
	@Room	int,
	@History	varchar(300)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	UPDATE gHistory SET History=@History, RegDate=getdate() WHERE RoomIdx=@Room;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_HISTORY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[USP_HISTORY_SELECT]
	-- Add the parameters for the stored procedure here
	@Room	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT History FROM gHistory WHERE RoomIdx = @Room;	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JACKPOT_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JACKPOT_SELECT]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Money FROM pictorial.dbo.gJackPot;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JACKPOT_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JACKPOT_UPDATE]
	-- Add the parameters for the stored procedure here
	@ResultJackMoney	bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE pictorial.dbo.gJackPot SET Money = Money + @ResultJackMoney;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JACKPOT_WIN_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JACKPOT_WIN_SELECT]
	-- Add the parameters for the stored procedure here
	@JackPer float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @JackMoney bigint

	SELECT @JackMoney=Money FROM pictorial.dbo.gJackPot;

	IF @JackMoney > 1000000000
		SELECT CAST(@JackMoney * @JackPer as bigint);
	else
		SELECT 0;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JOIN_DELETE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JOIN_DELETE]
	-- Add the parameters for the stored procedure here
	@UserIdx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @COUNT2 int
	declare @UserGroup int


	SET @COUNT2 = 1;

    -- Insert statements for procedure here

	
	DELETE FROM gMission_Today_Result WHERE UserIdx=@UserIdx;
	DELETE FROM gMission_Total_Result WHERE UserIdx=@UserIdx;
	DELETE FROM gMember_Add WHERE UserIdx=@UserIdx;
	DELETE FROM gFreeCharge WHERE UserIdx=@UserIdx;

	SELECT @UserGroup=UserGroup FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx;
	DELETE FROM pictorial.dbo.gLimitDay WHERE UserGroup=@UserGroup;

	select @COUNT2=COUNT(*) FROM FolkDB.dbo.gOption WHERE UserIdx=@UserIdx;

	if @COUNT2 = 0
		exec FolkDB.dbo.USP_JOIN_DELETE @Useridx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JOIN_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JOIN_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @COUNT2 int
	declare @COUNT3 int
	declare @UserGroup int

	SET @COUNT2 = 1;

	INSERT INTO gMission_Today_Result(UserIdx, MType) values(@UserIdx, 1);
	INSERT INTO gMission_Today_Result(UserIdx, MType) values(@UserIdx, 2);
	INSERT INTO gMission_Today_Result(UserIdx, MType) values(@UserIdx, 3);
	INSERT INTO gMission_Today_Result(UserIdx, MType) values(@UserIdx, 4);
	INSERT INTO gMission_Today_Result(UserIdx, MType) values(@UserIdx, 5);
	INSERT INTO gMission_Today_Result(UserIdx, MType) values(@UserIdx, 6);

	SELECT @COUNT3=count(*) FROM [dbo].[gMission_Total_Content];

	while @COUNT2 <= @COUNT3
	begin
		INSERT INTO gMission_Total_Result(UserIdx, MIdx) values(@UserIdx, @COUNT2);
		SET @COUNT2 = @COUNT2 + 1;
	end

	INSERT INTO gMember_Add(UserIdx) values(@UserIdx);
	INSERT INTO gFreeCharge(UserIdx) values(@UserIdx);
	INSERT INTO gOption(UserIdx) values(@UserIdx)

END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_ATTENDANCE_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_ATTENDANCE_SELECT]
	-- Add the parameters for the stored procedure here
	@Useridx int,
	@Today		int output,
	@Check		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Check = 1;
	SET @Today = 0;

	SELECT Top 1 @Today = Day FROM gAttendance_log WHERE useridx=@Useridx order by regdate desc;

	SET @Today = @Today + 1;

	SELECT @Check = COUNT(*) FROM gAttendance_log WHERE regday=convert(nvarchar(10), getdate(), 121) and useridx=@Useridx;	

	IF @Today > 28
		SET @Today = 1;

	select Idx, Money, Gem, Bonus from gAttendance;	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_ATTENDANCE_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_ATTENDANCE_UPDATE]
	-- Add the parameters for the stored procedure here
	@Useridx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @DAY int
	DECLARE @RESULT int
	DECLARE @Money int
	DECLARE @Gem int

	SET @DAY = 0;
	SET @RESULT = -1;
	SET @Money = 0;
	SET @Gem = 0;

	SELECT @RESULT = COUNT(*) FROM gAttendance_log WHERE RegDay=convert(nvarchar(10), getdate(), 121) and UserIdx=@Useridx;

	IF @RESULT = 0 
	BEGIN
		SELECT TOP 1 @DAY=DAY FROM gAttendance_log WHERE useridx=@Useridx order by RegDate desc;

		SET @DAY = @DAY + 1;

		IF @DAY > 28
			SET @DAY = 1;

		INSERT INTO gAttendance_log VALUES(convert(nvarchar(10), getdate(), 121), @Useridx, @DAY, getdate());

		select @Money=Money, @Gem=Gem from gAttendance where Idx=@DAY;

		UPDATE gMember SET Money=Money+@Money, Gem=Gem+@Gem WHERE useridx=@Useridx;

		SET @RESULT = @DAY;
	END
	ELSE
		SET @RESULT = -1;

	SELECT @RESULT, @Money, @Gem;
END

GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_AVATA_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_AVATA_LIST]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Free		int		output,
	@Video		int		output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Secretary int
	DECLARE @Secretary_rating int 
	DECLARE @MaxFree int 
	DECLARE @MaxVideo int 
	DECLARE @NowFree int 
	DECLARE @NowVideo int 

    -- Insert statements for procedure here
	
	SET @MaxFree = 5;
	SET @MaxVideo = 5;

	select @NowFree=Free, @NowVideo=Video from gFreeCharge where UserIdx=@UserIdx;

	SET @Free = @MaxFree - @NowFree;
	SET @Video = @MaxVideo - @NowVideo;


--	SELECT @Free=Free, @Video=Video FROM gFreeCharge WHERE UserIdx=@UserIdx;

	select AvataIdx, Name, ImageUrl, Money, best, Gem, UseTime, Hot FROM gAvataShop WHERE Free=0 Order by AvataIdx desc;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_CARD_SETING_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_JSON_CARD_SETING_SELECT]
	-- Add the parameters for the stored procedure here
	@GameKind int = 5
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT RAND, CARD  FROM gSetingCard WHERE GameKind=@GameKind;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_CONTINUATION_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_CONTINUATION_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Return		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT int

    -- Insert statements for procedure here
--	SELECT COUNT(*) FROM gContinuation WHERE RegDay=CONVERT(nvarchar(10), GETDATE()-1, 121);

	SELECT @COUNT=COUNT(*) FROM gContinuation WHERE RegDay=CONVERT(nvarchar(10), GETDATE(), 121) and UserIdx=@UserIdx;

	IF @COUNT = 0
	BEGIN
		SELECT @COUNT=COUNT(*) FROM gContinuation WHERE RegDay=CONVERT(nvarchar(10), GETDATE()-1, 121) and UserIdx=@UserIdx;

		IF @COUNT = 0
			SET @Return	 = 0;
		ELSE
		begin
			SELECT @Return=ConDay FROM gContinuation WHERE RegDay=CONVERT(nvarchar(10), GETDATE()-1, 121) and UserIdx=@UserIdx;

			if @Return = 7 
				SET @Return = 0;
		end

--		INSERT INTO gContinuation VALUES(CONVERT(nvarchar(10), GETDATE(), 121), @UserIdx, @Return+1, getdate());
	END
	ELSE
		SET @Return = -1;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_COUPON_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_COUPON_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Coupon		nvarchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT2 int
	DECLARE @COUNT3 int
	DECLARE @Result int
	DECLARE @Gem int
	DECLARE @Money int
	DECLARE @BonusMoney int
	DECLARE @PickIdx int
	DECLARE @Type int
	DECLARE @Account int
	DECLARE @Overlap int

	SET @Result = -1;
	SET @BonusMoney = 0;
	SET @Money = 0;
	SET @Gem = 0;
	SET @PickIdx = 0;
	SET @Account = 0;
	SET @Overlap = 0;
	SET @Type = 0

	SET @Coupon = LOWER(@Coupon);

    -- Insert statements for procedure here
	select @COUNT2= COUNT(*) from gCoupon WHERE CouponNum = @Coupon;
	select @COUNT3= COUNT(*) from gCoupon WHERE CouponNum = @Coupon and Couponuse=0;

	IF @COUNT2 > 0 and @COUNT3 > 0
	begin
		SELECT @Account=B.Account, @Overlap=B.OverLap, @Type=A.CouponType FROM gCoupon A LEFT JOIN gCoupon_Type B ON A.CouponType=B.CouponType WHERE A.CouponNum = @Coupon and A.Couponuse=0;

		SET  @COUNT2 = 0;

		IF @Account = 1 and @Overlap = 0
		BEGIN
			SELECT @COUNT2= COUNT(*) from gCoupon_Log WHERE CouponType=@Type and UserIdx=@UserIdx;
		END
		ELSE IF @Overlap = 1
		BEGIN
			SELECT @COUNT2= COUNT(*) from gCoupon_Log WHERE UserIdx=@UserIdx and CouponNum=@Coupon;
		END 
		

		IF @COUNT2 = 0 
		BEGIN
			SELECT @Money=isnull(B.Money, 0), @Gem=isnull(B.Gem, 0), @PickIdx=isnull(B.PickIdx, 0), @BonusMoney=isnull(B.BonusMoney, 0) FROM gCoupon A LEFT JOIN gCoupon_Type B ON A.CouponType=B.CouponType WHERE A.CouponNum = @Coupon and A.Couponuse=0;

			INSERT  INTO gPostBox(UserIdx, Name, Gem, Money, PickIdx, BonusMoney,  RegDate) values(@UserIdx, '쿠폰 보상', @GEM, @Money, @PickIdx, @BonusMoney, getdate());

			INSERT INTO gCoupon_Log values(@UserIdx, @Coupon, @Type, getdate());


			IF @Overlap < 1
				UPDATE gCoupon SET Couponuse=1 WHERE CouponNum = @Coupon and Couponuse=0;

			SET @Result = 0;
		END
		ELSE
			SET @Result = -4;
	end
	else if @COUNT2 = 0
		SET @Result = -2;
	else
		SET @Result = -3;

	SELECT @Result;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_ENTY_COUNT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_ENTY_COUNT]
	-- Add the parameters for the stored procedure here
	@GameKind int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select A.Enty, isnull(B.user2, 0) from gDummy A LEFT JOIN (select Enty, count(*) as user2 from gConnUser where room > 0 and GameKind=@GameKind group by enty) B on A.Enty=B.Enty WHERE A.GameKind=@GameKind;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_EVENT_ATTENDANCE_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_EVENT_ATTENDANCE_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Today		int output,
	@Check		int output,
	@EventIdx	int = 1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @COUNT int

	SET @Check = 1;
	SET @Today = 0;

	SELECT @COUNT=COUNT(*) FROM gEventTime WHERE GETDATE() BETWEEN StartTime and EndTime;

	IF @COUNT > 0 
	BEGIN
		SELECT @Today = COUNT(*) FROM gEventAttendance_log WHERE useridx=@Useridx and EventIdx=@EventIdx;

		SET @Today = @Today + 1;

		SELECT @Check = COUNT(*) FROM gEventAttendance_log WHERE regday=convert(nvarchar(10), getdate(), 121) and useridx=@Useridx and EventIdx=@EventIdx;	

		select EventDay, EventMoney, EventBonusMoney, EventGem, EventPIck from gEventAttendance where EventIdx=@EventIdx;	
	END
	ELSE
		select EventDay, EventMoney, EventBonusMoney, EventGem, EventPIck from gEventAttendance where EventIdx=0;	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_EVENT_ATTENDANCE_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE[dbo].[USP_JSON_EVENT_ATTENDANCE_UPDATE]
	-- Add the parameters for the stored procedure here
	@Useridx int,
	@EventIdx	int = 1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @DAY int
	DECLARE @RESULT int
	DECLARE @Money int
	DECLARE @Gem int
	DECLARE @Bonus int
	DECLARE @Pick int

	SET @DAY = 0;
	SET @RESULT = -1;
	SET @Money = 0;
	SET @Gem = 0;
	SET @Bonus = 0;
	SET @Pick = 0;

	SELECT @RESULT = COUNT(*) FROM gEventAttendance_log WHERE RegDay=convert(nvarchar(10), getdate(), 121) and UserIdx=@Useridx and EventIdx=@EventIdx;

	IF @RESULT = 0 
	BEGIN
		SELECT @DAY=COUNT(*) FROM gEventAttendance_log WHERE useridx=@Useridx and EventIdx=@EventIdx;

		SET @DAY = @DAY + 1;

		INSERT INTO gEventAttendance_log VALUES(convert(nvarchar(10), getdate(), 121), @Useridx,@EventIdx,  @DAY, getdate());

		select @Money=EventMoney, @Gem=EventGem, @Bonus=EventBonusMoney, @Pick=EventPIck from gEventAttendance where EventIdx=@EventIdx and EventDay=@DAY;

		IF @Bonus > 0
			INSERT  INTO gPostBox(UserIdx, Name, BonusMoney, PIckIdx, RegDate) values(@UserIdx,'[이벤트출석] 보상 도착 했습니다.', @Bonus, 0, getdate());
		ELSE IF @Money > 0
			INSERT  INTO gPostBox(UserIdx, Name, Money, PIckIdx, RegDate) values(@UserIdx,'[이벤트출석] 보상 도착 했습니다.', @Money, 0, getdate());
		ELSE IF @Gem > 0
			INSERT  INTO gPostBox(UserIdx, Name, Gem, PIckIdx, RegDate) values(@UserIdx,'[이벤트출석] 보상 도착 했습니다.', @Gem, 0, getdate());
		ELSE IF @Pick > 0
			INSERT  INTO gPostBox(UserIdx, Name, Gem, PIckIdx, RegDate) values(@UserIdx,'[이벤트출석] 보상 도착 했습니다.', 0, @Pick, getdate());

		SET @RESULT = @DAY;
	END
	ELSE
		SET @RESULT = -1;

	SELECT @RESULT;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_EVENT_CHECK]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_EVENT_CHECK]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Return		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT int

	DECLARE @Money int
	DECLARE @Gem int
	DECLARE @BonusMoney int
	DECLARE @Pick int
	DECLARE @IDX int

    -- Insert statements for procedure here
	SELECT @COUNT=COUNT(*) FROM gEvent_Work A LEFT JOIN gEvent_User B on A.EventIdx=B.EventIdx and B.UserIdx=@UserIdx WHERE getdate() BETWEEN A.EventStartTime and A.EventEndTime and B.UserIdx is null;

	SET @Return = @COUNT;

	while @COUNT > 0
	begin
		SELECT TOP 1 @IDX=A.EventIdx, @Money=Money, @Gem=Gem, @BonusMoney=BonusMoney, @Pick=Pick  FROM gEvent_Work A LEFT JOIN gEvent_User B on A.EventIdx=B.EventIdx and B.UserIdx=@UserIdx WHERE getdate() BETWEEN A.EventStartTime and A.EventEndTime and B.UserIdx is null;

		IF @BonusMoney > 0
			INSERT INTO gPostBox(UserIdx, Name, Gem, Money, BonusMoney, RegDate) values(@UserIdx, '이벤트 보상 코인 ' + replace(convert(nvarchar(30), cast(@BonusMoney as money), 1), '.00', '') + ' 도착 했습니다.' , 0, 0, @BonusMoney, getdate());
		else if @Gem > 0
			INSERT INTO gPostBox(UserIdx, Name, Gem, Money, BonusMoney, RegDate) values(@UserIdx, '이벤트 보상 루비 ' + replace(convert(nvarchar(30), cast(@Gem as money), 1), '.00', '') + '개 도착 했습니다.' , @Gem, 0, 0, getdate());
		else if @Money > 0
			INSERT INTO gPostBox(UserIdx, Name, Gem, Money, BonusMoney, RegDate) values(@UserIdx, '이벤트 보상 칩 '+ replace(convert(nvarchar(30), cast(@Money as money), 1), '.00', '') + ' 도착 했습니다.', + 0, @Money, 0, getdate());

		WHILE @Pick > 0
		BEGIN
			INSERT INTO gPostBox(UserIdx, Name, PickIdx, RegDate) values(@UserIdx, '이벤트 보상 랜덤뽑기권이 도착 했습니다.', 3000, getdate());
			SET @Pick = @Pick - 1;
		END

		INSERT INTO gEvent_User(EventIdx, UserIdx, RegDate) VALUES(@IDX, @UserIdx, getdate());
		 
		SET @COUNT = @COUNT - 1;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_FACEBOOK_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_FACEBOOK_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Return		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @COUNT2 int

	SELECT @COUNT2=COUNT(*) FROM gFaceBook_Log WHERE UserIdx=@UserIdx;

	IF @COUNT2 = 0 
	begin
		INSERT INTO gFaceBook_Log values(@UserIdx, getdate());
		INSERT INTO gPostBox(UserIdx, Name, Gem, Money, PIckIdx, RegDate) values(@UserIdx, '페이스북 공유 보상 랜덤뽑기권이 도착 했습니다.', 0, 0, 3000, getdate());
	end
	
	SET @Return = @COUNT2;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_FACEBOOK_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_FACEBOOK_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Return		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Return=COUNT(*) FROM gFaceBook_Log WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_GAME_CHECKID_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_GAME_CHECKID_SELECT]
-- Add the parameters for the stored procedure here
	@UserID		nvarchar(100),
	@RegID		nvarchar(256),
	@Social		int,
	@Return		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @COUNT int
	DECLARE @NICK	nvarchar(100)
	DECLARE @kcertCIDate	datetime


	SELECT @COUNT = COUNT(*) FROM gMember WHERE UserID = @UserID and Social=@Social;

	IF (@COUNT > 0) 
	begin
		SELECT @NICK=NICK, @kcertCIDate = kcertCIDate FROM gMember WHERE UserID=@UserID and Social=@Social;

		IF DATEDIFF(DD, GETDATE(), CONVERT(NVARCHAR(10),@kcertCIDate,120)) > 364
		BEGIN
			SET @Return = -3;
		END
		ELSE IF @kcertCIDate IS NULL
		BEGIN
			SET @Return = -3;
		END
		ELSE
		BEGIN
			UPDATE gMember SET RegID = @REGID WHERE UserID=@UserID and Social=@Social;

			IF(LEN(@NICK) > 0)
				SET @Return = 0;
			ELSE
				SET @Return = -1;
		END
	end
	ELSE
		SET @Return = -2;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_GAME_PREINFO_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_GAME_PREINFO_SELECT]
-- Add the parameters for the stored procedure here
	@Game int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Ver, Msg, IsCheck FROM gNotice WHERE NIdx=@Game;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_GAME_PREINFO_SELECT2]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_GAME_PREINFO_SELECT2]
-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Ver, Msg FROM gServer;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_GEM_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_GEM_LIST]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Free		int		output,
	@Video		int		output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Secretary int
	DECLARE @Secretary_rating int 
	DECLARE @MaxFree int 
	DECLARE @MaxVideo int 
	DECLARE @NowFree int 
	DECLARE @NowVideo int 

    -- Insert statements for procedure here
	SET @MaxFree = 5;
	SET @MaxVideo = 5;

	select @NowFree=Free, @NowVideo=Video from gFreeCharge where UserIdx=@UserIdx;

	SET @Free = @MaxFree - @NowFree;
	SET @Video = @MaxVideo - @NowVideo;

	SELECT GemIdx, Name, ImageUrl, Gem, Per, Best, Price, GoogleKey FROM gGemShop;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_ID_CHECK_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_ID_CHECK_SELECT]
-- Add the parameters for the stored procedure here
	@Id		nvarchar(100),
	@RETURN		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT @RETURN=ISNULL(COUNT(*),0) FROM gMEMBER WHERE UserID=@Id;
END

GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_JACKPOT_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_JSON_JACKPOT_SELECT]
	-- Add the parameters for the stored procedure here
	@return bigint output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @return = Money FROM gJackPot;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_MEMBER_CONNECT_CHECK]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_MEMBER_CONNECT_CHECK]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Return		int		output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @COUNT int
	DECLARE @COUNT2 int

    -- Insert statements for procedure here
	SELECT @COUNT = COUNT(*) FROM gConnUser WHERE UserIdx=@UserIdx;
	SELECT @COUNT2 = COUNT(*) FROM gDisConnUser WHERE UserIdx=@UserIdx;

	if @COUNT > 0
		SET @Return	= 1;
	ELSE IF @COUNT2 > 0
		SET @Return	= 2;
	ELSE
		SET @Return	= -1;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_MEMBER_JOIN_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
declare @RESULT	int
exec USP_JSON_MEMBER_JOIN_INSERT 'test021', 5, '12345', 'test021@gmail.com', @RESULT = @RESULT output
select @RESULT

declare @result int
declare @count int
declare @max int
declare @joinuser varchar(100)
declare @joinmail varchar(100)

set @count = 1;
set @max = 30;

while (@count <= @max)
begin
	set  @joinuser = 'gamehubuser' + REPLICATE('0', 3 - LEN(cast(@count as varchar(3)))) + cast(@count as varchar(3));
	set @joinmail = @joinuser + '@gmail.com';

	exec USP_JSON_MEMBER_JOIN_INSERT @joinuser, 5, '1234', @joinmail, @RESULT = @RESULT output

	SET @count = @count + 1;
end
*/
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_MEMBER_JOIN_INSERT]
-- Add the parameters for the stored procedure here
	@UserID	nvarchar(100),
	@Social int,
	@UserPWD nvarchar(100),
	@Email nvarchar(100),
	@RESULT	int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE	@COUNT	int
	DECLARE @UserIdx int

	SET @RESULT = 0;
	SET @UserIdx = 0;

	SELECT @COUNT = COUNT(*) FROM gMember WHERE UserID=@UserID AND Social = @Social;

	IF(@COUNT = 0)
	begin
		if(@Social = 5)
		begin
			INSERT INTO gMember(UserID, PassWD, Social, Email, Avata, Money, Gem, RegDate) values(@UserID, PWDENCRYPT(@UserPWD), @Social, @Email, 2007, 1000000, 0, getdate());
		end
		else
		begin
			INSERT INTO gMember(UserID, PassWD, Social, Avata, Money, Gem, RegDate) values(@UserID, PWDENCRYPT('12345'), @Social, 2007,  1000000, 0, getdate());
		end

		SELECT @UserIdx=UserIdx FROM gMember WHERE UserID=@UserID;

		IF @UserIdx > 0 
			EXEC USP_JOIN_INSERT @UserIdx;

		SET @RESULT = 0;
	end
	ELSE
		SET @RESULT = -1;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_MONEYCASH_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_JSON_MONEYCASH_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@Return bigint output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @UserGroup int

	SELECT @UserGroup=UserGroup from gMember WHERE UserIdx=@UserIdx;

	select @Return = isnull(sum(cash), 0) from gCash_Log where UserGroup=@UserGroup and left(convert(char(10), regdate, 23), 7)=left(convert(char(8), getdate(), 23), 7);
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_MONEYGEM_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_JSON_MONEYGEM_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@Return bigint output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @UserGroup int

	SELECT @UserGroup=UserGroup from gMember WHERE UserIdx=@UserIdx;

	select @Return = isnull(sum(Gem), 0) from gGem_Log where usergroup=@UserGroup and left(convert(char(10), regdate, 23), 7)=left(convert(char(8), getdate(), 23), 7) and Gem < 0;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_MYAVATA_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_MYAVATA_LIST]
	-- Add the parameters for the stored procedure here
	@Useridx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @MyAvata int;
	DECLARE @COUNT	int

    -- Insert statements for procedure here
	DELETE FROM gAvataBox WHERE EndDate <= getdate();

	set @MyAvata = 2007;

	SELECT @MyAvata=Avata FROM gMember WHERE UserIdx=@UserIdx;

	SELECT @COUNT=COUNT(*) FROM gAvataBox WHERE UserIdx=@Useridx and Avata=1;

	IF @COUNT = 0 and @MyAvata < 2007 and @MyAvata > 2008
	begin
		UPDATE gAvataBox SET Avata=0 WHERE UserIdx=@UserIdx and Avata=1;
	end
	
	select A.AvataIdx, Name, ImageUrl, case when A.Free = 1 then -1 else case when B.EndDate is null then 0 else DATEDIFF("dd", getdate(), B.EndDate)  end end, case when A.AvataIdx = @MyAvata then 1 else 0 end from gAvataShop A LEFT JOIN gAvataBox B on A.AvataIdx=B.AvataIdx and B.UserIdx=@Useridx order by  A.Free desc, A.AvataIdx asc;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_MYMISSION_TODAY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_MYMISSION_TODAY_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT2 int

    -- Insert statements for procedure here
	SELECT @COUNT2=COUNT(*) FROM gMission_Today_Result WHERE UserIdx=@UserIdx and MFinish=1;

	IF @COUNT2 = 5
		UPDATE gMission_Today_Result SET MCOUNT=1, MFinish=1 WHERE UserIdx=@UserIdx and MType=6;


	SELECT A.MType, C.Name, C.MNum, A.MCount, C.MBonusMoney, A.MFinish, A.MGet  FROM gMission_Today_Result A LEFT JOIN gMission_Today_Choice B ON A.MType=B.Idx LEFT JOIN gMission_Today_Content C ON B.MIdx=C.MIdx WHERE A.UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_MYMISSION_TOTAL_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_MYMISSION_TOTAL_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select A.MIdx, B.MType, B.Name, B.MNum, A.MCount, B.MGem, B.MBonusMoney, B.MRandPick, A.MFinish, A.MGet from gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx;
END

GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_NEWCHECK_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_NEWCHECK_SELECT]
	-- Add the parameters for the stored procedure here
	@Useridx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT2 int
	DECLARE @COUNT3 int
	DECLARE @COUNT4 int

    -- Insert statements for procedure here
	SELECT @COUNT2=COUNT(*) FROM gPostBox WHERE UserIdx=@Useridx;

	SELECT @COUNT3=COUNT(*) FROM gMission_Today_Result WHERE UserIdx=@Useridx and MFinish=1 and MGet=0;

	SELECT @COUNT4=COUNT(*) FROM gMission_Total_Result WHERE UserIdx=@Useridx and MFinish=1 and MGet=0;

	SELECT @COUNT2, @COUNT3, @COUNT4;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_NICK_CHECK_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_NICK_CHECK_SELECT]
-- Add the parameters for the stored procedure here
	@Nick		nvarchar(100),
	@RETURN		int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @LEN int

    -- Insert statements for procedure here

	SELECT @RETURN=COUNT(*) FROM gMember WHERE NICK=@Nick;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_NOTICE_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_NOTICE_SELECT] 
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @Notice varchar(300)
	declare @COUNT int

	SET @Notice = '';
	SET @COUNT = -1;

    -- Insert statements for procedure here
	select @Notice=Notice from gGame_Notice;

	if len(@Notice) > 0 
	begin
		select @COUNT=COUNT(*) FROM gGame_Notice_Log where useridx=@UserIdx;

		IF @COUNT > 0
			SET @Notice = '';
		ELSE
			INSERT INTO gGame_Notice_Log values(@UserIdx);
	end

	SELECT @Notice;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_PICK_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_PICK_LIST]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Free		int		output,
	@Video		int		output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Secretary int
	DECLARE @Secretary_rating int 
	DECLARE @MaxFree int 
	DECLARE @MaxVideo int 
	DECLARE @NowFree int 
	DECLARE @NowVideo int 

    -- Insert statements for procedure here
	SET @Free = 0;
	SET @Video = 0;

	SET @Secretary = 0;
	SET @Secretary_rating = 0;
	select @Secretary=A.Pic_Idx,@Secretary_rating=B.pic_rating from pictorial.dbo.gSecretaryBox A LEFT JOIN  pictorial.dbo.tb_pictorial_main B on A.Pic_Idx=B.pic_idx where useridx=@UserIdx and Secretary=1;

	if @Secretary >= 42 and @Secretary <= 44
	begin
		if @Secretary_rating = 3
		begin
			SET @MaxFree = 10;
			SET @MaxVideo = 10;
		end
		else if @Secretary_rating = 2
		begin
			SET @MaxFree = 8;
			SET @MaxVideo = 8;
		end
		else if @Secretary_rating = 1
		begin
			SET @MaxFree = 7;
			SET @MaxVideo = 7;
		end
		else
		begin
			SET @MaxFree = 5;
			SET @MaxVideo = 5;
		end
	end
	else
	begin
		SET @MaxFree = 5;
		SET @MaxVideo = 5;
	end

	select @NowFree=Free, @NowVideo=Video from gFreeCharge where UserIdx=@UserIdx;

	SET @Free = @MaxFree - @NowFree;
	SET @Video = @MaxVideo - @NowVideo;

	SELECT A.PickIdx, A.Name, A.ImageUrl, A.UseTime, A.Rubi, A.RewardMoney, isnull(B.Count, 0) FROM pictorial.dbo.gPickShop A LEFT JOIN (select PickIdx, count(*) as Count from pictorial.dbo.gPickBox where useridx=@UserIdx group by PickIdx) B on A.PickIdx=B.PickIdx  order by A.PickSort asc;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_POSTBOX_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_POSTBOX_LIST]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT PostIdx, Name, Gem, Money, PickIdx, RegDate FROM gPostBox WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_POSTBOX_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_POSTBOX_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

--	delete from gPostBox where UserIdx=@UserIdx and  datediff(dd, getdate(), dateadd(day, 10, RegDate)) < 0 ;

	delete from gPostBox where ownday <= 0;

	select PostIdx, Name, Gem, Money, BonusMoney, PickIdx, OwnDay from gPostBox where UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_SECRETARY_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_JSON_SECRETARY_LIST]
	-- Add the parameters for the stored procedure here
	@UserIdx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	delete from pictorial.dbo.gSecretaryBox where enddate < getdate();

	select A.Pic_Idx, pic_name, pic_conept, A.pic_rating, A.pic_img, isnull(B.Secretary, -1) as Own, isnull(DATEDIFF(day, getdate(), EndDate), 0) as Day  from pictorial.dbo.tb_pictorial_main A LEFT JOIN pictorial.dbo.gSecretaryBox B on A.pic_idx=B.Pic_Idx and B.UserIdx=@UserIdx  WHERE A.pic_use=1 ;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_JSON_WEBKEY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_JSON_WEBKEY_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@Return varchar(20) output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SET @Return = '';

    -- Insert statements for procedure here
	select @Return=TokenKey from gConnToken where useridx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MEMBER_GEMMONEY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MEMBER_GEMMONEY_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT gem, money FROM gMember WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MEMBER_IDCHECK]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 로그인
	SELECT * FROM [dbo].[gMember]

	DECLARE @rCnt INT , @rVal NVARCHAR(100)
	EXEC USP_MEMBER_IDCHECK 1, 'TEST3', 4, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[USP_MEMBER_IDCHECK]
	@lan_idx	int,
	@UserID		NVARCHAR(100),
	@Social		TINYINT, 
	@rCnt		INT OUT,
	@rVal		NVARCHAR(100) OUT
AS
BEGIN

	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM [dbo].[gMember] WHERE UserID = @UserID AND Social = @Social)
	BEGIN
		SET @rCnt = 100
		SET @rVal = N'This ID is already taken.'
	END
	ELSE
	BEGIN
		SET @rCnt = 0
		SET @rVal = N'User ID is available.'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[USP_MEMBER_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 회원가입

	SELECT * FROM gMember ORDER BY USERIDX DESC

	DECLARE @rCnt INT , @rVal NVARCHAR(100)
	EXEC USP_MEMBER_INSERT 1, 'TEST1', '12345', 4, 'TEST1@GMAIL.COM', @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal
*/
CREATE PROCEDURE [dbo].[USP_MEMBER_INSERT]
	@lan_idx	int,
	@UserID		NVARCHAR(100),
	@PassWD		NVARCHAR(20), 
	@Social		TINYINT, 
	@Email		NVARCHAR(100),
	@rCnt		INT OUT,
	@rVal		NVARCHAR(100) OUT
AS
BEGIN

	SET NOCOUNT ON;

	IF @Social = 4
		SET @Social = 5

	IF EXISTS(SELECT USERID FROM gMember WHERE USERID = @UserID)
	BEGIN
		SET @rCnt = 100
		SET @rVal = N'The ID you are using.'
	END

	ELSE
	BEGIN

		INSERT INTO gMember(UserID, PassWD, Social, Email, Avata, Money, Gem, RegDate) 
		values(@UserID, PWDENCRYPT(@PassWD), @Social, @Email, 2007, 1000000, 100, getdate());

		EXEC [dbo].[USP_JOIN_INSERT] @@IDENTITY

		SET @rCnt = @@ERROR
		
		IF @rCnt = 0
			SET @rVal = N'You have successfully signed up.'
		ELSE
			SET @rVal = ERROR_MESSAGE()
	
	END

END

GO
/****** Object:  StoredProcedure [dbo].[USP_MEMBER_LOGIN]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 로그인
	SELECT * FROM [dbo].[gMember]

	DECLARE @rCnt INT , @rVal NVARCHAR(100)
	EXEC USP_MEMBER_LOGIN 1, 'TEST021', '12345', 4, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[USP_MEMBER_LOGIN]
	@lan_idx	int,
	@UserID		NVARCHAR(100),
	@PassWD		NVARCHAR(20), 
	@Social		TINYINT, 
	@rCnt		INT OUT,
	@rVal		NVARCHAR(100) OUT
AS
BEGIN

	SET NOCOUNT ON;

	IF @Social = 4
		SET @Social = 5


	IF EXISTS(SELECT * FROM [dbo].[gMember] WHERE UserID = @UserID AND PWDCOMPARE(@PassWD, PassWD) = 1 AND Social = @Social)
	BEGIN
		SET @rCnt = 0
		SET @rVal = N'You are signed in successfully.'
	END
	ELSE
	BEGIN
		SET @rCnt = 100
		SET @rVal = N'ID and password do not match. Please check again.'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[USP_MEMBER_PWDFIND]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	## 멤버 아이디 찾기 후 메일 보내기

	select * from [dbo].[gMember]

*/
CREATE PROCEDURE [dbo].[USP_MEMBER_PWDFIND]
	@lan_idx		INT
	,@UserID		Nvarchar(100)
	,@UserEmail		Nvarchar(100)
	,@Social		INT
	,@UserIP		NVARCHAR(50)
	,@rCnt			INT OUTPUT
	,@rVal			NVARCHAR(100) OUTPUT
	,@ChangePass	NVARCHAR(10) OUTPUT
AS 
BEGIN

	SET NOCOUNT ON;

	--SELECT UserID, Social, Email, Block FROM gMember WHERE UserID = @UserID AND Social = @Social AND Email = @Email

	SET @rCnt = 100

	SELECT @rCnt = COUNT(*) FROM [dbo].[gMember] WHERE UserID = @UserID AND Email = @UserEmail AND Social = @Social

	IF @rCnt = 1
	BEGIN
		SET @ChangePass =   (SELECT LEFT(REPLACE(LOWER(NEWID()),'-',''),6))
		UPDATE [dbo].[gMember] SET PassWD = PWDENCRYPT(@ChangePass)
		WHERE UserID = @UserID AND Email = @UserEmail AND Social = @Social

		SET @rCnt = @@ERROR

		IF @rCnt = 0
			SET @rVal = N'Your message has been successfully sent.'
		ELSE 
			SET @rVal = ERROR_MESSAGE()
			
	END
	ELSE IF @rCnt = 0
	BEGIN
		SET @rVal = N'No matching information in id and mail.'
	END
	ELSE
	BEGIN
		SET @rVal = N'Your ID and email are duplicates. \n\nPlease contact your administrator.'
	END

	-- 로그 남기기
	INSERT INTO [dbo].[sMember_PassFind_Log] 
		(upf_UserId, upf_Email, upf_IP, upf_state)
	VALUES
		(@UserID, @UserEmail, @UserIP, @rCnt)

END
GO
/****** Object:  StoredProcedure [dbo].[USP_MISSION_CHOICE_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MISSION_CHOICE_SELECT]
-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @MISSION_1 int
	DECLARE @MISSION_2 int
	DECLARE @MISSION_3 int
	DECLARE @MISSION_4 int
	DECLARE @MISSION_5 int

    -- Insert statements for procedure here

	select TOP 1 @MISSION_1=MIdx From gMission WHERE  MIdx  between 1 and 5 order by newid();
	select TOP 1 @MISSION_2=MIdx From gMission WHERE  MIdx  between 6 and 10 order by newid();
	select TOP 1 @MISSION_3=MIdx From gMission WHERE  MIdx  between 11 and 13 order by newid();
	select TOP 1 @MISSION_4=MIdx From gMission WHERE  MIdx  between 14 and 16 order by newid();
	SET @MISSION_5 = 17;

	UPDATE gMission_Choice SET MIDX=@MISSION_1 WHERE IDX=1;
	UPDATE gMission_Choice SET MIDX=@MISSION_2 WHERE IDX=2;
	UPDATE gMission_Choice SET MIDX=@MISSION_3 WHERE IDX=3;
	UPDATE gMission_Choice SET MIDX=@MISSION_4 WHERE IDX=4;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MISSION_RESULT_CAL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MISSION_RESULT_CAL]
-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT INT
	DECLARE @MFINISH INT

	EXEC USP_MISSION_RESULT_CHECK @UserIdx;

	SELECT * FROM gMission_Choice A LEFT JOIN gMIssion B on A.MIdx=B.MIdx LEFT JOIN (SELECT MType, MFINISH, MGET FROM gMission_Result WHERE UserIdx=1001) C on B.MType=C.MType;
	 
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MISSION_RESULT_CHECK]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MISSION_RESULT_CHECK]
-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT INT

	SELECT @COUNT=COUNT(*) FROM gMission_Result WHERE UserIdx=@UserIdx;

	IF @COUNT = 0
	BEGIN
		INSERT INTO gMission_Result(UserIdx, MIdx, MFinish, MGet) VALUES(@UserIdx, 1, 0, 0);
		INSERT INTO gMission_Result(UserIdx, MIdx, MFinish, MGet) VALUES(@UserIdx, 2, 0, 0);
		INSERT INTO gMission_Result(UserIdx, MIdx, MFinish, MGet) VALUES(@UserIdx, 3, 0, 0);
		INSERT INTO gMission_Result(UserIdx, MIdx, MFinish, MGet) VALUES(@UserIdx, 4, 0, 0);
		INSERT INTO gMission_Result(UserIdx, MIdx, MFinish, MGet) VALUES(@UserIdx, 5, 0, 0);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MISSION_TYPE1_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MISSION_TYPE1_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@PlayGame	int,
	@WinGame	int,
	@MaxGame	int,
	@Jokbo		int,
	@GameKind	int,
	@Etc		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT		int
	DECLARE @MGAMEKIND	int
    -- Insert statements for procedure here

	-- 일일미션(플레이)

	select @COUNT=COUNT(*) from gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MType=1 and MFinish=0 and C.GameKind=@GameKind;

	IF @COUNT > 0 
	begin
		UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=1 and MFinish=0;
	end 

	-- 일일미션(바카라 5판 플레이)

	SELECT @COUNT=COUNT(*) FROM gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MType=4 and MFinish=0 and C.GameKind=@GameKind;

	IF @COUNT > 0
	BEGIN
		UPdATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=4 and MFinish=0;
	END

	-- 업적(플레이)

	select @COUNT=COUNT(*) from gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.GameKind=@GameKind and B.MType >= 1 and B.MType <= 8;

	IF @COUNT > 0 
	BEGIN
		UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE UserIdx=@UserIdx and MFinish = 0 and GameKind=@GameKind and MType >= 1 and MType <= 8;
	END 

	IF @WinGame > 0
	BEGIN
		-- 일일미션
		select @COUNT=COUNT(*) from gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MType=2 and MFinish=0 and C.GameKind=@GameKind;

		IF @COUNT > 0
		begin
			IF @GameKind <= 3
				UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=2 and MFinish=0;
			else if @GameKind = 4 and @Etc >= 2 -- 스윙으로 승리
				UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=2 and MFinish=0;
		end

		-- 업적

		SELECT @COUNT=COUNT(*) from gMission_Total_Result A LEFT JOIN gMission_Total_Content B ON A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 5;

		IF @COUNT > 0 and @WinGame > 0
		BEGIN
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 5;
		END 

		-- 일일미션

		select @COUNT=COUNT(*) from gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MType=3 and MFinish=0 and C.GameKind=@GameKind;

		IF @COUNT > 0 and @Etc > 0  -- 하이로우 - 1 : 투페어로 승리, 2 : 스윙으로 승리, 3 : 투페어 + 스윙, 다른게임은 - 1 : 해당족보로 승리
		begin
			select @MGAMEKIND=GameKind from gMission_Today_Choice A LEFT JOIN gMission_Today_Content B on A.MIdx=B.MIdx where A.Idx=3;

			IF @MGAMEKIND = 1
				UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=3 and MFinish=0;
			ELSE IF @MGAMEKIND = 2
				UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=3 and MFinish=0;
			ELSE IF @MGAMEKIND = 3
				UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=3 and MFinish=0;
			ELSE IF @MGAMEKIND = 4  and (@Etc = 1 or @Etc = 3)
				UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=3 and MFinish=0;
		end

		--

		if @Jokbo = 9 and @GameKind = 2 -- 풀하우스
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 32;
		end
		else if @Jokbo = 10 and @GameKind = 2 -- 포커
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 33;
		end
		else if (@Jokbo = 11 or @Jokbo = 12)  and @GameKind = 2  -- 스트레이트 플러시
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 34;
		end
		else if @Jokbo = 13  and @GameKind = 2 -- 로얄 스트레이트 플러시
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 35;
		end
	
		if 	@Jokbo = 4 and @GameKind = 3
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 36;
		end 
		else if @Jokbo = 5 and @GameKind = 3
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 37;
		end 
		else if @Jokbo = 6 and @GameKind = 3
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 38;
		end

		if @GameKind = 4 and @Etc >= 2
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 39;
		end

		if @Jokbo = 9 and @GameKind = 1 -- 풀하우스
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 40;
		end
		else if @Jokbo = 10 and @GameKind = 1 -- 포커
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 41;
		end
		else if (@Jokbo = 11 or @Jokbo = 12)  and @GameKind = 1  -- 스트레이트 플러시
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 42;
		end
		else if @Jokbo = 13  and @GameKind = 1 -- 로얄 스트레이트 플러시
		begin
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 43;
		end
	END

	-- 맥스베팅

	IF @MaxGame > 0
	BEGIN
		SELECT @COUNT=COUNT(*) from gMission_Total_Result A LEFT JOIN gMission_Total_Content B ON A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 31;

		IF @COUNT > 0 and @WinGame > 0
		BEGIN
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 31;
		END 
	END

	UPDATE gMission_Today_Result SET MFinish = 1 FROM gMission_Today_Choice B LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE UserIdx= @UserIdx and  gMission_Today_Result.MType=B.Idx and C.MNum <= MCount and MFinish=0;

	UPDATE gMission_Total_Result SET MFinish = 1 FROM gMission_Total_Content B WHERE gMission_Total_Result.MIdx=B.MIdx and UserIdx= @UserIdx and MNum <= MCount and MFinish=0;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MONEY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

-- exec USP_MONEY_SELECT 1051
--


CREATE PROCEDURE [dbo].[USP_MONEY_SELECT]
-- Add the parameters for the stored procedure here
	@UserIdx		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT A.Money, B.DayMoney  FROM pictorial.dbo.gMember A LEFT JOIN pictorial.dbo.gLimitDay B on A.UserGroup=B.UserGroup WHERE A.UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MONEYBUG_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MONEYBUG_INSERT]
	-- Add the parameters for the stored procedure here
	@LogNo	varchar(20),
	@UserIdx	int,
	@GameKind	int,
	@OldFirstMoney	bigint,
	@FirstMoney	bigint,
	@UserMoney	bigint,
	@WinLoseMoney	bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gBugTable values(@LogNo, @UserIdx, @GameKind, @OldFirstMoney, @FirstMoney, @UserMoney, @WinLoseMoney, getdate());
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MYAVATA_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MYAVATA_UPDATE]
	-- Add the parameters for the stored procedure here
	@Useridx int,
	@Avataidx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Result int
	DECLARE @Count2 int

	SET @Result = -1;

    -- Insert statements for procedure here
	SELECT @COUNT2 = COUNT(*) FROM gAvataBox WHERE UserIdx=@Useridx and Avataidx=@Avataidx;

	IF @COUNT2 > 0 
	begin
		UPDATE gAvataBox SET Avata=0 WHERE UserIdx=@Useridx;
		UPDATE gAvataBox SET Avata=1 WHERE UserIdx=@Useridx and Avataidx=@Avataidx;
		UPDATE pictorial.dbo.gMember SET Avata=@Avataidx WHERE UserIdx=@Useridx;
		SET @Result = 0;
	end 

	SELECT @Result;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MYMISSION_TODAY_GET_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MYMISSION_TODAY_GET_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@MType int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Gem int
	DECLARE @BonusMoney	bigint
	DECLARE @Result int
	DECLARE @Count int
	DECLARE @MType2 int
	DECLARE @Name varchar(100)

	SET @Result = -1;
	SET @Gem = 0;
	SET @BonusMoney = 0;
	SET @Count = 0;
	SET @MType2 = 0;

    -- Insert statements for procedure here

	if @MType = -1
	begin
		SELECT @Count = COUNT(*) FROM gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.MIdx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MFinish=1 and MGet=0;

		WHILE @Count > 0
		BEGIN
			SELECT TOP 1 @MType2=A.MType, @BonusMoney = C.MBonusMoney, @Name = C.Name FROM gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.MIdx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MFinish=1 and MGet=0;

			IF @BonusMoney > 0
			BEGIN
				INSERT  INTO gPostBox(UserIdx, Name, BonusMoney, PIckIdx, RegDate) values(@UserIdx,'[일일업무] ' + @Name + ' 보상 ' + ' 도착 했습니다.', @BonusMoney, 0, getdate());

				UPDATE gMission_Today_Result SET MGet=1 WHERE UserIdx=@UserIdx and MFinish=1 and MGet=0 and MType = @MType2;		
				SET @Count = @Count - 1;
			END 
		END
	end
	else if @MType > 0
	begin
		SELECT TOP 1 @BonusMoney = C.MBonusMoney, @Name = C.Name FROM gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.MIdx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MFinish=1 and MGet=0 and A.MType=@MType;

		IF @BonusMoney > 0
		BEGIN
			INSERT  INTO gPostBox(UserIdx, Name, BonusMoney, PIckIdx, RegDate) values(@UserIdx, '[일일업무] ' + @Name + '보상 보너스칩 ' + replace(convert(nvarchar(30), cast(@BonusMoney as money), 1), '.00', '') + ' 도착 했습니다.', @BonusMoney, 0, getdate());
			UPDATE gMission_Today_Result SET MGet=1 WHERE UserIdx=@UserIdx and MFinish=1 and MGet=0 and MType=@MType;
		END
	end 

	if @Gem > 0 or @BonusMoney > 0 
		SET @Result = 0;

	SELECT @Result;			
END
GO
/****** Object:  StoredProcedure [dbo].[USP_MYMISSION_TOTAL_GET_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_MYMISSION_TOTAL_GET_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@MType int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Gem int
	DECLARE @BonusMoney	bigint
	DECLARE @Result int
	DECLARE @PickNum int
	DECLARE @Count int
	DECLARE @MIdx int
	DECLARE @PicCount int
	DECLARE @Name varchar(100)

	SET @Result = -1;
	SET @Gem = 0;
	SET @BonusMoney = 0;
	SET @PickNum = 0;
	SET @MIdx = 0;
	SET @PicCount = 0;

    -- Insert statements for procedure here

	if @MType = -1
	begin
		SELECT @Count=COUNT(*) FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and A.MFinish=1 and MGet=0;

		WHILE @Count > 0
		BEGIN
			SELECT TOP 1 @MIdx=A.MIdx, @Gem = B.MGem,  @BonusMoney = B.MBonusMoney, @PickNum=B.MRandPick, @Name=B.Name FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and A.MFinish=1 and MGet=0;
--			select @Gem = isnull(SUM(B.MGem), 0),  @BonusMoney = ISNULL(SUM(B.MBonusMoney), 0), @PickNum=ISNULL(SUM(B.MRandPick), 0) from gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and A.MFinish=1 and MGet=0;

--			select @Count, @MIdx;

			IF @BonusMoney > 0
			BEGIN
				INSERT  INTO gPostBox(UserIdx, Name, BonusMoney, PIckIdx, RegDate) values(@UserIdx, '[업무] ' + @Name + ' 달성 보상 도착 했습니다.', @BonusMoney, 0, getdate());
			END 

			IF @Gem > 0
			BEGIN
				INSERT  INTO gPostBox(UserIdx, Name, Gem, PIckIdx, RegDate) values(@UserIdx, '[업무] ' + @Name + ' 달성 보상 도착 했습니다.', @Gem, 0, getdate());
			END

			IF @PickNum > 0 
			BEGIN
				SET @PicCount = @PickNum;

				while @PicCount > 0
				begin
					INSERT INTO gPostBox(UserIdx, Name, Gem, Money, PIckIdx, RegDate) values(@UserIdx, '[업무] ' + @Name + ' 달성 보상 도착 했습니다.', 0, 0, 3000, getdate());
					SET @PicCount = @PicCount - 1;
				end
			END

			UPDATE gMission_Total_Result SET MGet=1 WHERE UserIdx=@UserIdx and MFinish=1 and MGet=0 and MIdx = @MIdx;
			SET @Count = @Count - 1;

--			select @Count, @MIdx;
		END
	END
	else if @MType > 0
	begin
		SELECT TOP 1 @MIdx=A.MIdx, @Gem = B.MGem,  @BonusMoney = B.MBonusMoney, @PickNum=B.MRandPick, @Name=B.Name FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and A.MFinish=1 and MGet=0 and A.MIdx=@MType;

		IF @BonusMoney > 0
		BEGIN
			INSERT  INTO gPostBox(UserIdx, Name, BonusMoney, PIckIdx, RegDate) values(@UserIdx,'[업무] ' + @Name + ' 달성 보상 도착 했습니다.', @BonusMoney, 0, getdate());
			SET @Count = @Count - 1;
		END 
		ELSE IF @Gem > 0
		BEGIN
			INSERT  INTO gPostBox(UserIdx, Name, Gem, PIckIdx, RegDate) values(@UserIdx,'[업무] ' + @Name + ' 달성 보상 도착 했습니다.', @Gem, 0, getdate());
					
			SET @Count = @Count - 1;
		END

		IF @PickNum > 0 
		BEGIN
			SET @PicCount = @PickNum;

			while @PicCount > 0
			begin
				INSERT INTO gPostBox(UserIdx, Name, Gem, Money, PIckIdx, RegDate) values(@UserIdx, '[업무] ' + @Name + ' 달성 보상 도착 했습니다.', 0, 0, 3000, getdate());
				SET @PicCount = @PicCount - 1;
			end
		END

		UPDATE gMission_Total_Result SET MGet=1 WHERE UserIdx=@UserIdx and MFinish=1 and MGet=0 and MIdx = @MIdx;
	end 

	if @Gem > 0 or @BonusMoney > 0 or @PickNum > 0
		SET @Result = 0;

	SELECT @Result;			
END
GO
/****** Object:  StoredProcedure [dbo].[USP_NICK_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_NICK_UPDATE]
	-- Add the parameters for the stored procedure here
	@Useridx int,
	@Nick	nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @Count int
	DECLARE @Result int

	SET @Result = 0;

	SELECT @Count=COUNT(*) FROM gMember WHERE Nick=@Nick;

	IF @Count = 0
		UPDATE gMember SET Nick=@Nick WHERE UserIdx=@Useridx;
	ELSE
		SET @Result = -1;
	
	SELECT @Result;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_OPTION_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_OPTION_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @Auto int
	DECLARE @Push int
	DECLARE @NIghtPush int

	SET @Auto = 0;
	SET @Push = 0;
	SET @NIghtPush = 0;


	SELECT @Auto=Auto, @Push=Push, @NIghtPush=NIghtPush FROM gOption WHERE UserIdx = @UserIdx;

	SELECT @Auto, @Push, @NightPush;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_OPTION_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_OPTION_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Auto		int,
	@Push		int,
	@NightPush	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	UPDATE gOption SET Auto=@Auto, Push=@Push, NightPush=@NightPush WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_OTHERCONN_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE[dbo].[USP_OTHERCONN_SELECT]
-- Add the parameters for the stored procedure here
	@UserID	nvarchar(100),
	@Social int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @COUNT	int
	DECLARE @COUNT2	int
	DECLARE @UserIdx int

	SET @UserIdx = 0;

	DELETE FROM gDisConnUser WHERE regdate <= dateadd(MINUTE, -5, getdate());

	SELECT @UserIdx=UserIdx FROM gMember where UserID=@UserID and Social=@Social;

	IF(@UserIdx > 0)
	begin
		SELECT @COUNT=COUNT(*) FROM gConnUser WHERE UserIdx=@UserIdx;
		SELECT @COUNT2=COUNT(*) FROM gDisConnUser WHERE UserIdx=@UserIdx;

		if(@COUNT > 0)
			SELECT -3;
		ELSE if(@COUNT2 > 0) 
			SELECT -4;
		ELSE
			SELECT 0;
	end
	else
		SELECT -2;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PICK_BONUS]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_PICK_BONUS]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gPostBox(UserIdx, Name, BonusMoney, PIckIdx, RegDate) select UserIdx, '[박하엘 대체보상] 랜덤뽑기 보상 도착 했습니다.', 0, 3000, getdate()  FROM  pictorial.dbo.gPick_Log where pic_idx >= 31 and pic_idx <=37;

	INSERT INTO gPostBox(UserIdx, Name, BonusMoney, PIckIdx, RegDate) select UserIdx, '[박하엘 대체보상] 랜덤뽑기 보상 도착 했습니다.', 0, 3000, getdate()  FROM  pictorial.dbo.gPick_Log where pic_idx >= 31 and pic_idx <=37;

	DELETE FROM pictorial.dbo.gPick_Log where pic_idx >= 31 and pic_idx <=37;

	DELETE FROM pictorial.dbo.gSecretaryBox where pic_idx >= 31 and pic_idx <=37;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PICK_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_PICK_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@PicKIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @GEM int
	DECLARE @Rand int
	DECLARE @Pick_Select int
	DECLARE @Count2 int
	DECLARE @PickCount int
	DECLARE @Result int
	DECLARE @UseTime int

	DECLARE @RewardMoney bigint
	DECLARE @Rubi int
	DECLARE @UserGroup int
	DECLARE @UseGem int

	SET @Result = -1;
	SET @Pick_Select = 0;
	SET @RewardMoney = 0;
	SET @Rubi = 0;
	SET @UseTime = 28;

	SELECT @PickCount=COUNT(*) FROM pictorial.dbo.gPickBox WHERE UserIdx=@UserIdx;

	SELECT @GEM=GEM, @UserGroup=UserGroup FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx;

	SELECT @Rand = cast(100*rand() + 1 as INT);

	SELECT @Rubi=Rubi, @RewardMoney=RewardMoney FROM pictorial.dbo.gPickShop WHERE PickIdx=@PicKIdx;

	select @UseGem=isnull(sum(Gem), 0) from pictorial.dbo.gGem_Log where usergroup=@UserGroup and left(convert(char(10), regdate, 23), 7)=left(convert(char(8), getdate(), 23), 7) and gem < 0;

	IF @UseGem - @Rubi >= -5000
	BEGIN

		-- Insert statements for procedure here
		IF @PickIdx > 3000 and @GEM >= @Rubi
		begin
			UPDATE pictorial.dbo.gMember SET GEM=GEM-@Rubi, Money=Money+@RewardMoney WHERE UserIdx=@UserIdx;

			INSERT  INTO pictorial.dbo.gGem_Log(Useridx, Gem, MyGem, Explain, RegDate, UserGroup) values(@UserIdx, -@Rubi, @GEM - @Rubi, '모델 뽑기', getdate(), @UserGroup);

			SELECT @Pick_Select = pic_idx FROM pictorial.dbo.tb_pictorial_chance WHERE Pick_Idx=@PicKIdx and @Rand BETWEEN motal_start AND motal_end;
		end
		ELSE IF @PickIdx = 3000 and (@PickCount > 0 or @GEM >= @Rubi)
		begin
			IF @PickCount > 0
			BEGIN
				UPDATE pictorial.dbo.gMember SET Money=Money+@RewardMoney WHERE UserIdx=@UserIdx;
				delete from pictorial.dbo.gPickBox where BoxIdx=(select Top 1 BoxIdx from pictorial.dbo.gPickBox WHERE UserIdx=@UserIdx order by RegDate asc);
			END
			ELSE
			begin
				UPDATE pictorial.dbo.gMember SET GEM=GEM-@Rubi, Money=Money+@RewardMoney WHERE UserIdx=@UserIdx;
				INSERT  INTO pictorial.dbo.gGem_Log(Useridx, Gem, MyGem, Explain, RegDate, UserGroup) values(@UserIdx, -@Rubi, @GEM - @Rubi, '전체 모델 뽑기', getdate(), @UserGroup);
			end

			SELECT @Pick_Select = pic_idx FROM pictorial.dbo.tb_pictorial_chance WHERE @Rand BETWEEN total_start AND total_end;
		end

		if @Pick_Select > 0 
		begin
			INSERT INTO  pictorial.dbo.gPick_Log(UserIdx, PickIdx, Pic_Idx, RegDate) values(@UserIdx, @PicKIdx, @Pick_Select, getdate());

			SELECT @Count2=Count(*) FROM pictorial.dbo.gSecretaryBox WHERE UserIdx=@UserIdx and Pic_Idx=@Pick_Select;

			SELECT @UseTime=UseTime FROM pictorial.dbo.gPickShop WHERE PickIdx=@PicKIdx;

			if @Count2 > 0
				UPDATE pictorial.dbo.gSecretaryBox SET EndDate = DATEADD(Day, @UseTime, EndDate) WHERE UserIdx=@UserIdx and Pic_Idx=@Pick_Select;
			ELSE
				INSERT INTO pictorial.dbo.gSecretaryBox(UserIdx, Pic_Idx, Secretary, EndDate, RegDate) values(@UserIdx, @Pick_Select, 0, CONVERT(CHAR(10), DATEADD(day, @UseTime, GETDATE()),121), getdate());

			UPDATE gMission_Total_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MIdx between 62 and 66 and MFinish=0;

			UPDATE gMission_Total_Result SET MFinish = 1 FROM gMission_Total_Content B WHERE gMission_Total_Result.MIdx=B.MIdx and UserIdx= @UserIdx and MNum <= MCount and MFinish=0;

	--		UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=5 and MFinish=0;

			SET @Result = 0;
		end
		else
		begin
			if @PickIdx > 3000 and @GEM < 50
				SET @Result = -2;
			else if @PickIdx = 3000 and @GEM < 30 and @PickCount = 0
				SET @Result = -2;
			else
				SET @Result = -3;
		end
	END
	ELSE
		SET @Result = -4;

	SELECT @Result, @Pick_Select;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PICTORIALKEY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PICTORIALKEY_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @KEY varchar(20);

    -- Insert statements for procedure here

	SET @KEY = '';

	SELECT @KEY=TokenKey FROM pictorial.dbo.gConnToken WHERE UserIdx=@UserIdx;

	SELECT @KEY;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PLAYCOIN_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PLAYCOIN_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx		int,
	@Item		nvarchar(50),
	@Toekn		nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @Result int
	DECLARE @Count2 int
	DECLARE @CashSum int
	DECLARE @Cash int
	DECLARE @PlayCoin int

	SET @Result = 0;
	SET @PlayCoin = 0;

	SELECT @COUNT2=COUNT(*) FROM gReceipt WHERE Token=@Toekn and GameItem=@Item and UserIdx=@UserIdx;

	IF @COUNT2 = 0
	BEGIN
--		INSERT INTO gReceipt values(@Toekn, @Item, @UserIdx, 0, getdate());

		SELECT @PlayCoin=PlayCoin FROM gPlaycoinshop WHERE Name=@Item;

		IF @PlayCoin > 0
			UPDATE gMember SET Money=Money+@PlayCoin WHERE UserIDx=@UserIdx;
	END
	ELSE
	BEGIN	
		SELECT @Result=Finish FROM gReceipt WHERE Token=@Toekn and GameItem=@Item and UserIdx=@UserIdx;
		SET @Result = -1;
	END
	
	SELECT @Result;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_POSTBOX_BONUS_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_POSTBOX_BONUS_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@PostIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Gem	int
	DECLARE @Money	bigint
	DECLARE @Name	nvarchar(100)
	DECLARE @Result int
	DECLARE @Count		int
	DECLARE @UserGroup  int

	SET @Result = -1;
	SET @Count = 0;
	SET @Money = 0;
	SET @Gem = 0;
	SET @UserGroup = 0;

    -- Insert statements for procedure here
	IF @PostIdx = -1
	begin
		SELECT @Gem = isnull(sum(Gem), 0), @Money = isnull(sum(Money), 0) FROM gPostBox WHERE UserIdx=@UserIdx;

		IF @Gem > 0 or @Money > 0
			UPDATE gMember SET Gem=Gem+@Gem, Money=Money + @Money WHERE UserIdx=@UserIdx;

		IF @Gem > 0
		BEGIN
			SELECT @UserGroup=UserGroup FROM gMember WHERE UserIdx=@UserIdx;
			INSERT INTO gGem_Log(Useridx, Gem, MyGem, Explain, RegDate, UserGroup) SELECT UserIdx, Gem, Gem, Name, getdate(), @UserGroup FROM gPostBox WHERE UserIdx=@UserIdx and Gem > 0;
		END

		DELETE FROM gPostBox WHERE UserIdx=@UserIdx and PickIdx < 4000;
	end
	else if @PostIdx > 0
	begin
		SELECT @Gem = isnull(sum(Gem), 0), @Money = isnull(sum(Money), 0) FROM gPostBox WHERE UserIdx=@UserIdx and PostIdx=@PostIdx;

		IF @Gem > 0 or @Money > 0
			UPDATE gMember SET Gem=Gem+@Gem, Money=Money + @Money WHERE UserIdx=@UserIdx;
		
		IF @Gem > 0
		BEGIN
			SELECT @UserGroup=UserGroup FROM gMember WHERE UserIdx=@UserIdx;

			INSERT INTO gGem_Log(Useridx, Gem, MyGem, Explain, RegDate, UserGroup) SELECT UserIdx, Gem, Gem, Name, getdate(), @UserGroup FROM gPostBox WHERE PostIdx=@PostIdx and Gem > 0;
		END

		DELETE FROM gPostBox WHERE UserIdx=@UserIdx and PostIdx=@PostIdx;
	end

	if @Gem > 0 or @Money > 0
		SET @Result = 0;

	SELECT @Result;
	END
GO
/****** Object:  StoredProcedure [dbo].[USP_RECEIPT_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_RECEIPT_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx		int,
	@Item			nvarchar(30),
	@paymentid		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @Result int
	DECLARE @Count2 int
	DECLARE @CashSum int
	DECLARE @Cash int
	DECLARE @PlayCoin int

	SET @Result = 0;
	SET @PlayCoin = 0;

	SELECT @COUNT2=COUNT(*) FROM gReceipt WHERE paymentid=@paymentid and GameItem=@Item and UserIdx=@UserIdx;

	IF @COUNT2 = 0
	BEGIN
		INSERT INTO gReceipt values(@paymentid, @Item, @UserIdx, 0, getdate());

--		SELECT @PlayCoin=PlayCoin FROM gPlaycoinshop WHERE Name=@Item;

--		IF @PlayCoin > 0
--			UPDATE gMember SET Money=Money+@PlayCoin WHERE UserIDx=@UserIdx;
	END
	ELSE	
		SELECT @Result=Finish FROM gReceipt WHERE paymentid=@paymentid and GameItem=@Item and UserIdx=@UserIdx;
	
	SELECT @Result;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_RECEIPT_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_RECEIPT_UPDATE]
	-- Add the parameters for the stored procedure here
	@paymentid		int,
	@Finish	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @UserIdx int
	DECLARE @Count int
	DECLARE @PlayCoin int
	DECLARE @IDX int
	DECLARE @Item varchar(30)

    -- Insert statements for procedure here

	SELECT @UserIdx=UserIdx FROM gReceipt WHERE paymentid=@paymentid;

	IF @UserIdx > 0 
	BEGIN
		SELECT @Count=COUNT(*) FROM gReceipt WHERE paymentid=@paymentid and Finish=0;

		UPDATE  gReceipt set Finish=@Finish WHERE paymentid=@paymentid;

		IF @Finish = 1 and @Count > 0
		BEGIN

			select @Item=A.GameItem, @IDX=B.PlayCoinIdx, @PlayCoin=B.PlayCoin from gReceipt A LEFT JOIN gPlaycoinshop B on A.GameItem=B.Name where A.paymentid=@paymentid;

			UPDATE gMember SET Money=Money+@PlayCoin WHERE UserIDx=@UserIdx;

			INSERT INTO gPlayCoin_Log(UserIdx, Item, paymentid, RegDate) values(@UserIdx, @Item, @paymentid, Getdate()); 
		END
	END
	
	SELECT @UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_RECONN_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_RECONN_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @ROOM	int

    -- Insert statements for procedure here
	SET @ROOM = -1;
	
	SELECT @Room=Room FROM pictorial.dbo.gDisConnUser WHERE UserIdx=@UserIdx;
	
	SELECT @ROOM;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ROBOTID_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_ROBOTID_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT UserID FROM pictorial.dbo.gMember WHERE UserIdx < 1000 and UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ROULETTE_CHANCE_START]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_ROULETTE_CHANCE_START]
	-- Add the parameters for the stored procedure here
	@UserID		nvarchar(100),
	@UserIdx	int,
	@BetingMoney	int,
	@GameKind	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @Result int
	DECLARE @Count int
	DECLARE @Num int

	DECLARE @UserMoney bigint
	DECLARE @BonusMoney bigint
	DECLARE @UserGem	int

	DECLARE @Reward_Money bigint
	DECLARE @Reward_Bonus	bigint
	DECLARE @Reward_Gem	int
	DECLARE @Reward_Pick	int
	DECLARE @Result_Bonus   bigint

	SET @Result = -1; -- 해당 유저가 없음
	SET @Num = 0;
	SET @Reward_Money = 0;
	SET @Reward_Bonus = 0;
	SET @Reward_Gem = 0;
	SET @Reward_Pick = 0;
	SET @UserMoney = 0;
	SET @BonusMoney = 0;
	SET @UserGem = 0;
	SET @Result_Bonus = 0;
	

	SELECT @Count=COUNT(*) FROM pictorial.dbo.gMember WHERE UserID=@UserID and UserIdx=@UserIdx;

	IF @COUNT > 0 
	BEGIN
		IF @BetingMoney = 1 
		BEGIN
			SELECT @COUNT=COUNT(*) FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx and gem >= @BetingMoney;
		END
		ELSE IF @BetingMoney = 5000 or @BetingMoney = 50000
		BEGIN
			SELECT @COUNT=COUNT(*) FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx and BonusMoney >= @BetingMoney;
		END
		ELSE
			SET @COUNT = -3;		-- 베팅 머니가 맞지 않음

		IF @COUNT = 0 and @BetingMoney = 1 
			SET @COUNT = -2;		-- 보유 보석이 부족함
		ELSE IF @COUNT = 0
			SET @COUNT = -4;		-- 보유 보너스가 부족함
	END

	IF @COUNT > 0
	BEGIN
		SELECT @UserMoney=Money, @BonusMoney=BonusMoney, @UserGem=Gem FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx;
	   
		SET @Result = 0;

		SET @Count = cast(1000000*rand() + 1 as INT);

		SELECT @Num=NumIdx, @Reward_Money=Reward_Money, @Reward_Bonus=Reward_Bonus, @Reward_Gem=Reward_Gem, @Reward_Pick=Reward_Pick FROM pictorial.dbo.gRoulette_Chance WHERE Beting=@BetingMoney and @Count BETWEEN StartChance and EndChance;

		If @BetingMoney = 1
			SET @Reward_Gem=@Reward_Gem - 1;
		ELSE IF @BetingMoney = 5000 or @BetingMoney = 50000
			SET @Result_Bonus=@Reward_Bonus - @BetingMoney;

		UPDATE pictorial.dbo.gMember SET Money=Money + @Reward_Money, BonusMoney=BonusMoney + @Result_Bonus, Gem = Gem + @Reward_Gem WHERE UserIdx=@UserIdx;

		IF @Reward_Pick > 0 
			INSERT INTO pictorial.dbo.gPickBox(UserIdx, PickIdx, RegDate) values(@UserIdx, 3000, getdate());

		INSERT INTO pictorial.dbo.gRoulette_Log(UserIdx, NumIdx, Beting, UserMoney, UserBonus, UserGem, RegDate) values(@UserIdx, @Num, @BetingMoney, @UserMoney, @BonusMoney, @UserGem, getdate());

		SET @UserMoney = @UserMoney + @Reward_Money;
		SET @BonusMoney = @BonusMoney + @Result_Bonus;
		SET @UserGem = @UserGem + @Reward_Gem;

		select @COUNT=COUNT(*) from gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MType=4 and MFinish=0 and B.Midx=14;

		IF @COUNT > 0 
		begin
			UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=4 and MFinish=0;

			UPDATE gMission_Today_Result SET MFInish = 1 FROM gMission_Today_Choice B LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE UserIdx= @UserIdx and  gMission_Today_Result.MType=B.Idx and C.MNum <= MCount and MFinish=0;
		end 

		SELECT @COUNT=COUNT(*) from gMission_Total_Result A LEFT JOIN gMission_Total_Content B ON A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 6;

		IF @COUNT > 0
		BEGIN
			UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 6;

			UPDATE gMission_Total_Result SET MFInish = 1 FROM gMission_Total_Content B WHERE gMission_Total_Result.MIdx=B.MIdx and UserIdx= @UserIdx and MNum <= MCount and MFinish=0;
		END 
	END
	ELSE
	BEGIN
		IF @COUNT = 2
			SET @Result = -2;
		ELSE IF @COUNT = -4
			SET @Result = -4;
		ELSE
			SET @Result = -1;
	END
	
	SELECT @Result, @Num, @Reward_Money, @Reward_Bonus, @Reward_Gem, @Reward_Pick, @UserMoney, @BonusMoney, @UserGem;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_SECRETARY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_SECRETARY_SELECT]
	-- Add the parameters for the stored procedure here
	@Pic_Idx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT int

    -- Insert statements for procedure here

	SELECT @COUNT=COUNT(*)  from pictorial.dbo.tb_pictorial_main where pic_idx=@Pic_Idx;

	IF @COUNT > 0
		select pic_rating, pic_name, pic_conept, pic_img from pictorial.dbo.tb_pictorial_main where pic_idx=@Pic_Idx;
	else
		select 0, '', '', '';
END
GO
/****** Object:  StoredProcedure [dbo].[USP_SECRETARY_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_SECRETARY_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@SecretaryIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT2	int
	DECLARE @RESULT int

	SET @RESULT = 0;

    -- Insert statements for procedure here
	DELETE FROM  pictorial.dbo.gSecretaryBox where enddate < getdate();

	select @COUNT2=COUNT(*) from pictorial.dbo.gSecretaryBox where UserIdx=@UserIdx and Pic_Idx=@SecretaryIdx;

	IF @COUNT2 > 0
	begin
		UPDATE pictorial.dbo.gSecretaryBox SET Secretary=0 WHERE UserIdx=@UserIdx;
		UPDATE pictorial.dbo.gSecretaryBox SET Secretary=1 WHERE UserIdx=@UserIdx and Pic_Idx=@SecretaryIdx;

		select @RESULT=pic_rating from pictorial.dbo.tb_pictorial_main where pic_idx=@SecretaryIdx;
	end

	SELECT @COUNT2, @RESULT;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_SLOT_BET]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_SLOT_BET]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@MachineNo int,
	@TotalBet int,
	@Prize bigint,
	@BetResult text,
	@BeforeMoney bigint output,
	@AfterMoney bigint output,
	@IsFailed int output

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @MileageLevel int;
	declare @MileageRate float;

	select @BeforeMoney = Money from gMember where UserIdx = @UserIdx;

	if @@ROWCOUNT = 0 or @TotalBet > @BeforeMoney
	begin
		set @TotalBet = 0;
		set @AfterMoney = @BeforeMoney;
		set @IsFailed = 1;
		return;
	end	

	select @MileageRate = MileageRate from gMileageTable where VIPLevel = 1;

	update gMember set Money = Money - @TotalBet + @Prize, Mileage = ISNULL(Mileage, 0) + @MileageRate * @TotalBet * 100 where UserIdx = @UserIdx;

	select @AfterMoney = Money from gMember where UserIdx = @UserIdx;

	update gSlotInfo set TotalCoinIn = TotalCoinIn + @TotalBet, TotalCoinOut = TotalCoinOut + @Prize where MachineNo = @MachineNo;

	insert into gSlotLog (UserIdx, MachineNo, BetTime, BeforeMoney, TotalBet, Prize, AfterMoney, BetResult)
	values (@UserIdx, @MachineNo, GETDATE(), @BeforeMoney, @TotalBet, @Prize, @AfterMoney, @BetResult);

	set @IsFailed = 0;

END
GO
/****** Object:  StoredProcedure [dbo].[USP_SLOT_CHANCE_START]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_SLOT_CHANCE_START]
	-- Add the parameters for the stored procedure here
	@UserID		nvarchar(100),
	@UserIdx	int,
	@BetingMoney	int,
	@GameKind	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @Result int
	DECLARE @Count int
	DECLARE @Num int
	DECLARE @Jokbo int
	DECLARE @Money bigint
	DECLARE @Mul int

	DECLARE @UserMoney bigint
	DECLARE @BonusMoney bigint

	SET @Result = -1; -- 해당 유저가 없음
	SET @Num = 0;
	SET @Jokbo = 0;
	SET @Money = 0;
	SET @UserMoney = 0;
	SET @BonusMoney = 0;
	

	SELECT @Count=COUNT(*) FROM pictorial.dbo.gMember WHERE UserID=@UserID and UserIdx=@UserIdx;

	IF @BetingMoney = 5000
		SET @Mul = 1;
	ELSE IF @BetingMoney = 10000
		SET @Mul = 2;
	ELSE IF @BetingMoney = 50000
		SET @Mul = 10;
	ELSE
		SET @COUNT = -1;

	IF @COUNT > 0
	BEGIN
		SELECT @Count=COUNT(*) FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx and BonusMoney >= @BetingMoney;
	   
	   IF @Count > 0 
	    BEGIN
			SET @Result = 0;

			SET @Count = cast(999980*rand() + 1 as INT);

			SELECT @Num=SlotNum, @Jokbo=Jokbo, @Money=Money FROM pictorial.dbo.gSlot_Chance WHERE @Count BETWEEN StartChance and EndChance;

			SELECT @UserMoney=Money, @BonusMoney=BonusMoney FROM pictorial.dbo.gMember WHERE UserIdx=@UserIdx;

			SET @Money = @Money * @Mul;

			UPDATE pictorial.dbo.gMember SET Money=Money + @Money, BonusMoney=BonusMoney - @BetingMoney WHERE UserIdx=@UserIdx;

			INSERT INTO pictorial.dbo.gSlot_Log(UserIdx, SlotNum, BetingMoney, UserMoney, BonusMoney, WinMoney, RegDate) values(@UserIdx, @Num, @BetingMoney, @UserMoney, @BonusMoney, @Money, getdate());

			SET @UserMoney = @UserMoney + @Money;
			SET @BonusMoney = @BonusMoney - @BetingMoney;

			select @COUNT=COUNT(*) from gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MType=4 and MFinish=0 and B.Midx=15;

			IF @COUNT > 0 
			begin
				UPDATE gMission_Today_Result set MCount = MCount + 1 WHERE UserIdx=@UserIdx and MType=4 and MFinish=0;

				UPDATE gMission_Today_Result SET MFInish = 1 FROM gMission_Today_Choice B LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE UserIdx= @UserIdx and  gMission_Today_Result.MType=B.Idx and C.MNum <= MCount and MFinish=0;
			end 

			SELECT @COUNT=COUNT(*) from gMission_Total_Result A LEFT JOIN gMission_Total_Content B ON A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 7;

			IF @COUNT > 0
			BEGIN
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 7;

				UPDATE gMission_Total_Result SET MFInish = 1 FROM gMission_Total_Content B WHERE gMission_Total_Result.MIdx=B.MIdx and UserIdx= @UserIdx and MNum <= MCount and MFinish=0;
			END 
		END
		ELSE
			SET @Result = -2; -- 보유 보너스가 부족함
	END
	ELSE IF @Count = -1
		SET @Result = -3; -- 베팅 머니가 잘못되어있음
	
	SELECT @Result, @Num, @Jokbo, @Money, @UserMoney, @BonusMoney;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_STARTPAI_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_STARTPAI_INSERT] 
	-- Add the parameters for the stored procedure here
	@LogNo		varchar(20),
	@StartPai	varchar(200),
	@GameKind	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gStartPai values(@LogNo, @GameKind, @StartPai);
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERBONUS_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERBONUS_SELECT]
	-- Add the parameters for the stored procedure here
	@UserIdx		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT BonusMoney FROM pictorial.dbo.gMember where UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERBONUS_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERBONUS_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Money		bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	UPDATE pictorial.dbo.gMember SET BonusMoney=@Money WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERBONUSMONEY_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERBONUSMONEY_UPDATE]
-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@BonusMoney		bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	UPDATE pictorial.dbo.gMember SET BonusMoney=@BonusMoney WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERCONN_DELETE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERCONN_DELETE]
-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@GameKind	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if(@UserIdx >= 0)
	begin
		if(@UserIdx >= 200 and @UserIdx <= 300)
		begin
			DELETE FROM gConnUser WHERE UserIdx=@UserIdx;

			if @GameKind = 1
				DELETE FROM gConnUser WHERE GameKind=@GameKind and UserIdx between 400 and 499;
			else if @GameKind = 2
				DELETE FROM gConnUser WHERE GameKind=@GameKind and UserIdx between 500 and 599;
			else if @GameKind = 4
				DELETE FROM gConnUser WHERE GameKind=@GameKind and UserIdx between 600 and 699;
			else if @GameKind = 3
				DELETE FROM gConnUser WHERE GameKind=@GameKind and UserIdx between 700 and 799;
			else if @GameKind = 5
				DELETE FROM gConnUser WHERE GameKind=@GameKind and UserIdx between 800 and 899;
			else
				DELETE FROM gConnUser WHERE GameKind=@GameKind;
		end
		else
			DELETE FROM gConnUser WHERE UserIdx=@UserIdx;

			-- 로그아웃 정보 업데이트
			UPDATE gConnLog SET OutReg = GETDATE()
			WHERE LogIdx = (SELECT TOP 1 MAX(LogIdx) FROM gConnLog WHERE UserIdx = @UserIdx)
	end
	else
	begin
		DELETE FROM gConnUser WHERE GameKind=@GameKind;

		DELETE FROM gDisConnUser WHERE GameKind=@GameKind;

		DELETE FROM gConnUser WHERE GameKind=0;

		if @GameKind = 1
			UPDATE gBotNick SET UserIdx=0 WHERE UserIdx between 400 and 499;
		else if @GameKind = 2
			UPDATE gBotNick SET UserIdx=0 WHERE UserIdx between 500 and 599;
		else if @GameKind = 4
			UPDATE gBotNick SET UserIdx=0 WHERE UserIdx between 600 and 699;
		else if @GameKind = 3
			UPDATE gBotNick SET UserIdx=0 WHERE UserIdx between 700 and 799;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERCONN_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERCONN_INSERT]
-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@IP			nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO gConnUser(UserIdx, IP, RegDate) values(@UserIdx, @IP, getdate());
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERCONN_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERCONN_UPDATE]
-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Room		int,
	@Enty		int,
	@GameKind	int,
	@IP			varchar(20) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT int

    -- Insert statements for procedure here

	SELECT @COUNT = COUNT(*) FROM gConnUser WHERE UserIdx=@UserIdx;

	IF @COUNT > 0
		UPDATE gConnUser SET Room=@Room, Enty=@Enty, GameKind=@GameKind, IP=@IP WHERE UserIdx=@UserIdx;
	ELSE
		INSERT INTO gConnUser(UserIdx, GameKind, Room, Enty, IP, RegDate) values(@UserIdx, @GameKind, @Room, @Enty, @IP, getdate());

	IF @Room > 0 and @Enty > 0
	BEGIN
		IF @GameKind = 2
		BEGIN
			IF @Enty = 10000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 9;
			ELSE IF @Enty = 100000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 10;
			ELSE IF @Enty = 700000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 11;
			ELSE IF @Enty = 3000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 12;
			ELSE IF @Enty = 10000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 13;
		END
		ELSE IF @GameKind = 4
		BEGIN
			IF @Enty = 10000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 14;
			ELSE IF @Enty = 100000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 15;
			ELSE IF @Enty = 700000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 16;
			ELSE IF @Enty = 3000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 17;
			ELSE IF @Enty = 10000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 18;
		END
		ELSE IF @GameKind = 3
		BEGIN
			IF @Enty = 10000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 19;
			ELSE IF @Enty = 100000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 20;
			ELSE IF @Enty = 300000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 21;
			ELSE IF @Enty = 700000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 22;
			ELSE IF @Enty = 3000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 23;
			ELSE IF @Enty = 10000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 24;
		END
		ELSE IF @GameKind = 1
		BEGIN
			IF @Enty = 10000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 25;
			ELSE IF @Enty = 100000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 26;
			ELSE IF @Enty = 700000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 27;
			ELSE IF @Enty = 3000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 28;
			ELSE IF @Enty = 10000000
				UPDATE A SET MCount = MCount + 1 FROM gMission_Total_Result A LEFT JOIN gMission_Total_Content B on A.MIdx=B.MIdx WHERE A.UserIdx=@UserIdx and MFinish = 0 and B.MType = 29;
		END

		UPDATE gMission_Total_Result SET MFinish = 1 FROM gMission_Total_Content B WHERE gMission_Total_Result.MIdx=B.MIdx and UserIdx= @UserIdx and MNum <= MCount and MFinish=0;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERLOG_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERLOG_INSERT]
-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@IP			nvarchar(20),
	@Type		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @COUNT int

    -- Insert statements for procedure here

	if(@UserIdx >= 1000)
	begin
		INSERT INTO gConnLog(UserIdx, IP, InReg) values(@UserIdx, @IP, getdate());

		IF @Type = 0
		BEGIN
			select @COUNT=COUNT(*) from gMission_Today_Result A LEFT JOIN gMission_Today_Choice B on A.MType=B.Idx LEFT JOIN gMission_Today_Content C on B.Midx=C.MIdx WHERE A.UserIdx=@UserIdx and A.MType=5 and MFinish=0;

			IF @COUNT > 0
				UPDATE gMission_Today_Result set MCount = MCount + 1, MFinish=1 WHERE UserIdx=@UserIdx and MType=5;
		END
	end
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERLOG_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERLOG_UPDATE]
-- Add the parameters for the stored procedure here
	@UserIdx	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @LogIdx int

	if(@UserIdx >= 1000)
	begin
		SELECT Top 1 @LogIdx = LogIdx FROM gConnLog Where UserIdx=@UserIdx and OutReg is null Order by LogIdx desc;

		UPDATE gConnLog SET OutReg=getdate() WHERE LogIdx=@LogIdx;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERMONEY_SELECT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERMONEY_SELECT]
-- Add the parameters for the stored procedure here
	@UserIdx		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Money FROM gMember where UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERMONEY_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERMONEY_UPDATE]
-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@Money		bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	UPDATE gMember SET Money=@Money WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_USERWINLSEMONEY_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_USERWINLSEMONEY_UPDATE]
	-- Add the parameters for the stored procedure here
	@UserIdx	int,
	@WinLoseMoney	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE gMember SET Money=Money + @WinLoseMoney WHERE UserIdx=@UserIdx;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_VIDEO_INSERT]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_VIDEO_INSERT]
	-- Add the parameters for the stored procedure here
	@UserIdx int,
	@Money	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Secretary int
	DECLARE @Secretary_rating int 
	DECLARE @MaxVideo int 
	DECLARE @NowVideo int 
	DECLARE @Video int 

	DECLARE @MaxVideoMoney int 

    -- Insert statements for procedure here
	SET @Secretary = 0;
	SET @Secretary_rating = 0;
	select @Secretary=A.Pic_Idx,@Secretary_rating=B.pic_rating from pictorial.dbo.gSecretaryBox A LEFT JOIN  pictorial.dbo.tb_pictorial_main B on A.Pic_Idx=B.pic_idx where useridx=@UserIdx and Secretary=1;

	if @Secretary >= 42 and @Secretary <= 44
	begin
		if @Secretary_rating = 3
		begin
			SET @MaxVideo = 10;
		end
		else if @Secretary_rating = 2
		begin
			SET @MaxVideo = 8;
		end
		else if @Secretary_rating = 1
		begin
			SET @MaxVideo = 7;
		end
		else
		begin
			SET @MaxVideo = 5;
		end
	end
	else
	begin
		SET @MaxVideo = 5;
	end

	if @Secretary >= 39 and @Secretary <= 41
	begin
		if @Secretary_rating = 3
		begin
			SET @MaxVideoMoney = @Money + 500000;
		end
		else if @Secretary_rating = 2
		begin
			SET @MaxVideoMoney = @Money + 300000;
		end
		else if @Secretary_rating = 1
		begin
			SET @MaxVideoMoney = @Money + 200000;
		end
		else
		begin
			SET @MaxVideoMoney = @Money;
		end
	end
	else
	begin
		SET @MaxVideoMoney = @Money;
	end

	select @NowVideo=Video from gFreeCharge where UserIdx=@UserIdx;

	SET @Video = @MaxVideo - @NowVideo;


--	select @Count = Video from [dbo].[gFreeCharge] WHERE UserIdx=@UserIdx;

	if @Video > 0 
	begin
		UPDATE [dbo].[gFreeCharge] SET Video=Video + 1 WHERE UserIdx=@UserIdx;

		UPDATE pictorial.dbo.gMember SET Money = Money + @MaxVideoMoney WHERE UserIdx=@UserIdx;
	end

	SET @Video = @Video - 1;

	SELECT @Video,@MaxVideoMoney;
END
GO
/****** Object:  StoredProcedure [dbo].[WSP_ADMEMBER_CUD]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 관리자 생성, 수정, 삭제
	SELECT *, PWDCOMPARE('12345', ad_pw) FROM sAdMember
	declare @rCnt int, @rVal nvarchar(50)
	--EXEC WSP_ADMEMBER_CUD 2, 'ADMIN02', NULL, '최고관리자2', 10, 0, ':::1', '', ''
	EXEC WSP_ADMEMBER_CUD 0, 'ADMIN01', '12345', '최고관리자1', 10, 0, ':::1', @rCnt out, @rVal out
	select @rCnt, @rVal
*/ 
CREATE PROCEDURE [dbo].[WSP_ADMEMBER_CUD]
	@ad_idx		int=0,
	@ad_id		nvarchar(50),
	@ad_pw		nvarchar(50)='',
	@ad_name	nvarchar(50),
	@ad_level	int,
	@ad_use		tinyint,
	@ad_ip		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	IF @ad_idx = 0
	BEGIN
		INSERT INTO sAdMember (ad_id, ad_pw, ad_name, ad_level, ad_use)
		VALUES (@ad_id, PWDENCRYPT(@ad_pw), @ad_name, @ad_level, @ad_use)
	END
	ELSE
	BEGIN
		UPDATE sAdMember SET
			ad_pw = (CASE WHEN @ad_pw IS NULL THEN ad_pw ELSE PWDENCRYPT(@ad_pw) END) ,
			ad_name = @ad_name,
			ad_level = @ad_level,
			ad_use = @ad_use
		WHERE ad_idx = @ad_idx
	END

	SET @rCnt = @@ERROR
	SET @rVal = N'정상처리 되었습니다.'

	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE();

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_ADMEMBER_DETAIL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 관리자 상세

	EXEC WSP_ADMEMBER_DETAIL 1
*/
CREATE PROCEDURE [dbo].[WSP_ADMEMBER_DETAIL]
	@ad_idx		int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT ad_idx, ad_id, ad_name, ad_level, ad_use, ad_date FROM sAdMember
	WHERE ad_idx = @ad_idx

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_ADMEMBER_IDCHECK]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 관리자 아이디 체크

	declare @rCnt int, @rVal nvarchar(50)
	EXEC WSP_ADMEMBER_IDCHECK 'ADMIN01', @rCnt out, @rVal out
	select @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_ADMEMBER_IDCHECK]
	@ad_id	nvarchar(50),
	@rCnt	int out,
	@rVal	nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM sAdMember WHERE ad_id = @ad_id)
	BEGIN
		SET @rCnt = -1
		SET @rVal = N'이미 존재하는 아이디 입니다.'
	END
	ELSE
	BEGIN
		SET @rCnt = 0
		SET @rVal = N'사용 가능한 아이디 입니다.'
	END

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_ADMEMBER_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 관리자 리스트

	EXEC WSP_ADMEMBER_LIST 20, 1, '', '', ''

*/
CREATE PROCEDURE [dbo].[WSP_ADMEMBER_LIST]
	@PageSize		int = 20,
	@PageNo		int = 1,
	@sKey		nvarchar(100),
	@sVal		nvarchar(100),
	@rCnt		int out
AS
BEGIN

	SET NOCOUNT ON;

	SET @rCnt = (SELECT COUNT(*) FROM sAdMember);

	SELECT ad_idx, ad_id, ad_name, ad_level, ad_use, ad_date FROM sAdMember
	--ORDER BY ad_idx DESC
	--OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_ADMEMBER_LOGIN]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	### 관리자 로그인

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_ADMEMBER_LOGIN 'ADMIN01', '12345', ':::1', @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_ADMEMBER_LOGIN]
	@ad_id		nvarchar(50),
	@ad_pw		nvarchar(50),
	@ad_ip		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM sAdMember WHERE ad_id = @ad_id AND PWDCOMPARE(@ad_pw, ad_pw) = 1 )
	BEGIN

		SELECT ad_idx, ad_id, ad_name, ad_level, ad_use, ad_date FROM sAdMember
		WHERE ad_id = @ad_id AND PWDCOMPARE(@ad_pw, ad_pw) = 1

		SET @rCnt = 0
		SET @rVal = N'정상적으로 로그인 되었습니다.'

	END
	ELSE
	BEGIN
		SET @rCnt = -1
		SET @rVal = N'존재하지 않는 유저입니다.'
	END

	INSERT INTO sAdMember_Login (ad_id, ad_ip, ad_state) VALUES (@ad_id, @ad_ip, @rCnt);

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_Faq_CUD]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### FAQ 생성, 수정, 삭제

	SELECT * FROM sFaq

	declare @rCnt int, @rVal nvarchar(50)
	EXEC WSP_Faq_CUD 0, 'FAQ1', 'FAQ1', 0, 1, 0, @rCnt out, @rVal out
	select @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_Faq_CUD]
	@faq_idx		bigint,
	@faq_title		nvarchar(200),
	@faq_content	nvarchar(MAX),
	@faq_Gtype		int,
	@faq_Qtype		int,
	@faq_Use		int,
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	IF @faq_idx = 0
	BEGIN

		INSERT INTO sFaq (faq_title,  faq_content, faq_Gtype, faq_Qtype, faq_Use)
		VALUES (@faq_title,  @faq_content, @faq_Gtype, @faq_Qtype, @faq_Use)

		SET @rVal = N'정상적으로 등록되었습니다.'

	END
	ELSE
	BEGIN
	
		-- 삭제는 상태만 변경
		IF @faq_Use = 1
		BEGIN
			UPDATE sFaq SET
				faq_Use = @faq_Use
			WHERE faq_idx = @faq_idx
		END
		ELSE
		BEGIN
			UPDATE sFaq SET
				faq_title = @faq_title,
				faq_content = @faq_content,
				faq_Gtype = @faq_Gtype,
				faq_Qtype = @faq_Qtype,
				faq_Use = @faq_Use
			WHERE faq_idx = @faq_idx
		END

		SET @rVal = N'정상적으로 수정 되었습니다.'

	END

	SET @rCnt = @@ERROR

	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE();

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_Faq_DETAIL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### FAQ 상세

	EXEC WSP_Faq_DETAIL 1
*/
CREATE PROCEDURE [dbo].[WSP_Faq_DETAIL]
	@faq_idx		bigint
AS
BEGIN

	SET NOCOUNT ON;

	SELECT faq_idx, faq_title, faq_content, faq_Gtype, faq_Qtype, faq_Use FROM sFaq
	WHERE faq_idx = @faq_idx

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_Faq_List]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	--  FAQ
	SELECT * FROM [dbo].[gQuestionType]
	SELECT * FROM [dbo].[gGameType]
	SELECT * FROM [dbo].[gFaq]

	DECLARE @tCnt INT
	EXEC WSP_Faq_List 1, 'USER', 20, 1, 0, '', '', @tCnt = @tCnt OUTPUT
	SELECT @tCnt
*/
CREATE PROCEDURE [dbo].[WSP_Faq_List]
	@lan_idx		INT					-- 접속 언어
	,@conType		NVARCHAR(10)		-- 접속자 타입
	,@PageSize		int = 20
	,@PageNo		int = 1
	,@sbGtype		INT=0				-- 이용하는 게임타입
	,@seKey			NVARCHAR(100)=''	-- 검색조건
	,@seVAl			NVARCHAR(100)=''
	,@tCnt			INT OUTPUT	
AS
BEGIN

	SET NOCOUNT ON;
	
		IF @seKey IS NULL
		BEGIN
			SET @seKey = '';
			SET @seVal = '';
		END

		SET	@tCnt = (
			SELECT	COUNT(*)
			FROM [dbo].[sFaq]
			WHERE faq_Use = 0
			AND (CASE @sbGtype WHEN 0 THEN 0 ELSE faq_Gtype END) = @sbGtype
			AND (CASE @seKey WHEN 'faq_title' THEN faq_title WHEN 'faq_content' THEN faq_content ELSE '' END) LIKE CONVERT(NVARCHAR(100),'%' + @seVal + '%')
		)

		SELECT	ROW_NUMBER() OVER (ORDER BY faq_idx DESC) NUM, faq_idx, faq_title, faq_content, faq_Gtype, faq_Qtype, faq_Use, faq_Date
				,(CASE faq_Use
					WHEN 0 THEN N'use'
					WHEN 1 THEN N'unused'
				END)AS faq_UseVal
				,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_idx = faq_Gtype)AS faq_Gtypeval
				,(SELECT gqt_memo FROM [dbo].[sQuestionType] WHERE gqt_idx = faq_Qtype)AS faq_Qtypeval
		FROM [dbo].[sFaq]
		WHERE faq_Use = 0
		AND (CASE @sbGtype WHEN 0 THEN 0 ELSE faq_Gtype END) = @sbGtype
		AND (CASE @seKey WHEN 'faq_title' THEN faq_title WHEN 'faq_content' THEN faq_content ELSE '' END) LIKE CONVERT(NVARCHAR(100),'%' + @seVal + '%')
		ORDER BY faq_idx DESC
		OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_GAME_NOTICE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 버전관리 및 게임시작 공지
	SELECT * FROM [dbo].[gNotice]
*/
CREATE PROCEDURE [dbo].[WSP_GAME_NOTICE]
	@IsCheck	int,
	@Ver		int,
	@Msg		nvarchar(256)='',
	@Ntype		int,
	@ad_idx		int,
	@ad_ip		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;
	
	SET @rCnt = -1
	SET @rVal = N'공지사항'

	IF @Ntype = 0
	BEGIN
		SELECT NIdx, IsCheck, Ver, Msg FROM [dbo].[gNotice]
	END
	ELSE
	BEGIN

		INSERT INTO [dbo].[sNotice_Log] SELECT *, @ad_idx, @ad_ip, GETDATE()  FROM [dbo].[gNotice]

		IF EXISTS(SELECT * FROM [dbo].[gNotice])
		BEGIN

			UPDATE [dbo].[gNotice] SET IsCheck = @IsCheck, Ver = @Ver, Msg = @Msg

		END
		ELSE
		BEGIN

			INSERT INTO [dbo].[gNotice] (IsCheck, Ver, Msg) VALUES (@IsCheck, @Ver, @Msg)

		END

		SET @rCnt = @@ERROR
		SET @rVal = N'정상적으로 처리되었습니다.'

		IF @rCnt <> 0
			SET @rVal = ERROR_MESSAGE()

	END
	
END


GO
/****** Object:  StoredProcedure [dbo].[WSP_GAME_NOTICE_EMERGENCY]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 긴급공지 CRUD

	SELECT * FROM [dbo].[gGame_Notice]
	SELECT * FROM [dbo].[sGame_Notice_Log]

	EXEC WSP_GAME_NOTICE_EMERGENCY NULL, 0, 1, ':::1', '', ''

	EXEC WSP_GAME_NOTICE_EMERGENCY '긴급공지 테스트', 1, 1, ':::1', '', ''

*/
CREATE PROCEDURE [dbo].[WSP_GAME_NOTICE_EMERGENCY]
	@Notice		nvarchar(150)='',
	@Ntype		int,
	@ad_idx		int,
	@ad_ip		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;
	
	SET @rCnt = -1
	SET @rVal = N'긴급공지사항'

	IF @Ntype = 0
	BEGIN
		SELECT Notice FROM [dbo].[gGame_Notice]
	END
	ELSE
	BEGIN


		INSERT INTO [dbo].[sGame_Notice_Log] SELECT *, @ad_idx, @ad_ip, GETDATE()  FROM [dbo].[gGame_Notice]

		IF EXISTS(SELECT Notice FROM [dbo].[gGame_Notice])
		BEGIN

			UPDATE [dbo].[gGame_Notice] SET Notice = @Notice

		END
		ELSE
		BEGIN

			INSERT INTO [dbo].[gGame_Notice] VALUES (@Notice)

		END

		SET @rCnt = @@ERROR
		SET @rVal = N'정상적으로 처리되었습니다.'

		IF @rCnt <> 0
			SET @rVal = ERROR_MESSAGE()
	END

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_GameGuide_CUD]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 게임 가이드 생성, 수정, 삭제
	SELECT * FROM sGameGuide

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_GameGuide_CUD 0, '홀덤신규2', '홀덤신규메모2', '2.png', '', 0, 1, 0, 1, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal
*/
CREATE PROCEDURE [dbo].[WSP_GameGuide_CUD]
	@gg_idx		int,
	@gg_title	nvarchar(50),
	@gg_memo	nvarchar(200),
	@gg_file1	nvarchar(100)='',
	@gg_file2	nvarchar(100)='',
	@gg_use		int,
	@gg_Gtype	int,
	@gg_orderby	int,
	@gg_lan		int,
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	IF @gg_idx = 0
	BEGIN

		IF (@gg_file1 IS NULL OR @gg_file1 = '') AND ( @gg_file2 IS NULL OR @gg_file2 = '' )
			SET @rVal = N'추가시 이미지파일은 하나이상 있어야 합니다.'
		ELSE
		BEGIN
			INSERT INTO sGameGuide (gg_title, gg_memo, gg_file1, gg_file2, gg_use, gg_Gtype, gg_orderby, gg_lan)
			VALUES (@gg_title, @gg_memo, @gg_file1, @gg_file2, @gg_use, @gg_Gtype, @gg_orderby, @gg_lan)

			SET @rVal = N'정상적으로 추가되었습니다.'
		END
	END
	ELSE
	BEGIN

		IF @gg_use = 1
		BEGIN

			UPDATE sGameGuide SET gg_use = @gg_use WHERE gg_idx = @gg_idx

			SET @rVal = N'정상적으로 삭제되었습니다.'

		END
		ELSE
		BEGIN

			UPDATE sGameGuide SET 
				gg_title = @gg_title,
				gg_memo = @gg_memo,
				gg_file1 = (CASE WHEN @gg_file1 IS NULL THEN  gg_file1 ELSE @gg_file1 END),
				gg_file2 = (CASE WHEN @gg_file2 IS NULL THEN  gg_file2 ELSE @gg_file2 END),
				gg_use = @gg_use,
				gg_Gtype = @gg_Gtype,
				gg_orderby = @gg_orderby,
				gg_lan = @gg_lan
			WHERE gg_idx = @gg_idx

			SET @rVal = N'정상적으로 수정되었습니다.'

		END

	END

	SET @rCnt = @@ERROR
	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE()

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_GameGuide_DETAIL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 게임 가이드 상세
	SELECT * FROM sGameGuide

	EXEC WSP_GameGuide_DETAIL 1
*/
CREATE PROCEDURE [dbo].[WSP_GameGuide_DETAIL]
	@gg_idx		int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT gg_idx, gg_title, gg_memo, gg_file1, gg_file2, gg_use, gg_Gtype, gg_orderby, gg_lan, gg_date 
	FROM sGameGuide
	WHERE gg_idx = @gg_idx

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_GameGuideList]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	-- 게임가이드 리스트
	SELECT * FROM [dbo].[sGameType]
	SELECT * FROM [dbo].[sGameGuide]

	EXEC WSP_GameGuideList 1, 1, 0

*/
CREATE PROCEDURE [dbo].[WSP_GameGuideList]
	@lan_idx	INT		
	,@gg_Gtype	INT
	,@gg_idx	INT=0
AS
BEGIN

	SET NOCOUNT ON;

		SELECT	gg_idx, gg_title, gg_memo, gg_file1, gg_file2, gg_use, gg_Gtype, gg_orderby, gg_date 
				,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_Num = gg_Gtype)AS gg_GtypeVal
		FROM [dbo].[sGameGuide]
		WHERE gg_Gtype = @gg_Gtype AND gg_use = 0 
		--AND gg_lan = @lan_idx
		AND (CASE @gg_idx WHEN 0 THEN 0 ELSE gg_idx END) = @gg_idx
		ORDER BY gg_orderby

	SET NOCOUNT OFF;

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_GAMELOG]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	### 게임로그
	select * from [dbo].[gGameLog]
	select * from [dbo].[gSlotLog]

	SELECT * FROM [dbo].[sGameType]

	DECLARE @rCnt INT
	EXEC WSP_GAMELOG 20, 1, '', '', 1, @rCnt OUT
	SELECT @rCnt

	DECLARE @rCnt INT
	EXEC WSP_GAMELOG 20, 1, '', '', 11, @rCnt OUT
	SELECT @rCnt

	DECLARE @rCnt INT
	EXEC WSP_GAMELOG 20, 1, '', '', 12, @rCnt OUT
	SELECT @rCnt

*/
CREATE PROCEDURE [dbo].[WSP_GAMELOG]
	@PageSize		int = 20
	,@PageNo		int = 1
	,@sKey			nvarchar(100)=''
	,@sVal			nvarchar(100)=''
	,@gType			int
	,@rCnt			int out
AS
BEGIN

	SET NOCOUNT ON;

	IF @sKey IS NULL
	BEGIN

		SET @sKey = ''
		SET @sVal = ''

	END

	IF @gType = 1
	BEGIN

		SET @rCnt = (
			SELECT	COUNT(*)
			FROM [dbo].[gGameLog] AS A
			INNER JOIN [dbo].[gMember] AS B
			ON A.UserIdx = B.UserIdx
				WHERE (CASE  
				WHEN @sKey = 'UserID' THEN UserID 
				WHEN @sKey = 'Nick' THEN Nick
				WHEN @sKey = 'Jokbo' THEN Jokbo
				ELSE '' END) LIKE '%'+@sVal+'%'
		)

		SELECT	Logidx, A.UserIdx, GameKind, Room, Rank, UserMoney, WinLoseMoney, Jokbo, LastBetting, CardInfo, SeedMoney, A.RegDate, B.UserID, B.Nick
		FROM [dbo].[gGameLog] AS A
		INNER JOIN [dbo].[gMember] AS B
		ON A.UserIdx = B.UserIdx
			WHERE (CASE  
			WHEN @sKey = 'UserID' THEN UserID 
			WHEN @sKey = 'Nick' THEN Nick
			WHEN @sKey = 'Jokbo' THEN Jokbo
			ELSE '' END) LIKE '%'+@sVal+'%'
		ORDER BY Logidx DESC
		OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY
	END


	-- 슬롯
	IF @gType >= 11
	BEGIN

		IF @gType = 11
			SET @gType = 0
		ELSE IF @gType = 12
			SET @gType = 1

		SET @rCnt = (
			SELECT COUNT(*)
			FROM [dbo].[gSlotLog] AS A
			INNER JOIN [dbo].[gMember] AS B
			ON A.UserIdx = B.UserIdx
			WHERE MachineNo = @gType
			AND (CASE  
				WHEN @sKey = 'UserID' THEN UserID 
				WHEN @sKey = 'Nick' THEN Nick
				ELSE '' END) LIKE '%'+@sVal+'%'
		)


		SELECT LogIdx, A.UserIdx, MachineNo, BetTime, BeforeMoney, TotalBet, Prize, AfterMoney, BetResult, B.UserID, B.Nick
		FROM [dbo].[gSlotLog] AS A
		INNER JOIN [dbo].[gMember] AS B
		ON A.UserIdx = B.UserIdx
		WHERE MachineNo = @gType
		AND (CASE  
			WHEN @sKey = 'UserID' THEN UserID 
			WHEN @sKey = 'Nick' THEN Nick
			ELSE '' END) LIKE '%'+@sVal+'%'
		ORDER BY Logidx DESC
		OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY
		
	END

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_GameType]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	## 게임타입
	SELECT * FROM [dbo].[sGameType]
*/
CREATE PROCEDURE [dbo].[WSP_GameType]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT g_idx, g_Num, g_Name, g_Use, g_date FROM [dbo].[sGameType]
	WHERE g_Use = 0

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_GameType_ALL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 게임설정 및 보기
	SELECT * FROM [dbo].[sGameType]
	SELECT * FROM [dbo].[sGameType_Log]

	exec WSP_GameType_CUD 38638, 5, '룰렛', 0, 1, '::1', '', ''

*/
CREATE PROCEDURE [dbo].[WSP_GameType_ALL]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT g_idx, g_Num, g_Name, g_Use, g_date FROM [dbo].[sGameType]

END


GO
/****** Object:  StoredProcedure [dbo].[WSP_GameType_CUD]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 게임설정 및 보기
	SELECT * FROM [dbo].[sGameType]
	SELECT * FROM [dbo].[sGameType_Log]

	exec WSP_GameType_CUD 38638, 5, '룰렛', 0, 1, '::1', '', ''

*/
CREATE PROCEDURE [dbo].[WSP_GameType_CUD]
	@g_idx		int,
	@g_Num		int,
	@g_Name		nvarchar(100),
	@g_Use		int,
	@ad_idx		int,
	@ad_ip		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;


	INSERT INTO [dbo].[sGameType_Log] SELECT *, @ad_idx, @ad_ip, GETDATE() FROM [dbo].[sGameType] WHERE g_idx  = @g_idx 

	UPDATE [dbo].[sGameType] SET
		g_Num = @g_Num,
		g_Name = @g_Name,
		g_Use = @g_Use
	WHERE g_idx = @g_idx

	SET @rCnt = @@ERROR
	SET @rVal = N'정상적으로 수정되었습니다.'

	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE()

END


GO
/****** Object:  StoredProcedure [dbo].[WSP_MEMBER_BLOCK]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 유저 삭제 및 로그남기기
	SELECT * FROM gMember ORDER BY USERIDX DESC
	SELECT * FROM [dbo].[sMember_DelLog]

	declare @rCnt int, @rVal nvarchar(50)
	--EXEC WSP_MEMBER_BLOCK 1036, 1, '블럭', @rCnt out, @rVal out
	EXEC WSP_MEMBER_BLOCK 1036, 0, '블럭해제', @rCnt out, @rVal out
	select @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_MEMBER_BLOCK]
	@UserIdx	bigint,
	@nBlock		int,
	@sBlock		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	UPDATE gMember SET Block = @nBlock WHERE UserIdx = @UserIdx

	SET @rCnt = @@ERROR
	SET @rVal = N'정상적으로 '+@sBlock+' 처리가 되었습니다.'
	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE()


END

GO
/****** Object:  StoredProcedure [dbo].[WSP_MEMBER_CON_DELETE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 접속중인 유저 데이터 삭제 게임과 연관이 없음
	SELECT * FROM [dbo].[gConnUser]

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_MEMBER_CON_DELETE 1006, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal
*/
CREATE PROCEDURE [dbo].[WSP_MEMBER_CON_DELETE]
	@UserIdx	int
	,@rCnt		int out
	,@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	DELETE [dbo].[gConnUser] WHERE UserIdx = @UserIdx

	SET @rCnt = @@ERROR
	SET @rVal = N'정상적으로 삭제되었습니다.'

	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE()

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_MEMBER_CON_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 유저 접속 리스트
	SELECT * FROM [dbo].[gConnUser]
	SELECT * FROM [dbo].[sGameType]

	DECLARE @rCnt INT
	EXEC WSP_MEMBER_CON_LIST 1, 20, 1, 'UserID', 'ㅁㄴㅇㄹ', @rCnt OUT
	SELECT @rCnt
*/
CREATE PROCEDURE [dbo].[WSP_MEMBER_CON_LIST]
	@lan_idx		int					-- 접속 언어
	,@PageSize		int = 20
	,@PageNo		int = 1
	,@sKey			nvarchar(100)=''
	,@sVal			nvarchar(100)=''
	,@rCnt			int out
AS
BEGIN

	SET NOCOUNT ON;

	IF @sKey IS NULL
	BEGIN
		SET @sKey = '';
		SET @sVal = '';
	END

	SET @rCnt = (
		SELECT COUNT(*)
		FROM [dbo].[gConnUser]AS A
		INNER JOIN [dbo].[gMember]AS B
		ON A.UserIdx = B.UserIdx
		INNER JOIN [dbo].[sGameType]AS C
		ON A.GameKind = C.g_Num
		WHERE (CASE @sKey 
			WHEN 'NICK' THEN Nick collate Korean_Wansung_CI_AS
			WHEN 'UserID' THEN B.UserID collate Korean_Wansung_CI_AS
			WHEN 'g_Name' THEN C.g_Name collate Korean_Wansung_CI_AS
			ELSE '' END) LIKE '%'+@sVal+'%'
	)

	SELECT A.UserIdx, GameKind, Room, Enty, IP, A.RegDate, B.UserID, B.Nick, C.g_Name
	FROM [dbo].[gConnUser]AS A
	INNER JOIN [dbo].[gMember]AS B
	ON A.UserIdx = B.UserIdx
	INNER JOIN [dbo].[sGameType]AS C
	ON A.GameKind = C.g_Num
	WHERE (CASE @sKey 
		WHEN 'NICK' THEN Nick collate Korean_Wansung_CI_AS
		WHEN 'UserID' THEN B.UserID collate Korean_Wansung_CI_AS
		WHEN 'g_Name' THEN C.g_Name collate Korean_Wansung_CI_AS
		ELSE '' END) LIKE '%'+@sVal+'%'
	ORDER BY A.UserIdx DESC
	OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY

END
	
GO
/****** Object:  StoredProcedure [dbo].[WSP_MEMBER_DEL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 유저 삭제 및 로그남기기
	SELECT * FROM gMember ORDER BY USERIDX DESC
	SELECT * FROM [dbo].[sMember_DelLog]

	declare @rCnt int, @rVal nvarchar(50)
	EXEC WSP_MEMBER_DEL 1031, 1, ':::1', @rCnt out, @rVal out
	select @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_MEMBER_DEL]
	@UserIdx	bigint,
	@ad_idx		int,
	@ad_ip		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	-- 삭제 로그
	INSERT INTO [dbo].[sMember_DelLog] SELECT *, @ad_idx, @ad_ip, GETDATE() FROM gMember WHERE UserIdx = @UserIdx

	-- 유저삭제
	DELETE gMember WHERE UserIdx = @UserIdx

	SET @rCnt = @@ERROR
	SET @rVal = N'정상적으로 유저를 삭제처리 하였습니다.'
	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE()


END

GO
/****** Object:  StoredProcedure [dbo].[WSP_MEMBER_DETAIL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	SELECT * FROM [dbo].[gMember]

	EXEC WSP_MEMBER_DETAIL 'wtpphzrcxx_1536816032@tfbnw.net'
*/
CREATE PROCEDURE [dbo].[WSP_MEMBER_DETAIL]
	@sbUserID		nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT UserIdx, UserID, Nick, Email, Social FROM [dbo].[gMember] WHERE UserID = @sbUserID

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_MEMBER_LIST]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 유저 리스트
	SELECT * FROM [dbo].[gMember]

	DECLARE @rCnt INT
	EXEC WSP_MEMBER_LIST 1, 20, 1, NULL, NULL, @rCnt OUT
	SELECT @rCnt

*/
CREATE PROCEDURE [dbo].[WSP_MEMBER_LIST]
	@lan_idx		int					-- 접속 언어
	,@PageSize		int = 20
	,@PageNo		int = 1
	,@sKey			nvarchar(100)
	,@sVal			nvarchar(100)
	,@rCnt			int out
AS
BEGIN

	SET NOCOUNT ON;

	IF @sKey IS NULL
	BEGIN
		SET @sKey = '';
		SET @sVal = '';
	END

	SET @rCnt = (
		SELECT COUNT(*)
		FROM [dbo].[gMember]
		WHERE (CASE 
			WHEN @sKey = 'UserID' THEN UserID 
			WHEN @sKey = 'Nick' THEN Nick
			WHEN @sKey = 'Email' THEN Email
			ELSE '' END) LIKE '%'+@sVal+'%'
	)

	SELECT UserIdx, UserID, Nick, RegID, Avata, Social, Gem, Money, Email, RegDate, Block, kcertCI, kcertCIDate, UserGroup FROM [dbo].[gMember]
	WHERE (CASE  
		WHEN @sKey = 'UserID' THEN UserID 
		WHEN @sKey = 'Nick' THEN Nick
		WHEN @sKey = 'Email' THEN Email
		ELSE '' END) LIKE '%'+@sVal+'%'
	ORDER BY UserIdx DESC
	OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_MEMBER_MONEY_UPDATE]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 유저 머니 변경
	SELECT * FROM [dbo].[gMember]

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_MEMBER_MONEY_UPDATE 1001, 2000000, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal
*/
CREATE PROCEDURE [dbo].[WSP_MEMBER_MONEY_UPDATE]
	@UserIdx	int
	,@Money		bigint
	,@rCnt		int out
	,@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM gMember WHERE UserIdx = @UserIdx)
	BEGIN

		UPDATE gMember SET Money = @Money
		WHERE UserIdx = @UserIdx

		SET @rCnt = @@ERROR
		SET @rVal = N'정상적으로 수정되었습니다.'

		IF @rCnt <> 0
			SET @rVal = ERROR_MESSAGE()

	END
	ELSE
	BEGIN

		SET @rCnt = -1
		SET @rVal = N'존재하는 유저가 아닙니다.'

	END


END


GO
/****** Object:  StoredProcedure [dbo].[WSP_Notice_CUD]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 공지사항 입력, 수정, 삭제

	SELECT * FROM sNotice

	declare @rCnt int, @rVal nvarchar(50)
	EXEC WSP_Notice_CUD 0, '공지사항 제목1 - 일반', '공지사항 내용1 - 일반', 0, 2, 0, @rCnt out, @rVal out
	select @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_Notice_CUD]
	@gn_idx		bigint,
	@gn_title	nvarchar(200),
	@gn_content	nvarchar(MAX),
	@gn_Gtype	tinyint,
	@gn_SType	tinyint,
	@gn_status	tinyint,
	@rCnt		int out,
	@rVal		nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;


	IF @gn_idx = 0
	BEGIN

		INSERT INTO sNotice (gn_title, gn_content, gn_Gtype, gn_Stype, gn_status)
		VALUES (@gn_title, @gn_content, @gn_Gtype, @gn_SType, @gn_status)

		SET @rVal = N'정상적으로 등록되었습니다.'

	END
	ELSE
	BEGIN

		-- 삭제는 상태만 변경
		IF @gn_status = 1
		BEGIN
			UPDATE sNotice SET
				gn_status = @gn_status
			WHERE gn_idx = @gn_idx
		END
		ELSE
		BEGIN
			UPDATE sNotice SET
				gn_title = @gn_title,
				gn_content = @gn_content,
				gn_Gtype = @gn_Gtype,
				gn_Stype = @gn_Stype,
				gn_status = @gn_status
			WHERE gn_idx = @gn_idx
		END

		SET @rVal = N'정상적으로 수정 되었습니다.'
	END

	SET @rCnt = @@ERROR

	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE();

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_Notice_DETAIL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 공지사항 상세

	EXEC WSP_Notice_DETAIL 1

*/
CREATE PROCEDURE [dbo].[WSP_Notice_DETAIL]
	@gn_idx	bigint
AS
BEGIN

	SET NOCOUNT ON;

	SELECT gn_idx, gn_title, gn_content, gn_Gtype, gn_Stype, gn_status, gn_date FROM sNotice
	WHERE gn_idx = @gn_idx

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_Notice_List]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	-- 공지사항 리스트
	select * from [dbo].[sGameType]		-- 게임 타입
	SELECT * FROM [dbo].[sNotice]

	DECLARE @tCnt INT
	--exec WSP_Notice_List 1, 'USER', 20, 1, 0, '', '', @tCnt = @tCnt OUTPUT
	exec WSP_Notice_List 1, 'USER', 3, 1, 0, NULL, NULL, @tCnt = @tCnt OUTPUT
	SELECT @tCnt

*/
CREATE PROCEDURE [dbo].[WSP_Notice_List]
	@lan_idx		INT					-- 접속 언어
	,@conType		NVARCHAR(10)		-- 접속자 타입
	,@PageSize		int = 20
	,@PageNo		int = 1
	,@sbGtype		INT=0				-- 이용하는 게임타입
	,@seKey			NVARCHAR(100)=''	-- 검색조건
	,@seVal			NVARCHAR(100)=''
	,@tCnt			INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

		IF @seKey IS NULL
		BEGIN
			SET @seKey = '';
			SET @seVal = '';
		END

		SET @tCnt = (
			SELECT	COUNT(*)
			FROM [dbo].[sNotice]
			WHERE gn_status = 0
			AND (CASE @sbGtype WHEN 0 THEN 0 ELSE gn_Gtype  END) = @sbGtype
			AND (CASE @seKey WHEN 'gn_title' THEN gn_title WHEN 'gn_content' THEN gn_content ELSE '' END) LIKE CONVERT(NVARCHAR(100),'%' + @seVal + '%')
		)

		SELECT	ROW_NUMBER() OVER (ORDER BY gn_idx DESC) NUM, gn_idx, gn_title, gn_content, gn_Gtype, gn_Stype, gn_status, gn_date
				,(CASE gn_Stype
					WHEN 0 THEN N'Urgent Notice'
					WHEN 1 THEN N'System Notice'
					WHEN 2 THEN N'General Notice'
				END)AS gn_StypeVal
				,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_idx = gn_Gtype)AS gn_Gtypeval
		FROM [dbo].[sNotice]
		WHERE gn_status = 0
		AND (CASE @sbGtype WHEN 0 THEN 0 ELSE gn_Gtype  END) = @sbGtype
		AND (CASE @seKey WHEN 'gn_title' THEN gn_title WHEN 'gn_content' THEN gn_content ELSE '' END) LIKE CONVERT(NVARCHAR(100),'%' + @seVal + '%')
		ORDER BY gn_idx DESC
		OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY


		/*
		-- 기본 조건
		IF @conType = 'ADMIN'
			BEGIN
				IF @sbGtype <> 0
				BEGIN
					SET @GWHERE = ' AND gn_Gtype = ' + CONVERT(NVARCHAR,@sbGtype)
				END
			END
		ELSE IF @conType = 'USER'
			BEGIN
				SET @GWHERE = ' AND gn_Gtype = ' + CONVERT(NVARCHAR,@sbGtype)
				SET @WHERE01 = ' AND gn_status = 0 '
			END

		-- 검색 조건
		IF @seKey <> '' AND @seVAl <> ''
		BEGIN
			SET @WHERE02 = ' AND ' + CONVERT(NVARCHAR,@seKey) + ' LIKE ''%' + CONVERT(NVARCHAR,@seVAl) + '%'' ' ;
		END
		*/
		
	SET NOCOUNT OFF;
END

GO
/****** Object:  StoredProcedure [dbo].[WSP_PLAYCOIN_LOG]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 플레이코인 캐시 로그
	select * from [dbo].[gPlayCoin_Log]

	DECLARE @RCNT INT
	EXEC WSP_PLAYCOIN_LOG 20, 1, NULL, NULL, @RCNT OUT
	SELECT @RCNT

	DECLARE @RCNT INT
	EXEC WSP_PLAYCOIN_LOG 20, 1, 'UserID', 'test011', @RCNT OUT
	SELECT @RCNT

*/
CREATE PROCEDURE [dbo].[WSP_PLAYCOIN_LOG]
	@PageSize		int = 20
	,@PageNo		int = 1
	,@seKey			NVARCHAR(100)=''	-- 검색조건
	,@seVal			NVARCHAR(100)=''
	,@rCnt			int out
AS
BEGIN

	SET NOCOUNT ON;

	IF @seKey IS NULL
	BEGIN
		SET @seKey = ''
		SET @seVal = ''
	END

	SET @rCnt = (
		SELECT COUNT(*)
		FROM [dbo].[gPlayCoin_Log] AS A
		INNER JOIN [dbo].[gMember] AS B
		ON A.UserIdx = B.UserIdx
		WHERE (CASE @seKey 
			WHEN 'UserID' THEN CONVERT(NVARCHAR,UserID) 
			WHEN 'Nick' THEN CONVERT(NVARCHAR,Nick) 
			WHEN 'Item' THEN CONVERT(NVARCHAR,Item) 
			WHEN 'PaymentId' THEN CONVERT(NVARCHAR,PaymentId)  
			ELSE '' END) LIKE CONVERT(NVARCHAR(100),'%' + @seVal + '%')
	)


	SELECT LogIdx, A.UserIdx, Item, PaymentId, A.RegDate, B.UserID, B.Nick
	FROM [dbo].[gPlayCoin_Log] AS A
	INNER JOIN [dbo].[gMember] AS B
	ON A.UserIdx = B.UserIdx
	WHERE (CASE @seKey 
		WHEN 'UserID' THEN CONVERT(NVARCHAR,UserID) 
		WHEN 'Nick' THEN CONVERT(NVARCHAR,Nick) 
		WHEN 'Item' THEN CONVERT(NVARCHAR,Item) 
		WHEN 'PaymentId' THEN CONVERT(NVARCHAR,PaymentId)  
		ELSE '' END) LIKE CONVERT(NVARCHAR(100),'%' + @seVal + '%')
	ORDER BY LogIdx DESC
	OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_PLAYCOINSHOP]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 아이템 샾
	select * from [dbo].[gPlayCoinShop]

	EXEC WSP_PLAYCOINSHOP
*/
CREATE PROCEDURE [dbo].[WSP_PLAYCOINSHOP]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT PlayCoinIdx, Name, PlayCoin FROM [dbo].[gPlayCoinShop]

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_ServiceCenter_AllList]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	## 고객센터 질문 답변 리스트

	DECLARE @tCnt INT
	--EXEC WSP_ServiceCenter_AllList 1, 'USER', 'TEST1', 20, 1, 0, '', '', '', '', @tCnt OUT
	EXEC WSP_ServiceCenter_AllList 1, 'ADMIN', NULL, 20, 1, 0, '', '', '', '', @tCnt OUT
	SELECT @tCnt

*/

CREATE PROCEDURE [dbo].[WSP_ServiceCenter_AllList]
	@lan_idx		INT					-- 접속 언어
	,@conType		NVARCHAR(10)		-- 접속자 타입
	,@sbUserID		NVARCHAR(50)=''		-- 접속자 아이디
	,@PageSize		int = 20
	,@PageNo		int = 1
	,@sbGtype		INT=0				-- 이용하는 게임타입
	,@seKey			NVARCHAR(100)=''	-- 검색조건
	,@seVAl			NVARCHAR(100)=''
	,@seKey1		NVARCHAR(100)=''	-- 기본상태
	,@seVAl1		NVARCHAR(100)=''
	,@tCnt			INT OUTPUT
AS
BEGIN

	SET NOCOUNT ON;

	IF @sbUserID IS NULL
		SET @sbUserID = ''

	SET @tCnt = (
		SELECT COUNT(*)
		FROM
			(
			SELECT	sb_idx, sb_UserID, sb_content, sb_answer, sb_use, sb_gtype, sb_qtype, sb_Udate, sb_Adate
					,(CASE sb_use
						WHEN 0 THEN N'Answer waiting'
						WHEN 1 THEN N'Delete user'
						WHEN 2 THEN N'Answer completed'
						WHEN 3 THEN N'Remove manager'
					END)AS sb_useval
					,(SELECT gqt_memo FROM [dbo].[sQuestionType] WHERE gqt_idx = sb_qtype)AS sb_qtypeval
					,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_idx = sb_gtype)AS sb_gtypeval
			FROM [dbo].[sServiceCenter] 
			WHERE	(CASE @conType WHEN 'ADMIN' THEN '' ELSE sb_UserID END) = @sbUserID 
					AND sb_use IN (0,2)
					AND (CASE @sbGtype WHEN 0 THEN 0 ELSE sb_gtype END) = @sbGtype
			)AS CTB
			LEFT OUTER JOIN
			(
			SELECT UserIdx, UserID, Nick, RegID, Email FROM [dbo].[gMember]
			)AS GMB
		ON CTB.sb_UserID = GMB.UserID
	)

	SELECT *
	FROM
		(
		SELECT ROW_NUMBER() OVER (ORDER BY CTB.sb_idx DESC) NUM, CTB.*, GMB.*
		FROM
			(
			SELECT	sb_idx, sb_UserID, sb_content, sb_answer, sb_use, sb_gtype, sb_qtype, sb_Udate, sb_Adate
					,(CASE sb_use
						WHEN 0 THEN N'Answer waiting'
						WHEN 1 THEN N'Delete user'
						WHEN 2 THEN N'Answer completed'
						WHEN 3 THEN N'Remove manager'
					END)AS sb_useval
					,(SELECT gqt_memo FROM [dbo].[sQuestionType] WHERE gqt_idx = sb_qtype)AS sb_qtypeval
					,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_idx = sb_gtype)AS sb_gtypeval
			FROM [dbo].[sServiceCenter] 
			WHERE	(CASE @conType WHEN 'ADMIN' THEN '' ELSE sb_UserID END) = @sbUserID 
					AND sb_use IN (0,2)
					AND (CASE @sbGtype WHEN 0 THEN 0 ELSE sb_gtype END) = @sbGtype
			)AS CTB
			LEFT OUTER JOIN
			(
			SELECT UserIdx, UserID, Nick, RegID, Email FROM [dbo].[gMember]
			)AS GMB
		ON CTB.sb_UserID = GMB.UserID
		)AS LIST
	ORDER BY sb_idx DESC
	OFFSET (@PageNo-1)*@PageSize ROWS FETCH NEXT @PageSize ROWS ONLY

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_ServiceCenter_Detail]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	-- 고객문의 상세보기
	SELECT * FROM [dbo].[SServiceCenter]
	EXEC WSP_ServiceCenter_Detail 1, 'ADMIN', 5, ''

	EXEC WSP_ServiceCenter_Detail 1, 'user', 0, 'TEST1'
*/
CREATE PROCEDURE [dbo].[WSP_ServiceCenter_Detail]
	@lan_idx		INT					-- 접속 언어
	,@conType		NVARCHAR(10)		-- 접속자 타입
	,@sb_idx		BIGINT
	,@sbUserID		NVARCHAR(50)=''		-- 접속자 아이디
AS
BEGIN

	SET NOCOUNT ON;


		SELECT	sb_idx, sb_UserID, sb_content, sb_answer, sb_use, sb_gtype, sb_qtype, sb_Udate, sb_Adate, sb_email, sb_phone 
				,(CASE sb_use
					WHEN 0 THEN N'Answer waiting'
					WHEN 1 THEN N'Delete user'
					WHEN 2 THEN N'Answer completed'
					WHEN 3 THEN N'Remove manager'
				END)AS sb_useval
				,(SELECT gqt_memo FROM [dbo].[sQuestionType] WHERE gqt_idx = sb_qtype)AS sb_qtypeval
				,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_idx = sb_gtype)AS sb_gtypeval
		FROM	[dbo].[sServiceCenter]
		WHERE sb_idx = @sb_idx
		AND (CASE @conType WHEN 'ADMIN' THEN '' ELSE sb_UserID END) = @sbUserID


		--IF @conType = 'ADMIN'
		--BEGIN

		--	SELECT	sb_idx, sb_UserID, sb_content, sb_answer, sb_use, sb_gtype, sb_qtype, sb_Udate, sb_Adate, sb_email, sb_phone 
		--			,(CASE sb_use
		--				WHEN 0 THEN N'답변대기'
		--				WHEN 1 THEN N'유저삭제'
		--				WHEN 2 THEN N'관리자답변'
		--				WHEN 3 THEN N'관리자삭제'
		--			END)AS sb_useval
		--			,(SELECT gqt_memo FROM [dbo].[sQuestionType] WHERE gqt_idx = sb_qtype)AS sb_qtypeval
		--			,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_idx = sb_gtype)AS sb_gtypeval
		--	FROM	[dbo].[sServiceCenter]
		--	WHERE sb_idx = @sb_idx

		--END

		--ELSE
		--BEGIN

		--	SELECT	sb_idx, sb_UserID, sb_content, sb_answer, sb_use, sb_gtype, sb_qtype, sb_Udate, sb_Adate , sb_email, sb_phone 
		--			,(CASE sb_use
		--				WHEN 0 THEN N'답변대기'
		--				WHEN 1 THEN N'유저삭제'
		--				WHEN 2 THEN N'관리자답변'
		--				WHEN 3 THEN N'관리자삭제'
		--			END)AS sb_useval
		--			,(SELECT gqt_memo FROM [dbo].[sQuestionType] WHERE gqt_idx = sb_qtype)AS sb_qtypeval
		--			,(SELECT g_Name FROM [dbo].[sGameType] WHERE g_idx = sb_gtype)AS sb_gtypeval
		--	FROM	[dbo].[sServiceCenter]
		--	WHERE sb_idx = @sb_idx AND sb_UserID = @sbUserID

		--END

	SET NOCOUNT OFF;

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_ServiceCenter_Update]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
	-- 고객문의 수정 및 삭제
	SELECT * FROM [dbo].[gServiceCenter] where sb_userid = 'test001'

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_ServiceCenter_Update 1, 'ADMIN', 'TEST1', 0, '디비 입력1', 0, 'EMAIL', '010-1111', 38638, 1, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_ServiceCenter_Update 1, 'USER', 'TEST1', 0, '디비 입력1', 0, 'EMAIL', '010-1111', 38638, 1, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_ServiceCenter_Update]
	@lan_idx		INT					-- 접속 언어
	,@conType		NVARCHAR(10)		-- 접속자 타입
	,@sbUserID		NVARCHAR(50)=''		-- 접속자 아이디
	,@sb_idx		INT=0
	,@sb_content	NVARCHAR(MAX)=''
	,@sb_use		INT
	,@sb_email		NVARCHAR(100)
	,@sb_phone		NVARCHAR(50)
	,@sbGtype		INT					-- 이용하는 게임타입
	,@sbQtype		INT					-- 문의타입
	,@rCnt			INT OUTPUT
	,@rVal			NVARCHAR(100) OUT
AS
BEGIN

	SET NOCOUNT ON;

		SET @rCnt = 100

		IF @conType = 'ADMIN'
		BEGIN

			IF @sb_use = 3
			BEGIN
				UPDATE [dbo].[sServiceCenter] 
					SET sb_use = @sb_use
				WHERE sb_idx = @sb_idx
			END
			ELSE
			BEGIN
				UPDATE [dbo].[sServiceCenter] 
					SET sb_answer = @sb_content
						,sb_use = @sb_use
						,sb_qtype = @sbQtype
						,sb_Adate = GETDATE()
				WHERE sb_idx = @sb_idx
			END
		END

		ELSE
		BEGIN
			IF @sb_use = 0 AND @sb_idx = 0
			BEGIN
				INSERT INTO [dbo].[sServiceCenter] 
					(sb_UserID, sb_content, sb_use, sb_gtype, sb_qtype, sb_email, sb_phone)
				VALUES
					(@sbUserID, @sb_content, @sb_use, @sbGtype, @sbQtype, @sb_email, @sb_phone)
			END
			ELSE
			BEGIN
				IF @sb_use = 1
				BEGIN
					UPDATE [dbo].[sServiceCenter] 
						SET sb_use = @sb_use
					WHERE sb_idx = @sb_idx and sb_UserID = @sbUserID
				END
				ELSE
				BEGIN
					UPDATE [dbo].[sServiceCenter] 
						SET sb_content = @sb_content
							,sb_email = @sb_email
							,sb_phone = @sb_phone
							,sb_gtype = @sbGtype
							,sb_qtype = @sbQtype
							,sb_use = @sb_use
							,sb_Adate = GETDATE()
					WHERE sb_idx = @sb_idx and sb_UserID = @sbUserID
				END
			END
		END

		SET @rCnt = @@ERROR

		IF @rCnt = 0
			SET @rVal = N'Successfully processed.'
		ELSE
			SET @rVal = ERROR_MESSAGE()

	SET NOCOUNT OFF;

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_SYS_QuestionType]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	-- 문의 분류
	select * from [dbo].[sQuestionType]
	exec WSP_SYS_QuestionType
*/
CREATE PROCEDURE [dbo].[WSP_SYS_QuestionType]
	@lan_idx	int
AS
BEGIN

	SET NOCOUNT ON;

		SELECT gqt_idx, gqt_memo, gqt_use FROM [dbo].[sQuestionType]
		WHERE gqt_use = 0

	SET NOCOUNT OFF;

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_Terms]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	-- 약관불러오기
	select * from [dbo].[sTerms]
	exec WSP_Terms 1, 1
*/
CREATE PROCEDURE [dbo].[WSP_Terms]
	@lan_idx	INT					-- 접속 언어
	,@gg_Gtype	INT
AS
BEGIN

	SET NOCOUNT ON;

		SELECT	gt_idx, gt_term, gt_use, gt_type, gt_Gtype, gt_date 
				,(CASE gt_use
					WHEN 0 THEN N'use'
					WHEN 1 THEN N'unused'
				END)AS gt_useVal
		FROM [dbo].[sTerms] WHERE gt_use = 0 
		--AND gt_Gtype = @gg_Gtype
		--AND gt_Lan = @lan_idx

	SET NOCOUNT OFF;

END
GO
/****** Object:  StoredProcedure [dbo].[WSP_Terms_CUD]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 약관 생성, 수정, 삭제
	SELECT * FROM sTerms

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_Terms_CUD 0, '약관내용', 0, '약관타입', 1, 1, @rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal
*/
CREATE PROCEDURE [dbo].[WSP_Terms_CUD]
	@gt_idx		int,
	@gt_term	nvarchar(max),
	@gt_use		int,
	@gt_type	nvarchar(50),
	@gt_gtype	int,
	@gt_lan		int,
	@ad_idx		int,
	@ad_ip		nvarchar(50),
	@rCnt		int out,
	@rVal		nvarchar(100) out

AS
BEGIN

	SET NOCOUNT ON;

	IF @gt_idx = 0
	BEGIN

		INSERT INTO sTerms (gt_term, gt_use, gt_type, gt_Gtype, gt_Lan)
		VALUES (@gt_term, @gt_use, @gt_type, @gt_Gtype, @gt_Lan)

		SET @rVal = N'정상적으로 추가되었습니다.'

	END
	ELSE
	BEGIN

		INSERT INTO [dbo].[sTerms_Log] SELECT *, @ad_idx , @ad_ip, GETDATE() FROM sTerms WHERE gt_idx = @gt_idx

		IF @gt_use = 1
		BEGIN
			UPDATE sTerms SET gt_use = @gt_use
			WHERE gt_idx = @gt_idx

			SET @rVal = N'정상적으로 삭제되었습니다.'
		END
		ELSE
		BEGIN
			UPDATE sTerms SET 
				gt_term = @gt_term,
				gt_type = @gt_type,
				gt_Gtype = @gt_gtype,
				gt_Lan = @gt_lan,
				gt_use = @gt_use
			WHERE gt_idx = @gt_idx

			SET @rVal = N'정상적으로 수정되었습니다.'
		END
	END

	SET @rCnt = @@ERROR

	IF @rCnt <> 0
		SET @rVal = N'정상적으로 수정되었습니다.'
END

GO
/****** Object:  StoredProcedure [dbo].[WSP_Terms_DETAIL]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	### 약관 상세
	SELECT * FROM [dbo].[sTerms_Log]
*/
CREATE PROCEDURE [dbo].[WSP_Terms_DETAIL]
	@gt_idx	int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM sTerms WHERE gt_idx = @gt_idx

END

GO
/****** Object:  StoredProcedure [dbo].[WSP_TEST_GameCardSetting]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	### 테스트 게임 패 셋팅
	SELECT * FROM [dbo].[gSetingCard]

	DECLARE @rCnt INT, @rVal NVARCHAR(100)
	EXEC WSP_TEST_GameCardSetting 1, 1, '40,41,27,28,5,6,33,35,37,26,44,45,46,47,48', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', ':::1' ,@rCnt OUT, @rVal OUT
	SELECT @rCnt, @rVal

*/
CREATE PROCEDURE [dbo].[WSP_TEST_GameCardSetting]
	@GameKind		int,
	@Rand			int,
	@Card			nvarchar(200),
	@UserCard		nvarchar(200),
	@UserIP			nvarchar(50),
	@rCnt			int out,
	@rVal			nvarchar(100) out
AS
BEGIN

	SET NOCOUNT ON;

	IF EXISTS(SELECT GameKind FROM [dbo].[gSetingCard] WHERE GameKind = @GameKind)
	BEGIN

		UPDATE [dbo].[gSetingCard] SET 
			Rand = @Rand,
			Card = @Card,
			UserCard = @UserCard
		WHERE GameKind = @GameKind

	END
	ELSE
	BEGIN

		INSERT INTO [dbo].[gSetingCard]
			(GameKind, Rand, Card, UserCard)
		VALUES
			(@GameKind, @Rand, @Card, @UserCard)

	END

	SET @rCnt = @@ERROR

	SET @rVal = N'정상적으로 변경되었습니다.'

	IF @rCnt <> 0
		SET @rVal = ERROR_MESSAGE()


	-- 로그를 남긴다
	INSERT INTO [dbo].[sSetingCard_Log] VALUES (@GameKind, @Rand, @Card, @UserCard, @UserIP, GETDATE())


END

GO
/****** Object:  StoredProcedure [dbo].[WSP_TEST_GameCardSetting_List]    Script Date: 2018-12-28 오전 10:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	### 테스트 게임 패 설정 리스트

	EXEC WSP_TEST_GameCardSetting_List 1

*/
CREATE PROCEDURE [dbo].[WSP_TEST_GameCardSetting_List]
	@GameKind int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM [dbo].[gSetingCard]
	WHERE GameKind = @GameKind

END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 : 없음, Hot : 1, New : 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gAvataShop', @level2type=N'COLUMN',@level2name=N'Hot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 일반 / 1: 블록' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gMember', @level2type=N'COLUMN',@level2name=N'Block'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 : 수동, 1 : 자동충전(기본)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gOption', @level2type=N'COLUMN',@level2name=N'Auto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 : 푸시 안받음, 1 : 푸시 받음(기본)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gOption', @level2type=N'COLUMN',@level2name=N'Push'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 : 푸시 안받음, 1 : 푸시 받음(기본)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gOption', @level2type=N'COLUMN',@level2name=N'NightPush'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'유저 순서' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gSetingCard', @level2type=N'COLUMN',@level2name=N'UserCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'[dbo].[gGameType] 테이블 참조' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sFaq', @level2type=N'COLUMN',@level2name=N'faq_Gtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'[dbo].[gQuestionType] 테이블 참조' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sFaq', @level2type=N'COLUMN',@level2name=N'faq_Qtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: 사용 / 1: 미사용' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sFaq', @level2type=N'COLUMN',@level2name=N'faq_Use'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'가이드 타이틀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sGameGuide', @level2type=N'COLUMN',@level2name=N'gg_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:사용 / 1:미사용' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sGameGuide', @level2type=N'COLUMN',@level2name=N'gg_use'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'[dbo].[gGameType] 테이블 참조' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sGameGuide', @level2type=N'COLUMN',@level2name=N'gg_Gtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'언어' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sGameGuide', @level2type=N'COLUMN',@level2name=N'gg_lan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 일반 / 1: 블록' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sMember_DelLog', @level2type=N'COLUMN',@level2name=N'Block'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: 성공 / 나머지값 실패' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sMember_PassFind_Log', @level2type=N'COLUMN',@level2name=N'upf_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: 긴급 / 1: 시스템 / 2: 일반' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sNotice', @level2type=N'COLUMN',@level2name=N'gn_Stype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: 사용 / 1: 미사용' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sNotice', @level2type=N'COLUMN',@level2name=N'gn_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: 사용, 1: 미사용' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sQuestionType', @level2type=N'COLUMN',@level2name=N'gqt_use'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'유저 아이디' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sServiceCenter', @level2type=N'COLUMN',@level2name=N'sb_UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'문의내용' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sServiceCenter', @level2type=N'COLUMN',@level2name=N'sb_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'관리자답변' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sServiceCenter', @level2type=N'COLUMN',@level2name=N'sb_answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: 유저입력, 1: 유저삭제, 2: 관리자답변, 3: 관리자 삭제' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sServiceCenter', @level2type=N'COLUMN',@level2name=N'sb_use'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'gGameType 테이블 참조 (게임타입)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sServiceCenter', @level2type=N'COLUMN',@level2name=N'sb_gtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'gQuestioType 테이블 참조 (문의타입)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sServiceCenter', @level2type=N'COLUMN',@level2name=N'sb_qtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'유저 순서' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sSetingCard_Log', @level2type=N'COLUMN',@level2name=N'UserCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: 이용약관' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sTerms', @level2type=N'COLUMN',@level2name=N'gt_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'[dbo].[gGameType] 테이블 참조' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sTerms', @level2type=N'COLUMN',@level2name=N'gt_Gtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: 이용약관' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sTerms_Log', @level2type=N'COLUMN',@level2name=N'gt_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'[dbo].[gGameType] 테이블 참조' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sTerms_Log', @level2type=N'COLUMN',@level2name=N'gt_Gtype'
GO
