
component 
    extends="quick.models.BaseEntity" 
    table="FeatureFlags"
    grammar="SqlServerGrammar@qb"
    accessors="true" {
    
    property name="id";
    property name="name";
    property name="key";
    property name="desc";
    property name="tags";
    property name="on";
    property name="createdby";
    property name="defaultvariation";
    
    function variation(){
        return hasOne( 
            relationName = "FeatureVariation@featureflags",
            foreignKey = "flagid" );
    }
    
    function users(){
        return hasMany(
            relationName = "FeatureUser@featureflags",
            foreignKey = "flagid"
        )
    }
    
}