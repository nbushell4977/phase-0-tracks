window.onload = function() {

	

};


$( document ).ready(function(){

	alert( "Here's the page." );


	$( "a" ).click(function( event ) {
		alert( "You clicked" );
		event.preventDefault();
	});


	$( "h1" ).click(function( event ) {
		alert( "Now you see me, now you don't!");
		$(this).hide();
	});


	$( ".div1" ).click(function( event ) {
		alert("sees click on div1");
		$(this).addClass( "green" );
		$(this).removeClass( "div1");
	});

	
	$( ".green" ).click(function( event ) {
		alert("sees click on green");
		$(this).addClass( "div1" );
		$(this).removeClass( "green" );
	});
	



	$( "p" ).mouseenter(function( event ){
		$(this).addClass( "red" );
	});

	$( "p" ).mouseleave(function( event ){
		$(this).removeClass( "blue" );
	});



});