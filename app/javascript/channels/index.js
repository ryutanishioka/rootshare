// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

/*function content (){
  const moreContent = document.querySelectorAll(".more-content");
  const textOpenContent = document.querySelectorAll(".text-open-content");
  const textContent = document.querySelectorAll("text-content");

  moreContent.addEventListener('click', function(){
    textContent.setAttribute("style", "display: none;");
    textOpenContent.setAttribute("style", "display: block;");
  });

  pullDownChild.forEach(function(list) {
    moreContent.addEventListener('click', function() {
      textContent.setAttribute("style", "display: none;");
      textOpenContent.setAttribute("style", "display: block;");
    });
  });
};

window.addEventListener('load', content);*/