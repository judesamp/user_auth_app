# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $("#submit_button").on "click", (e) ->
    if $("#email_field").val() is ""
      e.preventDefault()
      alert "You cannot leave the email field blank!"
    else if $("#password_field").val() is ""
      e.preventDefault()
      alert "You cannot leave the password field blank"
    else
      e.preventDefault()
      alert "You cannot do that here. This is not a working form"
    return

  $('.lightbox_trigger').on "click", (e) ->
    e.preventDefault();
    image_href = $(this).attr "src"
    if $("#lightbox").length > 0
      $("#content").html "<img src=\"" + image_href + "\" />";
      $("#lightbox").show();
    else
      lightbox = "<div id=\"lightbox\">" + "<p>Click to close</p>" + "<div id=\"content\">" + "<img src=\"" + image_href + "\" />" + "</div>" + "</div>"
      $("body").append lightbox
    return

  
  $(document).on "click", "#lightbox", ->
    $("#lightbox").hide();
    return

  $(".images").on
    mouseover: ->
      $(".images").addClass "background_gray"
      return

    mouseout: ->
      $(".images").removeClass "background_gray"
      return

  $(".next").on "click", ->
    $(".first").removeClass "showit"
    $(".first").addClass "hide"
    $(".fourth").removeClass "hide"
    $(".fourth").addClass "showit"
    $(".first").addClass "rollover"
    $(".second").addClass "first"
    $(".second").removeClass "second"
    $(".third").addClass "second"
    $(".third").removeClass "third"
    $(".fourth").addClass "third"
    $(".fourth").removeClass "fourth"
    $(".fifth").addClass "fourth"
    $(".fifth").removeClass "fifth"
    $(".sixth").addClass "fifth"
    $(".sixth").removeClass "sixth"
    $(".seventh").addClass "sixth"
    $(".seventh").removeClass "seventh"
    $(".rollover").removeClass "first"
    $(".rollover").addClass "seventh"
    $(".rollover").removeClass "rollover"
    return
