
<?php

require_once "models/config.models.php";



class Administrateur{
    private $login;
     private $password;
    

    
     public function getLogin()
     {
         return $this->login;
     }

     
     public function setLogin($login)
     {
         $this->login = $login;
     }

     
     public function getPassword()
     {
         return $this->password;
     }

     
     public function setPassword($password)
     {
         $this->password = $password;
     }
     public function insert(){

        $insert = "INSERT INTO administrateur (login, password)
        VALUES (:login, :password)";
            $stmt = $this->bdd->prepare($insert);
            return $stmt->execute([
                'login' => $this->loggin, 'password' => $this->password
            ]);



        //     public function getuserByLogin($login)
        //     {
        
        // $login = htmlspecialchars($login);
        
        //         $select = "SELECT * FROM administrateur where login=:login;
        
        //         $stmt = $this->bdd->prepare($select);
        //         $result2 = $stmt->execute([':login' => $login]);
        //         return $stmt->fetch();
        //     }




        }
    

   
}