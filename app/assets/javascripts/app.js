

var open=false;

$("html").click(function(){
    if (open===true){
   $("#drop-menu").slideUp(20,function(){
       open=false;
   });
        
    };    
});

$(".menu-about").click(function(e) {
    e.preventDefault();
    $("#drop-menu").slideToggle(50,"linear",
    function(){
        if (open===false){
            open=true;
        }else{
            open=false;
        };
    });
});    


//$(".r").click(function(e){
//    e.preventDefault();
//    $(".hideul").css("display","block");
//});

$("#nav_lines").on("click", function(){
    $("#mobile_menu").slideToggle(600);
    $(".hamburger").toggleClass("hamburger_toggle");
    $("#mobile-drop").slideUp(300);
}); //mobile menu

$(".mobile-menu-about").click(function(e){
    e.preventDefault();
$("#mobile-drop").slideToggle(300);
}); //"About" mobile sub-menu

$(".donate-button").click(function(){
    $("#mobile_menu").slideUp(300);
});

$(window).resize(function(){
    if($(this).width() > 1020){
   $("#mobile_menu").slideUp(100); 
   $(".hamburger").removeClass("hamburger_toggle");   $("#mobile-drop").slideUp(100);     
    }//close full screen drop menu when pc screen increases.
});



var mySwiper = new Swiper ('.swiper-container', {
            // Optional parameters
            direction: 'horizontal',
            loop: true,

            // If we need pagination
            pagination: '.swiper-pagination',

            // Navigation arrows
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            speed: 100,
            roundLengths: true,
//            autoplay: 2500,
            coverflow: {rotate: 50},
            spaceBetween: 2,
            scrollbar: ".swiper-scrollbar",
            scrollbarDraggable: true,
            effect: "fade",
            grabCursor: "true",
            zoom: true,  

          });  

