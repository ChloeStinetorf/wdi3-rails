$(function(){

  // $('#age').blur(blur_func);
  $('#age').change(validate_age);
  // $('body').mousemove(colorize);
  $('body').keypress(shortcut);

});

function shortcut(data)
{
  {
  var text = $('#text').text();
  $('#text').text(text + String.fromCharCode(data.which));
  }

switch(String.fromCharCode(data.which))
  {
  case 'b':
    $('#text').css('color', 'blue');
    break;
  case 'g':
    $('#text').css('color', 'green');
    break;
  case 'y':
    $('#text').css('color', 'yellow');
    break;
  case 'r':
    $('#text').css('color', 'red');
    break;
  case 'p':
    $('#text').css('color', 'purple');
    break;
  default:
    $('#text').css('color', 'black');
  }
}

function blur_func()
{
  alert('blur');
}

function change_func()
{
  alert('change');
}

function focus_func()
{
  alert('focus');
}

function colorize(eventdata)
{
  $('#x').text(eventdata.clientX);
  $('#y').text(eventdata.clientY);

  var r = (eventdata.clientX + eventdata.clientY) % 256;
  var g = (eventdata.clientX * eventdata.clientY) % 256;
  var b = (eventdata.clientX - eventdata.clientY) % 256;
  $('body').css('background-color', 'rgb('+r+', '+g+', '+b+')');

  if
  ((eventdata.clientX % 2) == 0)
    $('#x').css('color', 'red');
  else
     $('#x').css('color', 'green');

  if
  ((eventdata.clientY % 2) == 0)
    $('#y').css('color', 'red');
  else
    $('#y').css('color', 'green');

}

function validate_age()
{
  $('body').children('p').remove();
  var p = $('<p>');
  $('body').prepend(p);
  var a = parseInt($('#age').val());
  $('h1').append(p);
  p.text(a);
  if(age > 17)
    p.addClass('green');
  else
    p.addClass('red');
}
