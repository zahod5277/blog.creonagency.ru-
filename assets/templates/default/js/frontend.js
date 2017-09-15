var popupModal = {
    options: {
        instance: '#tinyPopup',
        closeBtn: '.popupClose'
    },
    initilialize: function () {
        $this = this;
    },
    closePopup: function(){
        $(this.options.instance).hide('fast');
    },
    showPopup: function(){
        $(this.options.instance).show('slow');
    }
};

$(document).ready(function () {
    popupModal.initilialize();
    var outerHeight = $(document).height();
    $('.page_content img').removeAttr('width');
    $('.page_content img').removeAttr('height');
    $('.menu_ticker').on('click', function () {
        $('.menu').slideToggle(200);
    });
    $(popupModal.options.closeBtn).on('click',function(){
        popupModal.closePopup();
    });
    $(document).on('scroll', function () {
        if ($(window).scrollTop() > (outerHeight / 4)) {
            console.log('scrollin');
            if (!localStorage.popup) {
                localStorage.setItem('popup', true);
                popupModal.showPopup();
            }
        }
    });
});