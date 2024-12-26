@extends('dashboard.layout.main')
@section('main-containers')

   <!-- ------------------------- Signup --------------------------- -->
   <div class="container mt-4 mb-4">
    <div class="row">
        <div class="col-md-6 mt-3">
            <div class="login-image-show">
              <img src="https://cdni.iconscout.com/illustration/premium/thumb/man-telling-about-sign-in-illustration-download-svg-png-gif-file-formats--user-account-login-cyber-security-pack-science-technology-illustrations-10840079.png" alt="signup-image" class="img-fluid">
            </div>
        </div>
        <div class="col-md-6 mt-3">
            @if(Session::has('success'))
            <div class="alert alert-success" role="alert">
                {{ Session::get('success') }}
            </div>
        @endif
          <form action="{{ route('register') }}" method="POST" class="login-container">
            @csrf
              <h4>Sign up</h4>
              <div class="row">
                <div class="col-md-6 mt-2">
                    <label for="" class="form-label-show">First Name</label>
                    <input type="text" name="fname" class="form-input-show" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="First Name...">
                    <span class="text-danger">
                        @error('fname')
                           {{$message}}
                        @enderror
                      </span>
                </div>
                <div class="col-md-6 mt-2">
                    <label for="" class="form-label-show">Last Name</label>
                    <input type="text" name="lname" class="form-input-show" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="Last Name...">
                    <span class="text-danger">
                        @error('lname')
                           {{$message}}
                        @enderror
                      </span>
                </div>
                <div class="col-md-12 mt-2">
                    <label for="" class="form-label-show">Email Address</label>
                    <input type="email" name="email" class="form-input-show" placeholder="Enter email address...">
                    <span class="text-danger">
                        @error('email')
                           {{$message}}
                        @enderror
                      </span>
                </div>
                <div class="col-md-12 mt-2">
                    <label for="" class="form-label-show">Password</label>
                    <div class="input-group" style="position: relative;">
                        <input type="password" id="password" name="password" class="form-input-show" placeholder="Enter password...">
                        <i class="fa-solid fa-eye" id="togglePassword" style="position: absolute;right:10px; top:15px"></i>
                    </div>
                    <span class="text-danger">
                        @error('password')
                           {{$message}}
                        @enderror
                    </span>
                </div>

                <div class="col-md-12 mt-2">
                    <label for="" class="form-label-show">Phone Number</label>
                    <input type="text" name="phone" class="form-input-show" maxlength="10" oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');"   placeholder="Phone Number...">
                    <span class="text-danger">
                        @error('phone')
                           {{$message}}
                        @enderror
                      </span>
                </div>
              </div>
             
              <div class="text-center"><button class="form-submit-btn">Sign Up</button></div>
              <div class="mt-3 text-center"><small>Already have an account? <a href="{{url('login')}}">Log In</a></small></div>
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