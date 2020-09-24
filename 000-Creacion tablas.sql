SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[PedidoId] [int] IDENTITY(1,1) NOT NULL,
	[PedidoNro] [int] NOT NULL,
	[Entrega] [datetime] NOT NULL,
	[Vecine] [varchar](60) NOT NULL,
	[Email] [varchar](60) NOT NULL,
	[Telefono] [varchar](60) NOT NULL,
	[DomicilioEnvio] [varchar](256) NOT NULL,
	[Comuna] [int] NOT NULL,
	[Local] [varchar](60) NOT NULL,
	[Producto] [varchar](128) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [numeric](17,2) NOT NULL,
	[Importe] [numeric](17,2) NOT NULL,
	[Convenio] [varchar](128) NOT NULL,
	[EnvioNro] [int] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[PedidoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vecine](
	[Nombre] [varchar](60) NOT NULL,
	[Apellido] [varchar](60) NOT NULL,
	[Email] [varchar](60) NOT NULL,
	[Telefono] [varchar](60) NOT NULL,
	[Domicilio] [varchar](256) NOT NULL,
	[Observacion] [varchar](128) NOT NULL,
 CONSTRAINT [PK_Vecine] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC,
	[Apellido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
