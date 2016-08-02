var _init = function(){
    var touchBtn = $('.responsiveButton'),
        body = $('body'),
        vsMenu = $('.vsMenu'),
        html = $('html'),
        vsMenuPosition = parseInt(vsMenu.css('right')),
        vsMenuWidth = parseInt(vsMenu.width()),
        windowWidth = parseInt($(window).width());

    var _open = function(this_){
        this_.addClass('vsMenuOpen');
        vsMenu.scrollTop(0);
        vsMenu.animate({
            right: '0'
        });
        body.animate({
            right: vsMenuWidth
        });
        body.addClass('vsMenuBody');
        body.css({
            position: 'fixed',
            overflow: 'hidden',
            width: windowWidth
        });
        $('.headerWrap').css({
            width: windowWidth
        });
    }

    var _close = function(this_){
        this_.removeClass('vsMenuOpen');
        vsMenu.animate({
            right: -vsMenuWidth
        }, function () {
            vsMenu.removeAttr('style');
        });
        body.stop().animate({
            right: '0'
        }, function () {
            body.removeClass('vsMenuBody');
            body.removeAttr('style');
            $('.headerWrap').removeAttr('style');
        });

    } 

    touchBtn.click(function (e) {
        e.preventDefault();
        vsMenuPosition = parseInt(vsMenu.css('right'));
        if (vsMenuPosition == -vsMenuWidth) {
            _open($(this));
        } else {
           _close($(this));
        }
    }); 

    $('body').click(function() {
        vsMenuPosition = parseInt(vsMenu.css('right'));        
        if (vsMenuPosition === 0) {
            _close(touchBtn);
        }
    });
    $('body').on("click", ".vsMenu", function(event) {
        event.stopPropagation();
    });
    $(window).resize(function() {
        windowWidth = parseInt($(window).width());
        vsMenuWidth = parseInt(vsMenu.width());
        touchBtn = $('.responsiveButton');
        if(windowWidth >767){
            if(touchBtn.hasClass('vsMenuOpen')) {
                touchBtn.trigger('click');
            }
        }
    });
    $('body').on('click', '.help', function(e){
        e.preventDefault();
        $(this).toggleClass('open');
        $(this).next().slideToggle();
    });
};  

$(document).ready(function() {
   _init();
});

