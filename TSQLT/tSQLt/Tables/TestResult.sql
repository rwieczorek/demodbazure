CREATE TABLE [tSQLt].[TestResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [nvarchar](max) NOT NULL,
	[TestCase] [nvarchar](max) NOT NULL,
	[Name]  AS ((quotename([Class])+'.')+quotename([TestCase])),
	[TranName] [nvarchar](max) NOT NULL,
	[Result] [nvarchar](max) NULL,
	[Msg] [nvarchar](max) NULL,
	[TestStartTime] [datetime] NOT NULL,
	[TestEndTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[TestResult] ADD  CONSTRAINT [DF:TestResult(TestStartTime)]  DEFAULT (getdate()) FOR [TestStartTime]