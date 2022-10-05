function pulldown (){
  const userButton = document.getElementById("user-btn");
  const headerPullDownParents = document.getElementById("header-pulldown") 

  userButton.addEventListener('click', function(){
    if(headerPullDownParents.getAttribute("style") == "display: block;"){
      headerPullDownParents.removeAttribute("style", "display: block;");
    }else{
      headerPullDownParents.setAttribute("style", "display: block;");
    };
  });
 };
 
 window.addEventListener('load', pulldown);