document.addEventListener("DOMContentLoaded", function(){
  var menuTrigger = document.querySelector('.menu--control');
  var menu = document.querySelector('.projects--flatlist');

  menuTrigger.addEventListener("click", function(e){
    e.preventDefault();  
    menu.classList.toggle('active');
  });
});