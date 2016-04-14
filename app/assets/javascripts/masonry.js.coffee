$ ->
  $('#masonry-container').masonry
    itemSelector: '.mas-box',
    gutterWidth: 10,
    isAnimated: true,
    animationOptions: {
      duration: 400,
      easing: 'swing'
    }
$ ->
  $('.mas-box').hide();
  $('.mas-box').each((i) ->
    $(this).delay(i * 20).fadeIn(500))
