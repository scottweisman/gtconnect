// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {  
	
	$("#marketing_contact_last_contact").datepicker({dateFormat: 'mm-dd-yy'});  
	
	$(".hidden_info").hide();
	$("h2.contact_link").click(function () {
		$(this).toggleClass("active").next().slideToggle("fast");
		return false;		
	});
});