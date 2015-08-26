var publishedComments;
var height = $(window).height();


function fillCave() {
    var caveFilled = false;
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 2130 && !caveFilled) { // if scroll is greater/equal then 100 and hasBeenTrigged is set to false.
            $(".water").animate({marginTop: "114.9%"}, 4000);
            caveFilled = true;
        }
    });
};

function moveRoom() {
  var roomMoved = false;
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 130 && !roomMoved) {
            $(".room-background").animate({marginTop: "3%"}, "slow");
            roomMoved = true;
        }
    });
}

function moveFrames() {
  var framesMoved = false;
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 1100 && !framesMoved) {
            $(".floating-pictures-one").animate({marginTop: "49%"}, 1500);
            $(".floating-pictures-two").animate({marginTop: "53%"}, 900);
            $(".floating-pictures-three").animate({marginTop: "48%"}, 2000);
            framesMoved = true;
        }
    });
}

function slideStuff() {
  var stuffSlid = false;
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 3044 && !stuffSlid) {
            $(".red-shape").animate({marginLeft: "-71%"}, "slow");
            $(".leave_your_stuff").animate({marginLeft: "-61%"}, "slow");
            stuffSlid = true;
        }
    });
}

function swapSupervisor() {
  var supervisorSwapped = false;
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 3754 && !supervisorSwapped) {
            $(".paulina-supervisor").animate({marginTop: "276.5%"}, "slow");
            $(".annik-supervisor").animate({marginTop: "300.5%"}, "slow");
            supervisorSwapped = true;
        }
    });
}

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
      $(".room-background").animate({marginTop: "3%"}, "slow");
    })).done($(".invisible-button-supervisor").mouseout(function(){
      console.log(height);
      $(".supervisor-bell-button").css("z-index", "-3");
      $(".supervisor-flag").css("z-index", "-4");
  }));  
}

function showGallery() {
  ($(".invisible-button-gallery").mouseover(function() {
      $(".go-gallery").css("z-index", "-1");
      $(".gallery-flag").css("z-index", "-1");
      $("body").animate({ scrollTop: 130  }, "slow");
      $(".room-background").animate({marginTop: "3%"}, "slow");
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
      $(".room-background").animate({marginTop: "3%"}, "slow");
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
      $(".room-background").animate({marginTop: "3%"}, "slow");
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
      $(".room-background").animate({marginTop: "3%"}, "slow");
    }));
  ($(".invisible-button-stuff").mouseout(function(){
      $(".go-stuff-behind").css("z-index", "-3");
      $(".stuff-behind-flag").css("z-index", "-4");
  }));  
}

function scrollToAbout() {
  ($(".invisible-button-about").click(function() {
      $("body").animate({ scrollTop: 770 }, 2000);
    }));

}

function scrollToSupervisor() {
  ($(".invisible-button-supervisor").click(function() {
      $("body").animate({ scrollTop: 4050 }, 8000);
    }));
} 

function scrollToNext() {
  ($(".invisible-button-next").click(function() {
      $("body").animate({ scrollTop: 2538 }, 6000);
    }));
} 

function scrollToStuff() {
  ($(".invisible-button-stuff").click(function() {
      $("body").animate({ scrollTop: 3270 }, 7000);
    }));
} 

function scrollToGallery() {
  ($(".invisible-button-gallery").click(function() {
      $("body").animate({ scrollTop: 1550 }, 3000);
    }));
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

  moveRoom();
  fillCave();
  moveFrames();
  slideStuff();
  swapSupervisor();

   
});