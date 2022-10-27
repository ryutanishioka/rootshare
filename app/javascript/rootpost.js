function post (){
  const headerPostId = document.getElementById("header-post-id");
  const rootMain = document.getElementById("root-main");
  const closeBtn = document.getElementById("close-btn");

  function disableScroll(e){
    e.preventDefault();
  };

  headerPostId.addEventListener('click', function(){
    rootMain.setAttribute("style", "display: flex;");

    //投稿時スクロールしない処理
    document.addEventListener('touchmove', disableScroll, { passive: false });
    document.addEventListener('mousewheel', disableScroll, { passive: false });
  });

  closeBtn.addEventListener('click', function(){
    rootMain.removeAttribute("style", "display: flex;");

    //スクロール再開
    document.removeEventListener('touchmove', disableScroll, { passive: false });
    document.removeEventListener('mousewheel', disableScroll, { passive: false });
  });
};

window.addEventListener('load', post);