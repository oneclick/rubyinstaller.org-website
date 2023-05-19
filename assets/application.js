$(function() {
  $(".js-copybtn").click(function(event) {
    var $input = $(this).prev(".js-copytextinput");
    $input.trigger("select")
    navigator.clipboard.writeText($input.val());
  });

  $("a.downloadinfo").click(function () {
    $(this).toggleClass("active");
    $(this).nextAll("ul.downloadinfo").toggle(500);
  });
});
