<?php
    use Staditek\App\controler\LibrarianController;
    use Staditek\App\core\Router;
?>

<link href="<?= Router::url('/assets/css/index.css')?>" rel="stylesheet">

<main class="container">
    <div class="card">
        <div class="card-header">Librarian Data</div>
        <div class="card-body">
        <table class="table">
                <tr>
                    <th width='5%'>No</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Password</th>
                    <!-- <th>Action</th> -->
                </tr>
    
                <?php
                    $no = 1;
                    foreach(LibrarianController::$librarianData as $row){
                ?>

                <tr>
                    <td><?php print $no++;?></td>
                    <td><?php print $row->username;?></td>
                    <td><?php print $row->email;?></td>
                    <td><?php print $row->password;?></td>
                    <!-- <td class="grid">
                        <a href="<?= Staditek\App\Core\Router::url('Public/edit')."/$row->id"?>" class="btn btn-warning">Edit</a>
                        <form method='post' action="<?= Staditek\App\Core\Router::url('Public/delete')."/$row->id"?>">
                            <button class="btn btn-danger right" type="submit">Delete</button>
                        </form>
                    </td> -->
                </tr>

                <?php
                    }
                ?>
            </table>
            <div class="btn-holder">
                <a href="<?= Staditek\App\core\Router::url('Public/signup')?>" class="btn btn-success insert">Back to Home</a>
            </div>

        </div>
    </div>
</main>