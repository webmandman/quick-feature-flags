component {
    
    function up( schema, qb ) {
        qb.from("FeatureFlags")
            .insert([{
                "name" = "PAAG - Dollars Spent This Week",
                "key" = "paag-dollars-spent-this-week",
                "desc" = "desc",
                "tags" = "paag",
                "on" = 1,
                "createdby" = "31310",
                "defaultvariation" = "false"
            }]);
        qb.newQuery().from("FeatureFlagUsers")
            .insert([
                {"employeeid" = "31310","flagid" = 1},
                {"employeeid" = "2638","flagid" = 1}
            ]);
        qb.newQuery().from("FeatureFlagVariations")
            .insert([
                {
                    "name" = "name",
                    "desc" = "desc",
                    "type" = "boolean",
                    "variation1" = "true",
                    "variation2" = "false",
                    "variation3" = "3",
                    "variation4" = "4",
                    "variation5" = "5",
                    "variation6" = "6",
                    "flagid" = 1
                },
                {
                    "name" = "name",
                    "desc" = "desc",
                    "type" = "boolean",
                    "variation1" = "true",
                    "variation2" = "false",
                    "variation3" = "3",
                    "variation4" = "4",
                    "variation5" = "5",
                    "variation6" = "6",
                    "flagid" = 2
                }
            ]);
    }

    function down( schema, qb ) {
        qb.from("FeatureFlags").delete();
        qb.newQuery().from("FeatureFlagUsers").delete();
        qb.newQuery().from("FeatureFlagVariations").delete();
    }

}
