$(function() {

	// solving the active menu problem

	switch (menu) {

	case 'About Us':
		$('#about').addClass('active');
		break;

	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	default:
		if (menu == "Home")
			break;
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	}

	// code for jquery dataTable
	// create a dataset
	var products = [

	[ '1', 'ABC' ], 
	[ '2', 'NMF' ],
	[ '3', 'FDD' ], 
	[ '4', 'DFC' ],
    [ '5', 'FDA' ],
    [ '6', 'FDS' ],
    [ '7', 'DEF' ], 
    [ '8', 'VFG' ]

	];

	var $table = $('#productListTable');
	// execute the below code only where we have this table
	if ($table.length) {

		console.log('Inside the table');
		
		
		

	}

});
