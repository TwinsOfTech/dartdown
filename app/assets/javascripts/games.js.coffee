# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#

jQuery("#game_teams").live 'change', (event) =>
  new_team_count = jQuery(event.currentTarget).find('option:selected').attr('value')
  current_team_count = jQuery("#teams").find('p').size()
  if new_team_count > current_team_count
    while jQuery("#teams").find('p').size() < new_team_count
      jQuery("#teams p:first").clone().appendTo(jQuery("#teams"))
  else
    while jQuery("#teams").find('p').size() > new_team_count
      jQuery("#teams p:last").remove()

jQuery ->
  jQuery(".game-team-holder").each (count, obj) ->
    if ($(obj).find('.togo').html() == '0')
      $(obj).addClass('winner');
