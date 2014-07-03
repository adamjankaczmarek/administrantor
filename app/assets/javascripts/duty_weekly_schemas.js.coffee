# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $("#altar_boys a.add_fields").data("association-insertion-position", "before").data "association-insertion-node", "this"
# $("#altar_boys").bind "insertion-callback", ->
#   $(".altar_boy-duty-fields a.add_fields").data("association-insertion-position", "before").data "association-insertion-node", "this"
#   $(".altar_boy-duty-fields").bind "insertion-callback", ->
#     $(this).children("#altar_boy_from_list").remove()
#     $(this).children("a.add_fields").hide()

toggleCell = (checkbox) ->
  if checkbox.is(':checked')
    checkbox.parent().addClass 'danger'
  else
    checkbox.parent().removeClass 'danger'

$(document).on "page:change", ->

  toggleCell $(checkbox) for checkbox in $('input:checkbox')

  $('input:checkbox').change ->
    toggleCell($(this))

  $('td').click ->
    $(cb).click() for cb in $(this).children("input:checkbox")


#$('input:checkbox').live('change', () -> alert('checked'))