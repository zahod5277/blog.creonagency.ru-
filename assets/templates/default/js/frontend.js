$(document).ready(function(){
        $('.page_content img').removeAttr('width');
        $('.page_content img').removeAttr('height');
	$('.menu_ticker').on('click',function(){
        $('.menu').slideToggle(200);
    });
});