$(document).ready(function(){
	$('.menu_ticker').click(function(){
        $('.menu').slideToggle(200);
        $('.page_content img').removeAttr('width');
        $('.page_content img').removeAttr('height');
    });
});