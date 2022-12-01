<main class="container">
    <div class="card">
        <div class="card-header">Input User Data</div>
        <div class="card-body">
            <form action="<?= Staditek\App\core\Router::url('Public/book/save')?>" method="post">
                <div class="mb-3">
                    <label for="isbn" class="form-label">ISBN</label>
                    <input type="text" require class="form-control" id="mustisbn" name="isbn">
                </div>

                <div class="mb-3">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" require class="form-control" id="musttitle" name="title">
                </div>

                <div class="mb-3">
                    <label for="lenDuration" class="form-label">Lend Duration</label>
                    <input type="number" require class="form-control" id="mustDur" name="lenDuration">
                </div>

                <div class="mb-3">
                    <label for="prize" class="form-label">Prize</label>
                    <input type="number" require class="form-control" id="mustPrize" name="prize">
                </div>

                <button class="btn btn-primary" type="submit">Submit</button>
            </form>
        </div>
    </div>
</main>