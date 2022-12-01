<?php
namespace Staditek\App\controler;

class HomeController{
    public function index(){
        require_once __DIR__.'/../view/index.html';
    }
}