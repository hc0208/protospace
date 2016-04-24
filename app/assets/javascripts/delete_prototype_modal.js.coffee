$ ->
  $('#inputtedPrototypeName[name="name"]').keyup ->
    is_disabled = $(@).val() == $(@).data("name-id")
    $("#submit_btn").prop("disabled", !(is_disabled))
