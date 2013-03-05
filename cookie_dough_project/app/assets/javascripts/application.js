//= require jquery
//= require jquery_ujs
//= require 'foundation/javascripts/modernizr.foundation.js'
//= require 'foundation/javascripts/foundation.min.js'
//= require 'foundation/javascripts/app.js'

$(function(){

  $('.button').hover(color_the_button);

});

function color_the_button()
{
  $(this).children('a').toggleClass('excitement');
}
