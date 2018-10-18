<!-- Bootstrap core JavaScript -->
    <script src="recursos/vendor/jquery/jquery.min.js"></script>
    <script src="recursos/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="recursos/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="recursos/vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="recursos/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="recursos/js/creative.min.js"></script>
    <script type="text/javascript">
      var cursos = new Array();
      cursos[1] = "android";
      cursos[2] = "amazon";
      cursos[3] = "angular";
      cursos[4] = "apple";
      cursos[5] = "aws";
      cursos[6] = "js";
      cursos[7] = "node-js";
      cursos[8] = "vuejs";
      cursos[9] = "wordpress";
      cursos[10] = "react";
      cursos[11] = "docker";
      cursos[12] = "drupal";
      cursos[13] = "ember";
      cursos[14] = "grunt";
      cursos[15] = "gulp";
      cursos[16] = "laravel";
      cursos[17] = "linux";
      var zw = 1;
      for (var i = 1; i <= 17; i++) {
          (function(index) {
              setTimeout(function() { $('.cambiarlenguajes').html('<i style="font-size: 30px;" class="fab fa-'+cursos[index]+'"></i> '+cursos[index]); console.log(index); }, zw * 5000);
          })(zw);
          zw++;
      }
      /*for(var i in cursos) {
        setTimeout(
         function(index){
            console.log(cursos[i]);
            $('.cambiarlenguajes').html('<i style="font-size: 30px;" class="fab fa-'+i+'"></i> '+cursos[i]);
        }, zw * 1000);
        zw++;
      }*/
    </script>
  </body>

</html>