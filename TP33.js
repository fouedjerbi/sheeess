
function affichage_tableau()
{
document.write("<table border=2; width=30%>");
              for(i=0; i<=5; i++)
              {
                document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
              }
              document.write("</table>");
}

function affichage_tableau2()
{
              var ligne =  prompt("donner le nombre de ligne à afficher");


    document.write("<table border=2; width=30%>");
    for(i=0; i<ligne; i++)
    {
      document.write("<tr><td>"+i+"</td><td>*</td><td>*</td></tr>")
    }
    document.write("</table>");
}

function connexion()
{
    var nu = prompt("Veuillez taper votre nom d'utilisateur");
    var mdp = prompt("Veuillez taper votre mot de passe");
    if (nu == "admin" && mdp == "admin") {
      document.write("Bienvenue :   "  +nu);
    } else 
    {
        document.write("connexion refusé");
    }
}
function connexion2()
{  var i=0;

do {
var id = prompt("Donnez  votre nom d'utlisateur");
var mdp = prompt ("Donnez votre mot de passe");

if (id== "admin" && mdp== "admin") 
{
document.write("Bienvenue:    "+id);
break;
}
else
   alert("Acces refuse");
   i+=1;

} while (i < 3);
if (i==3)
alert("délai dépassé");



}
function switchfun()
{
  var color = prompt ("entrez une couleur")
  switch(color)
  {
    case "vert" : document.body.style.background="green"
    break;
    case "vert" : document.body.style.background="green"
    break;
    case "blue" : document.body.style.background="blue"
    break;
    case"Blue" : document.body.style.background="blue"
    break;
    default: alert("couleur non définié");
  }
}