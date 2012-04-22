var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var theAnswer=Math.round(Math.random()*(99)+1);

function processGuess(){
var theGuess = document.forms.guessTheNumber.guess.value;
var telluser = ' " '+theGuess+ ' " isn\'t a number.';
document.forms.guessTheNumber.guess.value='';
if(theGuess =='')
{
  alert ('You didn\'t Guess anything!');
}
else if (theGuess<0 || theGuess>100)
{
  alert ('You guessed something too big or small, what\'s wrong with you?!');
}
else
{
guessesLeft-=1;
if(guessesLeft>0)
{
if (theGuess == theAnswer)
{
  
  alert ('Well done - the mystery number is '+theAnswer+'! \n\nPress this button to reload the page for another game.');
  document.location=document.location;
}
if (theGuess>theAnswer)
{
 
 alert ('Your guess is too big, try again!');
}
if(theGuess<theAnswer && theGuess > 0 )
{
  
  alert ('Your Guess is too small, try again!');
}
updateScore(guessesLeft)
document.forms.guessTheNumber.guess.focus();
}
else
{
if (theGuess == theAnswer)
{
  
  alert ('Well done - the mystery number is '+theAnswer+'! \n\nPress this button to reload the page for another game.');
  document.location=document.location;
}
else
{
  alert ('YOU LOSE! The mystery number was '+theAnswer+'! \n\nPress this button to reload the page for another game.');
  document.location=document.location;
}
}
}
}

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').empty();
  $('h2#score span#guessesLeft').append(score);
}

