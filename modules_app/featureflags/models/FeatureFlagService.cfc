component {

	// Dependencies
	property name="Feature" inject="Feature@featureflags";
	
	any function init(){
		return this;
	}

	function getVariationDetail(
		required string flagkey,
		required numeric employeeid
	){	
		var flag = Feature.Where("key", arguments.flagkey).firstOrFail();
		var variation = flag.getVariation();
		var users = flag.getUsers();
		
		return variation;

	}

	function buildBooleanVariationDetail( 
		required any flagEntity,
		required any variationEntity,
		required any userEntities,
		required numeric employeeid
	 ){
		var detail = {};
		
		detail['feature'] = arguments.flagEntity.getMemento();
		detail['variation'] = arguments.variationEntity.getMemento();
		
		var u = [];
		for( entity in arguments.userEntities ){
			u.append(entity.getMemento());
		}
		detail['users'] = u;
		detail['employeeid']  = arguments.employeeid;

		detail['isEnabled'] = false;
		for( u in detail.users ){
			if( u.employeeid == arguments.employeeid ){
				detail.isEnabled = true;
				break;
			}
		}

		return detail;
	}

}
