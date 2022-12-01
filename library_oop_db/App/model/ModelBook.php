<?php
namespace Staditek\App\model;

use Staditek\App\config\Database;

class ModelBook extends Database{
    public function getAll(){
        $statement = self::$conn->prepare("SELECT * FROM book");
        $statement->execute();

        return $statement->fetchAll(\PDO::FETCH_OBJ);
    }

    public function whereId($id){
        $statement = self::$conn->prepare("SELECT * FROM book WHERE id = :id");
        $statement->execute(['id'=>$id]);

        return $statement->fetch(\PDO::FETCH_OBJ);
    }

    public function insert($data){
        $statement = self::$conn->prepare("INSERT INTO book (isbn, title, lend_duration_per_days, prize)
                                            VALUES (:isbn, :title, :lenDuration, :prize");
        return $statement->execute($data);
    }

    public function update($data){
        $statement = self::$conn->prepare("UPDATE book 
                                            SET isbn = :isbn, 
                                            title = :title, 
                                            lend_duration_per_days = :lenDuration, 
                                            prize = :prize, 
                                            updated_at = :updated_at
                                            WHERE id = :id");
        return $statement->execute($data);
    }

    public function delete($id){
        $statement = self::$conn->prepare("DELETE FROM book Where id = :id");
        return $statement->execute(['id'=>$id]);
    }
}