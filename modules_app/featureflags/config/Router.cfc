component{

	function configure(){

		route( "/feature/:flagkey/:employeeid" )
			.withAction({
				GET = 'getVariationDetail'
			})
			.toHandler( "feature" );

	}

}