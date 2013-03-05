function show_new_task_form()
{
  $('#new_task').hide();
  $('.taskform').show();
  $('#create_task').show();
  $('#title').val('');
  $('#description').val('');
  var date = moment().format("MM/DD/YYYY");
  $('#due_date').val(date);
  $('#address').val('');
  $('#is_complete').removeAttr('checked');
  $('#title').focus();
}

function hide_task_form()
{
  $('#new_task').show();
  $('.taskform').hide();
}

function create_task()
{
  var priority_id = $('#priority_id').val();
  var title = $('#title').val();
  var description = $('#description').val();
  var due_date = $('#due_date').val();
  var is_complete = $('#is_complete').is(':checked');
  var address = $('#address').val();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "POST",
      url: "/tasks",
      data: {authenticity_token:token, 'task[title]':title, 'task[priority_id]':priority_id, 'task[description]':description, 'task[due_date]':due_date, 'task[is_complete]':is_complete, 'task[address]':address}
    }).done(process_task);

  return false;
}

function process_task(task_list)
{
  _.each(task_list, display_task);
}

function display_task(task)
{
  add_marker(task.latitude, task.longitude, task.title);

  var li = $('<li>');
  li.text(task.title);
  $('.task_list').append(li);

  hide_task_form();
}














