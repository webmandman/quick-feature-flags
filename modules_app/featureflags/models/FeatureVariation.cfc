
component 
    extends="quick.models.BaseEntity" 
    table="FeatureFlagVariations"
    grammar="SqlServerGrammar@qb"
    accessors="true" {
    
    property name="id";
    property name="name";
    property name="type";
    property name="desc";
    property name="flagid";
    property name="variation1";
    property name="variation2";
    property name="variation3";
    property name="variation4";
    property name="variation5";
    property name="variation6";
    
}