<?php
namespace Staditek\App\config;

class Database{
    protected static $conn;
    protected static $uname = 'root';
    protected static $pass = '';
    protected static $host = 'localhost';
    protected static $db = 'db_library';

    public function __construct(){
        Database::setConn();
    }

    public static function setConn(){
        self::$conn = new \PDO(
            'mysql:host='.self::$host.
            ';dbname='.self::$db,
            self::$uname,
            self::$pass
        );
        self::$conn->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    }

    public function getConn(){
        return self::$conn;
    }
}