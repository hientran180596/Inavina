CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuthorityGroups]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorityGroups](
	[Id] [nvarchar](128) NOT NULL,
	[AuthorityGroupName] [nvarchar](max) NULL,
	[Sort] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AuthorityGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LanguageLibraries]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageLibraries](
	[Id] [nvarchar](128) NOT NULL,
	[Vietnamese] [nvarchar](max) NULL,
	[English] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LanguageLibraries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Machines]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machines](
	[Id] [nvarchar](128) NOT NULL,
	[MachineNo] [nvarchar](max) NULL,
	[MachineName] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Machines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Molds]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Molds](
	[Id] [nvarchar](128) NOT NULL,
	[MoldNo] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Molds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PartNumbers]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartNumbers](
	[Id] [nvarchar](128) NOT NULL,
	[PartNo] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PartNumbers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductionPlans]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionPlans](
	[Id] [nvarchar](128) NOT NULL,
	[WorkOrder] [nvarchar](max) NULL,
	[PartNo] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[ExpectedDeliveryDate] [datetime] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[ProductionStatus] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProductionPlans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProgramFunctionAuthorities]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramFunctionAuthorities](
	[Id] [nvarchar](128) NOT NULL,
	[ProgramName] [nvarchar](max) NULL,
	[FunctionName] [nvarchar](max) NULL,
	[AuthorityGroupID] [nvarchar](128) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProgramFunctionAuthorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProgramFunctionMasters]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramFunctionMasters](
	[Id] [nvarchar](128) NOT NULL,
	[ProgramName] [nvarchar](max) NULL,
	[FunctionName] [nvarchar](max) NULL,
	[Explanation] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProgramFunctionMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegistBarcodes]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistBarcodes](
	[Id] [nvarchar](128) NOT NULL,
	[PartNo] [nvarchar](max) NULL,
	[RegistDate] [datetime] NOT NULL,
	[MachineNo] [nvarchar](max) NULL,
	[ShiftNo] [nvarchar](max) NULL,
	[MoldNo] [nvarchar](max) NULL,
	[SEQ] [nvarchar](max) NULL,
	[Barcode] [nvarchar](max) NULL,
	[UserID] [nvarchar](128) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.RegistBarcodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScanBarcodes]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScanBarcodes](
	[Id] [nvarchar](128) NOT NULL,
	[PartNo] [nvarchar](max) NULL,
	[ScanDate] [datetime] NOT NULL,
	[ShiftNo] [nvarchar](max) NULL,
	[MachineNo] [nvarchar](max) NULL,
	[Barcode] [nvarchar](max) NULL,
	[UserID] [nvarchar](max) NULL,
	[ResultStatus] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ScanBarcodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shifts]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[Id] [nvarchar](128) NOT NULL,
	[ShiftNo] [nvarchar](max) NULL,
	[BeginTime] [time](7) NOT NULL,
	[LengthHours] [real] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Shifts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAuthorities]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAuthorities](
	[Id] [nvarchar](128) NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[AuthorityGroupID] [nvarchar](128) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserAuthorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/18/2020 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](128) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Salt] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202006180221006_initial-database', N'Inavina.Migrations.Configuration', 0x1F8B0800000000000400ED1DD96EE4B8F13D40FE41E8A71CB3DDB6274036467B171E1FB3C68EED5EB73DC9DB806ED16D6525AAA3C3B111E4CBF2904FCA2F84D4C9531275B9DB26FCE2A6C82AB25855248BACAAFFFDE7BFF31F9F3DD77A8241E8F8E868B23FDD9B5810AD7CDB41EBA3491C3D7CF7FDE4C71F7EFB9BF999ED3D5B5FF37A1F493DDC12854793C728DA1CCE66E1EA117A209C7ACE2AF043FF219AAE7C6F066C7F76B0B7F797D9FEFE0C6210130CCBB2E637318A1C0F263FF0CF131FADE0268A817BE9DBD00DB372FC659940B5AE8007C30D58C1A3C905024F0E02D305E94B18E1CEC28975EC3A00776509DD87890510F22310E18E1EDE857019053E5A2F37B800B8B72F1B88EB3D003784D9000ECBEA4DC7B27740C6322B1BE6A0567118F99E26C0FD8F1971667CF356249E14C4C3E43BC3648E5EC8A813121E4D8EE3E8D10F70D9E7C08F37138B477978E206A47A49E7133F80D3535CC74153B6F5072BABF3A1600CCC3FE4EF837512BB511CC02304E32800EE076B11DFBBCEEA67F872EBFF0AD1118A5D97EE29EE2BFEC614E0A245E06F6010BDDCC087ACFF17F6C49AB1ED667CC3A219D5261D13E605CCD713EB123C7F81681D3D628E3FF87E629D3BCFD0CE4B32E6B8430E1603DC280A62FCF30A7718DCBBB0F83EABC4C9528A9455F401FFDBA80FD528977E10E5482E50F4F1A0B6019EF2382CFA8565679A167D056E8B219F041044D03E2E3A718A7FDE3A5ED3869F5E0627D199EDB4EA61DA6E880E5E61015A2792C7A1DC04FE3A00DE798C56E46BC14F78BE6EA09BB4081F9D4D366F2CBB7DAB687C1EF8DE8DEF0A2CAA6EF36DE9C70151B2B7BE66C35B10AC61D47CCC710803BD81F22D94A3632BD60D89AB2D1BC77C56EAD64A8DBB50904757F7AAE0182DACC699D16C14F59B4FCC28C8587EBD38ED81B446B9F7DBC1C60AE28E5636BA5A81696C54811A2721D408726204F3ED08E61780D63158C32FCE7D00026DD1E49A1BE154E3FCEAC0089123FEF02BE7195ABB4EF838381E239783C9E525583D3A08EACA63D6CCC8A11A6746A22B7F70DECB318DB159BEF2A311AC2FC698B22BEAC3776D6DDD81DB18C55121CE983E23680D23C9469269D31A08A2ABD8BB8781B631AD6869A45A8D33A1D2087B0172E7677487D11DA3EA8EC0B7E3C460BB70016A618CA75A1B1DA2C6F9573FF8F53AB0898A1E9813DF94B63A7BDEC015169053E83A4F30782162258A98E65CFC1283440C0A403EE6C5AD35A5963226D1AAFCC776FAD5A8EB1D52D7F4EDE72508A316BB3E1910A3BC2B45F06DDE9F62F58AD7EDEC9195D9131A2593E0BF816B278C3E818040D2552E4C63A3542A94CA38FBB4743E7AD9378D67165F3E3A0FE36C6247B1D72DCF7E191C4721AE03E31969D76B568B5D592D962B805AAE155453B352A8718EB45290D9E8659D184D7B8FB61E6D8D72ED6B4F10629192A858FA833125BC71BD4DA4545B6393464657BFBEEEFB84B7F52865B314532B4D9DF6E0273F0E4A91C5FD6D610C35D74A46B950CA852C646DDE701BD5A2C649E883C6B00A2E811B0D8E6401C2F09F7E5045C7BE0CAAAE3B8A3175F1E8A3E1B11CDB7600C370703C9F21A26F2B89AE4D8BDAE95AB33EBC87F5C1AAF6E4A4DE0AC8DD1A898AFB26542CBD1965DF05274669255D1FCC803663577496AFC7F595FD2CEF2A5767006FD1048DDA4754F259DED34EFEA0B1471F3E68B1BC08CF5DB02EE31134DC367C76FD7BE09EE091460045E11F29989DB71198C9B1AA735FB050E4988927393B259790BC9C2B14DC1DE97B82FE68B227CC1F53F92E4CA42DABBC2F9230255605011517FF3D91520AFD55888A1AD3F40225D7B4C9DA28272CDFE2C4F7362EC47AB06820C60A601AFC943C99CEEA7E6C316B12FB4A4F3326407E85D93AF336E4514DB3E9BAFEB9E9349DC61BDCB9C430D96C9AF05EE3DC8F9172AA84FA9F8B9A7F6A31A9CCB6A8A7E9A460BEC2449E430FB88D05EF92AEDB48971D87A1BF72127AE4BBDAA6811BD87E9C21DB6A1BC5A1DC23F2C1602E31551DC273B8088F7E3A1519B405E27CB5645F6F296222B05DF883801F9F5E61001189E593304D800FD09178D475D0CAD900B7258D38780D0FCF64D20BCCFC9753B8219C8DA296D46BD225D1F758EC60D10FEEDC5F47D7F98CE25D2D96E6B65F0DD949B52B1B867915FB3B0A1BE7A43F069BCA49303E6FCA89B3430C293D5CA938A3FAA4C5328426D3559ECFA46F5BD3A7E983305BD53847E0B12A5A34419F5F18BE1E437107E0CA49579D86BBB393E20CCD5C6D328FDA866326F920C7E22539217683951A2E9195E68AEEACB41D8B60C520C762A5F60BDE88AC945A9B709B08B7288E24B84B7F872BF2EA11904FF05976D18D7B991DC6C2CC96C9F30501BD849174190F275669E952ECC504466301AAB6FF32D0EAA3420D923B56A844C81C37D780E3A2B9C8000AF1626A4066CF7864A08A101775207CD796B64F0C3675D35038C14A094F39D7D6CF276BB896CD22B3A5D16390D451A30177E46E2135E06F38DBB500965B336BC051AFF964C098778275A0C82B0A2990F4D14A039E57B1BAD098522C2A59AF0A244935976A81A6B68C6ED68C820212352568E10EC60B0A4F85F6E26FD35912EB939FBFBAA8A579D54EA2C571BB1FEA2A361614705E5777A6A3FC3E4D245FFDD1B0F9E1901B4F35892ACF822CB3B163E88734FCED9D823255679CC6A71C7DBA280E3514205E83F743957A71ABDDAE37DEB0EB53654031CA2F2F8BED64F16D3E4B23B06705F3992254FBFC126C360E5A53A1DBB3126B99C66D3FF96EA91FCFDC4B61CC560C99F9CD6F8129F203BCFFE2BE92FB2E1B9E3B41E20D04EE01B99E38B13DA19A64F3AC586E7384F2FDB1388FF9729CB723FFE7977742347B7E372D1E3C3230E778B01E39BB907143A5AE16015824AE3E70412079DC75E2BBB187D48729756B59C8731A9AEC7B73E86974731A5E5AA201217B24C3C0C8CA9A43A1DEC6D080A8626D58E4358A04D627E1045105AB7C1043832A4B7521F19D2A4B4548F319C791C2F15710014E33F192D548EED41BB1AE12A83C74EACB627350C34825E3C24D83613E3487C7BA69D300D92F6DF506319FA8B586CCB8A2866C64756B64F5AE6ECFA427A0ACED465F2A6BDA0F238AB9759086A0B218AAA118717907E222581BBB0A0C6F9BD417995A08C3080D1D1A9A8642976B30401EFD9999FFBCD088CA0E8A4A6145EF2A22B9CD5D5F34942D871109CAFD97064215EBC3127673CC87E6F05277071A505A628E69EF5740933BAACED2496EB45A88A6B4D9407299055561C4282B33126424A8BDA183BAA8ED6CDA28AF755B18332A1A0F64BEC8428030968BAC4C473293989DAC602645462E8D5C763140D65C1C6A9B1DE95712AD8C8D95008691512AC42F0D842ADE45799747E06538525AA33986321C2F0DB52C1DDBB2C43BBF09F662EEABD17CEF59F3C91E68F57CEF923DE7EA7CE9A282F35E6F5C98E8B79C462B3F18F17EB7E27D53F7EE474FACD9E794FAE25CD37E9B4F1E74145A1A125DFE3A96BF22601723B579E1D8568F24522CD31352D0BC7DF1C09686A178755B05A79F9D9451883A90764021324FBCBBAA43FA41B8BE32AC6CBDCDAAB00CB3CA884551FA0AAAAB4775BA5D0A880D74CA2E3CF417A3D2DEAF4A4B5D4D3A2BB3C431A5851A93B71B4681F5A530A8E0A38C9897C5CD613121486968CC07639F3622DE5AC453C782AE129E388FE90BB8BCD930F25D4608E5974DA4691A49438032129094E86C96F2F89EEC76292FD531FCE4013C59A34F5EAAD1A7344227D3A1B448E3DD611E7F93796E9817368793C7D7A4C1E46546DB196D57A3ED045725BE4A813D2B297E17AE4A999B10E3BF948C9E782325A30E339725DE6F28AD32B130899E1C9BF80C2D5FB096F4A6A4C274F90FF7C475F078CB0A9700390F308CD2A8649383BDFD838975EC3A204C1DCA328FA843DE47BF918BD4FE47E222056D6FC637D777B42250C2D066E2488BD1ADAB1C8BC688398D9EF081EA110462D469CD08B7325F2416C5EF3CF0FC7B1A6EA338BC894B520AC8217CA0D99C09E3CB016817B9D7C63F232E427E93AE08917C3BD1858FD6DBB6577CF45E8D4EB5CD34A9F012D8296E5F88691C3B4DA72C55632780A2D7024F012188C905DE313C1F4DFE954038B42EFEF68D07F2C14A5E1F1C5A7BD6BFAB48A8210E46AEBA6546780BC2C4A62AD2E2D0B4699F7C6904E7ED0B4EA5E3CD4E890EEDB3D3C724E67E3B3DC0327CDA994FA55E303BC59F425EBD4E73C778D0F4008FCE24D2ED94628E195B202D8263CA6E890A9340D8F0B5E16BFAAD80C44564A7B89B4D3CDB6D1548DF9D1B393172C29B9994AE1A3B252B949B470F53B895922777F450F35823BA957E1E29A007D707FA92B855D68885E022D25EC51825B51D4AAACE8F62A774D5D61BC219070CB3D4BF0D29AA705FD82DE9E96F6DA6DD1F3AAEA3FD1A6DB834E61D3720BD9D91136F881EE0140F927B80B5555B0FA3E8B640D1295D13DEAB9A2B9D1B3A2AB95ED552AF0A73788DD27281A1DD1CCC3164B7F58AE82BB0531AA54FE9A57C0D5268E9A42D02B872921CA9933F6BF78FF13848A1625E733BE5BA37C7965D973AF101FF4E095DF9FABF0F864C9C007AB16FE67E00BD981F7257803E7A963A04F400A9700AE80156EE19D05E1318A5B4C34A69F084D9795FBBA7145E2813D55118D49546C8283C460245E5009BE0DE927CC17D24B0EE8FAFB8348514D8F173528F95827327D9463BCDB43099FA1A8749AAC8EA997152488FA453AAC3228A185F3FA7AF467AE8AE7CC065ABA4808D95FB790C2EA80B22B58D4CA091D8B92B13BCEE32311613E82F0EAF9E92594C3EC74F219BC395DF2C941B63C56E22754AC5DBF67B62614A77D835D93A1B6764D64AC82CEB88A2B62349DAC8F789E35BA123DC771976BA4A139442066701A950438696ADD4047191EF5940587C91212A3348D7C14FF2418BC0936229E434B1741DDB5039A24546A13E4A59834E3F5DCF9FCC7E46C6954C05052F56E652AD118A3CB9749D44E4F51A884391D8BAA627DC3A2EF480FB2EC35C933195C7485FE5D5A4B4966163E2A5D5E24A735B8B58D27229FC2C4F760315A24C87AD521822D8EDCF945D91AA59B2F435315AA8A3E952957833EFAEE4BB6E4B2EE992244928D79D300326B016FA5DC72112CD2B8B36DFD3A087484DAD3764A9B69504A2ED69C043649DD61B70FF6CAD91505A8CC682B7E0312206E8F4D7290C9D7509628E6122B86236DF459D0BF4E0E76700AE477915FE35048C808D77E6C741E43C8055843FAF60183A683DB1BE023726766DBC47B12FD0751C6DE2080F197AF72E430C7296A8C29F64CD66FB3CBFDE905F611F43C0DD7488CDFE1A7D8A1DB2A1CBFA7D2EDE49A8409043CA6788CBD3B9C4679E08AE5F0A485742AC2815A08C7CC5D9EA167A1B17030BAFD1123CC1367DC33CF805AEC1EA659105D55103A99F0896ECF3530790A52DCC6094EDF14FCCC3B6F7FCC3FF0138C4AF9D25DB0000, N'6.1.3-40302')
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3edeaca3-0022-4d86-9544-5cd5643b683a', N'Admin', 0, 1, CAST(N'2020-06-18 12:22:17.160' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', N'Manager', 1, 1, CAST(N'2020-06-18 12:22:17.160' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'92505961-47d6-423e-8d66-a93192baaa17', N'Operator', 2, 1, CAST(N'2020-06-18 12:22:17.160' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'00a5ac76-5a34-49c3-b457-8e79259e6d53', N'Sửa (F2)', N'Edit (F2)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'036777bc-44c3-403c-8aff-fd91c14f4d4d', N'Mã', N'ID', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'05dd26bb-e96d-4b45-9e00-9910b3481b31', N'Quản lý PartNumber', N'PartNumber Management', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'06991f03-d38d-44a2-b53b-1f0768f64512', N'Ngày dự kiến giao hàng', N'Expected Delivery Date', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'07ddb903-3d8f-4507-b3a0-09cc7a3e8b8b', N'Trạng thái', N'Status', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0de335f3-7c43-4536-8377-7d4e73ac8b89', N'Mật khẩu mới', N'New password', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1719b9cc-53c9-4568-ac70-4f0e1a447a34', N'Phải sử dụng máy đọc mã vạch', N'Must use barcode reader', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'17557522-7de5-46e0-bfd7-b9a472241f82', N'Hủy thất bại', N'Cancel failed', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'177f6473-9f1f-442a-89a1-51cd89a3241e', N'Tiếng Việt', N'Vietnamese', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'17f22ca8-f4bb-4ff9-b4a1-8300a913f13c', N'Tên máy', N'Machine Name', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'198f1f0f-99c8-4952-a069-2b7e49bb6e5a', N'Ngày', N'DateTime', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'199db0ef-2da9-40be-a7d8-c3e2b6ce01a5', N'Sau thời gian chỉ định chương trình sẽ bị vô hiệu', N'After the specified time the program will be disabled', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'19fc78c5-4745-4523-8fd7-b79765c751c0', N'Ko sử dụng', N'No User', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1acd51b1-af6c-4193-8107-03b6572720cf', N'Diễn giải', N'Explanation', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1bf51ac9-3a0f-4dcc-95f2-5dc18a30c453', N'Lưu và in (F1)', N'Save and Print (F1)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2602de7c-104f-4e29-bb46-6f636b1a0fa3', N'Người dùng', N'Function', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'271875ad-3873-4def-84eb-89bae76c9fa4', N'Thông báo', N'Notification', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'28ac366e-83cb-4c14-ae41-9f205b4093dd', N'Tài khoản', N'Username', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'29e43105-c564-4c1a-93de-c0278564a6ed', N'Ngày sản xuất', N'Produced date', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2d5c7024-b8d7-443f-8a3d-36c855a5824c', N'Nữ', N'Female', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'31d427b6-bbf2-4fd4-a570-b1f441829bc2', N'Ứng dụng cần kết nối mạng để kích hoạt', N'The application requires a network connection to activate', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'32839c81-85e0-4e16-8acc-a726caf40894', N'Quét mã vạch (F1)', N'Scan barcode (F1)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'35e6f1bd-dc06-4836-b1ab-33b196820285', N'Bạn có muốn hủy thông tin này?', N'Do you want to cancel this information?', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3801953d-e655-4f94-947f-b4b95f2b2505', N'Mật khẩu', N'Password', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'38367eec-4f6a-45a5-ba92-b5fdf0b5bae1', N'Giới tính', N'Gender', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3a1be458-fd31-4998-9de3-d96702074283', N'Kế hoạch sản xuất', N'Production plan', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3a3ce8de-e4cd-49cd-b3f6-78486ef14f73', N'Trạng thái sản xuất', N'Production Status', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3ec3fa0f-2443-4543-9716-53e845a67435', N'Xác nhận mật khẩu', N'Confirm password', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'40c83944-4469-4950-b3ee-262a5bcf8992', N'Bạn không có quyền sử dụng chức năng này', N'You do not have permission to use this function', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4213c2e5-ea9f-4237-a436-5605be8bcba6', N'Từ ngày', N'FromDate', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'42e95312-2197-40a0-9d32-9a6886ce5401', N'Ứng dụng cần quyền Quản trị để kích hoạt', N'Application needs Admin rights to activate', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'48f8b024-dfb7-445b-88d6-498542528768', N'Báo cáo', N'Report', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4b0784b1-f9d4-490b-9c16-2e08c4a89237', N'Quên mật khẩu', N'I forgot my password', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'51a3e14c-18af-461c-a43f-84a73437e2c4', N'Tên máy in', N'Printer name', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'54722266-28b7-4148-bfbf-e9e02859298c', N'Mã máy', N'Machine No', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5ae81f2f-97b8-4ca3-88e3-756b8b7c8c33', N'Thống kê sản phẩm OK', N'Product report OK', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5f97ad94-3720-4290-a5bf-6cb247685da7', N'Đã bị hủy', N'NoUse', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'608f089b-70bc-400a-9d03-66e07e45525f', N'In lại (F2)', N'RePrint (F2)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'60b4815a-b094-4ea7-bf37-490f4d67f70b', N'Bạn có muốn xóa thông tin này?', N'Do you want to delete this information?', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'62ec924b-51fb-4c0c-94f9-dda53cb364a2', N'Đăng ký sử dụng phần mềm', N'Register to use the software', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'63fec9cc-12fb-4fcd-ac9f-b70a350bf9f1', N'Dữ liệu không đúng', N'The data is incorrect', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'661f0e5f-cf40-4a80-a39c-296cd1d71362', N'Chưa xử lý', N'None', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6928e9e0-9ca8-46e2-bfcb-89075e95cfd1', N'Lưu (F1)', N'Save (F1)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6e1c1c3e-43f6-47ac-8b79-76c436070254', N'Tài khoản không tồn tại', N'Username does not exist', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6f103854-9661-44d2-a818-08ad053c8c14', N'SL sản phẩm đã sản xuất', N'Number of products produced', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'71024f1a-690c-41bd-83e5-8f395140844d', N'Số lượng sản phẩm OK', N'Quantity of products OK', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'726efea6-55da-4d2d-9ec9-697e6142ff6f', N'Quét mã vạch sản phẩm', N'Scan the product barcode', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'727ac78e-a99f-4490-a5a3-6b2df6c9cc88', N'Chức năng chương trình', N'Program Function Master', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'74dd18c4-2424-4120-972e-1ccde6a1f0c2', N'Lịch sử sản xuất', N'Production history', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'760496f9-0164-4154-adf4-b99c3902784f', N'Danh mục', N'Category', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'777eace7-f951-484d-8243-4ac1a3b6b9d3', N'Chương trình', N'Program', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7c6c0ea2-49eb-4cf2-918c-93eba8a9d1e4', N'Chọn', N'Select', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7d063ebc-1dd4-4a04-b919-59da00ddf18c', N'Xóa thất bại', N'Delete failed', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7d524ba7-de3e-4f4f-8978-1de6415affbf', N'Dùng thử cho 1 máy tính', N'Try it on 1 computer', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7dfe7b68-2f08-4d6d-9ca9-26f343fb2a47', N'Chức năng', N'Function', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7f667884-739d-4f87-85dc-fa5f02de6ffa', N'Dùng thử', N'Trial', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'80408c7e-8dd4-4f66-a2c1-f12e0153bd14', N'Đổi mật khẩu', N'Change password', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8653cbd1-b0bf-4e87-a1a8-67ff631f0efb', N'Ngày đăng ký', N'Regist date', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'87ae3889-ac71-408b-ad31-5709868daa15', N'Cấu hình', N'Setting', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8ce4d653-ce69-4561-bc7f-12c24202a69c', N'Số lượng sản phẩm NG', N'Quantity of products NG', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8e64f55d-6033-492c-89ac-99caa08e604d', N'Danh sách ca', N'Shifts List', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'94682a6f-5799-4eb5-ac79-b4cbc63608c2', N'Mật khẩu không đúng', N'Incorrect password', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'948a7b40-fd04-4ff8-859c-415e5bbb5a4a', N'Tên công ty', N'Company name', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'95775c62-4106-48b3-911e-028c7966b17e', N'Tên đầy đủ', N'FullName', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'95ec8173-1821-4b1d-b13b-a31198c72408', N'Chương trình (F7)', N'Program(F7)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'96a74206-d2b9-481b-94a4-2bf7a9dd842f', N'Nhóm quyền', N'Authority Group', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'978d201c-df9b-4e7a-b7ca-bc58dbf90e92', N'Số lượng mã vạch đã in', N'Number of barcodes printed', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9a2a1d22-133a-4572-9298-235bb2b14503', N'Ngày kích hoạt', N'Activation date', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9d5dd9f3-59b1-48fe-b06e-0db014a1abf6', N'Mã ca', N'Shift No', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9e5feea0-bb44-4800-9908-b065851ed69a', N'Mật khẩu cũ', N'Old password', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9ecf3dac-dddc-44da-a603-65e76e2f232d', N'Tiếng Anh', N'English', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9f457027-6782-4e24-84a0-1daf4ceaeab6', N'Số lượng', N'Quantity', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a0e3fcd5-344d-4230-b204-ac119ba18f64', N'Lọc (F5)', N'Refresh (F5)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a2aa84d9-2a53-4aee-8ba3-8e475bcdb776', N'Đăng nhập', N'Sign In', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a58a77b6-e8f7-4ae7-8a68-0efabad22650', N'Xác nhận', N'Confirmation', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a6167b28-59e2-4fa9-ae23-da0080cd0aef', N'Trạng thái sản xuất', N'Production Status', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a61b8598-5f87-4150-a952-03990558aa27', N'Danh sách máy', N'Machines List', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a6644dde-9d04-4ec5-9435-fff03be0fdbd', N'Để tiếp tục sử dụng, bạn nên mua giấy phép', N'To continue using, you should purchase a license', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a6906cb2-1cbd-44b9-a9e9-b37422be16b3', N'Ngôn ngữ', N'Language', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aa030b76-359d-47c0-9786-78d39d75700a', N'Đăng ký in mã vạch', N'Register to print barcode', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aa08e4e8-2aba-4d9e-a469-2a1908cccb99', N'Danh sách khuôn', N'Molds List', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aa97adb9-dd0c-43c8-88f1-487766a11a0b', N'Mã vạch', N'Barcode', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ab49e19a-62ca-4bf9-b1a1-9c1de68fb695', N'Chưa chọn dữ liệu', N'No data selected', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'abe8e5f5-8289-4815-bbfe-a4b0cb5cfbed', N'Đang dùng', N'Using', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'acd0ed33-344a-4a49-811c-cd42d5986e47', N'Excel (F4)', N'Excel (F4)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aeb6a1eb-0462-43ae-b122-9021ae0cbd23', N'Lưu thất bại', N'Save failed', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'afa5a5ab-5825-4c3c-ad00-bb42d3d055f5', N'Quản lý người dùng', N'User management', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b004fd4e-659d-4515-9f80-dde0b63ee1a5', N'Dữ liệu đã tồn tại', N'Data already exists', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b2060cb4-6c6c-4cdc-8b69-d52695a4ea3e', N'Mã khuôn', N'Mold No', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b5137bb7-3586-4ce8-8762-10a229f2440b', N'Thư viện ngôn ngữ', N'Language Library', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ba368c8c-1d8d-4197-b1a8-3c2186441e92', N'Ngày quét mã vạch', N'Scan barcode date', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'baea2cbe-2844-44af-932b-91484dd4ba18', N'Lưu thông tin đăng nhập', N'Keep me signed in', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bb0855d5-ba7e-48ae-a316-3072936a1c87', N'In thất bại', N'Print failed', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c84af013-8100-4e1e-b5b4-88a7a34a8c7c', N'Mã sản phẩm', N'Product code', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c8d9e0b2-3d8c-47bf-ab8c-caddc2ec149a', N'Lưu thành công', N'Save successfully', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c91634f4-6112-443a-a210-d8c191569f3b', N'Kết quả sản xuất', N'Produced result', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cacc8c67-8791-47c1-b834-b92709257e50', N'Điện thoại', N'Phone', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cad54ded-a316-41c4-afc5-1433b12df341', N'Chương trình chính', N'Main Menu', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ccd96ba3-2aa6-46db-87eb-5073239f4abc', N'Thống kê sản phẩm NG', N'Product report NG', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cd5398f9-3dae-4c84-8068-b39239c8a7fc', N'Cổng COM', N'Port COM', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
GO
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cfa65086-5eda-4b76-93bc-186cee3df29b', N'Đóng (ESC)', N'Close (ESC)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd13ea651-94ee-43b7-a5e9-43480d0b5a5a', N'Bản quyền', N'License', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd2e52dcb-5171-45eb-869d-65dc260ad42e', N'Chưa điền dữ liệu', N'No data entered', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd56d34d4-9f9e-400b-a9cd-306e00a7728e', N'Thời gian bắt đầu', N'Begin time', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd60a0072-589d-440a-b91b-7c174451bb3e', N'Tất cả', N'All', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd9201f50-529a-4501-83d1-3a4226bc2fa4', N'Địa chỉ', N'Address', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'db0af477-423c-4f4e-9d4f-3c407d8cf077', N'Báo cáo tổng hợp theo kế hoạch', N'Report synthetic by plan', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'df4a099f-61ae-4cc0-b22b-ae878dca0100', N'Đăng ký', N'Registration', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e1c2a0ab-eea8-4fef-bebd-d50530423f16', N'Còn lại', N'Left day', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e1f86a5a-8420-4609-b047-7ccaa7669ccd', N'Đang xử lý', N'In progress', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e41a46bd-0419-4b11-8ef6-191d3c981dee', N'Báo cáo tổng hợp theo mã vạch', N'Report synthetic by barcode', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e5417ad2-35e1-4562-a478-22d5f6c0d808', N'Đến ngày', N'ToDate', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e5d734b6-3a62-48dc-87f4-7f2924870f6b', N'Thêm (F1)', N'Add (F1)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e78c22fe-003b-4e1a-bdee-b1f164b1a8bd', N'Nam', N'Male', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ed8609d8-0c56-454e-8538-ebeefd96a140', N'Hệ thống', N'System', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f4f8bc9f-05f3-442a-9294-bcc10f8a3789', N'Xóa (F3)', N'Del (F3)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f6b19f0e-1645-4ed7-8bf8-4205d5eda85c', N'Đã xong', N'Completed', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f6c7970c-b233-4311-b037-3c00cb2b34f5', N'Số giờ làm việc', N'Length hours of work', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f6fa6051-2035-482e-945a-98d7cde34c42', N'Phân quyền (F6)', N'Authority (F6)', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f75a53ce-cd20-4a9d-9259-3386006a2335', N'Sử dụng', N'Using', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fda0c921-5337-4278-9580-079634af689b', N'Ngày hết hạn', N'Expiration date', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fe9120fd-e058-4500-a86e-882b1f8f6a9e', N'Ghi chú', N'Note', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fedc0572-a364-4f46-b08a-4c269de70490', N'Bảo lưu', N'Hold', CAST(N'2020-06-18 12:22:17.350' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Machines] ([Id], [MachineNo], [MachineName], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'260afc5c-612f-4c01-9508-17728369efa1', N'01', N'Machine_01', NULL, 1, CAST(N'2020-06-18 12:22:17.337' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Machines] ([Id], [MachineNo], [MachineName], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ab0b6488-3728-4547-80d6-7642b92ce952', N'02', N'Machine_02', NULL, 1, CAST(N'2020-06-18 12:22:17.337' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Molds] ([Id], [MoldNo], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'185d356f-4021-4b13-b198-463e365a80c4', N'0001', NULL, 1, CAST(N'2020-06-18 12:22:17.340' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Molds] ([Id], [MoldNo], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2445d5a7-bae2-426d-9aff-d9a4aec25e63', N'0002', NULL, 1, CAST(N'2020-06-18 12:22:17.340' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[PartNumbers] ([Id], [PartNo], [Model], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b215a119-efc6-46fb-bafc-77732a2924b0', N'AEF75984602', N'', NULL, 1, CAST(N'2020-06-18 12:22:17.337' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'01d5c082-7914-4446-bf96-e398144999ff', N'QuantityOfProductsNG', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0a044bf7-65de-47b0-b677-aa80a27ff298', N'RegistBarcode', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0b7c352c-91e6-47a0-ba08-e1dfdb1d6b12', N'ReportSyntheticRegistBarcode', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'132ea37f-636d-476f-a92a-75252f63d28d', N'ReportSyntheticProductionPlan', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1ded28b8-a861-4bf4-be09-289b2ac8cb37', N'ProductionHistory', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2f28f3cf-2fd9-4137-a30f-379930c121bf', N'PartNumber', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'324f385a-e995-47b2-a9ba-4c3c7e16a071', N'ProductionPlan', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'32cd507f-9a96-44be-95d4-05cbd542bf98', N'Mold', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'37fe4be3-746f-4f4d-8137-c78bbe4b1361', N'QuantityOfProductsOK', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'39dfaef4-67c6-489b-80ee-3524179c2bb6', N'Setting', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3ef19372-ab99-45c7-886e-d0eb247ea7f7', N'User', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'536cddbb-b7b7-4c02-b6ab-c97f654f286f', N'Setting', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5f62eec7-043a-4bb5-a526-10c5bf6ca2e6', N'ScanBarcode', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6184f304-6095-492b-ab8b-82962da12f80', N'Machine', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'679bbd4f-2ce9-4aae-a70e-2e5d6b379acd', N'Mold', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'76312a8b-0109-4512-a2f3-44808b84dc61', N'ScanBarcode', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'790bdc56-2027-4b16-ac68-7aa2d2faea0a', N'Shift', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7add1cee-7b14-4141-8d14-641ae4f2ce8c', N'PartNumber', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7b32a4fa-ea38-4e0f-a816-953d67cbf2b8', N'Language', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'819483d6-3c01-46b2-974d-71aee52b02a6', N'QuantityOfProductsOK', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'857eb643-3335-46ad-bda8-d9fb8f6136c6', N'ScanBarcode', N'View', N'92505961-47d6-423e-8d66-a93192baaa17', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8941a6ca-6f7d-4121-9c41-a259b2632a4b', N'ProductionPlan', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'90941351-297e-4d9d-af7d-6af6c975d7d4', N'Machine', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a7cd0302-2128-48be-8702-ea1cbd4cff67', N'RegistBarcode', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bf11d080-54bc-4b07-af0a-edc7e3597817', N'User', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c4ee870c-11ba-4890-a5f1-6d4b542cbccf', N'Language', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c61206a4-6c51-418a-9b3f-f52e928a7af5', N'ReportSyntheticProductionPlan', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'da5db072-4d1b-48a0-96a3-885e80e83082', N'Shift', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e5551beb-87ab-4c54-add0-08067d973214', N'ReportSyntheticRegistBarcode', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f8ba3112-4d39-4f1d-b190-e5e984311b49', N'QuantityOfProductsNG', N'View', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ff9e2911-9146-4c28-9360-f230f29bf717', N'ProductionHistory', N'View', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.213' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'00b74155-bf4d-427a-affe-76d0eeb224d1', N'Language', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'04b2aadc-9f08-4638-9253-20d41dcfad6e', N'PartNumber', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1a90185d-4255-450f-b12d-56aa81154d62', N'ReportSyntheticProductionPlan', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1dc581eb-dd85-49fa-a2ff-c4f8631f7417', N'QuantityOfProductsNG', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'20601350-a657-4e50-9707-0659ac216a26', N'ScanBarcode', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2502a3f4-5f7c-418e-aa21-8ae3412fabdf', N'QuantityOfProductsOK', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2591aeb5-7ede-432a-a867-b0b51684fb3f', N'Setting', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'82cb125c-e7e0-4298-b114-8581546db6f3', N'Shift', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'89d92fe0-f1c3-45ea-9fa8-55144012007d', N'Machine', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8a07c2fb-4755-43ad-9e28-4f5c8f503470', N'ProductionHistory', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a7f16d7e-de07-48ad-961d-64c4f3fa7010', N'ProductionPlan', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bcc97beb-9c20-4cc4-806e-5e9eb0cc3144', N'User', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd7aca9d6-a75f-498c-9a44-ead50335d2b4', N'ReportSyntheticRegistBarcode', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'dd7c9db0-8bf3-4dd7-917a-86697fb3f1c8', N'RegistBarcode', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e38bfe7d-1191-4578-833e-b8d6ebeb96fc', N'Mold', N'View', N'', 1, CAST(N'2020-06-18 12:22:17.167' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Shifts] ([Id], [ShiftNo], [BeginTime], [LengthHours], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aa35fb7c-91b9-48d9-9b71-83eff4b8227a', N'0001', CAST(N'06:00:00' AS Time), 12, NULL, 1, CAST(N'2020-06-18 12:22:17.337' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Shifts] ([Id], [ShiftNo], [BeginTime], [LengthHours], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'da798d8a-abe0-478a-a4c7-5fb8564c1962', N'0002', CAST(N'18:00:00' AS Time), 12, NULL, 1, CAST(N'2020-06-18 12:22:17.337' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'83e1ce0a-0186-410c-a1f2-0945e691da11', N'8b43e889-8dc9-4dc7-97a0-72b428cf711f', N'92505961-47d6-423e-8d66-a93192baaa17', CAST(N'2020-06-18 12:22:17.313' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b89f6e90-13c0-43a3-bcbe-9d28287a59e1', N'36137a57-0a62-45d6-82f3-bc6efe7e5e91', N'92505961-47d6-423e-8d66-a93192baaa17', CAST(N'2020-06-18 12:22:17.313' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'dc287afc-2be4-441c-b8b1-a24c54f252c9', N'6465554f-6096-4858-a3ef-92b3004f112f', N'8e448f75-ba29-4a6a-8df2-1f01f8556f72', CAST(N'2020-06-18 12:22:17.313' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f9224262-4555-40c9-b1a6-db2f70d7b65d', N'2b38cad8-3a7d-4c20-a6d2-2b2009eaf3da', N'3edeaca3-0022-4d86-9544-5cd5643b683a', CAST(N'2020-06-18 12:22:17.313' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2b38cad8-3a7d-4c20-a6d2-2b2009eaf3da', N'admin', N'VeJtk', N'de6ca27a0d68733ede5dbf2a36588158', N'Administrator', NULL, NULL, 1, NULL, 1, CAST(N'2020-06-18 12:22:16.960' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'36137a57-0a62-45d6-82f3-bc6efe7e5e91', N'ca1', N'VeJtk', N'0a0b3dc4c66a18cbe65775ac537d5d5d', N'Ca 1', NULL, NULL, 1, NULL, 1, CAST(N'2020-06-18 12:22:16.960' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6465554f-6096-4858-a3ef-92b3004f112f', N'quanly', N'VeJtk', N'9f04aabcc2da2f5ea630a024f1519e92', N'Quản lý', NULL, NULL, 1, NULL, 1, CAST(N'2020-06-18 12:22:16.960' AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8b43e889-8dc9-4dc7-97a0-72b428cf711f', N'ca2', N'VeJtk', N'097dd0439585d3e447bc52f1ccec44ff', N'Ca 2', NULL, NULL, 1, NULL, 1, CAST(N'2020-06-18 12:22:16.960' AS DateTime), N'Administrator', NULL, NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserID]    Script Date: 6/18/2020 1:02:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[ProductionPlans]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AuthorityGroupID]    Script Date: 6/18/2020 1:02:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuthorityGroupID] ON [dbo].[ProgramFunctionAuthorities]
(
	[AuthorityGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserID]    Script Date: 6/18/2020 1:02:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[RegistBarcodes]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AuthorityGroupID]    Script Date: 6/18/2020 1:02:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuthorityGroupID] ON [dbo].[UserAuthorities]
(
	[AuthorityGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserID]    Script Date: 6/18/2020 1:02:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[UserAuthorities]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductionPlans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductionPlans_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ProductionPlans] CHECK CONSTRAINT [FK_dbo.ProductionPlans_dbo.Users_UserID]
GO
ALTER TABLE [dbo].[ProgramFunctionAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID] FOREIGN KEY([AuthorityGroupID])
REFERENCES [dbo].[AuthorityGroups] ([Id])
GO
ALTER TABLE [dbo].[ProgramFunctionAuthorities] CHECK CONSTRAINT [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID]
GO
ALTER TABLE [dbo].[RegistBarcodes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RegistBarcodes_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[RegistBarcodes] CHECK CONSTRAINT [FK_dbo.RegistBarcodes_dbo.Users_UserID]
GO
ALTER TABLE [dbo].[UserAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID] FOREIGN KEY([AuthorityGroupID])
REFERENCES [dbo].[AuthorityGroups] ([Id])
GO
ALTER TABLE [dbo].[UserAuthorities] CHECK CONSTRAINT [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID]
GO
ALTER TABLE [dbo].[UserAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAuthorities_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserAuthorities] CHECK CONSTRAINT [FK_dbo.UserAuthorities_dbo.Users_UserID]
GO
USE [master]
GO
ALTER DATABASE [InavinaDB] SET  READ_WRITE 
GO
