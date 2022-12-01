<?php

use Staditek\App\controler\HomeController;
use Staditek\App\controler\LibrarianController;
use Staditek\App\controler\BookController;
use Staditek\App\core\Router;

require_once __DIR__.'/../vendor/autoload.php';
session_start();

// Router::addRoute('GET', '/', HomeController::class, 'index', []);

Router::addRoute('GET', '/view', LibrarianController::class, 'view', []);
Router::addRoute('GET', '/signup', LibrarianController::class, 'signup', []);
Router::addRoute('GET', '/', LibrarianController::class, 'login', []);
Router::addRoute('GET', '/cekLogin', LibrarianController::class, 'cekLogin', []);
Router::addRoute('GET', '/edit/:id', LibrarianController::class, 'edit', []);
Router::addRoute('POST', '/edit/:id/save', LibrarianController::class, 'update', []);
Router::addRoute('POST', '/save', LibrarianController::class, 'save', []);

Router::addRoute('GET', '/book', BookController::class, 'view', []);
Router::addRoute('GET', '/book/add', BookController::class, 'add', []);
Router::addRoute('POST', '/book/save', BookController::class, 'save', []);
Router::addRoute('GET', '/book/edit/:id', BookController::class, 'edit', []);
Router::addRoute('POST', '/book/edit/:id/save', BookController::class, 'update', []);
Router::addRoute('POST', '/book/delete/:id', BookController::class, 'delete', []);

Router::run();