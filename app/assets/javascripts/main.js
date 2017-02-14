$(document).ready(function(){

  if ($('body.pages.home').length === 0) {
    return;
  }

$('h1.fun').funText();
$('h1').css('color', 'red');

console.log('welcome to the home page');

});
