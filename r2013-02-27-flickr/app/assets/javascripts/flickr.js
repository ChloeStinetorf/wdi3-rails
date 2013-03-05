$(function(){

  $('#flickr').click(search);
  $('#clear').click(clear);

});

var timer;
var photos;
var index;
var per_page = 100;
var page = 1;

function search()
{
  var search = $('#search').val();
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=4c3ed75198801ca79c91028c82c4cb84&text=' + search + '&per_page='+ per_page +'&page=' + page + '&format=json&jsoncallback=?', results);
}

function results(data)
{
  var seconds = parseInt($('#duration').val());
  var ms = seconds * 1000;
  timer = setInterval(display_photo, ms);
  index = 0;
  photos = data.photos.photo;
  //_.each(data.photos.photo, display_photo);
}

function display_photo()
{
  photo = photos[index];
  var url = "http://farm"+ photo.farm +".static.flickr.com/"+ photo.server +"/"+ photo.id +"_"+ photo.secret +"_m.jpg";
  var box = $('<div>');
  box.addClass('box');
  box.css('background-image', 'url('+url+')');
  var height = $('#height').val();
  var width = $('#width').val();
  box.css({'width' : width, 'height' : height});
  $('#images').prepend(box);
  index++;
  if(index == per_page)
  {
    clearInterval(timer);
    index = 0;
    page++;
    search();
  }
  else
  {
  }
}

function clear()
{
  $('#images').empty();
}

