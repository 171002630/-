USE [Douban_Film_System]
GO
/****** Object:  Table [dbo].[Actor_Awards]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actor_Awards](
	[Actor_ID] [int] NOT NULL,
	[Award] [varchar](200) NOT NULL,
	[Award_Time] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Actor_Awards] PRIMARY KEY CLUSTERED 
(
	[Actor_ID] ASC,
	[Award] ASC,
	[Award_Time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actors](
	[Actor_ID] [int] NOT NULL,
	[Actor_Name] [varchar](100) NOT NULL,
	[Actor_Sex] [varchar](10) NULL,
	[Actor_Constellation] [varchar](10) NULL,
	[Actor_Birth] [date] NULL,
	[Actor_BirthPlace] [varchar](100) NULL,
	[Profession] [varchar](200) NULL,
	[Other_ForeignName] [varchar](200) NULL,
	[Other_ChineseName] [varchar](200) NULL,
	[imdb_Number] [varchar](100) NULL,
	[Offical_Website] [varchar](200) NULL,
	[Actor_Intro] [varchar](max) NULL,
	[Actor_Photo] [varchar](100) NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Actor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment_ID] [int] NOT NULL,
	[Film_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Star_Level] [int] NOT NULL,
	[Content] [varchar](max) NOT NULL,
	[Cmment_Time] [date] NOT NULL,
	[Terminal] [varchar](50) NULL,
	[OtherLike] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discussion]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Discussion](
	[Post_ID] [int] NOT NULL,
	[Floor] [int] NOT NULL,
	[Film_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Post_Title] [varchar](600) NOT NULL,
	[Post_Content] [varchar](max) NOT NULL,
	[Reply_Floor] [int] NOT NULL,
	[Submit_Time] [datetime] NOT NULL,
	[Other_Like] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Film_Awards]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Film_Awards](
	[Film_ID] [int] NOT NULL,
	[Award] [varchar](200) NOT NULL,
	[Award_Time] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Film_Awards] PRIMARY KEY CLUSTERED 
(
	[Film_ID] ASC,
	[Award] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Films]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Films](
	[Film_ID] [int] NOT NULL,
	[Film_Name] [varchar](100) NOT NULL,
	[Film_Poster] [varchar](100) NOT NULL,
	[Director] [varchar](100) NOT NULL,
	[Writer] [varchar](100) NOT NULL,
	[Show_Time] [int] NOT NULL,
	[Language] [varchar](100) NOT NULL,
	[Release_info] [varchar](200) NOT NULL,
	[Studios] [varchar](100) NOT NULL,
	[Alias] [varchar](300) NULL,
	[IMDb] [varchar](100) NULL,
	[Introduce] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Films] PRIMARY KEY CLUSTERED 
(
	[Film_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Labels]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Labels](
	[Film_ID] [int] NOT NULL,
	[Label_Name] [varchar](100) NOT NULL,
	[Label_Count] [int] NOT NULL,
 CONSTRAINT [PK_Labels] PRIMARY KEY CLUSTERED 
(
	[Film_ID] ASC,
	[Label_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Records]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Records](
	[User_ID] [int] NOT NULL,
	[Film_ID] [int] NOT NULL,
	[Tag] [varchar](50) NULL,
	[Reason] [varchar](400) NULL,
 CONSTRAINT [PK_Records] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Film_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Actor_ID] [int] NOT NULL,
	[Film_ID] [int] NOT NULL,
	[Role_Name] [varchar](100) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Actor_ID] ASC,
	[Film_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Types]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Types](
	[Film_ID] [int] NOT NULL,
	[Film_Type] [varchar](200) NOT NULL,
	[Film_Priority] [int] NOT NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[Film_ID] ASC,
	[Film_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2019/11/26 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] NOT NULL,
	[DouBan_ID] [varchar](50) NOT NULL,
	[Telephone_ID] [varchar](20) NULL,
	[Email_ID] [varchar](50) NULL,
	[Password] [varchar](50) NOT NULL,
	[Nickname] [varchar](50) NULL,
	[Headimg] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (1, N'第47届柏林国际电影节 ???银熊奖-最佳男演员 ???罗密欧与朱丽叶 （获奖）', N'1997')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (1, N'第47届柏林国际电影节 ???银熊奖-最佳男演员 ???罗密欧与朱丽叶 （获奖）
', N'2016')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (1, N'第86届奥斯卡金像奖  最佳男主角 ??华尔街之狼 ??（提名） ', N'2014')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (2, N'音乐奖项  华语金曲奖年度最佳MV ???冰山大火 ???（获奖）', N'2017')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (2, N'影视奖项   《时代周刊》评出的全球史上百部最佳电影    霸王别姬    （获奖）  ', N'2005')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (2, N'综合奖项   新浪粤港十年网娱盛典“最怀念明星奖”    （获奖） ', N'2007')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (3, N'第81届 奥斯卡金像奖 ???最佳女主角 ???朗读者 ???（获奖）', N'2009')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (4, N'?第13届亚洲电影大奖最佳男主角奖???我不是药神 ???（提名）', N'2019')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (4, N'?第15届中国电影华表奖优秀青年电影创作奖 ???人再囧途之泰囧 ???（提名） ??', N'2013')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (32, N'?第80届奥斯卡金像奖???最佳女主角 ???玫瑰人生 ???（获奖）', N'2008')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (32, N'第42届法国凯撒奖  ???最佳女演员???石之痛 ???（提名）', N'2017')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (34, N'第33届日本电影学院奖最佳男主角奖 ???不沉的太阳 ???（获奖', N'2010')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (34, N'第76届奥斯卡金像奖最佳男配角奖 ???最后的武士 ???（提名） ?', N'2004')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (37, N'?第55届美国电影电视金球奖电影类-最佳女配角奖 ??泰坦尼克号 ???（提名） ', N'1998')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (37, N'第70届奥斯卡金像奖最佳女配角奖???泰坦尼克号 ???（提名）', N'1998')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (38, N'?第13届中国电影金鸡奖最佳男主角奖 ???大撒把 ???（获奖）', N'1993')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (38, N'第47届戛纳国际电影节主竞赛单元最佳男主角奖???活着 ???（获奖）', N'1994')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (39, N' 第49届 威尼斯国际电影节   最佳女演员奖[92]     秋菊打官司    （获奖）', N'1992')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (39, N'联合国授予“全球环境保护大使”荣誉称号???（获奖）', N'2008')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (43, N'MTV电影奖  最具突破男演员    惊变28天    （提名）', N'2004')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (43, N'美国金球奖  音乐喜剧类最佳男主角 ???冥王星上的早餐 ???（提名）', N'2006')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (45, N'第13届上海国际电影节之亚洲新人奖最佳影片奖[35]? ???我们天上见 ???（获奖）', N'2009')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (45, N'第27届中国电影金鸡奖最佳女主角奖 ???立春 ???（获奖）', N'2009')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (49, N'第49届金球奖(喜剧/音乐类)最佳女演员   （提名）', N'1992')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (49, N'第75届 奥斯卡奖  关于施密特  最佳女配角   （提名）', N'2003')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (73, N'第14届 ???电影频道传媒大奖·最佳女主角 ???Hello！树先生 ???（提名）', N'2011')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (73, N'第14届 ???最佳青年女主角 ???我不是药神 ???（提名）', N'2018')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (74, N'第64届英国电影和电视艺术学院奖 ???最佳新星奖 ???（获奖）', N'2011')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (74, N'第88届奥斯卡金像奖???最佳男配角 ???荒野猎人 ???（提名） ??', N'2016')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (75, N'?“中国校园文艺榜中榜荣耀盛典”年度最受青少年喜爱影视新人 ???（提名） ??', N'2012')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (75, N'第14届 ???中国长春电影节最佳青年男配角奖???我不是药神 ???（获奖）', N'2018')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (80, N'丁雨香杯观众最喜爱的电视节目 ???《候车室的故事》 ???（获奖）', N'2002')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (80, N'获新十期十年优秀喜剧奖 ???（获奖）', N'1993')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (82, N'第66届艾美奖 ???最佳创作 ???HitRECord on TV ???（获奖）', N'2014')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (82, N'第69届美国金球奖  ???电影类-音乐喜剧类最佳男主角 ???抗癌的我 ???（提名）', N'2012')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (84, N'第8届澳门国际电视节最佳男演员奖? ???人民的名义 ???（获奖）', N'2017')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (84, N'建国70周年全国十佳电视剧男演员 ???（提名）', N'2019')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (85, N'?第55届台湾电影金马奖最佳男配角奖???我不是药神 ???（提名）', N'2018')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (85, N'青年力量致敬盛典青年力量奖???（获奖）', N'2019')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (89, N'?第8届澳门国际电视节最佳男配角奖 ???海上牧云记 ???（提名）', N'2017')
INSERT [dbo].[Actor_Awards] ([Actor_ID], [Award], [Award_Time]) VALUES (89, N'《演员的诞生》总冠军 ???（获奖）', N'2018')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (1, N'莱昂纳多·迪卡普里奥', N'男', N'天蝎座', CAST(0x29000B00 AS Date), N'美国,加利福尼亚,洛杉矶', N'演员 / 制片人 / 配音 / 编剧', N'Leonardo Wilhelm DiCaprio (本名) / Lenny D (昵称) / Leo (昵称)', N'李奥纳多·迪卡普里奥 / 里安纳度·迪卡比奥 / 小李(昵称) / 小李子(昵称)', N'nm0000138', N'dodicaprio.com', N'莱昂纳多?迪卡普里奥（Leonardo DiCaprio），1974年11月11日出生于美国加利福尼亚州洛杉矶，好莱坞电影男演员。', N'D:\pic\w1.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (2, N'张国荣', N'男', N'处女座', CAST(0x3FE60A00 AS Date), N'中国香港', N'演员 / 编剧 / 导演 / 制片人', N' Fat-Chong Cheung(本名) / レスリーチャン(日) / Cheung Kwok Wing', N'张发忠(本名) / 张发宗(曾用名) / 哥哥(昵称) / 荣少(昵称) / 十仔(昵称)', N'nm0002000', N'www.redmission.org.hk', N'张国荣，籍贯广东梅县，生于香港，是一位在全球华人社会和亚洲地区有影响力的著名演员、歌手和音乐人，大中华地区乐坛和影坛巨星，演艺圈多面发展最成功的代表之一。', N'D:\pic\w2.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (3, N'凯特·温丝莱特', N'女', N'天枰座', CAST(0x71010B00 AS Date), N'英国,伯克郡,雷丁', N'演员 / 配音', N' Kate Elizabeth Winslet(本名) / Corset Kate(昵称) / English Rose(昵称)', N'凯特·温斯莱特 / 凯特·伊丽莎白·温斯莱特(本名) / 琦·温斯莉(港) / 凯特·温斯蕾(台)', N'nm0000701', N'', N'凯特·温斯莱特，英国著名女演员与歌手。曾获得演员工会奖与英国电影学院奖，并在第66届金球奖中以《革命之路》获戏剧类最佳女主角奖，并同时以《生死朗读》获戏剧类最佳女配角奖。', N'D:\pic\w3.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (4, N'徐峥', N'男', N'白羊座', CAST(0x80FC0A00 AS Date), N'中国,上海', N'演员 / 制片人 / 导演 / 编剧 / 配音', N'', N' 牛山争 / 山争哥哥 / 徐铮', N'nm1905770', N'weibo.com/u/1783286485', N'徐峥，中国内地著名影视演员、话剧演员、导演。1994年毕业于上海戏剧学院毕业后，他顺利进入上海人艺（上海话剧艺术中心）担任演员。 1998年因出演《股票的颜色》获得第十届白玉兰戏剧奖最佳男主角奖。', N'D:\pic\w4.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (5, N'柊瑠美', N'女', N'狮子座', CAST(0x4F120B00 AS Date), N'日本,东京都', N'演员 / 配音', N'Rumi H?ragi', N'', N'nm0383708', N'', N'东京都立九段高等学校、日本大学文艺系毕业。自从6岁作为儿童角色开始工作，多数以CM演出。2001年公开电影『千与千寻』被担当主人公荻野千寻配音。', N'D:\pic\w5.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (6, N'阿米尔·汗', N'男', N'双鱼座', CAST(0x60F20A00 AS Date), N'印度,孟买', N'演员 / 制片人 / 导演 / 编剧 / 配音', N'AK (昵称) / ???? ????(印地语) / ???? ????? ??? (乌尔都语) / Aamir Hussain Khan / アーミル?カーン', N'阿米尔·可汗 / 印度刘德华(昵称) / 米叔(昵称)', N'nm0451148', N'http://www.aamirkhan.com/', N'阿米尔·汗，印度著名男演员。8岁时出演一部轰动印度全国的电影，是公认的很有前途的童星，但长大后他却坚决不愿从影，而一心去打网球，而且打得还不错，曾经获得过马哈拉施特拉邦的网球冠军。随着年纪的增长，才抛弃网球重回大银幕。阿米尔的罗曼史就是一部电影的好题材。', N'D:\pic\w6.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (7, N'屈楚萧', N'男', N'魔蝎座', CAST(0xE11C0B00 AS Date), N'四川,眉山', N'演员', N'Shaw', N'大萧(昵称)', N'nm9524976', N'', N'屈楚萧，大陆男演员，2013年考入中央戏剧学院本科表演系。2016年参演网络剧《我的朋友陈白露小姐》', N'D:\pic\w7.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (8, N'玛德琳·卡罗尔', N'女', N'双鱼座', CAST(0x9F1E0B00 AS Date), N'美国,加利福尼亚州,洛杉矶', N'演员 / 配音', N'Mads (昵称)', N'', N'nm1630992', N'', N'Madeline Carroll 1996年3月18日在美国加利福尼亚州洛杉矶市出生，并且在那里长大。Madeline 三岁时就成为了模特，很快她在谢尔曼橡树市的一家美甲店里被文化经纪人 Wendy 发现，不久便开始了她的演艺生涯。', N'D:\pic\w8.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (9, N'金妮弗·古德温', N'女', N'双子座', CAST(0x31050B00 AS Date), N'美国,田纳西州,孟菲斯', N'演员 / 配音 / 导演', N'Jennifer Michelle Goodwin (本名) / Gigi (昵称) / Ginny (昵称)', N'詹妮弗·古德温', N'nm0329481', N'', N'金妮弗·古德温，美国演员。1996年毕业于洛桑大学学院，此后在汉诺威大学主修戏剧。一年后，转学到波士顿大学美术学院，在2001年，她以优异成绩获得了学士学位。 2001年，Goodwin出演的第一个角色，是在NBC台连续剧《Law & Order》饰演Erica。', N'D:\pic\w9.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (10, N'蒂姆·罗斯', N'男', N'金牛座', CAST(0xE8EC0A00 AS Date), N'英国,伦敦', N'演员 / 制片人 / 配音 / 导演', N'Timothy Simon Smith (本名)', N'蒂姆·罗思 / 添羅夫(港)', N'nm0000619', N'', N'蒂姆·罗斯1961年5月14日出生于英国伦敦，善于模仿各种口音，常被误认为美国人。他在坎伯维尔艺术学院学习过雕塑，之后退学，一心追求表演事业。第一个突破是1982年在英国电视电影《英国制造》中扮演的角色。1984年演出电影处女作《隶你十年》，他扮演一个刚出道的菜鸟杀手。', N'D:\pic\w10.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (11, N'周星驰', N'男', N'巨蟹座', CAST(0x7CEE0A00 AS Date), N'中国香港', N'演员 / 编剧 / 导演 / 制片人 / 配音', N'Sing-Chi Chow (本名) / Sing Jai (昵称)', N'星爷(昵称) / 周星星(昵称)', N'nm0159507', N'', N'周星驰（1962年6月22日— ），生于香港，英文名Stephen Chow，著名演员，兼导演、编剧、电影监制以及电影制作人。曾主演《九品芝麻官》、《长江七号》等多部喜剧影片。捧红过张柏芝、张雨绮等影星。', N'D:\pic\w11.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (12, N'理查·基尔', N'男', N'处女座', CAST(0x36DC0A00 AS Date), N'美国,宾夕法尼亚,费城', N'演员 / 制片人 / 配音', N'Richard Tiffany Gere (本名)', N'李察德·基尔 / 理察·基尔 / 李察·基尔', N'nm0000152', N'www.gerefoundation.org', N'理查·基尔 Richard Tiffany Gere （又译：理查·蒂凡尼·基尔）是著名的美国电影演员、好莱坞巨星，代表作有《美国舞男》、《军官与绅士》、《一级恐惧》、《芝加哥》、《麻雀变凤凰》等。曾获金球奖喜剧与音乐类最佳男主角奖。理查·基尔是美国佛教徒。', N'D:\pic\w12.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (13, N'盖尔·加西亚·贝纳尔', N'男', N'射手座', CAST(0xF1050B00 AS Date), N'墨西哥,哈利斯科,瓜达拉哈拉', N'演员 / 制片人 / 导演 / 配音 / 编剧', N'Gael García', N'盖尔·加西亚·伯纳尔', N'nm0305558', N'www.gaelfan.net', N'1978年出生於墨西哥瓜达拉哈拉市的演员世家，幼年时期便曾参与多部短片演出。17岁旅行至欧洲，并在两年後进入伦敦中央戏剧学院就读，成为第一位获选进入该校就读的墨西哥籍学生。', N'D:\pic\w13.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (14, N'爱德华·阿斯纳', N'男', N'天蝎座', CAST(0xF9BF0A00 AS Date), N'美国,堪萨斯州,堪萨斯城', N'演员 / 配音 / 制片人', N'Yitzhak Edward Asner (本名)', N'爱德华·埃斯诺', N'nm0000799', N'', N'这位29年出生的老爷爷也是个牛逼人物。论艾美奖得奖数量和提名数量，他是排第二的（获奖7个），（排第一的是生于1926年的Cloris Leachman，获奖9个，这位第一名也同样出现在Edward的《玛丽·泰勒·摩尔秀 The Mary Tyler Moore Show》里，这位最近在演《家有喜旺》里的Maw Maw）', N'D:\pic\w14.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (15, N'神木隆之介', N'男', N'金牛座', CAST(0x951A0B00 AS Date), N'日本,埼玉', N'演员 / 配音', N'Ryunosuke Kamiki / かみき りゅうのすけ', N'', N'nm1126340', N'artist.amuse.co.jp/artist/kamiki_ryunosuke/', N'神木隆之介，日本男演员、声优。出生时身患救治率仅为1%的感染症，却奇迹般地获救，并被小心翼翼地养大。童年时期非常漂亮和可爱的样貌，导致他曾经常被误以为是女孩子，并成为动漫大国日本的漫画作家、动画制作人创作人物形象时的灵感的源泉。', N'D:\pic\w15.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (16, N'刘德华', N'男', N'天枰座', CAST(0x70ED0A00 AS Date), N'中国香港,新界', N'演员 / 制片人 / 配音 / 导演 / 摄影', N'Lau Tak Wah (本名) / Wah Jai (昵称)', N'刘福荣(幼时学名) / 华仔(昵称)', N'nm0490489', N'www.andylau.com / www.awc618.com', N'刘德华，著名演员和歌手。1990年代被封为香港“四大天王”之一，亦是大中华地区极具代表性的艺人之一。 刘德华是个多线发展的艺人：作为歌手，他是吉尼斯世界纪录大全中，获奖最多的香港歌手；电影方面他曾三度夺得香港电影金像奖最佳男主角、以及获得两座台湾金马奖影帝，截止2010年参与出演的电影已经超过140部。', N'D:\pic\w16.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (17, N'奥黛丽·塔图', N'女', N'狮子座', CAST(0xA6020B00 AS Date), N'法国,多姆山,伯蒙', N'演员 / 配音', N'奥黛丽·多杜 / 奥黛莉·朵杜(台) / 柯德莉·塔图(港) / 奥德丽·多杜', N'', N'nm0851582', N'http://audrey-tautou.org/', N'奥德丽·塔图（Audrey Tautou）1976年8月出生于法国一个盛产黑莓口味葡萄酒的小镇伯蒙，在法国中部的蒙吕松长大。她的父亲是一位牙医，母亲则是一名教师。', N'D:\pic\w17.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (18, N'张译', N'男', N'水瓶座', CAST(0xD3040B00 AS Date), N'中国,黑龙江,哈尔滨', N'演员 / 配音 / 编剧', N'', N'张毅(原名) / 小太爷(昵称)', N'nm3589263', N'weibo.com/yanyuanzhangyi', N'张译，中国内地男演员，曾主演电影《红海行动》《亲爱的》《山河故人》《追凶者也》《黄金时代》《绣春刀·修罗战场》《我不是潘金莲》，电视剧《鸡毛飞上天》《士兵突击》《我的团长我的团》《辣妈正传》《生死线》等多部优秀的影视作品。', N'D:\pic\w18.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (19, N'阿兰纳·乌巴奇', N'男', N'', NULL, N'', N'', N'', N'', N'', N'', N'', N'D:\pic\w19.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (20, N'阿帕尔夏克提·库拉那', N'男', N'', NULL, N'印度,昌迪加尔', N'演员', N'', N'', N'nm6269780', N'', N'', N'D:\pic\w20.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (21, N'安东尼·爱德华兹', N'男', N'巨蟹座', CAST(0x97EE0A00 AS Date), N'美国,圣巴巴拉加州 ', N' 演员 / 导演 / 制片人 / 配音', N'Anthony Charles Edwards (本名) / ACE (昵称) ', N'', N'nm0000381', N'', N'安东尼·爱德华兹的父亲Peter Edwards是一位建筑师，母亲Erika Plack（娘家姓Weber）是一位艺术家兼风景画家，他还有两个哥哥Jeffrey、Peter Ross和两个姐姐Annamaria、Heidi。', N'D:\pic\w21.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (22, N'安东尼·冈萨雷斯', N'男', N'', NULL, N'', N'演员 / 配音', N'', N'', N'nm5645519', N'', N'', N'D:\pic\w22.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (23, N'奥米·瓦依达', N'男', N'魔羯座', CAST(0x620A0B00 AS Date), N'美国加州 ', N' 演员 / 剪辑 ', N'欧米·维迪亚 ', N'', N'nm1437925', N'', N'"奥米·瓦伊达出生于美国加州 Yucca Valley，毕业于 Los Angeles County High School for the Arts。后来又进入 University of California, Santa Cruz 学习两年。', NULL)
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (24, N'鲍勃·彼德森', N'男', N'', CAST(0x74EC0A00 AS Date), N'美国,俄亥俄州,伍斯特 ', N'配音 / 编剧 / 导演 / 演员 ', N'', N'', N'nm0677037', N'', N'', N'D:\pic\w24.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (25, N'本杰明·布拉特', N'男', N'射手座', CAST(0x9AF00A00 AS Date), N'美国,加利福尼亚州,旧金山', N'演员 / 配音 / 制片人 ', N'Benjamin G. Bratt (本名) ', N'', N'nm0000973', N'', N'"本杰明·布拉特（英语：Benjamin Bratt，1963年12月16日－）出生于美国加利福尼亚州洛杉矶，毕业于加州大学圣塔芭芭拉分校，是美国知名男演员。', NULL)
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (26, N'比尔·努恩', N'男', N'天秤座', CAST(0x1DE20A00 AS Date), N' 美国,宾夕法尼亚州,匹兹堡', N'演员 / 制片人', N'', N'', N'nm0638056', N'', N'', N'D:\pic\w26.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (27, N'比利·赞恩', N'男', N'双鱼座', CAST(0xBBF30A00 AS Date), N'美国,伊利诺伊,芝加哥 ', N'演员 / 制片人 / 配音 / 导演', N'William George Zane Jr.(本名)', N'', N'nm0000708', N'', N'比利·赞恩，美国演员，被好莱坞影人形容外形神似“年轻的马龙·白兰度”。孩提时代起他就痴迷表演，高中毕业后正式进入演艺界发展。', N'D:\pic\w27.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (28, N'蔡少芬', N'女', N'处女座', CAST(0x85FE0A00 AS Date), N'中国香港 ', N'演员 / 导演 ', N'Siu-Fun Choi / Siu-fan Choi / Winnie Choi', N'', N'nm0158785', N'', N'蔡少芬，香港女艺人，知名演员。1989年曾参加无线电视超级模特大赛，1991年以17岁之龄参加香港小姐竞选，以大热之姿获得季军并与无线签约，1998年凭借《天地豪情》成为最年轻的TVB视后，其后演出多部电视剧，成为TVB当家花旦，与宣萱、陈慧珊及郭可盈在2000年代初被誉为无线电视“四大花旦”。主要作品有《天地豪情》《洛神》《陀枪师姐》《妙手仁心》《栋笃神探》《火舞黄沙》《珠光宝气》《飞女正传》等。2011年大型热播宫廷剧《后宫甄嬛传》中饰演皇后，再次倍受关注。', N'D:\pic\w28.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (29, N'长泽雅美', N'女', N'双子座', CAST(0x14120B00 AS Date), N'日本,静冈县,磐田市 ', N' 演员 / 配音 ', N' 長澤まさみ ', N'', N'nm0619178', N' www.toho-ent.co.jp/actor/1081 / instagram.com/masami_nagasawa/ / facebook.com/Masami.Official / twitter.com/nagasawamg', N'日本演员，出生于静冈县盘田市，家中有父亲长泽和明、母亲和哥哥。东宝艺能事务所旗下的艺人，于堀越高级中学毕业。', N'D:\pic\w29.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (30, N'陈冠希', N'男', N'天秤座', CAST(0x96080B00 AS Date), N'加拿大,不列颠哥伦比亚,温哥华', N'演员', N'Chen Xing Hua(本名) / Illkid(昵称) / Eddie(昵称) ', N'', N'nm0155211', N'', N'陈冠希1999年正式于香港娱乐圈崭露头角，其抢眼的外型和本身对于演艺事业的用心，使得他在非常短的时间之内汇集所有的话题与人气，迅速成为新生代的超人气小天王。成龙的“秘密武器”、谢霆锋的同学和未来的劲敌、张国荣亲自制作唱片、Maggie Q的绯闻男友，英皇老板杨受成的新宠，正是因为有这么多人的力棒和提携，我们才会记住这个Bad Boy——陈冠希。年轻，帅气，家境富裕，一炮而红，好象什么好运的事，都给陈冠希给碰上了；歪嘴，不敬业，乱放电，唱歌烂，好象各方面批评，陈冠希也都被骂过了。爱他的人说他是率性，恨他的人说他太任性，这也正是陈冠希的真性情。2007年底，他与多名女明星的自拍艳照被神秘人士公布，成为沸沸扬扬的“艳照门”事件，陈冠希一时成为舆论核心，并宣布退出香港娱乐圈，从而转向好莱坞发展，虽然事业不见起色，但依然是公众关注的对象', N'D:\pic\w30.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (31, N'陈慧琳', N'女', N'处女座', CAST(0x14FD0A00 AS Date), N'中国香港', N'演员 / 配音 / 导演 ', N'Vivian Chan / Kelly ', N'', N'nm0155284', N'', N'陈慧琳，香港著名女歌手及演员，籍贯上海。早年曾赴日本就读高中，后于纽约帕森斯设计学院修读平面设计。1995年回港加入香港乐坛，并成为大中华区流行乐坛90年代中期仅有的天后级歌手之一，影响力与知名度辐射海内外及亚洲地区。入行近20年来，Kelly形象一直非常健康，其“零绯闻、零走光、零是非、零结党”的形象，被称为四“零”艺人。 ', N'D:\pic\w31.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (32, N'玛丽昂·歌迪亚', N'女', N'天秤座', CAST(0x6C010B00 AS Date), N'法国,巴黎 ', N'演员 / 配音 / 导演 / 制片人 / 编剧', N'La Marion(昵称)', N'', N'nm0182839', N'www.cotillard.net / marion-cotillard.org', N'美丽动人而个性鲜明的玛丽昂·歌迪亚是近年法国影坛日渐成熟的出位女星之一，她出生在巴黎的一个演艺家庭，父母一直活跃于戏剧舞台。年幼时，玛丽昂就表现出让人惊讶的早熟天赋，与母亲同台表演。长成后的玛丽昂先是在电视剧中饰演了两个小角色，随后因参演的影片博得关注。', N'D:\pic\w32.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (33, N'杜江', N'男', N'处女座', CAST(0x9D0F0B00 AS Date), N'中国,山东,济南', N' 演员 / 配音', N'', N'', N'nm8018569', N'', N'"电视剧作品', NULL)
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (34, N'渡边谦', N'男', N'天秤座', CAST(0xADEA0A00 AS Date), N'日本,新泻,鱼沼 ', N'演员 / 配音 / 制片人 / 导演 ', N'Kensaku Watanabe (本名) / わたなべ けん', N'', N'nm0913822', N'http://www.ne.jp/asahi/kensanan/kazuyon/', N'渡边谦1959年10月21日出生于日本新潟县北鱼沼郡（现为鱼沼市）小出町的一个教师家庭。他名字里的"谦"字，是为纪念生在新潟县的战国武将上杉谦信而取。渡边从小就喜欢小号，在县立小出高中的管乐社团里担任小号手。', N'D:\pic\w34.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (35, N'法缇玛·萨那·纱卡', N'女', N'魔羯座', CAST(0xA7180B00 AS Date), N'印度,安得拉邦', N'演员', N'', N'', N'nm0760778', N'', N'Fatima Sana Shaikh was born in Hyderabad, India, to Hindu Brahman Father, Vipan Sharma, and Muslim Mother, Raj Tabassum. At an early age, she moved to Mumbai, which became her hometown since. She was enrolled to St. Xavier High School in Mumbai for her primary education and later to Mithibai College, Mumbai for higher education.', N'D:\pic\w35.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (36, N'弗兰西丝·费舍', N'女', N'金牛座', CAST(0x0EE00A00 AS Date), N'英国,汉普郡', N' 演员 / 配音', N'', N'', N'nm0004920', N'', N'', N'D:\pic\w36.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (37, N'格劳瑞亚·斯图尔特', N'女', N'巨蟹座', CAST(0x57A40A00 AS Date), N'美国，加里福尼亚州，Santa Monica', N'演员', N'Gloria Frances Stewart (本名)', N'', N'nm0001784', N'', N'格劳瑞亚·斯图尔特曾是1930年代好莱坞黄金时代的女主角，而其最具有影响力的角色却还要算是60年以后在詹姆斯·卡梅隆打造的《泰坦尼克号》巨制中出演老年版露丝，由此获得了奥斯卡金像奖提名。', N'D:\pic\w37.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (38, N'葛优', N'男', N'白羊座', CAST(0x1AE70A00 AS Date), N'中国,北京', N'演员 / 配音', N'Your Ge ', N'', N'nm0311212', N'', N'葛优，称得上当今中国最优秀的男演员之一，从演以来已经出演过50多部电影以及10余部电视作品；他不但手捧国内表演最高奖金鸡奖，而且荣登戛纳影帝宝座。', N'D:\pic\w38.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (39, N'巩俐', N'女', N'魔羯座', CAST(0x84F30A00 AS Date), N'中国,辽宁,沈阳', N'演员', N'Lei Gung / Gong Li ', N'', N'nm0000084', N'', N'巩俐，生于辽宁省沈阳市，祖籍山东济南，女电影演员，曾担任第九、第十届全国政协委员。现为新加坡国籍。1985年考入中央戏剧学院表演系，毕业后留校任话剧研究所演员。', N'D:\pic\w39.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (40, N'海清', N'女', N'魔羯座', CAST(0xAF040B00 AS Date), N'中国,江苏,南京 ', N'演员', N'Yi Huang(本名) ', N'', N'nm3713819', N'', N'海清，原名黄怡，毕业于北京电影学院，著名影视剧演员。凭借在《玉观音》中的出色表演踏入演艺圈。随后，因在《双面胶》、《王贵与安娜》等影视作品中成功地塑造了极具个性的儿媳妇形象，而被称为“媳妇专业户”。其个性十足的精湛表演获得一致好评。电视剧《蜗居》中海萍的扮演者。', N'D:\pic\w40.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (41, N'黄景瑜', N'男', N'射手座', CAST(0xEB190B00 AS Date), N'中国,辽宁,丹东 ', N'演员', N'Johnny', N'', N'nm8361677', N'weibo.com/u/1989519725', N'中国内地男演员、模特、巴西柔术职业运动员。', N'D:\pic\w41.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (42, N'黄秋生', N'男', N'处女座', CAST(0x57ED0A00 AS Date), N'中国香港', N'演员 / 配音 / 导演 / 编剧', N'Anthony Perry / Chau-Sang Wong', N'', N'nm0938893', N'', N'黄秋生是在1983年入读香港亚洲电视演员训练班而出道。当时他不过是配角演员，知名度不高，惟凭着在电视台之演出经验，1985年再入读香港演艺学院一年，毕业后才再加入无线电视。', N'D:\pic\w42.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (43, N'基里安·墨菲', N'男', N'双子座', CAST(0x5A020B00 AS Date), N'爱尔兰,科克', N'演员 / 配音 / 制片人 / 编剧', N'Cilly (昵称)', N'', N'nm0614165', N'', N'基里安?墨菲（Cillian Murphy），1976年5月25日出生于爱尔兰科克，爱尔兰影视演员。 2002年，他因惊悚科幻电影《惊变28天》被大众熟知 。墨菲在大学时期一心攻读法律，学生时代的他一心要做律师。后来在机缘巧合之下，他为兴趣而主演了舞台剧《Disco Pigs》，最后甚至要逃学作巡回演出，弃法从影。 基里安?墨菲的演艺事业开始于舞台剧，后来在几部爱尔兰电影演出，其中在《Disco Pigs》的角色让他得到爱尔兰电影奖最佳男主角。', N'D:\pic\w43.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (44, N'菅原文太', N'男', N'狮子座', CAST(0x53C50A00 AS Date), N'日本,宫城', N'演员 / 配音 ', N'', N'', N'nm0837420', N'', N'菅原中途从早稻田大学退学。他起先是一名时装模特，后于1958年被新东宝公司挖角，成为电影主演。然而英俊的扮相并未给他带来高知名度。', N'D:\pic\w44.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (45, N'蒋雯丽', N'女', N'双子座', CAST(0x77F80A00 AS Date), N'中国,安徽,蚌埠', N'演员 / 配音 / 导演 / 制片人 / 编剧', N'', N'', N'nm0422639', N'', N'蒋雯丽，中国著名女演员，获得众多专业奖项。1988考入了北京电影学院表演系。1993年与电影摄影师、导演顾长卫结婚。作为一名演员，蒋雯丽从《牵手》到《刮痧》再到《大宅门》，其所塑造的每一个人物形象都深受观众喜爱。1994年日中合拍的电视剧《大地之子》在日本播出后，蒋雯丽还被评为“日本公众最喜欢的女人”和“最好的妻子”。2010年7月，蒋雯丽被聘为中央戏剧学院表演系教授， 2011年获得第28届电视剧飞天奖优秀女演员。', N'D:\pic\w45.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (46, N'杰森·贝特曼', N'男', N'魔羯座', CAST(0xDAF70A00 AS Date), N'美国,纽约,黑麦', N'演员 / 导演 / 配音 / 制片人', N'Jason Kent Bateman (本名) ', N'', N'nm0000867', N'', N'杰森·贝特曼，美国演员、导演。1987年，贝特曼演出了他的第一部电影《十八岁之狼续集》，由他的父亲肯特·贝特曼担任制片。他还于2001年在独立电影《好灵魂》与巴尔萨扎·格蒂和杰米·肯尼迪合作。由于在艾美奖得主《发展受阻》中的优异表现，贝特曼不仅受到电视观众的好评，还很快就获得了电影业的注意。2006年底《发展受阻》停拍后，贝特曼立刻成为剧情片市场的抢手男演员。2007年，贝特曼在福克斯/曼达特公司的家庭喜剧《马格瑞姆的玩具店》出演角色，该片由扎克·赫尔姆导演，扎克还是影片《奇幻人生》的编剧。贝特曼还因在获奥斯卡提名的独立影片《朱诺》中的精彩表现而受到好评，该片由杰森·雷特曼执导。贝特曼还在影片《分手男女》中出演一名配角。之前，贝特曼在20世纪福克斯公司的喜剧《一掷千金》中饰演一个总是说错话的体育解说员，该片由文斯·沃汗和本·斯蒂勒主演。贝特曼还在华纳兄弟的《警界双雄》中出演角色，该片由本·斯蒂勒、欧文·威尔逊和文斯·沃汗主演。2002年，贝特曼还出演了浪漫喜剧《最美好的事》，与卡麦隆·迪亚兹、克里斯蒂娜·阿佩尔加特、塞尔玛·布莱尔合作。在该片中，他饰演的“罗杰”大获好评。', N'D:\pic\w46.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (47, N'卡兰·麦克奥利菲', N'女', N'水瓶座', CAST(0xFC1C0B00 AS Date), N'澳大利亚,悉尼', N'演员', N'Callum McAuliffe', N'', N'nm2786608', N'http://www.callanmcauliffe.com/ / http://callanmcauliffe.net/', N'麦考利夫出生在悉尼郊区。就读于一所苏格兰人寄宿学校。当时他是学校唱诗班的领唱，并且通过了伦敦Trinity musical theatre的考试。可以说卡兰是童星出身，八岁的时候他就开始演戏。', N'D:\pic\w47.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (48, N'卡琳娜·卡普尔', N'女', N'处女座', CAST(0x86080B00 AS Date), N'印度,马哈拉施特拉邦,孟买', N'演员 / 配音 / 编剧', N'Kareena Randhir Kapoor (本名) / Bebo (昵称)', N'', N'nm0004626', N'', N'卡琳娜·卡普尔 Kareena Kapoor 1977.9.21卡琳娜出身于宝莱坞第一家族卡普家族，祖父拉兹·卡普曾自编自导自演过著名的《流浪者》，她的父亲、母亲以及两个兄弟都是演员。2001年初入影坛，卡琳娜就凭借巨作《阿育王》一鸣惊人，三大女星PK美貌和演技，她塑造的卡瓦基公主大获全胜。2004年的《色劫》在印度引发很大话题，2007年的《忽然遇见你》加上和男主角沙希德·卡普戏里戏外的爱情，几乎红满全年，她凭借此片包揽了当年印度所有电影奖项的最佳女演员奖，去年还主演了《三个傻瓜》。', N'D:\pic\w48.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (49, N'凯西·贝茨', N'女', N'巨蟹座', CAST(0x89DA0A00 AS Date), N'美国,田纳西,孟菲斯', N'演员 / 配音 / 导演 / 制片人', N'Kathleen Doyle Bates(本名) / Bobo(昵称)', N'', N'nm0000870', N'', N'凯西·贝茨，美国著名女演员。大学时主修戏剧，毕业后赴纽约谋生。1971年走上银幕，处女作为《逃家》，并为该片主题曲作词。1976年参加外百老汇舞台演出，1983年以《晚安，母亲》获得托尼奖最佳女主角。贝兹浑身戏感，愈是怪异的角色愈勇于尝试。因外形受限，虽有多次演出电影的机会，但始终不能出人头地。直至1990年等到了一个仿如为她量身订造的绝佳角色，在《危情十日》中饰演一个迷恋作家的超级书迷，一举夺下奥斯卡及金球奖双料后冠，自此成为演技派明星。', N'D:\pic\w49.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (50, N'克兰伦斯·威廉姆斯三世', N'男', N'狮子座', CAST(0xE7CD0A00 AS Date), N'美国,纽约 ', N'演员 ', N'Clarence Williams', N'', N'nm0929934', N'', N'', N'D:\pic\w50.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (51, N'克里斯托弗·普卢默', N'男', N'射手座', CAST(0x15C00A00 AS Date), N'加拿大,安大略省,多伦多', N'演员 / 配音 / 制片人', N'Arthur Christopher Orme Plummer (本名) ', N'', N'nm0001626', N'', N'生于加拿大多伦多市。是位舞台出身的名演员。早年，他在加拿大的某一个业余剧团里，学习演技，而后才到百老汇谋求发展，不久因伦敦方面行情看涨，乃转至英国舞台演莎士比亚名剧。现在的克里斯托弗·普卢默如此辗转多年，在汇集各地的名气后，1965年凭借《音乐之声》出名，1968年，始发表《女伶心愿》，踏入电影界。1964年，他与茱丽安德鲁斯合演的《真善美》(又名《音乐之声》)，使他一夜间成为无人不知、无人不晓的国际明星。1988年被纽约艺评人推举为名人剧院永久名誉会员。 ', N'D:\pic\w51.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (52, N'蓝洁瑛', N'女', N'金牛座', CAST(0xB1EF0A00 AS Date), N'中国香港 ', N'演员 / 主持人', N'Jieying Lan / Yammie Nam ', N'', N'nm0482643', N'', N'蓝洁瑛，香港女演员。于84年训练班毕业，当时是最受力捧新人中的顶尖，有“靓绝五台山”（“五台山”即香港五家电视台）的称号，到84年尾TVB让蓝洁瑛改签5年合约，但是蓝洁瑛觉得太长，一轮扭计之后签了2年，之前因不肯剪发拍《大香港》，被TVB雪藏了一段时间，即是84年尾到85年的上半年。解冻后拍的第一部剧《六指琴魔》，反应欠佳，受捧程度已大不如前，连带赵敏的角色也失去。', N'D:\pic\w52.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (53, N'李光洁', N'男', N'金牛座', CAST(0x5C090B00 AS Date), N'中国,河南,平顶山', N'演员 / 导演', N'', N'', N'nm2974534', N'', N'李光洁，中国内地知名演员。他毕业于中央戏剧学院表演系，从大二开始，就开始跑剧组，推荐自己，在《走向共和》导演张黎把光绪皇帝这个重要角色给了他，从此走上自己的演员生涯。先后再多部电影和连续剧中担任主角，在《杀虎口》等都受观众好评。扮演《特殊使命》中巩向光角色的演员李光洁在众多候选人中脱颖而出，荣获最佳男演员。2006年和郝蕾结婚，2009年离婚。', N'D:\pic\w53.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (54, N'梁朝伟', N'男', N'巨蟹座', CAST(0x81EE0A00 AS Date), N'中国香港 ', N'演员 / 配音 / 编剧 ', N'Leung Chiu Wai / Tony Leung Chiu-Wai', N'', N'nm0504897', N'', N'梁朝伟，香港男演员，在华人社会颇具影响力，因其出色的演技而囊括多个电影奖项。截至2009年，他是获得香港电影金像奖和台湾电影金马奖最佳男主角最多的人：其中金像奖最佳男主角5次，金马奖最佳男主角3次。另外，他凭王家卫的《花样年华》获得戛纳电影节最佳男主角。2008年，凭《色戒》获得亚洲电影大奖最佳男主角。2008年7月21日，与刘嘉玲结束20年爱情长跑，在不丹举行婚礼。', N'D:\pic\w54.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (55, N'吕菲斯', N'男 ', N'射手座', CAST(0xA7D20A00 AS Date), N'法国,多姆去圆顶,Riom', N'演员', N' Jacques Narcy (本名) ', N'', N'nm0749363', N'http://www.rufus.fr/', N'获得了法国文化部授予的 艺术和文学勋章（指挥官级）', N'D:\pic\w55.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (56, N'罗比·萨布莱特', N'男', N'处女座', CAST(0xAF050B00 AS Date), N'美国', N'演员 / 配音', N'', N'', N'nm2814595', N'', N'Robbie Sublett是一名演员，主要代表作品有《凯特的外遇日记》、《白人爱尔兰酒徒》等。', N'D:\pic\w56.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (57, N'罗家英', N'男', N'处女座', CAST(0x57D90A00 AS Date), N'中国,广东,广州', N'演员', N'', N'罗行堂(本名)', N'nm0437630', N'weibo.com/luojiaying', N'罗家英，香港知名演员。出身粤剧世家。1949年跟随父亲罗家权(罗仕干)往香港定居。8岁时跟随父亲罗家权、伯父罗家树学习粤剧基本功架，师随粉菊花、吕国铨、刘洵、李万春等京剧大师，红裤出身，由兵仔开始，21岁便担当演出文武生。', N'D:\pic\w57.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (58, N'洛莱拉·克拉沃塔', N'女', N'白羊座', CAST(0x7DE80A00 AS Date), N'', N'演员', N'Les Deschiens', N'', N'nm0186677', N'', N'……', N'D:\pic\w58.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (59, N'马达范', N'男', N'双子座', CAST(0xD1F90A00 AS Date), N'印度,恰尔肯德邦,詹谢普尔', N'演员 / 导演 / 编剧', N'Madhavan Ranganathan (本名) / Maddy (昵称) / Madhavan', N'马德哈万 / 德瓦汉 / 马特文', N'nm0534856', N'http://www.rmadhavan.com/', N'……', N'D:\pic\w59.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (60, N'马修·卡索维茨', N'男', N'狮子座', CAST(0xC8F50A00 AS Date), N'法国,巴黎', N'演员 / 导演 / 编剧 / 制片人 / 副导演', N'', N'马蒂厄·卡索维茨 / 马修卡索维兹', N'nm0440913', N'http://www.mathieukassovitz.com/', N'法国演员兼导演，非常活跃的新锐影人，多才多艺。1990年第一部短片《跳蚤费罗》在许多影展中获奖。《牛奶巧克力》是他导演的第一部剧情长片，也是其出名的《叛逆三部曲》之一。第二部《恨》更让他的声名推向高峰，并荣获戛纳电影节最佳导演奖。', N'D:\pic\w60.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (61, N'莫文蔚', N'女', N'双子座', CAST(0xD2F90A00 AS Date), N'中国香港', N'演员 / 配音 / 其它', N'Karen Joy Morris (本名)', N'', N'nm0596297', N'www.karenmok.com', N'莫文蔚，香港歌手和演员，有威尔士、德国和波斯血统，自1990年代后期起在两岸三地有很高的人气。香港演员、歌星。拔萃书院毕业，会考后考取奖学金到意大利念语文，1990年转英国进修意大利文学。1993年回港为星光唱片公司灌录唱片后，回英国读完最后一年大学。', N'D:\pic\w61.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (62, N'内特·托伦斯', N'男', N'射手座', CAST(0x85040B00 AS Date), N'美国,俄亥俄', N'演员 / 配音', N'Nathan Andrew Torrence (本名)', N'', N'nm1535594', N'', N'……', N'D:\pic\w62.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (63, N'普路特·泰勒·文斯', N'男', N'巨蟹座', CAST(0xAFEB0A00 AS Date), N'美国,路易斯安那州,巴吞鲁日', N'演员 / 导演', N'', N'', N'nm0898546', N'', N'Pruitt Taylor Vince (born July 5, 1960) is an American award-winning character actor who has made many appearances in film and television.Vince was born in Baton Rouge, Louisiana. He attended Louisiana State University[2] and began acting due to a mistake; a computer error in his high school registration scheduled him in an acting class, a subject which Vince has never left.', N'D:\pic\w63.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (64, N'乔丹·长井', N'男', N'水瓶座', CAST(0x2A240B00 AS Date), N'美国,加利福尼亚州,洛杉矶', N'配音 / 演员', N'', N'', N'nm2973712', N'', N'……', N'D:\pic\w64.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (65, N'琼·艾伦', N'女', N'狮子座', CAST(0x28E60A00 AS Date), N'美国,伊利诺伊州,罗谢尔', N'演员 / 制片人', N'', N'', N'nm0000260', N'', N'艾伦1956年8月20日出生于伊利诺斯州，是“Steppenwolf Theatre Company”的创始人之一。成名后她扮演的角色逐渐增多，她最近的影片是罗德-麦肯齐执导的《竞争者》(The Contender)，这也是艾伦扮演的地位最高的角色了，她成了一个被卷入了性丑闻之中的美国副总统竞选人。', N'D:\pic\w65.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (66, N'入野自由', N'女', N'双鱼座', CAST(0x19130B00 AS Date), N'日本,东京', N'配音 / 演员', N'Miyu-Miyu (昵称)', N'', N'nm0997115', N'', N'入野自由，日本男性声优，隶属日本junction公司旗下。代表作品：《我们仍未知道那天所看见的花的名字》宿海仁太 、《翼·年代记》小狼、《千与千寻》赈早见琥珀主、《天使怪盗》丹羽大助等。', N'D:\pic\w66.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (67, N'瑞贝卡·德·莫妮', N'女', N'处女座', CAST(0x78EA0A00 AS Date), N'美国,加利福尼亚州,圣罗莎', N'演员 / 导演 / 制片人', N'Rebecca Jane Pearch (本名)', N'丽贝卡·德莫妮', N'nm0000360', N'', N'瑞贝卡·德·莫妮1962年8月29日生于美国加州洛杉矶。父亲是一位电视节目主持人。自小在欧洲长大，并接受良好的教育。回到美国后，进入里斯特拉斯堡演艺中心学习演技。1982年踏入影坛。在大导演科波拉的《旧爱新欢》中出演一个小角色，次年即以《危险交易》中的妓女形象崭露头角。', N'D:\pic\w67.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (68, N'萨拉·罗默尔', N'女', N'处女座', CAST(0x230E0B00 AS Date), N'美国,加利福尼亚,圣地亚哥', N'演员 / 制片人', N'Sarah Christine Roemer (本名)', N'', N'nm2105255', N'', N'莎拉·克里斯汀·罗默尔（出生于1984年8月28日）是一名美国的演员和模特。她于2000年在7-11买咖啡是被星探发现开始模特生涯。后因出演电影《后窗惊魂》、《精神病院》和《啦啦队夏令营》而被人熟知。她最近出演NBC出品的恐怖电视剧《惊世》。这是她第一部电视作品。', N'D:\pic\w68.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (69, N'桑亚·玛荷塔', N'女', N'', NULL, N'印度,德里', N'演员 / 美术', N'', N'桑亚·马特拉', N'nm7621667', N'', N'Sanya Malhotra is an actress, known for Dangal (2016) and Koffee with Karan (2004).', N'D:\pic\w69.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (70, N'沙尔曼·乔希', N'女', N'双鱼座', CAST(0x5C060B00 AS Date), N'印度.古吉拉特', N'演员 / 编剧', N'Sherman Joshi', N'沙尔萌（昵称）', N'nm0430817', N'', N'出身於古吉拉特，全家人包括父亲Arvind Joshi 皆活跃於剧场，让Sharman自孩提时期就展现对表演的兴趣。1999年以艺术电影「Godmother」出道，2001年喜剧风格的「Style」是他第一部商业映演票房成功的电影，但真正打开知名度却是在2006年後和Aamir Khan合作「Rang De Basanti」(青春无敌)，一部当代的爱国传说，叙述印度新世代为国家前途奋斗的故事，在当年引发许多话题，也让Sharman有机会尝试更多类型的电影，像是除了喜剧片「Golmaal」之外，有剧情片「 Life in a ... Metro」、惊悚片「 Raqeeb」和浪漫爱情片「Sorry Bhai」。', N'D:\pic\w70.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (71, N'上白石萌音', N'女', N'水瓶座', CAST(0x47210B00 AS Date), N'日本,鹿儿岛,鹿儿岛', N' 演员 / 配音', N'かみしらいし もね', N'', N'nm4759838', N'', N'上白石萌音，日本童星。东宝芸能旗下艺人。', N'D:\pic\w71.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (72, N'市原悦子', N'女', N'水瓶座', CAST(0xCEC80A00 AS Date), N'日本,千叶县', N'演员 / 配音', N'しおみ えつこ', N'塩见悦子', N'nm0406700', N'', N'市原 悦子（いちはら えつこ、1936年1月24日 - ），日本女演员、配音演员。本名塩见悦子（しおみ えつこ）。身高160cm、体重53kg。丈夫是舞台演出家塩见哲。', N'D:\pic\w72.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (73, N'谭卓', N'女', N'天秤座', CAST(0xD10C0B00 AS Date), N'中国,吉林,长春', N'演员', N'', N'', N'm3431007', N'', N'……', N'D:\pic\w73.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (74, N'汤姆·哈迪', N'女', N'处女座', CAST(0x38040B00 AS Date), N'英国,伦敦,哈默史密斯', N'演员 / 制片人 / 编剧', N' Edward Thomas Hardy (本名)', N'汤老湿(昵称) / 甜心(昵称)', N'nm0362766', N'', N'汤姆·哈迪给人留下的最初印象是《兄弟连》和《黑鹰坠落》中英俊而带有几分邪气的美国大兵，但他是一位生在伦敦的英国演员。之后他与盖尔·加西亚·贝纳尔合演了独立片《爱奴》，在南非拍摄《西蒙：一位英国退伍兵》，还在《星际迷航记之复仇女神》中出任反派，扮演毕凯舰长的复制人Shinzon一角为科幻迷所熟悉。', N'D:\pic\w74.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (75, N'王传君', N'女', N'天秤座', CAST(0xC30F0B00 AS Date), N'中国,上海', N'演员 / 主持人', N'Eric', N'传君（别名）', N'nm4369372', N'', N'王传君，1985年10月18日出生于上海市，中国内地影视男演员、流行乐歌手、主持人，毕业于上海戏剧学院04级表演系本科。 2006年，出演个人首部电视剧《谢谢你曾经爱过我》，从而正式进入演艺圈；同年，获得上海电视台《一笑成名》总决赛亚军。 2007年，参加东方卫视选秀娱乐节目《加油！好男儿》的比赛，获得上海赛区四强、全国20强。', N'D:\pic\w75.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (76, N'吴京', N'女', N'白羊座', CAST(0x4BFF0A00 AS Date), N'中国,北京', N'演员 / 导演 / 制片人 / 编剧 / 其它', N'Jacky Wu', N'', N'nm0943104', N'weibo.com/wujinggoldtyphoon', N'吴京，被誉为“功夫小子”，从1995年就开始接拍电视剧和电影，其引路人便是《少林寺》以及《少林武王》的导演张鑫炎，而吴京的武术教练也就是李连杰的教练吴彬。当年还在武术队里奋斗的吴京被张鑫炎看中，于是和师兄李连杰一样，顺利地加入了娱乐圈。两人的经历惊人地相似。2005年后吴京搬迁至香港，正式在香港发展，并取得了不俗的成绩。', N'D:\pic\w76.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (77, N'吴孟达', N'女', N'魔蝎座', CAST(0x8CDF0A00 AS Date), N'中国,福建,厦门', N'演员', N'Uncle Tat(昵称) / Ng Man Tat', N'达叔(昵称)', N'nm0628806', N'', N'吴孟达，香港知名艺人，七岁随父母移民香港，后为电影、电视剧男演员。在香港电影中与周星驰合作成为搞笑无厘头的黄金搭档。吴孟达被电影界尊称为“达哥”，是演技精湛的金牌配角，被誉为香港和华语影坛片酬最高的黄金配角，也曾获得多届香港电影金像奖和台湾电影金马奖最佳男配角提名，并荣获第十届香港电影金像奖最佳男配角。', N'D:\pic\w77.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (78, N'夏木真理', N'女', N'金牛座', CAST(0x05E00A00 AS Date), N'日本,东京', N'演员 / 配音', N'夏木マリ / Junko Nakajima (本名)', N'夏木麻里', N'nm0622412', N'http://www.marinatsuki.com/', N'原名中岛淳子，1952年5月2日出生于日本东京都，女性声优。曾经担任日本动画电影《千与千寻》中汤婆婆的配音，而被广大观众熟知。', N'D:\pic\w78.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (79, N'伊德里斯·艾尔巴', N'女', N'处女座', CAST(0x0DFD0A00 AS Date), N'英国,伦敦,哈克尼', N'演员 / 配音 / 制片人 / 导演 / 编剧', N'Idrissa Akuna Elba (本名) / DJ Big Driis (昵称)', N'伊德瑞斯·艾尔巴', N'nm0252961', N'http://www.twitter.com/idriselba', N'伊德瑞斯·艾尔巴，英文名Idris Elba，英国男演员，制片人。1972年09月06日出生于英国伦敦。曾参演电影《普罗米修斯》、《环太平洋》等。', N'D:\pic\w79.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (80, N'英达', N'女', N'巨蟹座', CAST(0xB1EB0A00 AS Date), N'中国,北京', N'演员 / 导演 / 编剧', N'Ying Da / Danniel Ying', N'', N'nm0948058', N'', N'英达（1960年7月7日－），中国大陆演员和导演。毕业于北京大学心理学系及密苏里大学戏剧表演系。英达是一个幽默的人。娱乐圈多栖，导演、演员、主持人三位一体，无论是扮演影片《大腕》中的路易王，还是主持综艺节目《老同学大联欢》，英达都表现得活灵活现，游刃有余。尤其是继《我爱我家》《闲人马大姐》先后成功之后，英达更是奠定中国情景喜剧掌门人的地位。现在又相继推出《东北一家人》《相约青春》等系列喜剧。', N'D:\pic\w80.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (81, N'余文乐', N'女', N'天蝎座', CAST(0x280A0B00 AS Date), N'中国香港', N'演员 / 配音', N'Ah Lok / Lok Lok (昵称)', N'代果', N'nm1284845', N'http://t.sina.com.cn/realyuwenle', N'余文乐，香港著名演员、歌手，因被星探发掘而入行当兼职模特儿，中六毕业后成为全职模特儿，而后又涉足广告、影视、歌手等行业。余文乐被誉为继谢霆锋、吴彦祖之后香港又一新生代接班人。', N'D:\pic\w81.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (82, N'约瑟夫·高登-莱维特', N'女', N'水瓶座', CAST(0x1B090B00 AS Date), N'美国,加利福尼亚州,洛杉矶', N'演员 / 导演 / 配音 / 编剧 / 音乐', N'Joseph Leonard Gordon-Levitt(本名) / Joey(昵称) / Joe(昵称) / JGL', N'约瑟芬·戈登·罗维特 / 囧瑟夫(昵称) / 祖瑟夫·哥顿·利域', N'nm0330687', N'www.HitRecord.org / josephgordonlevitt.org', N'约瑟夫·高登-莱维特，美国男演员。童星出身的他1992年初上银幕时，只有11岁，在导演罗伯特．雷德福的《大河恋》中饰演主角的哥哥，此片让他赢得Young Artist Award for Best Actor Under Ten大奖。', N'D:\pic\w82.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (83, N'曾志伟', N'女', N'白羊座', CAST(0x60E10A00 AS Date), N'中国香港', N'演员 / 制片人 / 导演 / 编剧 / 副导演', N'', N'', N'nm0874676', N'', N'曾志伟，香港影视演员，在中学毕业后曾任职业足球运动员，后辗转加入电影行业，最初担任龙虎武师。后来涉足编剧工作，并升任导演。加入新艺城后拍摄“最佳拍档”系列电影，大受好评。另外和冯淬帆、吴耀汉、洪金宝、岑建勋及秦祥林主演五福星系列电影，及参予王晶最佳损友系列电影，当中尖酸的说话方式和扺死的对白令一众香港人印象难忘，另在任编、导期间，曾志伟多次参予幕前客串演出，因此虽然只是小角色，也令香港观众无人不知曾志伟的名字。', N'D:\pic\w83.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (84, N'张丰毅', N'女', N'处女座', CAST(0x34E60A00 AS Date), N'中国,湖南,长沙', N'演员 / 配音', N'Fung Ngai Cheung / Feng-Yi Zhang', N'', N'nm0955342', N'', N'张丰毅，中国内地著名演员。1971年初中肄业，从中学进了云南省东川市文工团，先练了两年京剧，然后练舞蹈。1978年考入北京电影学院表演系，开始系统地学习电影表演艺术。在校期间，他参加《塞外夺宝》。1982年毕业被分配到峨眉电影制片厂。1986年出演了六集电视剧《朱德》中的“蔡锷将军”。随后张丰毅出演了《骆驼祥子》、《和平年代》等口碑甚好的电视剧。', N'D:\pic\w84.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (85, N'章宇', N'女', N'天枰座', CAST(0x640B0B00 AS Date), N'中国,贵州', N'演员', N'', N'章鑫', N'nm9636805', N'weibo.com/feishe92806', N'章宇，原名章鑫，中国内地男演员，兼职艺术家，“戏痴”，“轴演员”，1982年9月25日出生于贵州。 　　2018年7月5日，在上映的电影《我不是药神》中因出色地完成了“黄毛”彭浩角色的演绎而被更多观众所熟知。', N'D:\pic\w85.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (86, N'赵今麦', N'女', N'天枰座', CAST(0xF1270B00 AS Date), N'中国,辽宁,沈阳', N'演员', N'Jin Mai Jaho', N'麦籽、麦麦', N'nm6165535', N'weibo.com/zhaojinmaiangel', N'赵今麦，中国女演员。2016年，在都市情感剧《小别离》中饰演金琴琴；2017年在都市情感剧《我的！体育老师》中饰演马莉；2018年在奇幻喜剧电影《快把我哥带走》中饰演苗妙妙； 2019年，在科幻电影《流浪地球》中饰演韩朵朵；同年6月，主演了都市情感剧《少年派》，饰演林妙妙一角。', N'D:\pic\w86.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (87, N'珍妮·斯蕾特', N'女', N'白羊座', CAST(0xAC0A0B00 AS Date), N'美国,纽约', N'演员 / 配音 / 编剧', N'?Jenny Sarah Slate（本名）', N'珍妮·斯蕾', N'nm2809577', N'', N'……', N'D:\pic\w87.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (88, N'郑秀文', N'女', N'狮子座', CAST(0xFBFC0A00 AS Date), N'中国香港', N'演员', N'Cheng Sau Man (本名) / Ah Mi (昵称)', N'阿咪(昵称) / 郑四万', N'nm0155618', N'', N'郑秀文（Sammi Cheng，1972年8月19日－），香港著名女歌手及演员，以百变形象和唱演俱佳著称。郑秀文被誉为香港乐坛及影坛双栖天后，亦有「百变天后」、「梅艳芳接班人」、「香港乐坛最后一位天后」等称号。', N'D:\pic\w88.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (89, N'周一围', N'女', N'处女座', CAST(0x440B0B00 AS Date), N'中国,湖南,吉首', N'演员 / 配音', N'Alex Zhou', N'一围', N'nm2489423', N'', N'外形帅气俊朗，因在海岩剧《深牢大狱》中饰演男一号刘川而被观众熟识，此后在《空巷子》、《名门劫》、《谢谢你曾经爱过我》等剧中有出色表现.', N'D:\pic\w89.jpg')
INSERT [dbo].[Actors] ([Actor_ID], [Actor_Name], [Actor_Sex], [Actor_Constellation], [Actor_Birth], [Actor_BirthPlace], [Profession], [Other_ForeignName], [Other_ChineseName], [imdb_Number], [Offical_Website], [Actor_Intro], [Actor_Photo]) VALUES (90, N'朱茵', N'女', N'天蝎座', CAST(0xD0FB0A00 AS Date), N'中国香港', N'演员', N'Chu Yan / Zhu Yin', N'', N'nm0160803', N't.sina.com.cn/1770438374', N'朱茵中学就读路德会吕明才中学，1990年在香港演艺学院供读戏剧系，拥有天份的她，还未毕业，已受电影圈所留意，于1991年被邀请参与演出电影《逃学威龙续集》，担纲女主角。与此同时在年中，更被电视广播有限公司﹝TVB﹞发掘，加入电视台以供读生身份任节目主持人，不断努力的她，终于在1992年完成三年的演艺学院戏剧系的课程。同时更获得这年的最佳演员奖。', N'D:\pic\w90.jpg')
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (1, 1, 1, 5, N'一直在牛逼，从未被超越。只有Nolan才能达到这种境界！！！812 有用', CAST(0x63330B00 AS Date), N'Phone', 3079)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (2, 1, 2, 5, N'诺兰+莱昂纳多的电影，我无话可说！', CAST(0xFB320B00 AS Date), N'PC', 825)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (3, 2, 3, 5, N'说好了一辈子，少一年、一天、一个时辰，都不是一辈子。', CAST(0xEC2C0B00 AS Date), N'PC', 18098)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (4, 10, 3, 5, N'如果我把吉他练熟了，就可以不用买打火机啦', CAST(0x3A2F0B00 AS Date), N'Phone', 4912)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (5, 16, 1, 5, N'新海诚用这样的故事去温暖城市中每一个仍然愿意相信爱的人。在这么大的世界里，能够遇见你，竟然需要如此用力。穿越错位的时空，仰望陨落的星辰，你没留下你的名字，我却无法忘记那句“我爱你”。', CAST(0xD53B0B00 AS Date), N'Phone', 16287)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (6, 16, 6, 4, N'你我相逢在黑夜的空中，你有你的我有我的方向，你记得也好，最好你忘掉，在这交会时互放的光亮。', CAST(0xD63B0B00 AS Date), N'PC', 1581)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (7, 6, 5, 4, N'如果有一天你变成了奇怪的家伙，生活于恐惧和虚假之中，就念重生的咒语“All is well”，狠狠地给这个世界一脚！对鼓励别样人生价值和给人梦想的片子我是举双手赞成，何况从头到尾都拍得这么欢乐。台词：“朋友是男人最大的胸部”、“你这么害怕明天，又怎么能过好今天”。', CAST(0x27330B00 AS Date), N'PC', 943)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (8, 6, 2, 5, N'很棒的印度电影，这当中一样的可以看到中印相似的教育体制与贫富阶层问题。轻松、暴笑、热泪中感受积极人生的力量。梦想与事业，做我们喜欢的事情，是成就的不变真理。', CAST(0x24330B00 AS Date), N'PC', 753)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (9, 20, 1, 4, N'超出预期，非常刺激，最后几场大战，血肉横飞，估计创下了近些年华语战争题材尺度之最。片尾没有强行拔高主题，或充斥个人英雄主义的色彩，整部影片都是一场接一场紧凑且高难度的任务，山地、沙漠、空降各类地形和作战任务几乎都涉及到了，狙击和营救的部分格外惊险，结尾亦干脆有力。', CAST(0xDD3D0B00 AS Date), N'Phone', 2389)
INSERT [dbo].[Comment] ([Comment_ID], [Film_ID], [User_ID], [Star_Level], [Content], [Cmment_Time], [Terminal], [OtherLike]) VALUES (10, 20, 4, 4, N'国产类型片的里程碑，2个多小时节奏全程紧绷清晰，真热血真刺激。叙事，人物，情感，动作，制作都几乎无可挑剔。该有的都有，演员群像都比想象中出色，但最出色的还是导演。这个格局，超越某狼N倍。', CAST(0xDA3D0B00 AS Date), N'PC', 10478)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (1, 1, 1, 1, N'看不懂', N'刚刚在网上看的画面不清不楚的== 但是还是很吸引人~尤其是片中“失重”镜头印象很深', 1, CAST(0x00009DE8016813B0 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (1, 2, 1, 2, N'看不懂', N'很明显你没有看懂，你连陀螺的意义都不知道还敢说自己看过电影，也许只是看过吧，也并不是一个多梦的人，因为此时你只是在发梦罢了！', 1, CAST(0x0000A7CA016D4BA0 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (1, 3, 1, 2, N'看不懂', N'你下次做梦的时候思考一下你在哪，什么时候来的，跟谁一起，整理一下逻辑立马就会醒。', 1, CAST(0x0000A7FA017F6C40 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (1, 4, 1, 4, N'看不懂', N'对啊，最明显的就是孩子。', 1, CAST(0x00009DE900A976D0 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (1, 5, 1, 5, N'看不懂', N'或者有没有可能cobb因为太想回家了，“日有所思，夜有所梦”，他在当时的梦境中又意识游离了一次，梦到自己真的回去了，“孩子们也长大了”，“戒指也没带”，陀螺在旋转，似倒非倒，梦境与现实的结合，但是梦境大于现实...', 1, CAST(0x00009DE901285B30 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (2, 1, 5, 6, N'千与千寻的爱情', N'我爱上了一条河流，他也爱上了我，我们相遇在我的红色鞋子跌落之际。琥珀川，这是你的名字，千寻，这是我的名字。不能忘记名字，因为忘记了名字就会忘记一切，忘记我们曾经相遇，忘记我们的爱情。我曾经，沉浸在你的怀抱里。', 1, CAST(0x00009722013357B0 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (2, 2, 5, 4, N'千与千寻的爱情', N'你是有故事的人。', 1, CAST(0x0000A26C016B1920 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (2, 3, 5, 3, N'千与千寻的爱情', N'同意', 1, CAST(0x0000A271000C15C0 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (2, 4, 5, 1, N'千与千寻的爱情', N'看到大家的评论都这么长时间了，11年，我是今天看的，2017/5/20，我希望11年后也有人读到我的评论，让美好的继续下去吧！', 1, CAST(0x0000A779015D1730 AS DateTime), 0)
INSERT [dbo].[Discussion] ([Post_ID], [Floor], [Film_ID], [User_ID], [Post_Title], [Post_Content], [Reply_Floor], [Submit_Time], [Other_Like]) VALUES (2, 5, 5, 5, N'千与千寻的爱情', N'其实宫崎峻强调的也不是他们的爱情，在我看来那那是法子深处对友情的赞美。。', 1, CAST(0x0000981900057E40 AS DateTime), 0)
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'第20届MTV电影奖', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'第34届日本电影学院奖', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'第36届法国凯撒奖', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'第37届土星奖', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'第64届英国电影和电视艺术学院奖', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'第68届美国金球奖提名', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'第83届奥斯卡金像奖', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (1, N'美国SPIKE TV尖叫奖', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (2, N'第46届法国戛纳国际电影节金棕榈大奖', N'1993')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (2, N'伦敦影评人协会奖最佳外语片', N'1995')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (2, N'日本权威杂志《キネマ旬报》史上100部最佳外国电影', N'1999')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (2, N'英国电影杂志《帝国》100部最伟大的非英语片', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (3, N'第七十届奥斯卡 最佳影片', N'1998')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (3, N'美国第70届电影艺术与科学学院奖(奥斯卡金像奖)', N'1998')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (4, N'第38届香港电影金像奖', N'2018')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (4, N'第55届台湾电影金马奖', N'2018')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第21届香港电影金像奖', N'2002')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第25回日本电影金像奖', N'2002')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第29届土星奖', N'2003')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第30届安妮奖', N'2003')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第52届柏林电影节', N'2002')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第56届每日电影奖', N'2001')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第6届神户动画奖', N'2001')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'第75届奥斯卡金像奖', N'2003')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (5, N'东京动画奖', N'2002')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (6, N'印度电影观众奖', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (6, N'印度国际电影学院获奖', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (7, N'天坛奖', N'2019')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (8, N'年轻艺术家奖', N'2011')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (9, N'第44届“动画安尼奖”', N'2017')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (10, N'美国电影电视金球奖', N'1999')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (10, N'欧洲电影奖', N'1999')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (11, N'第15届香港电影金像奖提名', N'1996')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (11, N'第1届香港电影金紫荆奖最佳男主角', N'1996')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (11, N'第2届香港电影评论学会奖推荐电影', N'1996')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (12, N'最受关注的院线电影(提名)', N'2017')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (13, N'入围奥斯卡', N'2009')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (14, N'第45届动画安妮奖', N'2018')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (14, N'第90届奥斯卡金像奖', N'2018')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (15, N'第37届安妮奖', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (15, N'第63届英国电影学院奖', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (15, N'第67届金球奖', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (15, N'第82届奥斯卡金像奖', N'2010')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (16, N'第40届日本电影学院奖', N'2017')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (16, N'第44届“动画安尼奖”', N'2017')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (17, N'第22届香港电影金像奖', N'2003')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (17, N'第四十届金马奖', N'2003')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (18, N'第2届香港电影评论学会奖推荐电影', N'1996')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (19, N'奥斯卡金像奖最佳原创剧本提名', N'2002')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (20, N'第32届中国金鸡奖提名', N'2019')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (20, N'第34届大众百花奖', N'2019')
INSERT [dbo].[Film_Awards] ([Film_ID], [Award], [Award_Time]) VALUES (20, N'第38届香港电影金像奖', N'2019')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (1, N'盗梦空间', N'D:\pic\f1.jpg', N'克里斯托弗·诺兰', N'克里斯托弗·诺兰', 148, N'英语 / 日语 / 法语', N'2010-09-01(中国大陆)/2010-07-16(美国)', N'美国 / 英国', N'Inception', N'http://www.imdb.com/title/tt1375666', N'道姆·柯布（莱昂纳多·迪卡普里奥LeonardoDiCaprio饰）与同事阿瑟（约瑟夫·戈登-莱维特JosephGordon-Levitt饰）和纳什（卢卡斯·哈斯LukasHaas饰）在一次针对日本能源大亨齐藤（渡边谦饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲CillianMurphy饰）的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯（迈克尔·凯恩MichaelCaine饰），吸收了年轻的梦境设计师艾里阿德妮（艾伦·佩吉EllenPage饰）、梦境演员艾姆斯（汤姆·哈迪TomHardy饰）和药剂师约瑟夫（迪利普·劳DileepRao饰）加入行动。在一层层...')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (2, N'霸王别姬', N'D:\pic\f2.jpg', N'陈凯歌', N'芦苇/李碧华', 171, N'汉语普通话', N'1993-01-01(香港)', N'中国大陆 / 香港', N'Farewellto My Concubine', N'http://www.imdb.com/title/tt0106332', N'段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》。但两人对戏剧与人生关系的理解有本质不同，段小楼深知戏非人生，程蝶衣则是人戏不分。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (3, N'泰坦尼克号', N'D:\pic\f3.jpg', N'詹姆斯·卡梅隆', N'詹姆斯·卡梅隆', 194, N'英语 / 意大利语 / 德语 / 俄语', N'1998-04-03(中国大陆)/1997-11-01(东京电影节)/1997-12-19(美国)', N'美国', N'Titanic', N'http://www.imdb.com/title/tt0120338', N'1912年4月10日，号称“世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特?温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (4, N'我不是药神', N'D:\pic\f4.jpg', N'文牧野', N'韩家女/钟伟/文牧野', 117, N'汉语普通话 / 英语 / 上海话 / 印地语', N'2018-07-05(中国大陆)/2018-06-30(大规模点映)', N'中国大陆', N'null', N'http://www.imdb.com/title/tt7362036', N'普通中年男子程勇（徐峥饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣饰），以及脾气暴烈的“黄毛”（章宇饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉饰）和瑞士正牌医药代表（李乃文饰）也对其虎视眈眈，生意逐渐变成了一场关于救赎的拉锯战。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (5, N'千与千寻 ', N'D:\pic\f5.jpg', N'宫崎骏', N'宫崎骏', 125, N'日语', N'2001-07-20(日本)', N'日本', N'千と千尋の神隠し', N'http://www.imdb.com/title/tt0245429', N'千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (6, N'三傻大闹宝莱坞 ', N'D:\pic\f6.jpg', N'拉吉库马尔·希拉尼', N'维德胡·维诺德·乔普拉/拉吉库马尔·希拉尼/阿西奇·乔希', 171, N'印地语 / 乌尔都语 / 英语', N'2011-12-08(中国大陆)/2009-12-25(印度)', N'印度', N'3 Idiots', N'http://www.imdb.com/title/tt1187043', N'本片根据印度畅销书作家奇坦·巴哈特（ChetanBhagat）的处女作小说《五点人》（FivePointSomeone）改编而成。法兰（马德哈万RMadhavan饰）、拉杜（沙曼·乔希SharmanJoshi饰）与兰乔（阿米尔·汗AamirKhan饰）是皇家工程学院的学生，三人共居一室，结为好友。在以严格著称的学院里，兰乔是个非常与众不同的学生，他不死记硬背，甚至还公然顶撞校长“病毒”（波曼·伊拉尼BomanIrani饰），质疑他的教学方法。他不仅鼓动法兰与拉杜去勇敢追寻理想，还劝说校长的二女儿碧雅（卡琳娜·卡普KareenaKapoor饰）离开满眼铜臭的未婚夫。兰乔的特立独行引起了模范学生“消音器”（奥米·维嘉OmiVaidya饰）的不满，他约定十年后再与兰乔一决高下，看哪种生活方式更能取得成功。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (7, N'流浪地球', N'D:\pic\f7.jpg', N'郭帆', N'龚格尔/严东旭/郭帆/叶俊策/杨治学/吴荑/叶濡畅/沈晶晶/刘慈欣', 125, N'汉语普通话 / 英语 / 俄语 / 法语 / 日语 / 韩语 / 印尼语', N'2019-02-05(中国大陆)', N'中国大陆', N'null', N'http://www.imdb.com/title/tt7605074', N'近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强（吴京饰）在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启（屈楚萧饰）长大，他带着妹妹朵朵（赵今麦饰）偷偷跑到地表，偷开外公韩子昂（吴孟达饰）的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望……')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (8, N'怦然心动', N'D:\pic\f8.jpg', N'罗伯·莱纳', N'罗伯·莱纳/安德鲁·沙因曼/文德琳·范·德拉安南', 90, N'英语', N'2010-07-26(好莱坞首映)/2010-09-10(美国)', N'美国', N'Flipped', N'http://www.imdb.com/title/tt0817177', N'布莱斯（卡兰?麦克奥利菲CallanMcAuliffe饰）全家搬到小镇，邻家女孩朱丽（玛德琳?卡罗尔MadelineCarroll饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。她把自家鸡蛋送给他，他听家人怀疑她家鸡蛋不卫生，便偷偷把鸡蛋丢掉。她得知真相，很伤心，两人关系跌入冰点。她跟家人诉说，引发争吵。原来父亲一直攒钱照顾傻弟弟，所以生活拮据。她理解了父母，自己动手，还得到了他外公的鼎力相助。他向她道歉，但是并未解决问题。他开始关注她。鸡蛋风波未平，家庭晚宴与午餐男孩评选...')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (9, N'疯狂动物城', N'D:\pic\f9.jpg', N'拜伦·霍华德', N'拜伦·霍华德/瑞奇·摩尔/杰拉德·布什/吉姆·里尔顿/乔西·特立尼达/菲尔·约翰斯顿/珍妮弗·李', 109, N'英语 / 挪威语', N'2016-03-04(中国大陆/美国)', N'美国', N'Zootopia', N'http://www.imdb.com/title/tt2948356', N'故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温GinniferGoodwin配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (10, N'海上钢琴师', N'D:\pic\f10.jpg', N'朱塞佩·托纳多雷', N'亚利桑德罗·巴里克/朱塞佩·托纳多雷', 165, N'英语 / 法语 / 意大利语', N'1998-10-28(意大利)', N'意大利', N'La leggenda del pianista sull''oceano', N'http://www.imdb.com/title/tt0120731', N'本片讲述了一个钢琴天才传奇的一生。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (11, N'大话西游之大圣娶亲', N'D:\pic\f11.jpg', N'刘镇伟', N'刘镇伟/吴承恩', 95, N'粤语 / 汉语普通话', N'2014-10-24(中国大陆)/2017-04-13(中国大陆重映)/1995-02-04(香港)', N'香港 / 中国大陆', N'西遊記大結局之仙履奇緣', N'http://www.imdb.com/title/tt0114996', N'至尊宝（周星驰饰）被月光宝盒带回到五百年前，遇见紫霞仙子（朱茵饰），被对方打上烙印成为对方的人，并发觉自己已变成孙悟空。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (12, N'摔跤吧！爸爸', N'D:\pic\f12.jpg', N'涅提·蒂瓦里', N'比于什·古普塔/施热亚·简/尼基尔·麦罗特拉/涅提·蒂瓦里', 161, N'印地语', N'2017-05-05(中国大陆)/2016-12-23(印度)', N'印度', N'Dangal', N'http://www.imdb.com/title/tt5074352', N'马哈维亚（阿米尔·汗AamirKhan饰）曾经是一名前途无量的摔跤运动员，在放弃了职业生涯后，他最大的遗憾就是没有能够替国家赢得金牌。马哈维亚将这份希望寄托在了尚未出生的儿子身上，哪知道妻子接连给他生了两个女儿，取名吉塔（法缇玛·萨那·纱卡FatimaSanaShaikh饰）和巴比塔（桑亚·玛荷塔SanyaMalhotra饰）。让马哈维亚没有想到的是，两个姑娘展现出了杰出的摔跤天赋，让他幡然醒悟，就算是女孩，也能够昂首挺胸的站在比赛场上，为了国家和她们自己赢得荣誉。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (13, N'忠犬八公的故事', N'D:\pic\f13.jpg', N'拉斯·霍尔斯道姆', N'斯蒂芬·P·林赛/新藤兼人', 93, N'英语 / 日语', N'2009-06-13(西雅图电影节)/2010-03-12(英国)', N'美国 / 英国', N'Hachi: A Dog''s Tale', N'http://www.imdb.com/title/tt1028532', N'八公（Forest饰）是一条谜一样的犬，因为没有人知道它从哪里来。教授帕克（理查·基尔RichardGere饰）在小镇的火车站拣到一只走失的小狗，冥冥中似乎注定小狗和帕克教授有着某种缘分，帕克一抱起这只小狗就再也放不下来，最终，帕克对小狗八公的疼爱感化了起初极力反对养狗的妻子卡特（琼·艾伦JoanAllen饰）。八公在帕克的呵护下慢慢长大，帕克上班时八公会一直把他送到车站，下班时八公也会早早便爬在车站等候，八公的忠诚让小镇的人家对它更加疼爱。有一天，八公在帕克要上班时表现异常，居然玩起了以往从来不会的捡球游戏，八公的表现让帕克非常满意，可是就是在那天，帕克因病去世。帕克的妻子、女儿安迪（萨拉·罗默尔SarahRoemer饰）及女婿迈克尔（罗比·萨布莱特RobbieSublett饰）怀着无比沉痛的心情埋葬了帕克，可是不明就里的...')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (14, N'寻梦环游记', N'D:\pic\f14.jpg', N'李·昂克里奇', N'阿德里安·莫利纳/马修·奥尔德里奇/李·昂克里奇/詹森·卡茨', 105, N'英语 / 西班牙语', N'2017-11-24(中国大陆)/2017-10-20(莫雷利亚电影节)/2017-11-22(美国)', N'美国', N'Coco', N'http://www.imdb.com/title/tt2380307', N'热爱音乐的米格尔（安东尼·冈萨雷兹AnthonyGonzalez配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (15, N'飞屋环游记', N'D:\pic\f15.jpg', N'彼特·道格特', N'保伯·彼得森/彼特·道格特/汤姆·麦卡锡', 96, N'英语', N'2009-08-04(中国大陆)/2009-05-13(戛纳电影节)/2009-05-29(美国)', N'美国', N'Up', N'http://www.imdb.com/title/tt1049413', N'小男孩卡尔（CarlFredricksen）怀揣着对于冒险的热爱偶遇假小子艾丽（Ellie），而艾丽把整个屋子当成一艘大飞船游戏居然使他对这个女孩子有些着迷，相同的爱好最终使两个人成为了一生的爱侣。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (16, N'你的名字', N'D:\pic\f16.jpg', N'新海诚', N'新海诚', 106, N'日语', N'2016-12-02(中国大陆)/2016-08-26(日本)', N'日本', N'君の名は', N'http://www.imdb.com/title/tt5311514', N'在远离大都会的小山村，住着巫女世家出身的高中女孩宫水三叶（上白石萌音配音）。校园和家庭的原因本就让她充满烦恼，而近一段时间发生的奇怪事件，又让三叶摸不清头脑。不知从何时起，三叶在梦中就会变成一个住在东京的高中男孩。那里有陌生的同学和朋友，有亲切的前辈和繁华的街道，一切都是如此诱人而真实。另一方面，住在东京的高中男孩立花泷（神木隆之介配音）则总在梦里来到陌生的小山村，以女孩子的身份过着全新的生活。许是受那颗神秘彗星的影响，立花和三叶在梦中交换了身份。他们以他者的角度体验着对方的人生，这期间有愤怒、有欢笑也有暖心。只是两人并不知道，身份交换的背后隐藏着重大而锥心的秘密……')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (17, N'无间道', N'D:\pic\f17.jpg', N'刘伟强', N'麦兆辉/庄文强', 101, N'粤语', N'2003-09-05(中国大陆)/2002-12-12(香港)', N'香港', N'無間道', N'http://www.imdb.com/title/tt0338564', N'1991年，香港黑帮三合会会员刘健明（刘德华）听从老大韩琛（曾志伟）的吩咐，加入警察部队成为黑帮卧底，韩琛许诺刘健明会帮其在七年后晋升为见习督察。1992年，警察训练学校优秀学员陈永仁（梁朝伟）被上级要求深入到三合会做卧底，终极目标是成为韩琛身边的红人。2002年，两人都不负重望，也都身背重压，刘健明渐想成为一个真正的好人，陈永仁则盼着尽快回归警察身份。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (18, N'大话西游之月光宝盒', N'D:\pic\f18.jpg', N'刘镇伟', N'刘镇伟/吴承恩', 87, N'粤语 / 汉语普通话', N'2014-10-24(中国大陆)/1995-01-21(香港)', N'香港 / 中国大陆', N'西遊記第壹佰零壹回之月光寶盒', N'http://www.imdb.com/title/tt0112778', N'孙悟空（周星驰）护送唐三藏（罗家英）去西天取经路上，与牛魔王合谋欲杀害唐三藏，并偷走了月光宝盒，此举使观音萌生将其铲除心思，经唐三藏请求，孙悟空被判五百年后重新投胎做人赎其罪孽。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (19, N'天使爱美丽', N'D:\pic\f19.jpg', N'让-皮埃尔·热内', N'纪尧姆·洛朗/让-皮埃尔·热内', 122, N'法语 / 俄语', N'2001-04-25(法国)/2001-08-16(德国)', N'法国 / 德国', N'Le fabuleux destin d''Amélie Poulain', N'http://www.imdb.com/title/tt0211915', N'艾米莉（奥黛丽·塔图AudreyTautou饰）有着别人看来不幸的童年——父亲给她做健康检查时，发现她心跳过快，便断定她患上心脏病，从此艾米莉与学校绝缘。随后因为一桩意外，母亲在她眼前突然死去。这一切都毫不影响艾米莉对生活的豁达乐观。')
INSERT [dbo].[Films] ([Film_ID], [Film_Name], [Film_Poster], [Director], [Writer], [Show_Time], [Language], [Release_info], [Studios], [Alias], [IMDb], [Introduce]) VALUES (20, N'红海行动', N'D:\pic\f20.jpg', N'林超贤', N'冯骥/陈珠珠/林明杰', 138, N'汉语普通话 / 阿拉伯语 / 英语 / 索马里语 / 粤语', N'2018-02-16(中国大陆)', N'中国大陆 / 香港', N'刀锋·红海行动/红海风暴', N'http://www.imdb.com/title/tt6878882', N'中东国家伊维亚共和国发生政变，武装冲突不断升级。刚刚在索马里执行完解救人质任务的海军护卫舰临沂号，受命前往伊维亚执行撤侨任务。舰长高云（张涵予饰）派出杨锐（张译饰）率领的蛟龙突击队登陆战区，护送华侨安全撤离。谁知恐怖组织扎卡却将撤侨部队逼入交火区，一场激烈的战斗在所难免。与此同时，法籍华人记者夏楠（海清饰）正在伊维亚追查威廉·柏森博士贩卖核原料的事实，而扎卡则突袭柏森博士所在的公司，意图抢走核原料。混战中，一名隶属柏森博士公司的中国员工成为人质。为了解救该人质，八名蛟龙队员必须潜入有150名恐怖分子的聚集点，他们用自己的信念和鲜血铸成中国军人顽强不屈的丰碑！')
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (1, N'剧情                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (1, N'科幻                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (1, N'冒险                  ', 16)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (1, N'烧脑                  ', 29)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (1, N'推理                  ', 25)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (1, N'悬疑                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (2, N'爱情                  ', 24)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (2, N'剧情                  ', 13)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (2, N'深沉                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (2, N'时代变更                ', 23)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (2, N'同性                  ', 12)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (3, N'爱情                  ', 30)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (3, N'感动                  ', 33)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (3, N'剧情                  ', 14)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (3, N'人性                  ', 31)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (3, N'灾难                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (4, N'感动                  ', 29)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (4, N'剧情                  ', 15)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (4, N'人性                  ', 27)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (4, N'喜剧                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (4, N'小人物大形象              ', 28)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (5, N'动画                  ', 24)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (5, N'经典                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (5, N'剧情                  ', 22)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (5, N'奇幻                  ', 25)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (5, N'哲理                  ', 26)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (5, N'治愈                  ', 30)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (6, N'爱情                  ', 25)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (6, N'歌舞                  ', 14)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (6, N'教育                  ', 26)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (6, N'剧情                  ', 15)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (6, N'喜剧                  ', 23)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (6, N'哲理                  ', 27)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (7, N'科幻                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (7, N'世界末日                ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (7, N'新视觉技术               ', 27)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (7, N'灾难                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (7, N'震撼                  ', 16)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (8, N'爱情                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (8, N'剧情                  ', 14)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (8, N'青春                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (8, N'喜剧                  ', 16)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (8, N'哲理                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (9, N'爱情                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (9, N'迪士尼                 ', 23)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (9, N'动画                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (9, N'冒险                  ', 16)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (9, N'喜剧                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (10, N'感动                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (10, N'剧情                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (10, N'文艺                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (10, N'音乐                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (10, N'哲理                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (11, N'爱情                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (11, N'古装                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (11, N'奇幻                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (11, N'人性                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (11, N'喜剧                  ', 23)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (12, N'传记                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (12, N'感人                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (12, N'家庭                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (12, N'剧情                  ', 16)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (12, N'运动                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (13, N'动物                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (13, N'感动                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (13, N'剧情                  ', 14)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (13, N'人犬情感                ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (14, N'动画                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (14, N'奇幻                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (14, N'喜剧                  ', 15)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (14, N'音乐                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (14, N'哲理                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (15, N'动画                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (15, N'剧情                  ', 14)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (15, N'冒险                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (15, N'喜剧                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (16, N'爱情                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (16, N'动画                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (16, N'感动                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (16, N'剧情                  ', 15)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (16, N'奇幻                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (17, N'犯罪                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (17, N'剧情                  ', 14)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (17, N'人性                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (17, N'推理                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (17, N'悬疑                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (18, N'爱情                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (18, N'感动                  ', 21)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (18, N'古装                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (18, N'奇幻                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (18, N'喜剧                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (19, N'爱情                  ', 19)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (19, N'喜剧                  ', 18)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (19, N'音乐                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (19, N'哲理                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (20, N'动作                  ', 16)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (20, N'剧情                  ', 17)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (20, N'人性                  ', 20)
INSERT [dbo].[Labels] ([Film_ID], [Label_Name], [Label_Count]) VALUES (20, N'战争                  ', 18)
INSERT [dbo].[Records] ([User_ID], [Film_ID], [Tag], [Reason]) VALUES (1, 3, N'经典', N'经典、永恒，喜欢小李子')
INSERT [dbo].[Records] ([User_ID], [Film_ID], [Tag], [Reason]) VALUES (1, 13, N'忠诚', N'感动，喜欢狗狗')
INSERT [dbo].[Records] ([User_ID], [Film_ID], [Tag], [Reason]) VALUES (2, 5, N'二次元', N'唯美浪漫')
INSERT [dbo].[Records] ([User_ID], [Film_ID], [Tag], [Reason]) VALUES (2, 10, N'美好', N'期待，评分很高')
INSERT [dbo].[Records] ([User_ID], [Film_ID], [Tag], [Reason]) VALUES (2, 13, N'感动', N'朋友强烈推荐')
INSERT [dbo].[Records] ([User_ID], [Film_ID], [Tag], [Reason]) VALUES (3, 7, N'科幻', N'科幻震撼，热血青年')
INSERT [dbo].[Records] ([User_ID], [Film_ID], [Tag], [Reason]) VALUES (3, 12, N'励志', N'励志，感动，父爱，成长')
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (1, 1, N'道姆·柯布', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (1, 3, N'杰克?道森', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (2, 2, N'程蝶衣', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (3, 3, N'露丝?迪威特?布克特', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (4, 4, N'程勇', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (5, 5, N'千寻', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (6, 6, N'兰彻（冯苏·王杜）', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (6, 12, N'马哈维亚·辛格·珀尕', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (7, 7, N'刘启', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (8, 8, N'Juli Baker', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (9, 9, N'兔朱迪', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (10, 10, N'1900', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (11, 11, N'至尊宝/孙悟空/夕阳武士', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (11, 18, N'至尊宝/孙悟空', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (12, 13, N'帕克', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (13, 14, N'埃克托', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (14, 15, N'卡尔·弗雷德里克森/Cane Frederiskson', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (15, 16, N'立花泷', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (16, 17, N'刘建明', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (17, 19, N'成年艾米丽', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (18, 20, N'杨锐', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (19, 14, N'伊梅尔达', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (20, 12, N'侄子奥姆卡尔', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (21, 8, N'Steven Loski', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (22, 14, N'米格', 1)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (23, 6, N'查尔图', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (24, 15, N'道格/Dug', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (25, 14, N'德拉库斯', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (26, 10, N'丹尼·博德曼', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (27, 3, N'卡尔?霍克利', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (28, 11, N' 铁扇公主', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (29, 16, N'奥寺美纪', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (30, 17, N'少年刘建明', 7)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (31, 17, N'李心儿', 6)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (32, 1, N'“魅影”梅尔', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (33, 20, N'徐宏', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (34, 1, N'斋藤', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (35, 12, N'吉塔', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (36, 3, N'露丝·迪威特?布克特', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (37, 3, N'老年罗丝', 6)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (38, 2, N'袁世卿', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (39, 2, N'菊仙', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (40, 20, N'夏楠', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (41, 20, N'顾顺', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (42, 17, N'黄志诚', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (43, 1, N'“目标”费舍', 6)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (44, 5, N'锅炉爷爷', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (45, 2, N'小豆子娘', 6)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (46, 9, N'狐尼克', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (47, 8, N'Bryce Loski', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (48, 6, N'皮娅', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (49, 3, N'莫莉?布朗', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (50, 10, N'杰利·罗尔·莫顿', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (51, 15, N'查尔斯·穆兹', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (52, 11, N' 蜘蛛精', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (52, 18, N'蜘蛛精', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (53, 7, N'王磊', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (54, 17, N'陈永仁', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (55, 19, N'艾米莉的父亲', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (56, 13, N'迈克尔', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (57, 18, N'唐三藏', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (58, 19, N'艾米莉的母亲', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (59, 6, N'法罕', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (60, 19, N'尼诺', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (61, 11, N'白晶晶', 6)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (61, 18, N'白晶晶', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (62, 9, N'本杰明警官', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (63, 10, N'马克斯·托尼', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (64, 15, N'罗素/Russel', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (65, 13, N'凯特', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (66, 5, N'赈早见琥珀川/白龙', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (67, 8, N'Patsy Loski', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (68, 13, N'安迪', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (69, 12, N'巴比塔', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (70, 6, N'拉加', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (71, 16, N'宫水三叶', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (72, 16, N'宫水一叶', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (73, 4, N'刘思慧', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (74, 1, N'“伪装者”伊姆斯', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (75, 4, N'吕受益', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (76, 7, N'刘培强', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (77, 7, N'韩子昂', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (77, 11, N'二当家/猪八戒', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (77, 18, N'二当家', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (78, 5, N'汤婆婆/钱婆婆', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (79, 9, N'牛局长', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (80, 2, N'戏园老板', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (81, 17, N'少年陈永仁', 8)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (82, 1, N'“前哨者”亚瑟', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (84, 2, N'段小楼', 2)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (84, 17, N'韩琛', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (85, 4, N'彭浩', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (86, 7, N'韩朵朵', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (87, 9, N'羊副市长', 4)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (88, 17, N'Mary', 5)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (89, 4, N'曹斌', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (90, 11, N'紫霞仙子/青霞仙子/盘丝大仙', 3)
INSERT [dbo].[Roles] ([Actor_ID], [Film_ID], [Role_Name], [Status]) VALUES (90, 18, N'紫霞仙子', 6)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (1, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (1, N'科幻', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (1, N'冒险', 4)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (1, N'悬疑', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (2, N'爱情', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (2, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (2, N'同性', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (3, N'爱情', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (3, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (3, N'灾难', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (4, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (4, N'喜剧', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (5, N'动画', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (5, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (5, N'奇幻', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (6, N'爱情', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (6, N'歌舞', 4)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (6, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (6, N'喜剧', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (7, N'科幻', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (7, N'灾难', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (8, N'爱情', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (8, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (8, N'喜剧', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (9, N'动画', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (9, N'冒险', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (9, N'喜剧', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (10, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (10, N'音乐', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (11, N'爱情', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (11, N'古装', 4)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (11, N'奇幻', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (11, N'喜剧', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (12, N'传记', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (12, N'家庭', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (12, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (12, N'运动', 4)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (13, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (14, N'动画', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (14, N'奇幻', 4)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (14, N'喜剧', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (14, N'音乐', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (15, N'动画', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (15, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (15, N'冒险', 4)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (15, N'喜剧', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (16, N'爱情', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (16, N'动画', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (16, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (17, N'犯罪', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (17, N'剧情', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (17, N'悬疑', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (18, N'爱情', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (18, N'古装', 4)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (18, N'奇幻', 3)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (18, N'喜剧', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (19, N'爱情', 2)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (19, N'喜剧', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (20, N'动作', 1)
INSERT [dbo].[Types] ([Film_ID], [Film_Type], [Film_Priority]) VALUES (20, N'战争', 2)
INSERT [dbo].[Users] ([User_ID], [DouBan_ID], [Telephone_ID], [Email_ID], [Password], [Nickname], [Headimg]) VALUES (1, N'April', N'18810606706', N'lvyanjie@qq.com', N'171002628', N'April', N'D:\pic\1.jpg')
INSERT [dbo].[Users] ([User_ID], [DouBan_ID], [Telephone_ID], [Email_ID], [Password], [Nickname], [Headimg]) VALUES (2, N'Apple', N'18811796752', N'wanglu@qq.com', N'171002630', N'Apple', N'D:\pic\2.jpg')
INSERT [dbo].[Users] ([User_ID], [DouBan_ID], [Telephone_ID], [Email_ID], [Password], [Nickname], [Headimg]) VALUES (3, N'Banana', N'18800000000', N'daiyuqing@qq.com', N'171002500', N'Banana', N'D:\pic\3.jpg')
INSERT [dbo].[Users] ([User_ID], [DouBan_ID], [Telephone_ID], [Email_ID], [Password], [Nickname], [Headimg]) VALUES (4, N'Orange', N'18811111111', N'wuyuanyuan@qq.com', N'171002500', N'Orange', N'D:\pic\4.jpg')
INSERT [dbo].[Users] ([User_ID], [DouBan_ID], [Telephone_ID], [Email_ID], [Password], [Nickname], [Headimg]) VALUES (5, N'Panda', N'18822222222', N'yueyuchen@qq.com', N'171002300', N'Panda', N'D:\pic\5.jpg')
INSERT [dbo].[Users] ([User_ID], [DouBan_ID], [Telephone_ID], [Email_ID], [Password], [Nickname], [Headimg]) VALUES (6, N'Cat', N'18833333333', N'xuzhaohong@qq.com', N'171002400', N'Cat', N'D:\pic\6.jpg')
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_Star_Level]  DEFAULT ((0)) FOR [Star_Level]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_Terminal]  DEFAULT ('PC') FOR [Terminal]
GO
ALTER TABLE [dbo].[Discussion] ADD  CONSTRAINT [DF_Table_1_Reply_Floor]  DEFAULT ((1)) FOR [Reply_Floor]
GO
ALTER TABLE [dbo].[Discussion] ADD  CONSTRAINT [DF_Table_1_Other_Like]  DEFAULT ((0)) FOR [Other_Like]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Password]  DEFAULT ((123456)) FOR [Password]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Headimg]  DEFAULT ('C:\Users\Administrator\Desktop\DataBase\Default_Headimg.jpg') FOR [Headimg]
GO
