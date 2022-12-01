<?php
    use Staditek\App\controler\BookController;
    use Staditek\App\core\Router;
?>

<link href="<?= Router::url('/assets/css/index.css')?>" rel="stylesheet">

<main class="container">
    <div class="card">
        <div class="card-header">Book Data</div>
        <div class="card-body">
        <table class="table">
                <tr>
                    <th width='5%'>No</th>
                    <th>isbn</th>
                    <th>title</th>
                    <th>lend duration</th>
                    <th>prize</th>
                    <th>Action</th>
                </tr>
    
                <?php
                    $no = 1;
                    foreach(BookController::$bookData as $row){
                ?>

                <tr>
                    <td><?php print $no++;?></td>
                    <td><?php print $row->isbn;?></td>
                    <td><?php print $row->title;?></td>
                    <td><?php print $row->lend_duration_per_days.' days';?></td>
                    <td><?php print 'Rp.'.$row->prize;?></td>
                    <td class="grid">
                        <a href="<?= Staditek\App\Core\Router::url('Public/book/edit')."/$row->id"?>" class="btn btn-warning">Edit</a>
                        <form method='post' action="<?= Staditek\App\Core\Router::url('Public/book/delete')."/$row->id"?>">
                            <button class="btn btn-danger right" type="submit">Delete</button>
                        </form>
                    </td>
                </tr>

                <?php
                    }
                ?>
            </table>
            <div class="btn-holder">
                <a href="<?= Staditek\App\core\Router::url('Public/book/add')?>" class="btn btn-success insert">Add</a>
            </div>

        </div>
    </div>
</main>