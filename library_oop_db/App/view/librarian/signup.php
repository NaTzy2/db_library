<style>
    .card-header, .card-footer{
        text-align: center;
    }
</style>

<main class="container">
    <div class="card">
        <div class="card-header">Sign Up</div>
        <div class="card-body">
            <form name="myform" action="<?= Staditek\App\core\Router::url('Public/save')?>" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" require class="form-control username" id="mustUsername" name="username" placeholder="insert username">
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" require class="form-control email" id="mustEmail" name="email" placeholder="example@gmail.com">
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" require class="form-control password" id="mustPass" name="password" placeholder="insert password">
                </div>

                <button class="form-control btn btn-primary" value="submit" onclick='validDOM()'>Register</button>
            </form>
        </div>
        <div class="card-footer">
            <p class="card-text">Already have an account?<a href="<?= Staditek\App\core\Router::url('Public/')?>" class="card-text">Login here</a></p>
        </div>
    </div>
</main>

<script src="<?= Staditek\App\core\Router::url('/Assets/js/signup.js')?>"></script>