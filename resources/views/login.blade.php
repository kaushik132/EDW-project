@extends('dashboard.layout.main')
@section('main-containers')

<!-- ------------------------- Login --------------------------- -->
<div class="container mt-4 mb-4">
    <div class="row">
        <div class="col-md-6 mt-3">
            <div class="login-image-show">
              <img src="https://img.freepik.com/free-vector/login-concept-illustration_114360-4525.jpg" alt="login-image" class="img-fluid">
            </div>
        </div>
        <div class="col-md-6 mt-3">
          <form action="" class="login-container">
              <h4>Log In</h4>
              <label for="" class="form-label-show">Email Address</label>
              <input type="text" class="form-input-show" placeholder="Enter email address...">

              <label for="" class="form-label-show mt-3">Password</label>
              <input type="text" class="form-input-show" placeholder="Enter password...">

              <div class="mt-3 form-check">
                <input type="checkbox" class="form-check-input" id="logincheck">
                <label class="form-check-label" for="logincheck">Remember me</label>
              </div>

              <div class="text-center"><button class="form-submit-btn">Log In</button></div>
              <div class="mt-3 text-center"><small>New user? <a href="{{url('signup')}}">Sign up</a></small></div>
          </form>
        </div>
    </div>
</div>

@endsection