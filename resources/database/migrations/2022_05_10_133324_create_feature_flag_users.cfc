component {
    
    function up( schema, qb ) {
        schema.create( "FeatureFlagUsers", function( table ){
            table.increments("id");
            table.integer("employeeid");
            table.integer("flagid");
        })
    }

    function down( schema, qb ) {
        schema.drop("FeatureFlagUsers");
    }

}
