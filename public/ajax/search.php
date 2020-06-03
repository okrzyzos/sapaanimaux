<?php
// require_once('../../classes/recherche.php');
require_once ('../config/config.php');



if(isset($_POST['search']) and !empty($_POST['search'])){

$search = htmlspecialchars($_POST['search']);
$stmt = $bdd->prepare("SELECT * FROM animal WHERE prenom LIKE :prenom");
$stmt->execute(['prenom' => '%'.$search.'%']);
$infosAnnimaux = $stmt->fetchAll(PDO::FETCH_ASSOC);

 
 

foreach ($infosAnnimaux as $animal) {
?> 
    <div class='row no-gutters d-flex justify-content-center'>

    <div class="col-12 col-lg-6">
        <div class='row border border-dark  rounded-lg m-2 align-items-center perso_bgGreen'>
            <div class="col p-2 text-center">
            <?php echo ' <img src="sources/images/'. $animal['image'].'"  class="img-thumbnail" style="max-height:180px;" alt=""/>';?> 
            </div>
            <div class="col-2 col-md-1 border-left border-right border-dark text-center">
                <img src='sources/images/Autres/icones/ChienOk.png' class="img-fluid m-1" style="width:50px;" alt="chienOk" />
                <img src='sources/images/Autres/icones/ChatOk.png' class="img-fluid m-1" style="width:50px;" alt="chatOk" />
                <img src='sources/images/Autres/icones/BabyOk.png' class="img-fluid m-1" style="width:50px;" alt="bayOk" />
            </div>
            <div class="col-6  text-center">
                <div class="perso_policeTitre perso_size20 mb-3"><?php echo $animal['prenom']; ?></div>
                <div class="mb-2">age :<?php echo $animal['Age']; ?></div>
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
 
 
}
}
?>