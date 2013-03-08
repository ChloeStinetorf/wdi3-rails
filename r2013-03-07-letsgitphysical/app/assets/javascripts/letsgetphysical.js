$(function(){

  $('#show_chart').click(show_chart);

});

function show_chart()
{
  $('#chart').empty();
  var activity = $('#activities').val();

  $.ajax({
    dataType: 'json',
    type: "get",
    url: "/exercises/chart/" + activity
  }).done(process_activity);

  return false;
}

function process_activity(exercises)
{
  new Morris.Line({
    element: 'chart',
    data: exercises,
    xkey: 'completed',
    ykeys: ['value'],
    labels: ['Value']
  });
}












