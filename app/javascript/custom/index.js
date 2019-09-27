document.addEventListener("DOMContentLoaded", function(){
  var menuTrigger = document.querySelector('.menu__control');
  var menu = document.querySelector('.projects__sidebar');

  menuTrigger.addEventListener("click", function(e){
    e.preventDefault();  
    menu.classList.toggle('active');
  });
});