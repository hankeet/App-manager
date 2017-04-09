
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/09/2017 16:09:06
-- Generated from EDMX file: F:\大创\App2\App-manager\App-manager.Model\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [JianZhi];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[fk_gongzuoqiuzhi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengQiuZhi] DROP CONSTRAINT [fk_gongzuoqiuzhi];
GO
IF OBJECT_ID(N'[dbo].[fk_haoyou]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HaoYouXinXi] DROP CONSTRAINT [fk_haoyou];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiagongzuozhaopin]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShangJiaZhaoPin] DROP CONSTRAINT [fk_shangjiagongzuozhaopin];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiaguanggao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShangJiaGuangGao] DROP CONSTRAINT [fk_shangjiaguanggao];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiajiaoyijilu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShangJiaJiaoYiJiLu] DROP CONSTRAINT [fk_shangjiajiaoyijilu];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiaqiuzhi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengQiuZhi] DROP CONSTRAINT [fk_shangjiaqiuzhi];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshenggongzuozhaopin]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengZhaoPin] DROP CONSTRAINT [fk_xueshenggongzuozhaopin];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengjiaoyijilu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengJiaoYiJiLu] DROP CONSTRAINT [fk_xueshengjiaoyijilu];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengkecheng]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KeCheng] DROP CONSTRAINT [fk_xueshengkecheng];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengqiuzhi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengQiuZhi] DROP CONSTRAINT [fk_xueshengqiuzhi];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucanggongzuo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangGongZuo] DROP CONSTRAINT [fk_xueshengshoucanggongzuo];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucangs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangShangJia] DROP CONSTRAINT [fk_xueshengshoucangs];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucangshangjia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangShangJia] DROP CONSTRAINT [fk_xueshengshoucangshangjia];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucangz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangGongZuo] DROP CONSTRAINT [fk_xueshengshoucangz];
GO
IF OBJECT_ID(N'[dbo].[fk_zuduigongzuo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HaoYouXinXi] DROP CONSTRAINT [fk_zuduigongzuo];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[GongZuo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GongZuo];
GO
IF OBJECT_ID(N'[dbo].[HaoYouXinXi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HaoYouXinXi];
GO
IF OBJECT_ID(N'[dbo].[KeCheng]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KeCheng];
GO
IF OBJECT_ID(N'[dbo].[ShangJiaGuangGao]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShangJiaGuangGao];
GO
IF OBJECT_ID(N'[dbo].[ShangJiaJiaoYiJiLu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShangJiaJiaoYiJiLu];
GO
IF OBJECT_ID(N'[dbo].[ShangJiaXinXi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShangJiaXinXi];
GO
IF OBJECT_ID(N'[dbo].[ShangJiaZhaoPin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShangJiaZhaoPin];
GO
IF OBJECT_ID(N'[dbo].[ShouCangGongZuo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShouCangGongZuo];
GO
IF OBJECT_ID(N'[dbo].[ShouCangShangJia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShouCangShangJia];
GO
IF OBJECT_ID(N'[dbo].[XueShengJiaoYiJiLu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengJiaoYiJiLu];
GO
IF OBJECT_ID(N'[dbo].[XueShengQiuZhi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengQiuZhi];
GO
IF OBJECT_ID(N'[dbo].[XueShengXinXi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengXinXi];
GO
IF OBJECT_ID(N'[dbo].[XueShengZhaoPin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengZhaoPin];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'GongZuo'
CREATE TABLE [dbo].[GongZuo] (
    [id] int IDENTITY(1,1) NOT NULL,
    [shangjialeixing] varchar(20)  NOT NULL,
    [qiuzhi] varchar(2)  NOT NULL,
    [shijian] datetime  NULL
);
GO

-- Creating table 'HaoYouXinXi'
CREATE TABLE [dbo].[HaoYouXinXi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueshengid] int  NOT NULL,
    [liaotian] varchar(max)  NULL,
    [jiaoyoushijian] datetime  NOT NULL,
    [zuduicishu] int  NULL,
    [zuduigongzuo] int  NULL
);
GO

-- Creating table 'KeCheng'
CREATE TABLE [dbo].[KeCheng] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueshengid] int  NOT NULL,
    [xuexiao] varchar(50)  NOT NULL,
    [xuehao] varchar(30)  NOT NULL,
    [xuehaopass] varchar(50)  NOT NULL,
    [yi] varchar(max)  NULL,
    [er] varchar(max)  NULL,
    [san] varchar(max)  NULL,
    [si] varchar(max)  NULL,
    [wu] varchar(max)  NULL,
    [liu] varchar(max)  NULL,
    [qi] varchar(max)  NULL
);
GO

-- Creating table 'ShangJiaGuangGao'
CREATE TABLE [dbo].[ShangJiaGuangGao] (
    [id] int IDENTITY(1,1) NOT NULL,
    [sahngjianame] varchar(30)  NOT NULL,
    [shangjiaid] int  NOT NULL,
    [neirong] varchar(max)  NULL,
    [tupian] varbinary(max)  NULL
);
GO

-- Creating table 'ShangJiaJiaoYiJiLu'
CREATE TABLE [dbo].[ShangJiaJiaoYiJiLu] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [shangjiaid] int  NOT NULL,
    [jilu] varchar(max)  NULL,
    [wancheng] varchar(2)  NOT NULL,
    [pingjia] varchar(max)  NULL,
    [wanchengjiaoyishijian] datetime  NULL
);
GO

-- Creating table 'ShangJiaXinXi'
CREATE TABLE [dbo].[ShangJiaXinXi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongsi] varchar(30)  NULL,
    [fuzeren] varchar(30)  NULL,
    [zhengjianhao] varchar(18)  NULL,
    [head_image] varbinary(max)  NULL,
    [phone] varchar(11)  NOT NULL,
    [pass] varchar(30)  NOT NULL,
    [xukezheng] varbinary(max)  NULL,
    [huiyuan] varchar(2)  NOT NULL,
    [dizhi] varchar(100)  NULL,
    [tongguo] varchar(2)  NOT NULL,
    [leixing] varchar(200)  NULL,
    [zaopincishu] int  NOT NULL,
    [xingyong] int  NOT NULL,
    [qq] varchar(20)  NULL,
    [weixin] varchar(20)  NULL,
    [day_login] datetime  NOT NULL
);
GO

-- Creating table 'ShangJiaZhaoPin'
CREATE TABLE [dbo].[ShangJiaZhaoPin] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongzuoid] int  NOT NULL,
    [name] varchar(30)  NOT NULL,
    [yaoqiu] varchar(50)  NOT NULL,
    [neirong] varchar(max)  NOT NULL,
    [xiangqing] varchar(max)  NOT NULL,
    [fabushijian] datetime  NULL,
    [yingpinqingkuang] varchar(max)  NULL,
    [luyongqingkuang] varchar(max)  NULL,
    [chengliqingkuang] varchar(max)  NULL,
    [zhaoman] varchar(2)  NOT NULL
);
GO

-- Creating table 'ShouCangGongZuo'
CREATE TABLE [dbo].[ShouCangGongZuo] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueshengid] int  NOT NULL,
    [gongzuoid] int  NOT NULL,
    [shijian] datetime  NOT NULL,
    [shixiao] varchar(2)  NULL
);
GO

-- Creating table 'ShouCangShangJia'
CREATE TABLE [dbo].[ShouCangShangJia] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueshengid] int  NOT NULL,
    [shangjiaid] int  NOT NULL,
    [shijian] datetime  NOT NULL,
    [shixiao] varchar(2)  NULL
);
GO

-- Creating table 'XueShengJiaoYiJiLu'
CREATE TABLE [dbo].[XueShengJiaoYiJiLu] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueshengid] int  NOT NULL,
    [jilu] varchar(max)  NULL,
    [wancheng] varchar(2)  NOT NULL,
    [pingjia] varchar(max)  NULL,
    [wanchengjiaoyishijian] datetime  NULL,
    [kejian] varchar(2)  NOT NULL
);
GO

-- Creating table 'XueShengQiuZhi'
CREATE TABLE [dbo].[XueShengQiuZhi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongzuoid] int  NOT NULL,
    [name] varchar(30)  NOT NULL,
    [titie] varchar(50)  NOT NULL,
    [xinxi] varchar(max)  NOT NULL,
    [fabushijian] datetime  NOT NULL,
    [xueshengid] int  NOT NULL,
    [shangjiaid] int  NOT NULL,
    [zhongyishangjia] varchar(max)  NULL,
    [xuanze商家] varchar(max)  NULL,
    [chenglishijian] datetime  NULL
);
GO

-- Creating table 'XueShengXinXi'
CREATE TABLE [dbo].[XueShengXinXi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NULL,
    [head_image] varbinary(max)  NULL,
    [phone] varchar(11)  NOT NULL,
    [pass] varchar(30)  NOT NULL,
    [huiyuan] varchar(2)  NULL,
    [dizhi] varchar(100)  NULL,
    [chushengriqi] datetime  NULL,
    [leixing] varchar(200)  NULL,
    [shoucangshangjia] varchar(max)  NULL,
    [收藏gongzuo] varchar(max)  NULL,
    [cishu] int  NULL,
    [xingyong] int  NULL,
    [shangjia] varchar(2)  NULL,
    [qq] varchar(20)  NULL,
    [weixin] varchar(20)  NULL,
    [day_login] datetime  NULL
);
GO

-- Creating table 'XueShengZhaoPin'
CREATE TABLE [dbo].[XueShengZhaoPin] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongzuoid] int  NOT NULL,
    [name] varchar(30)  NOT NULL,
    [yaoqiu] varchar(50)  NOT NULL,
    [neirong] varchar(max)  NOT NULL,
    [xiangqing] varchar(max)  NOT NULL,
    [fabushijian] datetime  NULL,
    [yingpinqingkuang] varchar(max)  NULL,
    [luyongqingkuang] varchar(max)  NULL,
    [chengliqingkuang] varchar(max)  NULL,
    [zhaoman] varchar(2)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'GongZuo'
ALTER TABLE [dbo].[GongZuo]
ADD CONSTRAINT [PK_GongZuo]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'HaoYouXinXi'
ALTER TABLE [dbo].[HaoYouXinXi]
ADD CONSTRAINT [PK_HaoYouXinXi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'KeCheng'
ALTER TABLE [dbo].[KeCheng]
ADD CONSTRAINT [PK_KeCheng]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShangJiaGuangGao'
ALTER TABLE [dbo].[ShangJiaGuangGao]
ADD CONSTRAINT [PK_ShangJiaGuangGao]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShangJiaJiaoYiJiLu'
ALTER TABLE [dbo].[ShangJiaJiaoYiJiLu]
ADD CONSTRAINT [PK_ShangJiaJiaoYiJiLu]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShangJiaXinXi'
ALTER TABLE [dbo].[ShangJiaXinXi]
ADD CONSTRAINT [PK_ShangJiaXinXi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShangJiaZhaoPin'
ALTER TABLE [dbo].[ShangJiaZhaoPin]
ADD CONSTRAINT [PK_ShangJiaZhaoPin]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShouCangGongZuo'
ALTER TABLE [dbo].[ShouCangGongZuo]
ADD CONSTRAINT [PK_ShouCangGongZuo]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShouCangShangJia'
ALTER TABLE [dbo].[ShouCangShangJia]
ADD CONSTRAINT [PK_ShouCangShangJia]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengJiaoYiJiLu'
ALTER TABLE [dbo].[XueShengJiaoYiJiLu]
ADD CONSTRAINT [PK_XueShengJiaoYiJiLu]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengQiuZhi'
ALTER TABLE [dbo].[XueShengQiuZhi]
ADD CONSTRAINT [PK_XueShengQiuZhi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengXinXi'
ALTER TABLE [dbo].[XueShengXinXi]
ADD CONSTRAINT [PK_XueShengXinXi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengZhaoPin'
ALTER TABLE [dbo].[XueShengZhaoPin]
ADD CONSTRAINT [PK_XueShengZhaoPin]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [gongzuoid] in table 'XueShengQiuZhi'
ALTER TABLE [dbo].[XueShengQiuZhi]
ADD CONSTRAINT [fk_gongzuoqiuzhi]
    FOREIGN KEY ([gongzuoid])
    REFERENCES [dbo].[GongZuo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_gongzuoqiuzhi'
CREATE INDEX [IX_fk_gongzuoqiuzhi]
ON [dbo].[XueShengQiuZhi]
    ([gongzuoid]);
GO

-- Creating foreign key on [gongzuoid] in table 'ShangJiaZhaoPin'
ALTER TABLE [dbo].[ShangJiaZhaoPin]
ADD CONSTRAINT [fk_shangjiagongzuozhaopin]
    FOREIGN KEY ([gongzuoid])
    REFERENCES [dbo].[GongZuo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_shangjiagongzuozhaopin'
CREATE INDEX [IX_fk_shangjiagongzuozhaopin]
ON [dbo].[ShangJiaZhaoPin]
    ([gongzuoid]);
GO

-- Creating foreign key on [gongzuoid] in table 'XueShengZhaoPin'
ALTER TABLE [dbo].[XueShengZhaoPin]
ADD CONSTRAINT [fk_xueshenggongzuozhaopin]
    FOREIGN KEY ([gongzuoid])
    REFERENCES [dbo].[GongZuo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshenggongzuozhaopin'
CREATE INDEX [IX_fk_xueshenggongzuozhaopin]
ON [dbo].[XueShengZhaoPin]
    ([gongzuoid]);
GO

-- Creating foreign key on [gongzuoid] in table 'ShouCangGongZuo'
ALTER TABLE [dbo].[ShouCangGongZuo]
ADD CONSTRAINT [fk_xueshengshoucanggongzuo]
    FOREIGN KEY ([gongzuoid])
    REFERENCES [dbo].[GongZuo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshengshoucanggongzuo'
CREATE INDEX [IX_fk_xueshengshoucanggongzuo]
ON [dbo].[ShouCangGongZuo]
    ([gongzuoid]);
GO

-- Creating foreign key on [zuduigongzuo] in table 'HaoYouXinXi'
ALTER TABLE [dbo].[HaoYouXinXi]
ADD CONSTRAINT [fk_zuduigongzuo]
    FOREIGN KEY ([zuduigongzuo])
    REFERENCES [dbo].[GongZuo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_zuduigongzuo'
CREATE INDEX [IX_fk_zuduigongzuo]
ON [dbo].[HaoYouXinXi]
    ([zuduigongzuo]);
GO

-- Creating foreign key on [xueshengid] in table 'HaoYouXinXi'
ALTER TABLE [dbo].[HaoYouXinXi]
ADD CONSTRAINT [fk_haoyou]
    FOREIGN KEY ([xueshengid])
    REFERENCES [dbo].[XueShengXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_haoyou'
CREATE INDEX [IX_fk_haoyou]
ON [dbo].[HaoYouXinXi]
    ([xueshengid]);
GO

-- Creating foreign key on [xueshengid] in table 'KeCheng'
ALTER TABLE [dbo].[KeCheng]
ADD CONSTRAINT [fk_xueshengkecheng]
    FOREIGN KEY ([xueshengid])
    REFERENCES [dbo].[XueShengXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshengkecheng'
CREATE INDEX [IX_fk_xueshengkecheng]
ON [dbo].[KeCheng]
    ([xueshengid]);
GO

-- Creating foreign key on [shangjiaid] in table 'ShangJiaGuangGao'
ALTER TABLE [dbo].[ShangJiaGuangGao]
ADD CONSTRAINT [fk_shangjiaguanggao]
    FOREIGN KEY ([shangjiaid])
    REFERENCES [dbo].[ShangJiaXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_shangjiaguanggao'
CREATE INDEX [IX_fk_shangjiaguanggao]
ON [dbo].[ShangJiaGuangGao]
    ([shangjiaid]);
GO

-- Creating foreign key on [shangjiaid] in table 'ShangJiaJiaoYiJiLu'
ALTER TABLE [dbo].[ShangJiaJiaoYiJiLu]
ADD CONSTRAINT [fk_shangjiajiaoyijilu]
    FOREIGN KEY ([shangjiaid])
    REFERENCES [dbo].[ShangJiaXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_shangjiajiaoyijilu'
CREATE INDEX [IX_fk_shangjiajiaoyijilu]
ON [dbo].[ShangJiaJiaoYiJiLu]
    ([shangjiaid]);
GO

-- Creating foreign key on [shangjiaid] in table 'XueShengQiuZhi'
ALTER TABLE [dbo].[XueShengQiuZhi]
ADD CONSTRAINT [fk_shangjiaqiuzhi]
    FOREIGN KEY ([shangjiaid])
    REFERENCES [dbo].[ShangJiaXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_shangjiaqiuzhi'
CREATE INDEX [IX_fk_shangjiaqiuzhi]
ON [dbo].[XueShengQiuZhi]
    ([shangjiaid]);
GO

-- Creating foreign key on [shangjiaid] in table 'ShouCangShangJia'
ALTER TABLE [dbo].[ShouCangShangJia]
ADD CONSTRAINT [fk_xueshengshoucangshangjia]
    FOREIGN KEY ([shangjiaid])
    REFERENCES [dbo].[ShangJiaXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshengshoucangshangjia'
CREATE INDEX [IX_fk_xueshengshoucangshangjia]
ON [dbo].[ShouCangShangJia]
    ([shangjiaid]);
GO

-- Creating foreign key on [xueshengid] in table 'ShouCangGongZuo'
ALTER TABLE [dbo].[ShouCangGongZuo]
ADD CONSTRAINT [fk_xueshengshoucangz]
    FOREIGN KEY ([xueshengid])
    REFERENCES [dbo].[XueShengXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshengshoucangz'
CREATE INDEX [IX_fk_xueshengshoucangz]
ON [dbo].[ShouCangGongZuo]
    ([xueshengid]);
GO

-- Creating foreign key on [xueshengid] in table 'ShouCangShangJia'
ALTER TABLE [dbo].[ShouCangShangJia]
ADD CONSTRAINT [fk_xueshengshoucangs]
    FOREIGN KEY ([xueshengid])
    REFERENCES [dbo].[XueShengXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshengshoucangs'
CREATE INDEX [IX_fk_xueshengshoucangs]
ON [dbo].[ShouCangShangJia]
    ([xueshengid]);
GO

-- Creating foreign key on [xueshengid] in table 'XueShengJiaoYiJiLu'
ALTER TABLE [dbo].[XueShengJiaoYiJiLu]
ADD CONSTRAINT [fk_xueshengjiaoyijilu]
    FOREIGN KEY ([xueshengid])
    REFERENCES [dbo].[XueShengXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshengjiaoyijilu'
CREATE INDEX [IX_fk_xueshengjiaoyijilu]
ON [dbo].[XueShengJiaoYiJiLu]
    ([xueshengid]);
GO

-- Creating foreign key on [xueshengid] in table 'XueShengQiuZhi'
ALTER TABLE [dbo].[XueShengQiuZhi]
ADD CONSTRAINT [fk_xueshengqiuzhi]
    FOREIGN KEY ([xueshengid])
    REFERENCES [dbo].[XueShengXinXi]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_xueshengqiuzhi'
CREATE INDEX [IX_fk_xueshengqiuzhi]
ON [dbo].[XueShengQiuZhi]
    ([xueshengid]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------