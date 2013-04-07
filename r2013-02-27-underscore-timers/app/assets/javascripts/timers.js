$ (function(){

  $('#add_number').click(add_number);
  $('#square_number').click(square_number);
  $('#fn').click(generic_function);
  $('#start').click(start_timer);
  $('#stop').click(stop_timer);
});

var numbers = [];
var timer = null;

function start_timer()
{
  timer = setInterval(generate_random_number, 1000);
}

function stop_timer()
{
  clearInterval(timer);
}

function generate_random_number()
{
  var number = _.random(0, 50);
  numbers.push(number);
  var box = $('<div>');
  box.addClass('box');
  box.text(number);
  $('#numbers').prepend(box);
}

function generic_function()
{
  empty_boxes();
  numbers = _.map(numbers, funky_calc);
  show_numbers();
}

function add_number()
{
  var number = parseInt($('#number').val());
  numbers.push(number);
  var box = $('<div>');
  box.addClass('box');
  box.text(number);
  $('#numbers').append(box);
  $('#number').val('');
  $('#number').focus();
}

function square_number()
{
  empty_boxes();
  numbers = _.map(numbers, square_value);
  show_numbers();
}

function funky_calc(i)
{
  var equation = $('#number').val();
  return eval(equation);
}

function show_numbers()
{
  _.each(numbers, create_number_box);
}

function square_value(i)
{
  return i * i;
}

function create_number_box(i)
{
  var box = $('<div>');
  box.addClass('box');
  box.text(i);
  $('#numbers').prepend(box);
}

function empty_boxes()
{
  var clear = $('#numbers').children('.clear');
  $('#numbers').empty();
  $('#numbers').append(clear);
}