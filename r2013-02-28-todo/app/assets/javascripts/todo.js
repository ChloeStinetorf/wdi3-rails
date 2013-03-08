var map;
var markers = [];

$(function(){

  $('#new_priority').click(show_new_form);
  $('#create_priority').click(create_priority);
  $('#cancel_priority').click(hide_form);
  $('#update_priority').click(update_priority);

  $('.pri_list').on('click', '.color', edit_priority);
  $('.pri_list').on('click', '.up', up_priority);
  $('.pri_list').on('click', '.down', down_priority);

  $('#new_task').click(show_new_task_form);
  $('#create_task').click(create_task);
  $('#cancel_task').click(hide_task_form);

  $('.edit_task').click(edit_task);
  $('.delete_task').click(delete_task);
  $('.update_task').click(update_task);

  create_boxes();
  init_minicolors();

});





