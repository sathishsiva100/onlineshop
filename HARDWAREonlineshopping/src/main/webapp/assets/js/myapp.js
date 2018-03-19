$(function(){
	//solving the active menu problem
	switch(menu){
	
	case'About us':
	  $('#about').addClass('active');
	  break;
	  
	case'Help':
		  $('#help').addClass('active');
		  break;
	  
	  
	  
	case'Contact us':
		  $('#Contact').addClass('active');
		  break;
	
	default:
		$('#home').addClass('active');
	break;
	}
	
	
	
	
	
	
	
	
	
});