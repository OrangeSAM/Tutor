USE [master]
GO
/****** Object:  Database [Tutor]    Script Date: 2018/6/25 9:25:58 ******/
CREATE DATABASE [Tutor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tutor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Tutor.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Tutor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Tutor_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Tutor] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tutor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tutor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tutor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tutor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tutor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tutor] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tutor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tutor] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Tutor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tutor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tutor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tutor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tutor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tutor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tutor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tutor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tutor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tutor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tutor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tutor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tutor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tutor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tutor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tutor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tutor] SET RECOVERY FULL 
GO
ALTER DATABASE [Tutor] SET  MULTI_USER 
GO
ALTER DATABASE [Tutor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tutor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tutor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tutor] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tutor', N'ON'
GO
USE [Tutor]
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[appointment](
	[appoint_id] [int] IDENTITY(1,1) NOT NULL,
	[Teacher_id] [int] NOT NULL,
	[Task_id] [int] NOT NULL,
	[Atime] [datetime] NOT NULL,
	[Astate] [varchar](20) NOT NULL,
 CONSTRAINT [PK_appointment] PRIMARY KEY CLUSTERED 
(
	[appoint_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment_id] [int] IDENTITY(1,1) NOT NULL,
	[Student_id] [int] NOT NULL,
	[Detail] [varchar](100) NOT NULL,
	[Comment_time] [varchar](30) NOT NULL,
	[Teacher_id] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[courses]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[courses](
	[Course_id] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](20) NOT NULL,
	[price] [varchar](20) NOT NULL,
	[intro] [varchar](500) NOT NULL,
	[Ccontent] [varchar](50) NOT NULL,
	[Grade_id] [int] NOT NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exhibition]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exhibition](
	[Snip_id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [varchar](50) NOT NULL,
	[Teacher_id] [int] NOT NULL,
 CONSTRAINT [PK_Exhibition] PRIMARY KEY CLUSTERED 
(
	[Snip_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grade]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grade](
	[Grade_id] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [varchar](20) NOT NULL,
 CONSTRAINT [PK_grade] PRIMARY KEY CLUSTERED 
(
	[Grade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[indent]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[indent](
	[Indent_id] [int] IDENTITY(1,1) NOT NULL,
	[Course_id] [int] NOT NULL,
	[Student_id] [int] NOT NULL,
	[Buy_time] [datetime] NOT NULL,
	[Price] [varchar](30) NOT NULL,
 CONSTRAINT [PK_indent] PRIMARY KEY CLUSTERED 
(
	[Indent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sample]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sample](
	[Sample_id] [int] IDENTITY(1,1) NOT NULL,
	[Videos] [varchar](50) NOT NULL,
	[Teacher_id] [int] NOT NULL,
 CONSTRAINT [PK_Sample] PRIMARY KEY CLUSTERED 
(
	[Sample_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Student_id] [int] IDENTITY(1,1) NOT NULL,
	[Suser_name] [varchar](20) NOT NULL,
	[Spwd] [varchar](20) NOT NULL,
	[Sphone] [varchar](20) NOT NULL,
	[Sphoto] [varchar](40) NULL CONSTRAINT [DF_Student_Sphoto]  DEFAULT ('../Img/Icon/S.png'),
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subject]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subject](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [varchar](30) NOT NULL,
	[Grade_id] [int] NOT NULL,
 CONSTRAINT [PK_subject] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Task]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Task](
	[Task_id] [int] IDENTITY(1,1) NOT NULL,
	[Task_name] [varchar](40) NOT NULL,
	[Student_id] [int] NOT NULL,
	[Grade] [varchar](10) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Subject] [varchar](20) NOT NULL,
	[Demand] [varchar](100) NOT NULL,
	[Location] [varchar](100) NOT NULL,
	[State] [varchar](20) NOT NULL,
	[Upload_time] [datetime] NOT NULL,
	[appo_count] [int] NOT NULL CONSTRAINT [DF_Task_appo_count]  DEFAULT ((0)),
	[Tel] [varchar](30) NOT NULL,
	[Payment] [varchar](30) NOT NULL,
	[Timedemend] [varchar](60) NOT NULL,
	[Teacher_id] [int] NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[Tuser_name] [varchar](20) NOT NULL,
	[Tpwd] [varchar](20) NOT NULL,
	[Tmail] [varchar](20) NOT NULL,
	[Tphoto] [varchar](40) NULL CONSTRAINT [DF_Teacher_Tphoto]  DEFAULT ('../Img/Icon/T.png'),
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherInfo]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherInfo](
	[Detail_id] [int] IDENTITY(1,1) NOT NULL,
	[Ident_photo] [varchar](30) NOT NULL,
	[sex] [char](2) NOT NULL,
	[Studyat] [varchar](20) NOT NULL,
	[Major] [varchar](20) NOT NULL,
	[Available_subject] [varchar](20) NOT NULL,
	[Available_time] [varchar](40) NOT NULL,
	[Area] [varchar](40) NOT NULL,
	[Description] [varchar](200) NULL,
	[Award] [varchar](100) NULL,
	[Salary] [varchar](100) NULL,
	[phone] [varchar](20) NOT NULL,
	[Experience] [varchar](200) NULL,
	[Teaher_id] [int] NOT NULL,
 CONSTRAINT [PK_TeacherInfo] PRIMARY KEY CLUSTERED 
(
	[Detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Tuser]    Script Date: 2018/6/25 9:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Tuser]
AS
SELECT   dbo.Sample.Videos, dbo.Teacher.Teacher_id, dbo.Teacher.Tuser_name, dbo.Teacher.Tmail, 
                dbo.TeacherInfo.Ident_photo, dbo.TeacherInfo.sex, dbo.TeacherInfo.Studyat, dbo.TeacherInfo.Major, 
                dbo.TeacherInfo.Available_subject, dbo.TeacherInfo.Available_time, dbo.TeacherInfo.Area, dbo.TeacherInfo.Description, 
                dbo.TeacherInfo.Award, dbo.TeacherInfo.Salary, dbo.TeacherInfo.phone, dbo.TeacherInfo.Experience, 
                dbo.Exhibition.Photo
FROM      dbo.Exhibition INNER JOIN
                dbo.Teacher ON dbo.Exhibition.Teacher_id = dbo.Teacher.Teacher_id INNER JOIN
                dbo.Sample ON dbo.Teacher.Teacher_id = dbo.Sample.Teacher_id INNER JOIN
                dbo.TeacherInfo ON dbo.Teacher.Teacher_id = dbo.TeacherInfo.Teaher_id

GO
SET IDENTITY_INSERT [dbo].[appointment] ON 

INSERT [dbo].[appointment] ([appoint_id], [Teacher_id], [Task_id], [Atime], [Astate]) VALUES (1, 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), N'预约成功')
INSERT [dbo].[appointment] ([appoint_id], [Teacher_id], [Task_id], [Atime], [Astate]) VALUES (2, 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), N'预约成功')
INSERT [dbo].[appointment] ([appoint_id], [Teacher_id], [Task_id], [Atime], [Astate]) VALUES (3, 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), N'预约成功')
INSERT [dbo].[appointment] ([appoint_id], [Teacher_id], [Task_id], [Atime], [Astate]) VALUES (18, 1, 1, CAST(N'2018-06-19 00:00:00.000' AS DateTime), N'预约成功')
INSERT [dbo].[appointment] ([appoint_id], [Teacher_id], [Task_id], [Atime], [Astate]) VALUES (19, 1, 1, CAST(N'2018-06-23 00:00:00.000' AS DateTime), N'预约成功')
INSERT [dbo].[appointment] ([appoint_id], [Teacher_id], [Task_id], [Atime], [Astate]) VALUES (20, 1, 1, CAST(N'2018-06-23 00:00:00.000' AS DateTime), N'预约成功')
INSERT [dbo].[appointment] ([appoint_id], [Teacher_id], [Task_id], [Atime], [Astate]) VALUES (21, 1, 1, CAST(N'2018-06-23 00:00:00.000' AS DateTime), N'预约成功')
SET IDENTITY_INSERT [dbo].[appointment] OFF
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Comment_id], [Student_id], [Detail], [Comment_time], [Teacher_id]) VALUES (1, 1, N'这位老师讲解的很详细', N'2018-03-23', 1)
INSERT [dbo].[Comment] ([Comment_id], [Student_id], [Detail], [Comment_time], [Teacher_id]) VALUES (2, 2, N'讲的好，ojbk', N'2018-07-22', 1)
INSERT [dbo].[Comment] ([Comment_id], [Student_id], [Detail], [Comment_time], [Teacher_id]) VALUES (5, 4, N'老师很好看', N'2018-08-22', 1)
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[courses] ON 

INSERT [dbo].[courses] ([Course_id], [Cname], [price], [intro], [Ccontent], [Grade_id]) VALUES (1, N'初中英语', N'280', N'师大附中高级教师刘冰莹老师讲授', N'../Video/如约而至 - 许嵩.mp4', 3)
INSERT [dbo].[courses] ([Course_id], [Cname], [price], [intro], [Ccontent], [Grade_id]) VALUES (2, N'高中数学', N'380', N'南昌二中高级教师危辉华讲授', N'../Video/如约而至 - 许嵩.mp4', 4)
INSERT [dbo].[courses] ([Course_id], [Cname], [price], [intro], [Ccontent], [Grade_id]) VALUES (3, N'高中地理', N'480', N'安义中学高级教师廖延峰', N'../Video/如约而至 - 许嵩.mp4', 4)
INSERT [dbo].[courses] ([Course_id], [Cname], [price], [intro], [Ccontent], [Grade_id]) VALUES (4, N'高中英语', N'380', N'师大附中高级教师冷松', N'../Video/如约而至 - 许嵩.mp4', 4)
SET IDENTITY_INSERT [dbo].[courses] OFF
SET IDENTITY_INSERT [dbo].[Exhibition] ON 

INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1, N'1', 1)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (2, N'2', 2)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (3, N'3', 3)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (4, N'4', 4)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (5, N'5', 5)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (6, N'6', 6)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (7, N'7', 7)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (8, N'8', 8)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (9, N'9', 9)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1002, N'10', 10)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1003, N'11', 11)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1004, N'12', 12)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1005, N'13', 13)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1006, N'14', 14)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1007, N'15', 15)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1008, N'16', 16)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1009, N'17', 17)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1010, N'18', 18)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1011, N'19', 19)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1012, N'20', 20)
INSERT [dbo].[Exhibition] ([Snip_id], [Photo], [Teacher_id]) VALUES (1013, N'21', 21)
SET IDENTITY_INSERT [dbo].[Exhibition] OFF
SET IDENTITY_INSERT [dbo].[grade] ON 

INSERT [dbo].[grade] ([Grade_id], [Grade]) VALUES (1, N'学前教育')
INSERT [dbo].[grade] ([Grade_id], [Grade]) VALUES (2, N'小学家教')
INSERT [dbo].[grade] ([Grade_id], [Grade]) VALUES (3, N'初中家教')
INSERT [dbo].[grade] ([Grade_id], [Grade]) VALUES (4, N'高中家教')
SET IDENTITY_INSERT [dbo].[grade] OFF
SET IDENTITY_INSERT [dbo].[indent] ON 

INSERT [dbo].[indent] ([Indent_id], [Course_id], [Student_id], [Buy_time], [Price]) VALUES (5, 1, 1, CAST(N'2018-05-17 00:00:00.000' AS DateTime), N'280')
INSERT [dbo].[indent] ([Indent_id], [Course_id], [Student_id], [Buy_time], [Price]) VALUES (6, 3, 2, CAST(N'2018-05-16 00:00:00.000' AS DateTime), N'480')
INSERT [dbo].[indent] ([Indent_id], [Course_id], [Student_id], [Buy_time], [Price]) VALUES (7, 3, 6, CAST(N'2018-05-18 00:00:00.000' AS DateTime), N'480')
INSERT [dbo].[indent] ([Indent_id], [Course_id], [Student_id], [Buy_time], [Price]) VALUES (8, 2, 5, CAST(N'2018-05-17 00:00:00.000' AS DateTime), N'380')
SET IDENTITY_INSERT [dbo].[indent] OFF
SET IDENTITY_INSERT [dbo].[Sample] ON 

INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1, N'1', 1)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (2, N'2', 2)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (3, N'3', 3)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (4, N'4', 4)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (5, N'5', 5)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (6, N'6', 6)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (7, N'7', 7)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (8, N'8', 8)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (9, N'9', 9)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1002, N'10', 10)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1003, N'11', 11)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1004, N'12', 12)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1005, N'13', 13)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1006, N'14', 14)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1007, N'15', 15)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1008, N'16', 16)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1009, N'17', 17)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1010, N'18', 18)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1011, N'19', 19)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1012, N'20', 20)
INSERT [dbo].[Sample] ([Sample_id], [Videos], [Teacher_id]) VALUES (1013, N'21', 21)
SET IDENTITY_INSERT [dbo].[Sample] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (1, N'samliu', N'123456', N'awesome_sam@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (2, N'hans', N'123456', N'hans@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (4, N'samantha', N'123456', N'samantha@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (5, N'John', N'123456', N'John@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (6, N'Niki', N'123456', N'niki@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (7, N'Kim', N'123456', N'kim@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (8, N'sonic', N'123456', N'sonic@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (9, N'dino', N'123456', N'dino@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (10, N'hozin', N'123456', N'hozin@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (12, N'hoan', N'123456', N'hoan@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (13, N'jaygee', N'123456', N'jaygee@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (14, N'dokyun', N'123456', N'dokyun@qq.com', N'../Img/Icon/S.png')
INSERT [dbo].[Student] ([Student_id], [Suser_name], [Spwd], [Sphone], [Sphoto]) VALUES (15, N'viho', N'123456', N'viho@qq.com', N'../Img/Icon/S.png')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[subject] ON 

INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (1, N'小学语文', 2)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (2, N'小学数学', 2)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (3, N'学前教育', 1)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (4, N'幼儿陪玩', 1)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (5, N'小学英语', 2)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (6, N'小学全科', 2)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (7, N'初中语文', 3)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (8, N'初中数学', 3)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (9, N'初中英语', 3)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (10, N'初中理综', 3)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (11, N'初中文综', 3)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (12, N'高中语文', 4)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (13, N'高中数学', 4)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (14, N'高中英语', 4)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (15, N'高中文综', 4)
INSERT [dbo].[subject] ([sub_id], [subject], [Grade_id]) VALUES (16, N'高中理综', 4)
SET IDENTITY_INSERT [dbo].[subject] OFF
SET IDENTITY_INSERT [dbo].[Task] ON 

INSERT [dbo].[Task] ([Task_id], [Task_name], [Student_id], [Grade], [Gender], [Subject], [Demand], [Location], [State], [Upload_time], [appo_count], [Tel], [Payment], [Timedemend], [Teacher_id]) VALUES (1, N'紫阳大道99号找初中语文家教', 1, N'初二', N'男', N'语文', N'希望教员是女生', N'高新区', N'进行中', CAST(N'2018-05-16 00:00:00.000' AS DateTime), 7, N'13170864299', N'40', N'周末下午', 1)
INSERT [dbo].[Task] ([Task_id], [Task_name], [Student_id], [Grade], [Gender], [Subject], [Demand], [Location], [State], [Upload_time], [appo_count], [Tel], [Payment], [Timedemend], [Teacher_id]) VALUES (4, N'艾溪湖东幸福家园找高中数学家教', 2, N'高二', N'女', N'数学', N'无', N'艾溪湖东', N'进行中', CAST(N'2018-03-15 00:00:00.000' AS DateTime), 0, N'15527379495', N'40', N'周六周日', 1)
INSERT [dbo].[Task] ([Task_id], [Task_name], [Student_id], [Grade], [Gender], [Subject], [Demand], [Location], [State], [Upload_time], [appo_count], [Tel], [Payment], [Timedemend], [Teacher_id]) VALUES (9, N'青云谱区迎宾大道找高中英语家教', 4, N'高一', N'男', N'英语', N'教员英语发音要好', N'青云谱区', N'进行中', CAST(N'2018-04-13 00:00:00.000' AS DateTime), 0, N'18276542833', N'40', N'周六周日', 1)
INSERT [dbo].[Task] ([Task_id], [Task_name], [Student_id], [Grade], [Gender], [Subject], [Demand], [Location], [State], [Upload_time], [appo_count], [Tel], [Payment], [Timedemend], [Teacher_id]) VALUES (12, N'红谷滩九龙湖找高中语文,高中英语家教', 5, N'高二', N'女', N'语文,英语', N'仅限女教员', N'红谷滩区', N'进行中', CAST(N'2018-05-14 00:00:00.000' AS DateTime), 0, N'17774778399', N'40', N'周六下午', 1)
INSERT [dbo].[Task] ([Task_id], [Task_name], [Student_id], [Grade], [Gender], [Subject], [Demand], [Location], [State], [Upload_time], [appo_count], [Tel], [Payment], [Timedemend], [Teacher_id]) VALUES (15, N'洪都中大道景秀小区99号', 6, N'初三', N'男', N'物理,化学', N'希望教员物理化学都擅长', N'红谷滩区', N'进行中', CAST(N'2018-05-18 00:00:00.000' AS DateTime), 0, N'18942356809', N'50', N'周日一天', 1)
INSERT [dbo].[Task] ([Task_id], [Task_name], [Student_id], [Grade], [Gender], [Subject], [Demand], [Location], [State], [Upload_time], [appo_count], [Tel], [Payment], [Timedemend], [Teacher_id]) VALUES (17, N'系马桩街道罗家塘1号爱贝儿幼儿园', 7, N'初二', N'男', N'英语', N'希望教员是女生', N'八一广场', N'进行中', CAST(N'2018-05-19 00:00:00.000' AS DateTime), 0, N'18626268837', N'40', N'周六周日', 1)
INSERT [dbo].[Task] ([Task_id], [Task_name], [Student_id], [Grade], [Gender], [Subject], [Demand], [Location], [State], [Upload_time], [appo_count], [Tel], [Payment], [Timedemend], [Teacher_id]) VALUES (18, N'艾溪湖幸福花园内', 8, N'高一', N'男', N'数学,物理', N'希望教员是男生', N'高新区', N'进行中', CAST(N'2018-05-19 00:00:00.000' AS DateTime), 0, N'18465748003', N'40', N'周六周日', 7)
SET IDENTITY_INSERT [dbo].[Task] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (1, N'罗永浩', N'123456', N'luo@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (2, N'许岑', N'123456', N'xu@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (3, N'草威', N'123456', N'cao@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (4, N'邹伟', N'123456', N'zou@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (5, N'苗颖', N'123456', N'miao@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (6, N'朱萧木', N'123456', N'zhu@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (7, N'吴德周', N'123456', N'wu@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (8, N'方迟', N'123456', N'fang@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (9, N'罗子雄', N'123456', N'luo@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (10, N'韩梅梅', N'123456', N'han@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (11, N'刘芳', N'123456', N'liu@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (12, N'丁凯乐', N'123456', N'ding@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (13, N'罗玉凤', N'123456', N'feng@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (14, N'赵旭', N'123456', N'zhao@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (15, N'林志灵', N'123456', N'lin@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (16, N'黄景行', N'123456', N'huang@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (17, N'杨文昊', N'123456', N'yang@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (18, N'史建凯', N'123456', N'shi@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (19, N'程鹏', N'123456', N'cheng@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (20, N'章泽天', N'123456', N'zhang@qq.com', N'../Img/Icon/T.png')
INSERT [dbo].[Teacher] ([Teacher_id], [Tuser_name], [Tpwd], [Tmail], [Tphoto]) VALUES (21, N'范晶晶', N'123456', N'fan@qq.com', N'../Img/Icon/T.png')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET IDENTITY_INSERT [dbo].[TeacherInfo] ON 

INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (2, N'/Img/Icon/T.png', N'男', N'江西师范大学', N'英语', N'初中英语，初中历史', N'周六周日', N'高新区', N'我是罗永浩', NULL, N'50元每小时起', N'13170864298', N'1年家教经验', 1)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (10, N'/Img/Icon/T.png', N'女', N'江西教育学院', N'教育', N'小学数学，小学英语', N'周六周日', N'高新区', N'我是许岑', NULL, N'40元每小时起', N'13834277882', N'半年家教经验', 2)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (12, N'/Img/Icon/T.png', N'男', N'南昌师范学院', N'教育', N'初中数学，初中理综', N'周六除外', N'新建', N'我是草威', NULL, N'40元每小时起', N'15482739556', N'两年家教经验', 3)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (13, N'/Img/Icon/T.png', N'男', N'南昌大学', N'数学', N'初中数学，初中理综', N'周六周日', N'前湖', N'我是邹伟', NULL, N'35元每小时起', N'17723846385', N'一年家教经验', 4)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (15, N'/Img/Icon/T.png', N'女', N'江西财经大学', N'金融', N'小学英语，小学数学', N'周二周末', N'蛟桥', N'我是苗颖', NULL, N'40元每小时起', N'14837496657', N'半年家教经验', 5)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (17, N'/Img/Icon/T.png', N'男', N'江西师范大学', N'理电', N'高中数学，高中语文', N'周六周日', N'高新区', N'我是朱萧木', NULL, N'30元每小时起', N'15565454747', N'无家教经验', 6)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (19, N'/Img/Icon/T.png', N'男', N'江西农业大学', N'新闻', N'高中语文，高中理综', N'全周', N'下罗', N'我是吴德周', NULL, N'35元每小时起', N'18287889591', N'一年家教经验', 7)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (21, N'/Img/Icon/T.png', N'男', N'江西师范大学', N'地理', N'高中英语，初中英语', N'周六周日', N'高新区', N'我是方迟', NULL, N'60元每小时起', N'17773489042', N'一年家教经验', 8)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (22, N'/Img/Icon/T.png', N'男', N'南昌工程学院', N'通信', N'初中文综，小学数学', N'周六周日', N'高新区', N'我是罗子雄', NULL, N'35元每小时起', N'17723975573', N'半年家教经验', 9)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (25, N'/Img/Icon/T.png', N'女', N'江西师范大学', N'汉语言', N'小学语文，初中语文', N'周二周六', N'高新区', N'我是韩梅梅', NULL, N'40元每小时起', N'18211829877', N'一年家教经验', 10)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (26, N'/Img/Icon/T.png', N'女', N'南昌师范学院', N'小学教育', N'初中数学，高中理综', N'全周', N'新建', N'我是刘芳', NULL, N'30元每小时起', N'13527278387', N'半年家教经验', 11)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (34, N'/Img/Icon/T.png', N'男', N'华东交通大学', N'土木', N'小学语文，初中文综', N'周六周日', N'双港', N'我是丁凯乐', NULL, N'40元每小时起', N'13876542833', N'半年家教经验', 12)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (35, N'/Img/Icon/T.png', N'女', N'南昌大学', N'新闻学', N'小学舞蹈，初中舞蹈', N'全周', N'前湖', N'我是罗玉凤', NULL, N'35元每小时起', N'15537263836', N'一年家教经验', 13)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (37, N'/Img/Icon/T.png', N'男', N'江西财经大学', N'工程管理', N'小学乐器，初中乐器', N'周六周日', N'蛟桥', N'我是赵旭', NULL, N'40元每小时起', N'18727278947', N'半年家教经验', 14)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (38, N'/Img/Icon/T.png', N'女', N'南昌大学', N'传媒', N'英语,文综', N'周五周末', N'前湖', N'我是林志灵', NULL, N'40元每小时起', N'13622787253', N'一年半家教经验', 15)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (41, N'/Img/Icon/T.png', N'男', N'华东理工大学', N'物理', N'数学,物理', N'周一到周五', N'双港', N'我是黄景行', NULL, N'40元每小时起', N'17726368836', N'一年家教经验', 16)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (42, N'/Img/Icon/T.png', N'男', N'江西师范大学', N'软件', N'数学,化学', N'周六周日', N'高新区', N'我是杨文昊', NULL, N'40元每小时起', N'15827369466', N'半年家教经验', 17)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (44, N'/Img/Icon/T.png', N'男', N'江西师范大学', N'工商管理', N'数学', N'周一到周五', N'高新区', N'我是史建凯', NULL, N'35元每小时起', N'18927772836', N'一年家教经验', 18)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (45, N'/Img/Icon/T.png', N'男', N'东华理工大学', N'物流管理', N'数学,物理', N'周六周日', N'象湖', N'我是程鹏', NULL, N'40元每小时起', N'18836654453', N'两年家教经验', 19)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (48, N'/Img/Icon/T.png', N'女', N'江西财经大学', N'汉语言', N'英语,文综', N'周六周日', N'蛟桥', N'我是章泽甜', NULL, N'45元每小时起', N'15527358452', N'半年家教经验', 20)
INSERT [dbo].[TeacherInfo] ([Detail_id], [Ident_photo], [sex], [Studyat], [Major], [Available_subject], [Available_time], [Area], [Description], [Award], [Salary], [phone], [Experience], [Teaher_id]) VALUES (51, N'/Img/Icon/T.png', N'女', N'江西师范大学', N'传媒', N'英语,文综', N'周六周日', N'高新区', N'我是范晶晶', NULL, N'40元每小时起', N'18375094737', N'一年家教经验', 21)
SET IDENTITY_INSERT [dbo].[TeacherInfo] OFF
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_appointment] FOREIGN KEY([Task_id])
REFERENCES [dbo].[Task] ([Task_id])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_appointment]
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_Teacher] FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[Teacher] ([Teacher_id])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_Teacher]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Comment] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Comment]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Teacher] FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[Teacher] ([Teacher_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Teacher]
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD  CONSTRAINT [FK_courses_courses] FOREIGN KEY([Grade_id])
REFERENCES [dbo].[grade] ([Grade_id])
GO
ALTER TABLE [dbo].[courses] CHECK CONSTRAINT [FK_courses_courses]
GO
ALTER TABLE [dbo].[Exhibition]  WITH CHECK ADD  CONSTRAINT [FK_Exhibition_Teacher] FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[Teacher] ([Teacher_id])
GO
ALTER TABLE [dbo].[Exhibition] CHECK CONSTRAINT [FK_Exhibition_Teacher]
GO
ALTER TABLE [dbo].[indent]  WITH CHECK ADD  CONSTRAINT [FK_indent_indent] FOREIGN KEY([Course_id])
REFERENCES [dbo].[courses] ([Course_id])
GO
ALTER TABLE [dbo].[indent] CHECK CONSTRAINT [FK_indent_indent]
GO
ALTER TABLE [dbo].[indent]  WITH CHECK ADD  CONSTRAINT [FK_indent_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[indent] CHECK CONSTRAINT [FK_indent_Student]
GO
ALTER TABLE [dbo].[Sample]  WITH CHECK ADD  CONSTRAINT [FK_Sample_Teacher] FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[Teacher] ([Teacher_id])
GO
ALTER TABLE [dbo].[Sample] CHECK CONSTRAINT [FK_Sample_Teacher]
GO
ALTER TABLE [dbo].[subject]  WITH CHECK ADD  CONSTRAINT [FK_subject_grade] FOREIGN KEY([Grade_id])
REFERENCES [dbo].[grade] ([Grade_id])
GO
ALTER TABLE [dbo].[subject] CHECK CONSTRAINT [FK_subject_grade]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Student]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Teacher] FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[Teacher] ([Teacher_id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Teacher]
GO
ALTER TABLE [dbo].[TeacherInfo]  WITH CHECK ADD  CONSTRAINT [FK_TeacherInfo_Teacher] FOREIGN KEY([Teaher_id])
REFERENCES [dbo].[Teacher] ([Teacher_id])
GO
ALTER TABLE [dbo].[TeacherInfo] CHECK CONSTRAINT [FK_TeacherInfo_Teacher]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[37] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Exhibition"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sample"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 126
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Teacher"
            Begin Extent = 
               Top = 6
               Left = 416
               Bottom = 145
               Right = 574
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TeacherInfo"
            Begin Extent = 
               Top = 6
               Left = 612
               Bottom = 145
               Right = 799
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Tuser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Tuser'
GO
USE [master]
GO
ALTER DATABASE [Tutor] SET  READ_WRITE 
GO
