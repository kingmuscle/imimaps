# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  # enable chosen js
  $('.chzn-select').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'

  $("#search_button_overview").click();

