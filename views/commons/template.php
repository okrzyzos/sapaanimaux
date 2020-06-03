






<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="<?=$description ?>">
  <title><?= $title ?></title>
  <link href=" <?= URL ?>public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= URL ?>public/css/main.css" rel="stylesheet"/>
  <!-- <link rel="stylesheet" href="../../css/style.css"> -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fredoka+One">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Copse">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

  

</head>

<body>
  <div class="container p-0 mt-2 rounded perso_shadow">
    <header class="bg-dark text-white rounded-top  perso_policeTitre">








      <div class="row align-items-center m-0">
        <div class="col-2 p-2 text-center">
          <figure>
          <a href="accueil">

            <img class="rounded-circle img-fluid " src="<?= URL ?>public/sources/images/Autres/logo1.jpg" alt=" logo" />
          </a>
          <figcaption>
<span class="perso_policeTitre">S.P.A Animaux</span>


          </figcaption>
          </figure>


        </div>
        <div class="col-6 col-lg-8 m-0 p-0">
<?php include("views/commons/menu.php") ?>

        </div>
        <div class='col-4 col-lg-2 text-right pt-1 pr-4  '>
        <a href="../../register.php"><i class="fa fa-user"> signup</i></a>
        <a href="login"><i class="fa fa-sign-in"> login</i></a>
        </div>


      </div>

    </header>

<div class="border p-1 perso_minCorpSize px-5">
<?= $content?>
</div>
<footer class="bg-dark text-center text-white rounded-bottom">

<p class="p-2">&copy;Association S.P.A Animaux 2020-2021</p>

</footer>


  </div>





  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src=' <?=URL?>public/bootstrap/js/bootstrap.js'> </script>
</body>

</html>