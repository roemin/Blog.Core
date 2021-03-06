USE [WMBlogDB]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 2/28/2019 5:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[ParentId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[LinkUrl] [nvarchar](100) NULL,
	[Area] [nvarchar](max) NULL,
	[Controller] [nvarchar](max) NULL,
	[Action] [nvarchar](max) NULL,
	[Icon] [nvarchar](100) NULL,
	[Code] [nvarchar](10) NULL,
	[OrderSort] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsMenu] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModulePermission]    Script Date: 2/28/2019 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModulePermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[ModuleId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ModulePermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 2/28/2019 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[OrderSort] [int] NOT NULL,
	[Mid] [int] NULL,
	[Pid] [int] NULL,
	[IsButton] [bit] NULL,
	[Icon] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[Enabled] [bit] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Permission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/28/2019 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[OrderSort] [int] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleModulePermission]    Script Date: 2/28/2019 5:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleModulePermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[RoleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[PermissionId] [int] NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.RoleModulePermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 2/28/2019 5:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CreateId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyId] [int] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Module] ON 

INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, NULL, N'values接口', N'/api/values', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, NULL, N'claims的接口', N'/api/claims', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, 0, NULL, N'UserRole接口', N'/api/UserRole', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, NULL, N'', N'/api/v2/Apb/apbs', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (11, 0, NULL, N'修改 tibug 文章', N'/api/TopicDetail/update', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (12, 0, NULL, N'删除tibug文章', N'/api/TopicDetail/delete', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (13, 0, NULL, N'获取用户', N'/api/user/get', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (14, 0, NULL, N'获取用户详情', N'/api/user/get/\d+', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (15, 1, NULL, N'角色接口', N'/api/role', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-20T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (16, 0, NULL, N'添加用户', N'/api/user/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (17, 0, NULL, N'删除用户', N'/api/user/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (18, 0, NULL, N'修改用户', N'/api/user/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (19, 0, NULL, N'获取api接口', N'/api/module/get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (20, 0, NULL, N'删除api接口', N'/api/module/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (21, 0, NULL, N'修改api接口', N'/api/module/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (22, 0, NULL, N'添加api接口', N'/api/module/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (23, 0, NULL, N'获取菜单', N'/api/permission/get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (24, 0, NULL, N'删除菜单', N'/api/permission/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (25, 0, NULL, N'修改菜单', N'/api/permission/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (26, 0, NULL, N'添加菜单', N'/api/permission/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (27, 0, NULL, N'获取菜单树', N'/api/permission/getpermissiontree', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (28, 0, NULL, N'获取角色', N'/api/role/get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (29, 0, NULL, N'删除角色', N'/api/role/delete', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (30, 0, NULL, N'修改角色', N'/api/role/put', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (31, 0, NULL, N'添加角色', N'/api/role/post', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (32, 0, NULL, N'获取bug', N'/api/TopicDetail/Get', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (33, 0, NULL, N'获取博客', N'/api/Blog', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (34, 0, NULL, N'保存分配', N'/api/permission/Assign', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Module] ([Id], [IsDeleted], [ParentId], [Name], [LinkUrl], [Area], [Controller], [Action], [Icon], [Code], [OrderSort], [Description], [IsMenu], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (35, 0, NULL, N'Get导航条', N'/api/permission/GetNavigationBar', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 23, N'后台总管理员', CAST(N'2019-02-25T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Module] OFF
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, N'/', N'QQ欢迎页', 0, 0, 0, 0, N'fa-qq', N'33', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, N'/', N'用户角色管理', 0, 0, 0, 0, N'fa-users', N'11', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, N'/Admin/Roles', N'角色管理', 0, 28, 2, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, N'/Admin/Users', N'用户管理', 0, 13, 2, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 0, N'/', N'菜单权限管理', 0, 0, 0, 0, N'fa-sitemap', N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, N'/Permission/Modules', N'接口管理', 0, 19, 5, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, N'/Permission/Menu', N'菜单管理', 0, 23, 5, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, N'/Thanks', N'致谢页', 10, 0, 0, 0, N'fa-star ', N'', 1, 18, N'提bug账号', CAST(N'2019-02-21T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, 0, N'无', N'查询', 0, 13, 3, 1, NULL, N'这个用户页的查询按钮', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, N'/', N'报表管理', 0, 0, 0, 0, N'fa-line-chart', N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (11, 0, N'/Chart/From', N'表单', 0, 0, 10, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (12, 0, N'/Chart/Charts', N'图表', 0, 0, 10, 0, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (13, 0, N' ', N'新增', 0, 16, 3, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (14, 0, N' ', N'编辑', 0, 18, 3, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (15, 0, N' ', N'删除', 0, 17, 3, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (16, 0, N' ', N'查询', 0, 28, 4, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (17, 0, N' ', N'新增', 0, 31, 4, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (18, 0, N' ', N'编辑', 0, 30, 4, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (19, 0, N' ', N'删除', 0, 29, 4, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (20, 0, N' ', N'查询', 0, 19, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (21, 0, N' ', N'新增', 0, 22, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (22, 0, N' ', N'编辑', 0, 21, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (23, 0, N' ', N'删除', 0, 20, 6, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (24, 0, N' ', N'查询', 0, 23, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (25, 0, N' ', N'新增', 0, 26, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (26, 0, N' ', N'编辑', 0, 25, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (27, 0, N' ', N'删除', 0, 24, 7, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (28, 0, N'/Tibug', N'问题管理', 0, 32, 0, 0, N'fa-bug', N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (29, 0, N'/Blogs', N'博客管理', 0, 33, 0, 0, N'fa-file-word-o', N'', 1, 18, N'提bug账号', CAST(N'2019-02-22T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (30, 0, N' ', N'编辑', 0, 11, 28, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (31, 0, N' ', N'删除', 0, 12, 28, 1, NULL, N'', 1, 18, N'提bug账号', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (32, 0, N' ', N'查询', 0, 32, 28, 1, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (33, 0, N' ', N'菜单树', 0, 27, 7, 1, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (34, 0, N'/Permission/Assign', N'权限分配', 0, 0, 5, 0, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (35, 0, N' ', N'保存权限', 0, 34, 34, 1, NULL, N'', 1, 23, N'后台总管理员', CAST(N'2019-02-25T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Permission] ([Id], [IsDeleted], [Code], [Name], [OrderSort], [Mid], [Pid], [IsButton], [Icon], [Description], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (36, 0, N' ', N'左侧导航', 0, 35, 7, 1, N'', N'', 1, 23, N'后台总管理员', CAST(N'2019-02-25T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Permission] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, N'Admin', N'普通管理', 1, 1, NULL, NULL, CAST(N'2018-11-02T00:34:40.290' AS DateTime), NULL, NULL, CAST(N'2018-11-02T00:34:40.293' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, N'System', N'系统管理', 1, 1, NULL, NULL, CAST(N'2018-11-02T00:34:40.290' AS DateTime), NULL, NULL, CAST(N'2018-11-02T00:34:40.293' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, N'Tibug', N'tibug系统管理', 1, 1, NULL, NULL, CAST(N'2018-11-02T00:34:40.290' AS DateTime), NULL, NULL, CAST(N'2018-11-02T00:34:40.293' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, N'SuperAdmin', N'超级管理', 0, 1, 23, N'blogadmin', CAST(N'2019-02-18T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-02-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 1, N'AdminTest', NULL, 1, 1, 18, N'提bug账号', CAST(N'2019-02-19T15:31:31.227' AS DateTime), NULL, NULL, CAST(N'2019-02-19T15:31:31.227' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, N'AdminTest', N'测试管理', 1, 1, 23, N'后台总管理员', CAST(N'2019-02-19T15:32:42.183' AS DateTime), NULL, NULL, CAST(N'2019-02-19T15:32:42.183' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, N'AdminTest2', N'测试管理2', 1, 1, 23, N'后台总管理员', CAST(N'2019-02-26T11:01:23.223' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:01:23.223' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, NULL, N'211', N'', 1, 1, NULL, NULL, CAST(N'2019-02-27T12:02:05.467' AS DateTime), NULL, NULL, CAST(N'2019-02-27T12:02:05.467' AS DateTime))
INSERT [dbo].[Role] ([Id], [IsDeleted], [Name], [Description], [OrderSort], [Enabled], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, NULL, N'2', N'', 1, 1, NULL, NULL, CAST(N'2019-02-28T09:38:08.527' AS DateTime), NULL, NULL, CAST(N'2019-02-28T09:38:08.527' AS DateTime))
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[RoleModulePermission] ON 

INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 0, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, 3, 11, 30, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (7, 0, 3, 12, 31, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, 3, 13, 9, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, 3, 32, 28, NULL, NULL, CAST(N'2019-02-23T19:22:46.473' AS DateTime), NULL, NULL, CAST(N'2019-02-23T19:22:46.473' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (14, 0, 4, 13, 3, NULL, NULL, CAST(N'2019-02-23T20:04:23.867' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:23.867' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (15, 0, 4, 13, 9, NULL, NULL, CAST(N'2019-02-23T20:04:23.973' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:23.973' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (16, 0, 4, 16, 13, NULL, NULL, CAST(N'2019-02-23T20:04:24.000' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:24.000' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (17, 0, 4, 18, 14, NULL, NULL, CAST(N'2019-02-23T20:04:24.037' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:24.037' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (18, 0, 4, 17, 15, NULL, NULL, CAST(N'2019-02-23T20:04:24.067' AS DateTime), NULL, NULL, CAST(N'2019-02-23T20:04:24.067' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (27, 0, 4, 0, 2, NULL, NULL, CAST(N'2019-02-23T21:00:30.703' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:30.703' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (28, 0, 4, 28, 4, NULL, NULL, CAST(N'2019-02-23T21:00:30.987' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:30.987' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (29, 0, 4, 28, 16, NULL, NULL, CAST(N'2019-02-23T21:00:31.010' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.010' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (30, 0, 4, 31, 17, NULL, NULL, CAST(N'2019-02-23T21:00:31.030' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.030' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (31, 0, 4, 30, 18, NULL, NULL, CAST(N'2019-02-23T21:00:31.053' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.053' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (32, 0, 4, 29, 19, NULL, NULL, CAST(N'2019-02-23T21:00:31.083' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:31.083' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (33, 0, 4, 0, 1, NULL, NULL, CAST(N'2019-02-23T21:00:55.233' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.233' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (34, 0, 4, 0, 5, NULL, NULL, CAST(N'2019-02-23T21:00:55.253' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.253' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (35, 0, 4, 19, 6, NULL, NULL, CAST(N'2019-02-23T21:00:55.277' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.277' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (36, 0, 4, 19, 20, NULL, NULL, CAST(N'2019-02-23T21:00:55.297' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.297' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (37, 0, 4, 22, 21, NULL, NULL, CAST(N'2019-02-23T21:00:55.317' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.317' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (38, 0, 4, 21, 22, NULL, NULL, CAST(N'2019-02-23T21:00:55.340' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.340' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (39, 0, 4, 20, 23, NULL, NULL, CAST(N'2019-02-23T21:00:55.360' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.360' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (40, 0, 4, 23, 7, NULL, NULL, CAST(N'2019-02-23T21:00:55.383' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.383' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (41, 0, 4, 23, 24, NULL, NULL, CAST(N'2019-02-23T21:00:55.407' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.407' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (42, 0, 4, 26, 25, NULL, NULL, CAST(N'2019-02-23T21:00:55.430' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.430' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (43, 0, 4, 25, 26, NULL, NULL, CAST(N'2019-02-23T21:00:55.450' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.450' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (44, 0, 4, 24, 27, NULL, NULL, CAST(N'2019-02-23T21:00:55.470' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:00:55.470' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (45, 0, 4, 0, 8, NULL, NULL, CAST(N'2019-02-23T21:01:03.630' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.630' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (46, 0, 4, 0, 10, NULL, NULL, CAST(N'2019-02-23T21:01:03.653' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.653' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (47, 0, 4, 0, 11, NULL, NULL, CAST(N'2019-02-23T21:01:03.673' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.673' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (48, 0, 4, 0, 12, NULL, NULL, CAST(N'2019-02-23T21:01:03.697' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.697' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (49, 0, 4, 32, 28, NULL, NULL, CAST(N'2019-02-23T21:01:03.720' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.720' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (50, 0, 4, 11, 30, NULL, NULL, CAST(N'2019-02-23T21:01:03.747' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.747' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (51, 0, 4, 12, 31, NULL, NULL, CAST(N'2019-02-23T21:01:03.770' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.770' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (52, 0, 4, 33, 29, NULL, NULL, CAST(N'2019-02-23T21:01:03.790' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:01:03.790' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (53, 0, 4, 32, 32, NULL, NULL, CAST(N'2019-02-23T21:20:14.093' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:20:14.093' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (66, 0, 6, 0, 1, NULL, NULL, CAST(N'2019-02-23T21:34:27.543' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.543' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (71, 0, 6, 0, 8, NULL, NULL, CAST(N'2019-02-23T21:34:27.670' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.670' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (72, 0, 6, 0, 10, NULL, NULL, CAST(N'2019-02-23T21:34:27.693' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.693' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (73, 0, 6, 0, 11, NULL, NULL, CAST(N'2019-02-23T21:34:27.713' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.713' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (74, 0, 6, 0, 12, NULL, NULL, CAST(N'2019-02-23T21:34:27.750' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.750' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (76, 0, 6, 33, 29, NULL, NULL, CAST(N'2019-02-23T21:34:27.803' AS DateTime), NULL, NULL, CAST(N'2019-02-23T21:34:27.803' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (79, 0, 6, 0, 2, NULL, NULL, CAST(N'2019-02-25T00:25:33.150' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.150' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (80, 0, 6, 13, 3, NULL, NULL, CAST(N'2019-02-25T00:25:33.230' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.230' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (81, 0, 6, 28, 4, NULL, NULL, CAST(N'2019-02-25T00:25:33.247' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.247' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (82, 0, 6, 0, 5, NULL, NULL, CAST(N'2019-02-25T00:25:33.270' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.270' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (83, 0, 6, 19, 6, NULL, NULL, CAST(N'2019-02-25T00:25:33.290' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.290' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (84, 0, 6, 23, 7, NULL, NULL, CAST(N'2019-02-25T00:25:33.313' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.313' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (86, 0, 6, 32, 28, NULL, NULL, CAST(N'2019-02-25T00:25:33.360' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:25:33.360' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (87, 0, 4, 34, 34, NULL, NULL, CAST(N'2019-02-25T00:27:12.167' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:12.167' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (88, 0, 4, 27, 33, NULL, NULL, CAST(N'2019-02-25T00:27:12.187' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:12.187' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (89, 0, 6, 13, 9, NULL, NULL, CAST(N'2019-02-25T00:27:51.850' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.850' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (90, 0, 6, 28, 16, NULL, NULL, CAST(N'2019-02-25T00:27:51.867' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.867' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (91, 0, 6, 19, 20, NULL, NULL, CAST(N'2019-02-25T00:27:51.887' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.887' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (92, 0, 6, 23, 24, NULL, NULL, CAST(N'2019-02-25T00:27:51.907' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.907' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (93, 0, 6, 32, 32, NULL, NULL, CAST(N'2019-02-25T00:27:51.927' AS DateTime), NULL, NULL, CAST(N'2019-02-25T00:27:51.927' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (95, 0, 4, 34, 35, NULL, NULL, CAST(N'2019-02-25T01:26:32.940' AS DateTime), NULL, NULL, CAST(N'2019-02-25T01:26:32.940' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (96, 0, 6, 27, 33, NULL, NULL, CAST(N'2019-02-25T01:27:59.570' AS DateTime), NULL, NULL, CAST(N'2019-02-25T01:27:59.570' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (98, 0, 4, 35, 36, NULL, NULL, CAST(N'2019-02-25T14:28:41.340' AS DateTime), NULL, NULL, CAST(N'2019-02-25T14:28:41.340' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (99, 0, 6, 0, 34, NULL, NULL, CAST(N'2019-02-25T16:55:56.397' AS DateTime), NULL, NULL, CAST(N'2019-02-25T16:55:56.397' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (100, 0, 7, 0, 1, NULL, NULL, CAST(N'2019-02-26T11:31:34.077' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:34.077' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (101, 0, 7, 0, 2, NULL, NULL, CAST(N'2019-02-26T11:31:34.723' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:34.723' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (102, 0, 7, 13, 4, NULL, NULL, CAST(N'2019-02-26T11:31:35.073' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:35.073' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (105, 0, 7, 0, 10, NULL, NULL, CAST(N'2019-02-26T11:31:36.093' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:36.093' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (106, 0, 7, 0, 12, NULL, NULL, CAST(N'2019-02-26T11:31:36.430' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:36.430' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (107, 0, 7, 0, 8, NULL, NULL, CAST(N'2019-02-26T11:31:36.773' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:36.773' AS DateTime))
INSERT [dbo].[RoleModulePermission] ([Id], [IsDeleted], [RoleId], [ModuleId], [PermissionId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (108, 0, 7, 28, 16, NULL, NULL, CAST(N'2019-02-26T11:31:37.110' AS DateTime), NULL, NULL, CAST(N'2019-02-26T11:31:37.110' AS DateTime))
SET IDENTITY_INSERT [dbo].[RoleModulePermission] OFF
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (1, 0, 15, 1, NULL, NULL, CAST(N'2018-11-02T00:51:25.060' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (2, 0, 14, 2, NULL, NULL, CAST(N'2018-11-02T00:51:25.060' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (3, 0, 18, 3, NULL, NULL, CAST(N'2018-11-02T00:51:25.060' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (4, 0, 23, 4, 23, NULL, CAST(N'2019-02-18T23:53:26.423' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (5, 0, 1, 2, 1, NULL, CAST(N'2019-02-19T00:20:44.190' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (6, 0, 1, 1, 1, NULL, CAST(N'2019-02-19T00:20:54.087' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (8, 0, 13, 1, 13, NULL, CAST(N'2019-02-19T00:21:53.173' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (9, 0, 19, 6, 19, NULL, CAST(N'2019-02-25T00:38:05.700' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[UserRole] ([Id], [IsDeleted], [UserId], [RoleId], [CreateId], [CreateBy], [CreateTime], [ModifyId], [ModifyBy], [ModifyTime]) VALUES (10, 0, 24, 7, 24, NULL, CAST(N'2019-02-26T11:15:19.433' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
ALTER TABLE [dbo].[Module]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Module_dbo.Module_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Module] ([Id])
GO
ALTER TABLE [dbo].[Module] CHECK CONSTRAINT [FK_dbo.Module_dbo.Module_ParentId]
GO
ALTER TABLE [dbo].[ModulePermission]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModulePermission_dbo.Module_ModuleId] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModulePermission] CHECK CONSTRAINT [FK_dbo.ModulePermission_dbo.Module_ModuleId]
GO
ALTER TABLE [dbo].[ModulePermission]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModulePermission_dbo.Permission_PermissionId] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModulePermission] CHECK CONSTRAINT [FK_dbo.ModulePermission_dbo.Permission_PermissionId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRole_dbo.Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_dbo.UserRole_dbo.Role_RoleId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRole_dbo.sysUserInfo_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[sysUserInfo] ([uID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_dbo.UserRole_dbo.sysUserInfo_UserId]
GO
