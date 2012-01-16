function validateForm()
{
var x=document.forms["feelings"]["feeling"].value;
if (x==null || x=="")
  {
  alert("Surely you feel something!");
  return false;
  }
}