var publishedComments;
var parallaxElements = [];
var windowHeight = 0;


function displayComments() {
  $.ajax({
    method: 'GET',
    url: '/comments/',
    dataType: 'json'
  }).done(function(data){
    publishedComments = data;
    var arrayLength = publishedComments.length;
    for (var i = 0; i < arrayLength; i++) {
     $(".list-of-comments").append($('<p class="published_comment"></p>').html('" ' + publishedComments[i].content + ' "' + '</br>' + '  - ' + publishedComments[i].guestname));
    }
  });
}

function showSupervisor() {
    $.when($(".invisible-button-supervisor").mouseover(function() {
      $(".supervisor-bell-button").css("z-index", "4");
      $(".supervisor-flag").css("z-index", "-1");
      $("body").animate({ scrollTop: 130  }, "slow");
    })).done($(".invisible-button-supervisor").mouseout(function(){
      $(".supervisor-bell-button").css("z-index", "-3");
      $(".supervisor-flag").css("z-index", "-4");
  }));  
}

function showGallery() {
  ($(".invisible-button-gallery").mouseover(function() {
      $(".go-gallery").css("z-index", "-1");
      $(".gallery-flag").css("z-index", "-1");
      $("body").animate({ scrollTop: 130  }, "slow");
    }));
  ($(".invisible-button-gallery").mouseout(function(){
      $(".go-gallery").css("z-index", "-3");
      $(".gallery-flag").css("z-index", "-4");
  }));  
}

function showAbout() {
  ($(".invisible-button-about").mouseover(function() {
      $(".about_us_door_button").css("z-index", "1");
      $(".about_us_flag").css("z-index", "-1");
      $("body").animate({ scrollTop: 130  }, "slow");
    }));
  ($(".invisible-button-about").mouseout(function(){
      $(".about_us_door_button").css("z-index", "-3");
      $(".about_us_flag").css("z-index", "-4");
  }));  
}

function showNext() {
  ($(".invisible-button-next").mouseover(function() {
      $(".whats-next-button").css("z-index", "-1");
      $(".whats-next-flag").css("z-index", "-1");
      $("body").animate({ scrollTop: 130  }, "slow");
    }));
  ($(".invisible-button-next").mouseout(function(){
      $(".whats-next-button").css("z-index", "-3");
      $(".whats-next-flag").css("z-index", "-4");
  }));  
}

function showStuff() {
  ($(".invisible-button-stuff").mouseover(function() {
      $(".go-stuff-behind").css("z-index", "2");
      $(".stuff-behind-flag").css("z-index", "-1");
      $("body").animate({ scrollTop: 130 }, "slow");
    }));
  ($(".invisible-button-stuff").mouseout(function(){
      $(".go-stuff-behind").css("z-index", "-3");
      $(".stuff-behind-flag").css("z-index", "-4");
  }));  
}

function scrollToAbout() {
  ($(".invisible-button-about").click(function() {
      $("body").animate({ scrollTop: 770 }, "slow");
    }));

}

function scrollToSupervisor() {
  ($(".invisible-button-supervisor").click(function() {
      $("body").animate({ scrollTop: 4050 }, "slow");
    }));
} 

function scrollToNext() {
  ($(".invisible-button-next").click(function() {
      $("body").animate({ scrollTop: 2570 }, "slow");
    }));
} 

function scrollToStuff() {
  ($(".invisible-button-stuff").click(function() {
      $("body").animate({ scrollTop: 3270 }, "slow");
    }));
} 

function scrollToGallery() {
  ($(".invisible-button-gallery").click(function() {
      $("body").animate({ scrollTop: 1550 }, "slow");
    }));
}  

function parallax(scrollTop) {

  for (var id in parallaxElements) {

        // distance of element from top of viewport
    var viewportOffsetTop = parallaxElements[id].initialOffsetY - scrollTop;

        // distance of element from bottom of viewport
    var viewportOffsetBottom = windowHeight - viewportOffsetTop;

    if ((viewportOffsetBottom >= parallaxElements[id].start) && (viewportOffsetBottom <= parallaxElements[id].stop)) {
            // element is now active, fix the position so when we scroll it stays fixed

      var speedMultiplier = parallaxElements[id].speed || 1;
      var pos = (windowHeight - parallaxElements[id].start);

      $(parallaxElements[id].elm)
        .css({
          position: 'fixed',
          top: pos+'px',
          left: '50%',
          marginLeft: -(parallaxElements[id].width/2) +'px'
        });

    } else if (viewportOffsetBottom > parallaxElements[id].stop) {
            // scrolled past the stop value, make position relative again

      $(parallaxElements[id].elm)
        .css({
          position: 'relative',
          top: (parallaxElements[id].stop-parallaxElements[id].start)+'px',
          left: 'auto',
          marginLeft: 'auto'
        });

    } else if (viewportOffsetBottom < parallaxElements[id].start) {
            // scrolled up back past the start value, reset position

      $(parallaxElements[id].elm)
        .css({
          position: 'relative',
          top: 0,
          left: 'auto',
          marginLeft: 'auto'
        });

    }
  }
}

$(document).ready(function() {

  windowHeight = $(window).height();
  $("body").animate({ scrollTop: 0  }, "slow");

  displayComments();

  showSupervisor();
  showGallery();
  showAbout();
  showNext();
  showStuff();

  scrollToGallery();
  scrollToStuff();
  scrollToNext();
  scrollToSupervisor();
  scrollToAbout();

  var touchSupported = (('ontouchstart' in window) || window.DocumentTouch && document instanceof DocumentTouch);

  if (touchSupported) {
    $(window).bind('touchmove', function(e) {
      var val = e.currentTarget.scrollY;
        parallax(val);
    });
  }

  $(window).bind('scroll', function(e) {
    var val = $(this).scrollTop();
      parallax(val);
  });

  $(window).resize(function() {
    windowHeight = $(this).height();
    for (var id in parallaxElements) {
      parallaxElements[id].initialOffsetY = $(parallaxElements[id].elm).offset().top;
      parallaxElements[id].height = $(parallaxElements[id].elm).height();
    }
  });
   
});