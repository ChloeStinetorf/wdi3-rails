var map;

$(function(){

  $('.meet').click(initiate_lookup);

});

function initiate_lookup()
{
  // $('.user_list').hide();
  var user_id = $(this).parent().next().html();
  user_object = get_user_by_id(user_id);
  find_midpoint(user_object);
}

function find_midpoint(friend)
{
  var me = users[0];
  average_longitude = ((friend.longitude + me.longitude)/2);
  average_latitude = ((friend.latitude + me.latitude)/2);
  display_map(average_latitude, average_longitude, 6);
  add_marker(average_latitude, average_longitude, 'midpoint');
  $('.banner').text('Your vacation destination is: ');
}

function get_user_by_id(id)
{
  for (var i = 0; i < users.length; i++)
  {
    if (users[i].id == id)
    {
      return users[i];
    }
  }
  return false;
}


// Map functions
function display_map(lat, long, zoom)
{
  var mapOptions = {
    center: new google.maps.LatLng(lat, long),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  canvas = $('#map_canvas')[0];
  map = new google.maps.Map(canvas, mapOptions);
}

function add_marker(lat, long, name)
{
  var latlng = new google.maps.LatLng(lat, long);
  var marker = new google.maps.Marker({position: latlng, map: map, title: name});
  console.log(name);
}
