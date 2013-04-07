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
  var task_id = $('#task_id').val();

  $.ajax({
      dataType: 'json',
      type: "POST",
      url: "/tasks/" + task_id,
      data: {authenticity_token:token, 'task[title]':title, 'task[priority_id]':priority_id, 'task[description]':description, 'task[due_date]':due_date, 'task[is_complete]':is_complete, 'task[address]':address}
    }).done(process_task);

  return false;
}

function process_task(task_list)
{
  _.each(task_list, add_task_to_array);
  $('ul.task_list').empty();
  _.each(tasks, display_task);
}

function add_task_to_array(task)
{
  tasks = _.reject(tasks, function(t){return t.id == task.id;});
  tasks.push(task);
  tasks = _.sortBy(tasks, function(t){ return t.priority.value; }).reverse();
}

function display_task(task)
{
  console.log(task);
  add_marker(task.latitude, task.longitude, task.title);

  var li = $('<li>');
  var span1 = $('<span>');
  var span2 = $('<span>');

  span1.addClass('priority color');

  span1.css('background-color', task.priority.color);
  span2.text(task.title);

  li.append([span1, span2]);
  $('.task_list').append(li);

  hide_task_form();
}

function update_task()
{
  var priority_id = $('#priority_id').val();
  var task_id = $('#id').val();
  var title = $('#title').val();
  var description = $('#description').val();
  var due_date = $('#due_date').val();
  var is_complete = $('#is_complete').is(':checked');
  var address = $('#address').val();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "POST",
      url: "/tasks/" + task_id,
      data: {_method:'put', authenticity_token:token, 'task[title]':title, 'task[priority_id]':priority_id, 'task[description]':description, 'task[due_date]':due_date, 'task[is_complete]':is_complete, 'task[address]':address}
    }).done(process_task);

  return false;
}

function delete_task()
{

}

function edit_task()
{
  show_task_edit_form();
  task_id_of_this_button = $(this).attr("data-task-id");
  task_object = get_task_by_id(task_id_of_this_button);

  $('#title').val(task_object.title);
  $('#priority_id').val(task_object.priority_id);
  $('#description').val(task_object.description);
  $('#due_date').val(task_object.due_date);
  $('#is_complete').val(task_object.is_complete);
  $('#address').val(task_object.address);

}

function show_task_edit_form()
{
  $('#new_task').hide();
  $('.taskform').show();
  $('#create_task').hide();
  $('#update_task').show();
}

function get_task_by_id(id)
{
  for (var i = 0; i < tasks.length; i++)
  {
    if (tasks[i].id == id)
    {
      return tasks[i];
    }
  }
  return false;
}














