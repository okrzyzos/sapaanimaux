
<?php
ob_start();

?>

<?= styleTitreNiveau1("Association Secourir-Aimer-Protéger<br> nos Animaux (S.A.P. Animaux)<br>Arras(Hauts de France 62)",COLOR_ASSO);
?>
<div class="row align-items-center mt-5">

<div class="col-12 col-lg-3 text-center">
    <figure>
<img class="img-fluid" src="<?=URL?>public/sources/images/Autres/logo1.jpg" alt="logo sosaniamux">
<figcaption>

<span class="perso_policeTitre perso_ColorRoseMenu">S.P.A Animaux</span>
</figcaption>
    </figure>


</div>

<div class='col-12 col-lg-9 '>
        <p>C'est l'histoire de  5 amies unies dans un même combat : <span class="badge badge-warning">Secourir</span>, 
            <span class="badge badge-warning">Aimer </span> et 
            <span class="badge badge-warning">Protéger</span> les Animaux.</p>
        <p>
            Après plusieurs années de bénévolat en électrons libres, le pas est sauté : 
            l'Association "Secourir Aimer Protéger nos Animaux" (S.A.P. Animaux) est née !!!
        </p>
        <p>
            Nous mettons un point d'honneur à ne jamais déroger à nos valeurs en matière de Protection Animale : 
            privilégier la qualité des prises en charge plutôt que la quantité avec pour objectifs le 
            <span class="badge badge-warning">RESPECT</span>
            et le <span class="badge badge-warning">BIEN-ETRE</span> des animaux.
        </p>
        <p>
            Nous remercions chaleureusement tous ceux qui nous ont déjà soutenues dans nos actions : nos familles, 
            nos amis ainsi que des particuliers, 
            associations de protection animale et cabinets vétérinaires qui nous font confiance et nous 
            accompagnent au quotidien.
            Nous souhaitons plus que jamais que ces collaborations déjà existantes, mais aussi celles à venir, 
            nous fassent encore et toujours écrire de <span class="badge badge-warning">BELLES HISTOIRES</span>.
        </p>
        <p>
            <a href="contact.php"><button type="button" class="btn btn-primary">Rejoignez nous ! &raquo;</button></a>pour suivre nos actions et partager avec nous cette nouvelle aventure !!!!!
        </p>
    </div>
</div>
<hr />
<?php
echo  styleTitreNiveau2("L'équipe",COLOR_ASSO);
?>
<div class='row align-items-center'>
    <div class='col-12 col-lg-3 text-center'>
        <img class='img-fluid' style='height:200px' src='<?=URL?>public/sources/images/Animaux/Chien/labra.jpg' alt='image Odin' />
    </div>
    <div class='col-12 col-lg-9'>
        <span class="badge badge-primary">Olivier</span> : président<br />
        <span class="badge badge-success">Karine</span> : trésorière  <br />
        <span class="badge badge-warning">Marie</span> : secrétaire <br />
        <span class="badge badge-danger">Emmy</span> : secrétaire adjointe <br />
        <span class="badge badge-info">Floriane</span> : éducatrice canin  <br /><br />
        <span class="badge badge-danger">Odin</span> : La mascotte (en photo!)
    </div>
</div>





</div>


<?php 
$content= ob_get_clean();
require "views/commons/template.php";
?>



