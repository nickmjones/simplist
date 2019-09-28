document.addEventListener('turbolinks:load', function(){
  
  // Vars we need for various stuff
  var menuTrigger = document.querySelector('.menu__control');
  var menu = document.querySelector('.projects__sidebar');
  var overlay = document.querySelector('.overlay')
  var overlayClose = document.querySelector('.overlay__close-modal')
  var popModal = document.querySelector('.popmodal')

  function toggleMenu(){
    menu.classList.toggle('active')
  }

  menuTrigger.addEventListener('click', function(){
    toggleMenu();
  });

  function toggleOverlay(){
    overlay.classList.toggle('active')
  }

  overlayClose.addEventListener('click', function(){
    toggleOverlay();
  });

});