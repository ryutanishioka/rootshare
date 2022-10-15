function form_post (){
  const form = document.getElementById("form");
  const submit = document.getElementById("submit");
  //const errorMessage = document.getElementById("error-message");
  const errorAlert = document.getElementById("error-alert");
  const error = document.getElementById("error");
  const isRequired = form.checkValidity();
  const rootMain = document.getElementById("root-main");
  console.log("読み込み成功")
  if(isRequired){
    submit.onsubmit = function(){return true};
    submit.addEventListener("click", (e) => {
      e.preventDefault();
      const formData = new FormData(form);
      const XHR = new XMLHttpRequest();
      XHR.open("POST", "/roots", true);
      XHR.responseType = "json";
      XHR.send(formData);
      rootMain.removeAttribute("style", "display: flex;");
      console.log("フォーム送信成功")
    });
  }else{
    submit.addEventListener("click",()=>{
      console.log("フォーム失敗イベント")
      /*error.addEventListener("oninvalid",()=>{
        submit.onsubmit = function(){return false};
        rootMain.setAttribute("style", "display: flex;");
        errorAlert.setAttribute("style", "display: block;");
      });*/
    });
  };
  /*form.addEventListener("input", function(){
    if (isRequired){
      submit.onsubmit = function(){return true};
      submit.addEventListener("click", (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        const XHR = new XMLHttpRequest();
        XHR.open("POST", "/roots", true);
        XHR.responseType = "json";
        XHR.send(formData);
      });
    }else{
      submit.onsubmit = function(){return false};
      error.addEventListener("invalid", function(){
        errorAlert.setAttribute("style", "display: block;");
        errorMessage.setAttribute("style", "display: block;");
      });
    };
  });*/
};

window.addEventListener('load', form_post);