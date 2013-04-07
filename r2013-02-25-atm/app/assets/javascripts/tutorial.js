var checking_balance = 0;
var saving_balance = 0;

$(function(){

  $('#btndeposit_checking').click(deposit_checking);
  $('#btnwithdraw_checking').click(withdraw_checking);
  $('#btndeposit_saving').click(deposit_saving);
  $('#btnwithdraw_saving').click(withdraw_saving);
  $('#checking_balance').text(checking_balance);
  $('#saving_balance').text(saving_balance);

});

function deposit_checking()
{
  var d_checking = parseFloat($('#checking').val());
  checking_balance += d_checking;
  $('#checking_balance').text('$' + checking_balance);
}

function withdraw_checking()
{
  var w_checking = parseFloat($('#checking').val());
  if (checking_balance >= w_checking) {
    checking_balance -= w_checking;
    $('#checking_balance').text('$' + checking_balance);
    }
    if (checking_balance + saving_balance >= w_checking) {
    remainder = checking_balance - w_checking;
    saving_balance = saving_balance + remainder;
    checking_balance = 0;
    $('#checking_balance').text('$' + checking_balance);
    $('#saving_balance').text('$' + saving_balance);
    red_color();
  }
}

function deposit_saving()
{
  var d_saving = parseFloat($('#saving').val());
  saving_balance += d_saving;
  $('#saving_balance').text('$' + saving_balance);
}

function withdraw_saving()
{
  var w_saving = parseFloat($('#saving').val());
  if (saving_balance >= w_saving) {
  saving_balance -= w_saving;
  $('#saving_balance').text('$' + saving_balance);
  red_color();
  }
}

function red_color()
{
  if (checking_balance <= 0) {
  $('#checking_balance').css('background-color', 'red');
  }
  if (saving_balance <= 0) {
  $('#saving_balance').css('background-color', 'red');
  }
}





