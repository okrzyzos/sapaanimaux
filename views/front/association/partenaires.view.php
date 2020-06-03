<?php
ob_start();
?>
<?= styleTitreNiveau1("Les partenaires",COLOR_ASSO)?>

<div class="row no-gutters">
<div class="card col-auto mx-auto mt-2" style="width: 18rem;">
  <img src="<?=URL?>public/sources/images/Autres/partenaire.jpg" class="card-img-top p-1" alt="image partenaire">
  <div class="card-body text-center">
    <h5 class="card-title perso_ColorRoseMenu perso_policeTitre perso_textShadow text-uppercase">Canidélite</h5>
    <p class="card-text">Contacter un éducateur canin, contacter Canidélite.</p>
    <a href="http://www.naturedechien.fr" class="btn btn-primary" target="_blank">Visiter le site de l 'éducateur&raquo;</a>
  </div>
</div>


<div class="card col-auto mx-auto mt-2" style="width: 18rem;">
  <img src="<?=URL?>public/sources/images/Autres/ecoute.jpg" class="card-img-top p-1" alt="image partenaire">
  <div class="card-body text-center">
    <h5 class="card-title perso_ColorRoseMenu perso_policeTitre perso_textShadow text-uppercase">Ecoute ton chien</h5>
    <p class="card-text">Contacter un éducateur canin, contacter Ecoute ton chien.</p>
    <a href="http://www.ecoutetonchien.com"  class="btn btn-primary" target="_blank">Visiter le site de l 'éducateur&raquo;</a>
  </div>
</div>

</div>
<?php 
$content= ob_get_clean();
require "views/commons/template.php";
?>
