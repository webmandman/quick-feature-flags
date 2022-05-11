component {
    
    function up( schema, qb ) {
        schema.create( "FeatureFlags", function( table ){
            table.increments("id");
            table.string("name").unique();
            table.string("key").unique();
            table.string("desc");
            table.string("tags");
            table.bit("on");
            table.integer("createdby");
            table.string("defaultvariation",11);
        })
    }

    function down( schema, qb ) {
        schema.drop("FeatureFlags");
    }

}
