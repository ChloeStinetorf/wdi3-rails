$ (function(){

$('#add_color').click(add_swatch);
$('#erase_color').click(erase_swatch);
$('#erase_painting').click(erase_painting);
$('#add_image').click(add_image);
$('#images').on('click', '.image_box', set_background);
$('#color_swatches').on('click', '.box', set_color);
$('#canvas').on('mouseover', '.paint', paint_color);
create_paint_boxes();
});

function set_background()
{
  var div_box = $(this);
  var url = div_box.css('background-image');
  $('#canvas').css('background-image', url);
}

function add_image()
{
  var image_box = $('<div>');
  image_box.addClass('image_box');
  $('#images').append(image_box);
  var url = $('#image').val();
  image_box.css('background-image', 'url('+url+')');
  $('#image').val('');
}

function create_paint_boxes()
{
  var clear = $('<div>');
  clear.addClass('clear');
  $('#canvas').append(clear);

  for(var i =0; i < 10000; i++)
  {
    var paint = $('<div>');
    paint.addClass('paint');
    $('#canvas').prepend(paint);
  }
}

function paint_color()
{
  var color = $('#selected').css('background-color');
  var box = $(this);
  box.css('background-color', color);
}

function set_color()
{
  var box = $(this);
  var color = box.css('background-color');
  $('#selected').css('background-color', color);
}

function add_swatch()
{
  var color = $('#color').val();
  var box = $('<div>');
  box.addClass('box');
  box.css('background-color', color);
  $('#color_swatches').prepend(box);
  $('#color').val('');
  $('#color').focus();
}

function erase_swatch()
{
  $('#color_swatches').empty();
  $('#selected').css('background-color', '#EDF7E8');
}

function erase_painting()
{
  $('#canvas').empty();
  create_paint_boxes()
}










