$(document).on("ready",function(){
	_scrollToSection();
	_submenuPosition();	
	_windowScroll();
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


/**
 * Used to set header submenu position depending on available space
 */
var _submenuPosition = function(){
	$(document).on("mouseenter",".pageMenu > ul > li",function(e){
		var wWidth = $(window).outerWidth();
		var _parent = $(this);
		var childMenu = $(this).find(".subMenu")[0];
		if(childMenu){
			var locChildMenu = $(childMenu).offset().left + $(childMenu).width();
			if(locChildMenu > wWidth) {
				$(childMenu).css("left", "auto");
				$(childMenu).css("right","0");
			}
		}	
	});
}

/**
 * Used to set header menu position after scroll
 */
var _windowScroll = function(){
	var headerHt = $(".pageHeader").outerHeight();
	$(window).on("scroll",function(){
		var bodyScroll = $("body").scrollTop();		
		$(".pageHeader").toggleClass("fixedHeader",(bodyScroll > headerHt))
	});
}