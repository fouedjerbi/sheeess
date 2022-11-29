function somme(){
  var a = document.getElementById("InputOne").value;
  var b = document.getElementById("InputTwo").value;
  var c = Number(a) + Number(b)
  result.innerText =c;
}

function soustraction(){
  var a = document.getElementById("InputOne").value;
  var b = document.getElementById("InputTwo").value;
  var c = Number(a) - Number(b)
  result.innerText = c;
}

function multiplication(){
  var a = document.getElementById("InputOne").value;
  var b = document.getElementById("InputTwo").value;
  var c = Number(a) * Number(b)
  result.innerText = c;
}

function division(){
  var a = document.getElementById("InputOne").value;
  var b = document.getElementById("InputTwo").value;
  var c = Number(a) / Number(b)
  result.innerText = c;
}

function parite(){
  var v = Number(document.getElementById("InputOne")).value;
  if (v % 2==0)

  result.innerText="Ce nombre est pair";
  else
  result.innerText="ce nombre est impair";
}

function permute(){
  var v3 =""
  a = document.getElementById("InputOne").value;
  b = document.getElementById("InputTwo").value;
  v3=a;
  a=b;
  b=v3;

  InputOne.value = a;
  InputTwo.value = b;
}