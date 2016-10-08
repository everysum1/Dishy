$(document).ready(function() {
  displayUpvotes();
});

var displayUpvotes = function() {
  $(".vote-link").on("click", function(event) {
    event.preventDefault();
    var voteLink = $(this)
    var url = $(this).attr("href");
    var request = $.ajax({
      url: url,
      type: "POST",
      dataType: "json"
    });
    request.done(function(response) {
      console.log($("#arugula-" + response.id).children().attr("src"))
      $("#vote-count-" + response.id).html(response.text);
      if($("#arugula-" + response.id).children().attr("src") == "/assets/arugula-green.png") {
        $("#arugula-" + response.id).children().attr("src", "/assets/arugula.png");
      } else if($("#arugula-" + response.id).children().attr("src") == "/assets/arugula-green-8c08ec3c29d8d6dabab8b6271a8712b08fe4a66490733ac46c7986599c330c0c.png") {
        $("#arugula-" + response.id).children().attr("src", "/assets/arugula.png");
      }
      else {
        $("#arugula-" + response.id).children().attr("src", "/assets/arugula-green.png");
      }
    });
  });
}


