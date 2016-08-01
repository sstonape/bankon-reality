$(document).on("ready",function(){
	_scrollToSection();
	var headerHt = $(".pageHeader").outerHeight();
	$(window).on("scroll",function(){
		var bodyScroll = $("body").scrollTop();
		console.log(bodyScroll);
		$(".pageHeader").toggleClass("fixedHeader",(bodyScroll > headerHt))
	});

});

/**
 * page scroll to particular function
 */
var _scrollToSection = function(){
	$(document).on("click",".pageMenu li a",function(e){
		e.preventDefault();
		var eTarget = $(this).attr("href");
		$("html,body").animate({
				scrollTop: $(eTarget).offset().top
		},1000);		
	});	
};

