$ ->
  supportsSVG = document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image", "1.1")
  isSafari = /Safari/.test(navigator.userAgent) && /Apple Computer/.test(navigator.vendor)

  unless supportsSVG and !isSafari
    $('body').addClass 'no-svg'
    $("[data-svg-fallback]").each ->
      $image = $(this)
      fallback = $image.data("svg-fallback")
      $image.attr("src", fallback)
