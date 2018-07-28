$(".email-contact-button").click(function() {
  $([document.documentElement, document.body]).animate({
      scrollTop: $("#email-contact-form").offset().top
  }, 1500);
  return false;
});
