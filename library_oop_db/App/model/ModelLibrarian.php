<?php
namespace Staditek\App\model;

use Staditek\App\config\Database;

class ModelLibrarian extends Database{
    public function getAll(){
        $statement = self::$conn->prepare("SELECT * FROM librarian");
        $statement->execute();

        return $statement->fetchAll(\PDO::FETCH_OBJ);
    }

    public function whereId($id){
        $statement = self::$conn->prepare("SELECT * FROM librarian WHERE id = :id");
        $statement->execute(['id'=>$id]);

        return $statement->fetch(\PDO::FETCH_OBJ);
    }

    public function insert($data){
        $statement = self::$conn->prepare("INSERT INTO librarian (username, email, password)
                                            VALUES (:username, :email, :password)");
        return $statement->execute($data);
    }  
}