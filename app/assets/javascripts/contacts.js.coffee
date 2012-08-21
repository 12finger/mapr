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

# search by date datepickers,
# plus: some logic to handle datepicker events

startCheck = false
endCheck   = false

jQuery ->
  $('#start').datepicker
    dateFormat: 'yy-mm-dd'
    numberOfMonths: 1
    changeMonth: true
    changeYear: true
    onSelect: (selectedDate) ->
      startCheck = true
      $('#searchByDate').submit().click() if endCheck

jQuery ->
  $('#end').datepicker
    dateFormat: 'yy-mm-dd'
    numberOfMonths: 1
    changeMonth: true
    changeYear: true
    onSelect: (selectedDate) ->
      endCheck = true
      $('#searchByDate').submit().click() if startCheck








