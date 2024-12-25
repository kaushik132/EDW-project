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
          <form action="" class="login-container">
              <h4>Sign up</h4>
              <div class="row">
                <div class="col-md-6 mt-2">
                    <label for="" class="form-label-show">First Name</label>
                    <input type="text" class="form-input-show" placeholder="First Name...">
                </div>
                <div class="col-md-6 mt-2">
                    <label for="" class="form-label-show">Last Name</label>
                    <input type="text" class="form-input-show" placeholder="Last Name...">
                </div>
                <div class="col-md-12 mt-2">
                    <label for="" class="form-label-show">Email Address</label>
                    <input type="text" class="form-input-show" placeholder="Enter email address...">
                </div>
                <div class="col-md-12 mt-2">
                    <label for="" class="form-label-show">Password</label>
                    <input type="text" class="form-input-show" placeholder="Enter password...">
                </div>

                <div class="col-md-12 mt-2">
                    <label for="" class="form-label-show">Phone Number</label>
                    <input type="text" class="form-input-show" placeholder="Phone Number...">
                </div>
              </div>
             
              <div class="text-center"><button class="form-submit-btn">Sign Up</button></div>
              <div class="mt-3 text-center"><small>Already have an account? <a href="{{url('login')}}">Log In</a></small></div>
          </form>
        </div>
    </div>
</div>
@endsection