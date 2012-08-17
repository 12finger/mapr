# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#contact_startDate').datetimepicker
    dateFormat: 'yy-mm-dd'
    hour: "10"
    minute: "00"


jQuery ->
  $('#contact_endDate').datetimepicker
    dateFormat: 'yy-mm-dd'
    hour: "21"
    minute: "30"
