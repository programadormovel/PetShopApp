CREATE TABLE [dbo].[ANIMAL] (
    [CODIGO]    BIGINT         IDENTITY (1, 1) NOT NULL,
    [NOME]      NVARCHAR (200) NOT NULL,
    [DATANASC]  DATE           NULL,
    [RACA]      NVARCHAR (200) DEFAULT ('INDEFINIDO') NULL,
    [COD_TUTOR] BIGINT         NOT NULL,
    PRIMARY KEY CLUSTERED ([CODIGO] ASC),
    CONSTRAINT [FK_TUTOR] FOREIGN KEY ([COD_TUTOR]) REFERENCES [dbo].[Pessoa] ([codigo])
);


GO
CREATE NONCLUSTERED INDEX [INDICE2]
    ON [dbo].[ANIMAL]([NOME] ASC);


GO
create trigger informar_alteracao_maria
on Animal
after insert, delete
as 
	EXECUTE PETSHOP.dbo.prListaTutores @name='Maria';
