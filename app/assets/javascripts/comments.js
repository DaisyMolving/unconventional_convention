var publishedComments

function displayComments(id) {
  $.ajax({
    method: 'GET',
    url: '/comments/',
    dataType: 'json'
  }).done(function(data){
    publishedComments = data;

    $("#comments_display").append($('<p class="published_comment"></p>').html(publishedComments));
  })
}


$(document).ready(function() {

  displayComments();


})