component 
	extends="coldbox.system.RestHandler" {

	property name="FeatureFlagService" inject="FeatureFlagService@featureflags";

	function index(){
		return "Hello Feature Flag User";
	}

	function getVariationDetail( event, rc, prc ){
		var result = FeatureFlagService.getVariationDetail(argumentCollection=rc);
		return result;
	}

}
