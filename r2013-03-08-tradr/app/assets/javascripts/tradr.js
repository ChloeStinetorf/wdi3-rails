$(function(){

  $('body').on('click', '#cancel_form', cancel_form);
  $('body').on('click', '#cancel_stock_form', cancel_stock_form);

});

//Functions pertaining to buttons for canceling forms
//need the return false because otherwise the browser will try to follow the link
function cancel_form()
{
  $('#new_user').empty();
  return false;
}

function cancel_stock_form()
{
  $('#new_stock').empty();
  return false;
}


