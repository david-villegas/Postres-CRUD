document.addEventListener("turbolinks:load", function() {
  console.log('It works! Desserts');

    // const $formulario = document.getElementById('navbarNav');
    // const $prueba = document.querySelectorAll('h1')[0];

    // $formulario.addEventListener('click', function(e) {
      //   console.log('Click on Navbar');
      //   e.preventDefault();
      // })

    // $prueba.addEventListener('click', function(e){
      //   console.log('Click on Title');
      //   e.preventDefault();
      // })

    const $nombre = document.getElementById('nom');
    const $url = document.getElementById('url');
    const $nimg = document.getElementById('nimg');

    function createUrl(str){
      // Reemplaza los carácteres especiales | simbolos con un espacio
      str = str.replace(/[`~!@#$%^&*()_\-+=\[\]{};:'"\\|\/,.<>?\s]/g, ' ').toLowerCase();
      // Corta los espacios al inicio y al final del string
      str = str.replace(/^\s+|\s+$/gm, '');
      // Reemplaza el espacio con guión
      str = str.replace(/\s+/g, '-');
      $url.value = str;
    }

    $nombre.addEventListener('change', function(){
      createUrl($nombre.value);
    })

    function cargarImagen() {
      nas = $nimg.files.item(0).name
      var ini = document.getElementById('img');
      ini.value = nas;
  }

    $nimg.addEventListener('change', function(){
      cargarImagen();
    })

})
