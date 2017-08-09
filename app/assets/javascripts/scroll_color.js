$(document).ready(function(){       
  var scroll_start = 0;
  var startchange = $('#startchange');
  var offset = startchange.offset();
  if (startchange.length){
   $(document).scroll(function() { 
      scroll_start = $(this).scrollTop();
      if(scroll_start > offset.top) {
        $(".masthead").css('background-color', 'rgba(51, 51, 51, .7)');
      } else {
        $('.masthead').css('background-color', 'transparent');
      }
   });
  }
});