USE [dbTeste]
GO

/****** Object:  Table [dbo].[CAD_CLIENTE]    Script Date: 01/15/2013 13:58:34 ******/
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

