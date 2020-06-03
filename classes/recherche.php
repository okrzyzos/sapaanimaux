<?php
require_once "config/config.php";
require_once "models/PDO.php";
require_once "models/config.models.php";






class Recherche
{

    public $bdd;
    public $search;



    public function __construct($bdd)
    {

        $this->bdd = $bdd;
    }

    /**
     * Get the value of nom
     */
    public function getSearch()
    {
        return $this->search;
    }

    /**
     * Set the value of nom
     *
     * @return  self
     */
    public function setSearch($search)
    {
        $this->search = htmlspecialchars($search);

        return $this;
    }
    


public function getPagesearch(){
    $bdd = connexionPDO();

    $search = htmlspecialchars($_POST['search']);
$stmt = $this-> $bdd->prepare("SELECT * FROM animal WHERE prenom LIKE :prenom");
$stmt->execute(['prenom' => '%'.$search.'%']);
$infosAnnimaux = $stmt->fetchAll(PDO::FETCH_ASSOC);

return $infosAnnimaux;
}
}


    ?>