component {
    
    function up( schema, qb ) {
        schema.create("FeatureFlagVariations", function( table ){
            table.increments("id");
            table.string("name",50);
            table.string("desc",250);
            table.string("type",30);
            table.string("variation1",50);
            table.string("variation2",50);
            table.string("variation3",50);
            table.string("variation4",50);
            table.string("variation5",50);
            table.string("variation6",50);
            table.integer("flagid");
        })
    }

    function down( schema, qb ) {
        schema.drop("FeatureFlagVariations");
    }

}
