var publishedComments;

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
      $(".supervisor-bell-button").css("z-index", "10");
      $(".supervisor-flag").css("z-index", "-1");
    })).done($(".invisible-button-supervisor").mouseout(function(){
      $(".supervisor-bell-button").css("z-index", "-3");
      $(".supervisor-flag").css("z-index", "-4");
  }));  
}


$(document).ready(function() {

  displayComments();
  $(".supervisor-bell-button").css("z-index", "-3");

  showSupervisor();



});