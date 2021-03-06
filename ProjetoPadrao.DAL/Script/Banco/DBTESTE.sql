USE [dbTeste]
GO
/****** Object:  Table [dbo].[CAD_CLIENTE]    Script Date: 01/16/2013 09:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLIENTE](
	[ID_CLIENTE] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TXT_NOME] [varchar](50) NOT NULL,
	[DAT_NASCIMENTO] [date] NOT NULL,
	[TXT_EMAIL] [varbinary](50) NULL,
	[NUM_TELEFONE] [numeric](14, 0) NOT NULL,
	[NUM_COD_TELEFONE] [numeric](3, 0) NOT NULL,
	[NUM_CELULAR] [numeric](14, 0) NULL,
	[NUM_COD_CELULAR] [numeric](3, 0) NULL,
	[TXT_ENDERECO] [varchar](200) NOT NULL,
	[TXT_BAIRRO] [varchar](60) NOT NULL,
	[TXT_CIDADE] [varchar](60) NOT NULL,
	[TXT_UF] [varchar](2) NOT NULL,
	[NUM_CEP] [numeric](8, 0) NOT NULL,
	[FLG_ATIVO] [nchar](1) NULL,
 CONSTRAINT [PK_CAD_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de identificação do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'ID_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome completo do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'TXT_NOME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de nascimento do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'DAT_NASCIMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-mail do cliente para contato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'TXT_EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número do telefone do cliente para contato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'NUM_TELEFONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código da área do telefone do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'NUM_COD_TELEFONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número do celeular do cliente para contato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'NUM_CELULAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código da área do celular do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'NUM_COD_CELULAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço do cliente (rua, número, apt, ref)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'TXT_ENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome do bairro do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'TXT_BAIRRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome da cidade do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'TXT_CIDADE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unidade federativa do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'TXT_UF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número do CEP da rua do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE', @level2type=N'COLUMN',@level2name=N'NUM_CEP'
GO
/****** Object:  Table [dbo].[CAD_AUTOR]    Script Date: 01/16/2013 09:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_AUTOR](
	[ID_AUTOR] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TXT_NOME] [varchar](50) NOT NULL,
	[DAT_NASCIMENTO] [date] NOT NULL,
	[DAT_FALECIMENTO] [date] NULL,
	[TXT_COMENTARIO] [varchar](500) NULL,
	[TXT_EMAIL] [varchar](50) NULL,
	[NUM_TELEFONE] [numeric](14, 0) NULL,
	[NUM_COD_TELEFONE] [numeric](3, 0) NULL,
 CONSTRAINT [PK_CAD_AUTOR] PRIMARY KEY CLUSTERED 
(
	[ID_AUTOR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_EDITORA]    Script Date: 01/16/2013 09:46:40 ******/
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
/****** Object:  Table [dbo].[TAB_CLASSIFICACAO]    Script Date: 01/16/2013 09:46:40 ******/
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
/****** Object:  Table [dbo].[TAB_CATEGORIA]    Script Date: 01/16/2013 09:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAB_CATEGORIA](
	[ID_CATEGORIA] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TXT_NOME] [varchar](50) NOT NULL,
	[DSC_COMENTARIO] [varchar](500) NULL,
 CONSTRAINT [PK_TAB_CATEGORIA] PRIMARY KEY CLUSTERED 
(
	[ID_CATEGORIA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAB_AVALIACAO]    Script Date: 01/16/2013 09:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAB_AVALIACAO](
	[ID_AVALIACAO] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TXT_NOME] [varchar](50) NOT NULL,
	[DSC_COMENTARIO] [varchar](500) NULL,
 CONSTRAINT [PK_TAB_AVALIACAO] PRIMARY KEY CLUSTERED 
(
	[ID_AVALIACAO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAD_LIVRO]    Script Date: 01/16/2013 09:46:40 ******/
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
	[ID_AUTOR] [numeric](18, 0) NULL,
	[ID_EDITORA] [numeric](18, 0) NULL,
	[ID_CATEGORIA] [numeric](18, 0) NULL,
	[ID_CLASSIFICACAO] [numeric](18, 0) NULL,
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
/****** Object:  Table [dbo].[CAD_CLIENTE_LIVRO]    Script Date: 01/16/2013 09:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAD_CLIENTE_LIVRO](
	[ID_CLIENTE_LIVRO] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ID_CLIENTE] [numeric](18, 0) NOT NULL,
	[ID_LIVRO] [numeric](18, 0) NOT NULL,
	[DAT_COMPRA] [numeric](18, 0) NOT NULL,
	[DSC_COMENTARIO] [varchar](500) NULL,
	[ID_AVALIACAO] [numeric](18, 0) NULL,
 CONSTRAINT [PK_CAD_CLIENTE_LIVRO] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE_LIVRO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador da compra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE_LIVRO', @level2type=N'COLUMN',@level2name=N'ID_CLIENTE_LIVRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de identificação do cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE_LIVRO', @level2type=N'COLUMN',@level2name=N'ID_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de identificação do livro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE_LIVRO', @level2type=N'COLUMN',@level2name=N'ID_LIVRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data da realização da compra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE_LIVRO', @level2type=N'COLUMN',@level2name=N'DAT_COMPRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comentário sobre a compra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CAD_CLIENTE_LIVRO', @level2type=N'COLUMN',@level2name=N'DSC_COMENTARIO'
GO
/****** Object:  ForeignKey [FK_CAD_CLIENTE_LIVRO_CAD_CLIENTE]    Script Date: 01/16/2013 09:46:40 ******/
ALTER TABLE [dbo].[CAD_CLIENTE_LIVRO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_CLIENTE_LIVRO_CAD_CLIENTE] FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CAD_CLIENTE] ([ID_CLIENTE])
GO
ALTER TABLE [dbo].[CAD_CLIENTE_LIVRO] CHECK CONSTRAINT [FK_CAD_CLIENTE_LIVRO_CAD_CLIENTE]
GO
/****** Object:  ForeignKey [FK_CAD_CLIENTE_LIVRO_CAD_LIVRO]    Script Date: 01/16/2013 09:46:40 ******/
ALTER TABLE [dbo].[CAD_CLIENTE_LIVRO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_CLIENTE_LIVRO_CAD_LIVRO] FOREIGN KEY([ID_LIVRO])
REFERENCES [dbo].[CAD_LIVRO] ([ID_LIVRO])
GO
ALTER TABLE [dbo].[CAD_CLIENTE_LIVRO] CHECK CONSTRAINT [FK_CAD_CLIENTE_LIVRO_CAD_LIVRO]
GO
/****** Object:  ForeignKey [FK_CAD_CLIENTE_LIVRO_TAB_AVALIACAO]    Script Date: 01/16/2013 09:46:40 ******/
ALTER TABLE [dbo].[CAD_CLIENTE_LIVRO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_CLIENTE_LIVRO_TAB_AVALIACAO] FOREIGN KEY([ID_AVALIACAO])
REFERENCES [dbo].[TAB_AVALIACAO] ([ID_AVALIACAO])
GO
ALTER TABLE [dbo].[CAD_CLIENTE_LIVRO] CHECK CONSTRAINT [FK_CAD_CLIENTE_LIVRO_TAB_AVALIACAO]
GO
/****** Object:  ForeignKey [FK_CAD_LIVRO_CAD_AUTOR]    Script Date: 01/16/2013 09:46:40 ******/
ALTER TABLE [dbo].[CAD_LIVRO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_LIVRO_CAD_AUTOR] FOREIGN KEY([ID_AUTOR])
REFERENCES [dbo].[CAD_AUTOR] ([ID_AUTOR])
GO
ALTER TABLE [dbo].[CAD_LIVRO] CHECK CONSTRAINT [FK_CAD_LIVRO_CAD_AUTOR]
GO
/****** Object:  ForeignKey [FK_CAD_LIVRO_CAD_EDITORA]    Script Date: 01/16/2013 09:46:40 ******/
ALTER TABLE [dbo].[CAD_LIVRO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_LIVRO_CAD_EDITORA] FOREIGN KEY([ID_EDITORA])
REFERENCES [dbo].[CAD_EDITORA] ([ID_EDITORA])
GO
ALTER TABLE [dbo].[CAD_LIVRO] CHECK CONSTRAINT [FK_CAD_LIVRO_CAD_EDITORA]
GO
/****** Object:  ForeignKey [FK_CAD_LIVRO_TAB_CATEGORIA]    Script Date: 01/16/2013 09:46:40 ******/
ALTER TABLE [dbo].[CAD_LIVRO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_LIVRO_TAB_CATEGORIA] FOREIGN KEY([ID_LIVRO])
REFERENCES [dbo].[TAB_CATEGORIA] ([ID_CATEGORIA])
GO
ALTER TABLE [dbo].[CAD_LIVRO] CHECK CONSTRAINT [FK_CAD_LIVRO_TAB_CATEGORIA]
GO
/****** Object:  ForeignKey [FK_CAD_LIVRO_TAB_CLASSIFICACAO]    Script Date: 01/16/2013 09:46:40 ******/
ALTER TABLE [dbo].[CAD_LIVRO]  WITH CHECK ADD  CONSTRAINT [FK_CAD_LIVRO_TAB_CLASSIFICACAO] FOREIGN KEY([ID_LIVRO])
REFERENCES [dbo].[TAB_CLASSIFICACAO] ([ID_CLASSIFICACAO])
GO
ALTER TABLE [dbo].[CAD_LIVRO] CHECK CONSTRAINT [FK_CAD_LIVRO_TAB_CLASSIFICACAO]
GO
