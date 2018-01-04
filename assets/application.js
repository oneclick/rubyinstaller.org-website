$(function() {
  var copyBtn = $(".js-copybtn");
  copyBtn.click(function(event) {
    var input = $(this).prev(".js-copytextinput");
    input.select();
    document.execCommand("copy");
  });

  $("a.downloadinfo").click(function () {
    $(this).toggleClass("active");
    $(this).nextAll("ul.downloadinfo").toggle(500);
  });
});
