
<?php ob_start();  ?>



<?= styleTitreNiveau2("Page d'administration du site", COLOR_ASSO) ?>

<?php
require_once('classes/recherche.php');
require_once "models/PDO.php";






$recherche = new Recherche($bdd);


if(isset($_POST['search']) and !empty($_POST['search'])){

    $search->setSearch($_POST['search']);

// $search = htmlspecialchars($_POST['search']);
// $stmt = $bdd->prepare("SELECT * FROM animal WHERE prenom LIKE '%" .$search."%'");
// $resultats = $stmt->execute();
// $stmt->fetchAll(PDO::FETCH_ASSOC);

$recherche->getPageSearch();
}




?>
<?php
$content = ob_get_clean();

require "views/commons/template.php"
?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="public/css/main.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fredoka+One">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Copse">



</head>

<body>

    
     
    <form method="post" action="adminRechercheAnimal.wiew.php">

    <div class="form-group">
        <div class="input-group">
            <span class="input-group-addon">Search</span>
            <input type="search" name="search" id="search" placeholder="search by animal Name" class="form-control"/>

        </div>


    </div>
    </form> 
    <br>
    <div id="result">

    <?php

    $req = $bdd->query('SELECT * FROM animal');
    //  $reqListeEspece = $bdd->query('SELECT * FROM espece');


    echo '<table border >
    <tr>
    <th>Prenom</th>
    <th>Espece</th>
    <th>description</th>
    <th>age</th>
    <th>puce</th>
    <th>image</th>



    </tr>';

    while ($donnees = $req->fetch()) {
    ?> 
        <div class='row no-gutters d-flex justify-content-center'>

        <div class="col-12 col-lg-6">
            <div class='row border border-dark  rounded-lg m-2 align-items-center perso_bgGreen'>
                <div class="col p-2 text-center">
                <?php echo ' <img src="sources/images/'. $donnees['image'].'"  class="img-thumbnail" style="max-height:180px;" alt=""/>';?> 
                </div>
                <div class="col-2 col-md-1 border-left border-right border-dark text-center">
                    <img src='sources/images/Autres/icones/ChienOk.png' class="img-fluid m-1" style="width:50px;" alt="chienOk" />
                    <img src='sources/images/Autres/icones/ChatOk.png' class="img-fluid m-1" style="width:50px;" alt="chatOk" />
                    <img src='sources/images/Autres/icones/BabyOk.png' class="img-fluid m-1" style="width:50px;" alt="bayOk" />
                </div>
                <div class="col-6  text-center">
                    <div class="perso_policeTitre perso_size20 mb-3"><?php echo $donnees['prenom']; ?></div>
                    <div class="mb-2">age :<?php echo $donnees['Age']; ?></div>
                    <div class="my-3">
                        <span class="badge badge-warning m-1 p-2 d-none d-sm-inline"> douce </span>
                        <span class="badge badge-warning m-1 p-2 d-none d-sm-inline"> calme </span>
                        <span class="badge badge-warning m-1 p-2 d-none d-md-inline"> joueur</span>
                    </div>
                    <a href="modifier.php" class="btn btn-primary">Détails</a>
                </div>
            </div>
        </div>
    </div>  

    <?php
    echo '<tr>

    <td>' . $donnees['prenom'] . '</td>
    <td>' . $donnees['espece'] . '</td>
    <td>' . $donnees['description'] . '</td>
    <td>' . $donnees['Age'] . '</td>
    <td>' . $donnees['puce'] . '</td>
    <td>' . $donnees['image'] . '</td>




    </tr>';
    }

    $req->closecursor();

    echo '</table>';


    ?> 

    </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="js/script.js"></script>


</body>


</html>
