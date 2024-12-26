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
          @if(Session::has('error'))
          <div class="alert alert-danger" role="alert">
              {{ Session::get('error') }}
          </div>
      @endif
          <form action="{{ route('login') }}"  method="POST" class="login-container">
            @csrf
              <h4>Log In</h4>
              <label for="" class="form-label-show">Email Address</label>
              <input type="email" name="email" class="form-input-show" placeholder="Enter email address...">
              <span class="text-danger">
                @error('email')
                   {{$message}}
                @enderror
              </span>

              <label for="" class="form-label-show mt-3">Password</label>
              <div style="position: relative">
                <input type="password" name="password" id="password" class="form-input-show" placeholder="Enter password...">
                <i class="fa-solid fa-eye" id="togglePassword" style="position: absolute;right:10px; top:15px"></i>
              </div>
             
              <span class="text-danger">
                @error('password')
                   {{$message}}
                @enderror
              </span>

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


<script>
  document.getElementById('togglePassword').addEventListener('click', function () {
      var passwordField = document.getElementById('password');
      var passwordFieldType = passwordField.getAttribute('type');
      if (passwordFieldType === 'password') {
          passwordField.setAttribute('type', 'text');
        
      } else {
          passwordField.setAttribute('type', 'password');
        
      }
  });
</script>

@endsection