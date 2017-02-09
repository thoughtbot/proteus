(function() {
  $(function() {
    var supportsSVG;
    supportsSVG = document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image", "1.1");
    if (!supportsSVG) {
      $('body').addClass('no-svg');
      return $("[data-svg-fallback]").each(function() {
        var $image, fallback;
        $image = $(this);
        fallback = $image.data("svg-fallback");
        return $image.attr("src", fallback);
      });
    }
  });

}).call(this);
