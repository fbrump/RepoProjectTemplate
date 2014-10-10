USE [dbTeste]
GO

/****** Object:  Table [dbo].[CAD_LIVRO]    Script Date: 01/15/2013 13:58:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CAD_LIVRO](
	[ID_LIVRO] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TXT_NOME] [varchar](50) NOT NULL,
	[NUM_PAGINA] [numeric](4, 0) NULL,
	[DSC_CRITICA] [varchar](500) NULL,
	[FLG_TIPO_CAPA] [char](1) NULL,
	[NUM_ALTURA] [numeric](4, 0) NULL,
	[NUM_LARGURA] [numeric](4, 0) NULL,
	[COD_EDICAO] [varchar](20) NULL,
	[TXT_IDIOMA] [varchar](50) NULL,
	[TXT_PAIS_ORIGEM] [varchar](50) NULL,
 CONSTRAINT [PK_CAD_LIVRO] PRIMARY KEY CLUSTERED 
(
	[ID_LIVRO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador do livro, apartir dele é possível acessar qualquer característica do livro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'ID_LIVRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome do livro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'TXT_NOME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de páginas do livro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'NUM_PAGINA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição da crítica a respeito do livro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'DSC_CRITICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fleg que define o tipo de capa do livro: D - dura e M - mole.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'FLG_TIPO_CAPA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número em centímetros (cm) da altura do livro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'NUM_ALTURA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número em centímetros (cm) da largura do livro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'NUM_LARGURA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código da edição do livro. Ex.: 01/2009.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'COD_EDICAO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Texto com o idioma que está o livro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'TXT_IDIOMA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Texto com o país de origem do livro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_LIVRO', @level2type=N'COLUMN',@level2name=N'TXT_PAIS_ORIGEM'
GO

