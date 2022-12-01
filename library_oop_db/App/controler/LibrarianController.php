<?php
namespace Staditek\App\controler;

use Staditek\App\core\Router;
use Staditek\App\core\View;
use Staditek\App\model\ModelLibrarian;

class LibrarianController{
    public static $librarian;
    public static $librarianData;

    public function __construct(){
        self::$librarian = new ModelLibrarian;
    }

    public function view(){
        self::$librarianData = self::$librarian->getAll();
        View::render('librarian/view', self::$librarianData);
    }
    
    public function login(){
        View::render('librarian/login');
    }

    public function signUp(){
        View::render('librarian/signup');
    }

    public function save(){
        $data = [
            'username'=>$_POST['username'],
            'email'=>$_POST['email'],
            'password' => password_hash($_POST['password'], PASSWORD_DEFAULT)
        ];

        if(self::$librarian->insert($data)){
            Router::redirect('Public/');
        }
    }
}