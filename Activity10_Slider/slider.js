$(document).ready(function() {
    var slider = $("#slider").bxSlider({
        auto: true,
        randomStart: true,
        moveSlides: 1,
        minSlides: 1,
        maxSlides: 1,
        slideWidth: 250,
        slideMargin: 10,
        pause: 3000,
        pager: true,
		pagerType: 'short',
		captions: true,
    });
});
