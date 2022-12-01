<?php
namespace Staditek\App\controler;

use Staditek\App\core\Router;
use Staditek\App\core\View;
use Staditek\App\model\ModelBook;

class BookController{
    public static $book;
    public static $bookData;

    public function __construct(){
        self::$book = new ModelBook;
    }

    public function view(){
        self::$bookData = self::$book->getAll();
        View::render('book/view', self::$bookData);
    }

    public function add(){
        View::render('book/add');
    }

    public function save(){
        $data = [
            'isbn'=>$_POST['isbn'],
            'title'=>$_POST['title'],
            'lend_duration_per_days'=>$_POST['lenDuration'],
            'prize'=>$_POST['prize']
        ];

        if(self::$book->insert($data)){
            Router::redirect('Public/book/view');
        }
    }

    public function edit($id){
        self::$bookData = self::$book->whereId($id);
        View::render('book/edit', self::$bookData);
    }

    public function update(){
        $update = [
            'id'=>$_POST['id'],
            'isbn'=>$_POST['isbn'],
            'title'=>$_POST['title'],
            'lend_duration_per_days'=>$_POST['lenDuration'],
            'prize'=>$_POST['prize'],
            'updated_at'=>date('Y-m-d H:i:s')
        ];

        if(self::$book->update($update)){
            Router::redirect('Public/book/view');
        }
    }

    public function delete($id){
        if(self::$bookData = self::$book->delete($id)){
            Router::redirect('Public/book');
        }
    }
}