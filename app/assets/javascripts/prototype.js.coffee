$ ->
  $('.js-prototype-image').each (e,v) ->
    $(v).click ->
      image = $('#prototype_thumbnails_attributes_'+e+'_image')[0]
      $(image).change ->
        reader = new FileReader
        reader.readAsDataURL(image.files[0])
        reader.onload = ->
          $('#js_'+e+'_preview')[0].src = reader.result
          $('#js_'+e+'_preview').css {
            'display':'inline',
            'width':'100%',
            'height':'100%'
          }
