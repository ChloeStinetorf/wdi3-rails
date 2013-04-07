$(function(){

  $('#btn').click(cool_popup);
  $('#btncolor').click(backgroundcolor);
  $('#btnhide').click(hide);
  $('#btnshow').click(show);
  $('#btncalc').click(calculatearea);

});

function cool_popup()
{
  var name = $('#name').val();
  alert(name + ', you have won 1 billion dollars!');
}

function backgroundcolor()
{
  var color = $('#color').val();
  $('body').css('background-color', color);
}

function hide()
{
  $('h1').hide();
}

function show()
{
  $('h1').show();
}

function calculatearea()
{
  var width = parseFloat($('#width').val());
  var height = parseFloat($('#height').val());
  var a = area(width, height);
  $('#area').text(a + 'sqft.');

  if (a < 100) {
    $('#area').addClass('success');
  } else {
    $('#area').addClass('alert');
  }
}
function area(width, height)
{
  return width * height;
}














