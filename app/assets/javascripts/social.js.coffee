// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on 'page:change', ->
  FB.init({ status: true, cookie: true, xfbml: true });
