# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $("#modal_button").on "click", ->
    $("#login_modal").hide();
    $("#my_modal").slideToggle 800, "linear"
    return

  $("#login_button").on "click", ->
    $("#my_modal").hide();
    $("#login_modal").slideToggle 800, "linear"
    return

  $("#login_button2").on "click", ->
    $("#my_modal").hide();
    $("#login_modal").slideToggle 800, "linear", ->
    return

  $("#signup_submit").on "click", (e) ->
    if $("#the_name_field").val() is ""
      e.preventDefault()
      alert "You cannot leave the name blank!"
    return

  $(".sign_in_link").on "click", (e) ->
    e.preventDefault()
    $("#my_modal").hide();
    $("#login_modal").slideToggle 800, "linear", ->

  # $(".confirmation_link").on "click", (e) ->
  #   $("#my_modal").hide();
  #   $("#login_modal").hide();

  # $(".forgot_link").on "click", (e) ->
  #   $("#my_modal").hide();
  #   $("#login_modal").hide();
    

    
