<style>
    .card-header, .card-footer{
        text-align: center;
    }
</style>

<main class="container">
    <div class="card">
        <div class="card-header">Log in</div>
        <div class="card-body">
            <form name="myform" action="<?= Staditek\App\core\Router::url('Public/book')?>" method="get">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" require class="form-control email" id="mustEmail" name="email" placeholder="example@gmail.com">
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" require class="form-control password" id="mustPass" name="password" placeholder="insert password">
                </div>

                <button class="form-control btn btn-primary">Log In</button>
            </form>
        </div>
        <div class="card-footer">
            <p class="card-text">Doesn't have an account?<a href="<?= Staditek\App\core\Router::url('Public/signup')?>" class="card-text">Register here</a></p>
        </div>
    </div>
</main>