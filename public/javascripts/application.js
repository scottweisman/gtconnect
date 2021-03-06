// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {  
	
	$("#marketing_contact_last_contact").datepicker({dateFormat: 'mm-dd-yy'});  
	
	$(".hidden_info").hide();
	$("h2.contact_link").click(function () {
		$(this).toggleClass("active").next().slideToggle("fast");
		return false;		
	});
	
	$('.website_opt_input').hide();
	$('p.website_opt_text').click(function () {
		$('p.website_opt_text').hide();
		$('.website_opt_input').show("slow");
	});
	
	$('.facebook_opt_input').hide();
	$('p.facebook_opt_text').click(function () {
		$('p.facebook_opt_text').hide();
		$('.facebook_opt_input').show("slow");
	});
	
	$('.twitter_opt_input').hide();
	$('p.twitter_opt_text').click(function () {
		$('p.twitter_opt_text').hide();
		$('.twitter_opt_input').show("slow");
	});
	
	$('.address_opt_input').hide();
	$('p.address_opt_text').click(function () {
		$('p.address_opt_text').hide();
		$('.address_opt_input').show("slow");
	});
	
});