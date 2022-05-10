component {
    
    function up( schema, qb ) {
        queryExecute("
            CREATE TABLE [dbo].[FeatureFlags](
                [id] [int] IDENTITY(1,1) NOT NULL,
                [name] [varchar](50) NULL,
                [key] [varchar](50) NULL,
                [desc] [varchar](250) NULL,
                [tags] [varchar](250) NULL,
                [on] [bit] NULL,
                [createdby] [int] NULL,
                [defaultvariation] [varchar](11) NULL,
            CONSTRAINT [PK_FeatureFlags] PRIMARY KEY CLUSTERED 
            (
                [id] ASC
            )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
            ) ON [PRIMARY]
        ")    
    }

    function down( schema, qb ) {
        
    }

}
