function post (){
  const headerPostId = document.getElementById("header-post-id");
  const rootMain = document.getElementById("root-main");
  const closeBtn = document.getElementById("close-btn");

  headerPostId.addEventListener('click', function(){
    rootMain.setAttribute("style", "display: flex;");
  });

  closeBtn.addEventListener('click', function(){
    rootMain.removeAttribute("style", "display: flex;");
  });
};

window.addEventListener('load', post);