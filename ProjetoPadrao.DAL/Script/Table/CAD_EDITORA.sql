USE [dbTeste]
GO

/****** Object:  Table [dbo].[CAD_EDITORA]    Script Date: 01/15/2013 13:58:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CAD_EDITORA](
	[ID_EDITORA] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TXT_NOME] [varchar](50) NOT NULL,
	[TXT_EMAIL] [varchar](50) NOT NULL,
	[TXT_SITE] [varchar](50) NULL,
	[DAT_ANO_FUNDACAO] [date] NULL,
	[NUM_TELEFONE] [numeric](14, 0) NOT NULL,
	[NUM_COD_TELEFONE] [numeric](3, 0) NOT NULL,
 CONSTRAINT [PK_EDITORA] PRIMARY KEY CLUSTERED 
(
	[ID_EDITORA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador da editora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_EDITORA', @level2type=N'COLUMN',@level2name=N'ID_EDITORA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome da editora' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_EDITORA', @level2type=N'COLUMN',@level2name=N'TXT_NOME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-mail para contato da editora' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_EDITORA', @level2type=N'COLUMN',@level2name=N'TXT_EMAIL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site da editora' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_EDITORA', @level2type=N'COLUMN',@level2name=N'TXT_SITE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data da fundação da editora' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_EDITORA', @level2type=N'COLUMN',@level2name=N'DAT_ANO_FUNDACAO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número do telefone da editora' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_EDITORA', @level2type=N'COLUMN',@level2name=N'NUM_TELEFONE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número do código da área do telefone fornecido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_EDITORA', @level2type=N'COLUMN',@level2name=N'NUM_COD_TELEFONE'
GO

