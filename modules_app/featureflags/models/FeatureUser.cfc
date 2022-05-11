
component 
    extends="quick.models.BaseEntity" 
    table="FeatureFlagUsers"
    grammar="SqlServerGrammar@qb"
    accessors="true" {
    
    property name="id";
    property name="employeeid";
    property name="flagid";
    
}