USE [dbTeste]
GO

/****** Object:  Table [dbo].[TAB_CLASSIFICACAO]    Script Date: 01/15/2013 13:57:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TAB_CLASSIFICACAO](
	[ID_CLASSIFICACAO] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TXT_NOME] [varchar](50) NOT NULL,
	[DSC_COMENTARIO] [varchar](500) NULL,
	[COD_COR] [nchar](10) NULL,
	[TXT_COR] [nchar](20) NULL,
 CONSTRAINT [PK_TAB_CLASSIFICACAO] PRIMARY KEY CLUSTERED 
(
	[ID_CLASSIFICACAO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador da classificação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAB_CLASSIFICACAO', @level2type=N'COLUMN',@level2name=N'ID_CLASSIFICACAO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome da classificação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAB_CLASSIFICACAO', @level2type=N'COLUMN',@level2name=N'TXT_NOME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comentário sobre a classificação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAB_CLASSIFICACAO', @level2type=N'COLUMN',@level2name=N'DSC_COMENTARIO'
GO

