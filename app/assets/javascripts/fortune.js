
$(function() {

  $("#random-fortune").on("click", function(event) {
    var request = $.ajax({
      method: "GET",
      url: "/fortunes/1"
    });

    request.done(function(data) {
      alert(data.fortune.body)
    });

  });
});
