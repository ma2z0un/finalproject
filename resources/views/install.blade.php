<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    {{-- <meta name="csrf-token" content="{{ csrf_token() }}"> --}}
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Install</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    {{-- font css --}}
    <!-- our project just needs Font Awesome Solid + Brands -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <style>
        .password-container {
            /* width: 400px; */
            position: relative;
        }

        .password-container input[type="password"],
        .password-container input[type="text"] {
            width: 100%;
            padding: 12px 36px 12px 12px;
            box-sizing: border-box;
        }

        .fa-eye,
        .fa-eye-slash {
            position: absolute;
            top: 28%;
            right: 1%;
            cursor: pointer;
            color: lightgray;
            /* display: none; */
        }

        .display {
            display: block;
        }

        .hidden {
            display: none;
        }
    </style>

</head>

<body>

    <div class="container">
        <div class="justify-content-center">
         
            <div class="card mt-5">
                <div class="card-header text-center fs-3 fw-bold">
                    Configuration
                </div>
                {{-- .{{  session('message') }} --}}
                <div class="card-body">
                    {{-- @if (Session::has('message')) --}}
                   {{-- {{ dd(session('message'));}} --}}
                    @if (session('message'))
                    <div class="alert alert-success">
                        {{ session('message') }}
                      </div>
                    @endif
                    {{-- @endif --}}
               
                    {{-- @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach --}}
                    <form action="{{ route('install.db') }}" method="POST" id="form">
                        @csrf
                        @method('POST')
                        <div class="mb-3">
                            <label for="domain" class="form-label">Domain/Port</label>
                            @error('domain')
                            <span class=" text-danger">{{ $message }}</span>
                            @enderror
                            <input type="text" class="form-control" id="domain" name="domain" value="{{ config('app.url') }}" placeholder="example.com:port">
                        </div>
                        <div class="card">
                            <div class="card-header">
                                Data Base
                            </div>
                            <div class="card-body">
                                <div class="mb-3">
                                    <label for="dbtype" class="form-label">Type</label>
                                   
                                    <select name="dbtype" id="dbtype" class="form-control">
                                        <option value="mysql" {{ env('DB_CONNECTION')==='mysql' ? 'selected' : '' }} >My SQL</option>
                                        <option value="sqlite" {{ env('DB_CONNECTION')==='sqlite' ? 'selected' : '' }}>SQLITE</option>
                                        <option value="pgsql" {{ env('DB_CONNECTION')==='pgsql' ? 'selected' : '' }}>PGSQL</option>
                                    </select>
                                  
                                   
                                </div>

                                <div class="mb-3">
                                    <label for="dbservername" class="form-label">Server Name</label>
                                   @error('dbservername')
                                   <span class=" text-danger">{{ $message }}</span>
                                   @enderror
                                   
                                  
                                    <input type="text" class="form-control" id="dbservername" value="{{ config('database.connections.mysql.host') }}" name="dbservername"
                                        placeholder="servername">
                                </div>
                                <div class="mb-3">
                                    <label for="dbserverport" class="form-label">Server Port</label>
                                   @error('dbserverport')
                                   <span class=" text-danger">{{ $message }}</span>
                                   @enderror
                                   
                                  
                                    <input type="text" class="form-control" id="dbserverport" value="{{ config('database.connections.mysql.port') }}" name="dbserverport"
                                        placeholder="serverport">
                                </div>
                                <div class="mb-3">
                                    <label for="dbname" class="form-label">Name</label>
                                    @error('dbname')
                                   <span class=" text-danger">{{ $message }}</span>
                                   @enderror
                                    <input type="text" class="form-control" id="dbname" value="{{ config('database.connections.mysql.database') }}" name="dbname" placeholder="dbname">
                                </div>
                                <div class="mb-3">
                                    <label for="username" class="form-label">User Name</label>
                                    @error('username')
                                   <span class=" text-danger">{{ $message }}</span>
                                   @enderror
                                    {{-- {{ env('DB_CONNECTION') }} --}}
                                    <input type="text" class="form-control" id="username" 
                                     value="{{ config('database.connections.mysql.username') }}" name="username" placeholder="username">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    @error('password')
                                    <span class=" text-danger">{{ $message }}</span>
                                    @enderror

                                    <div class="password-container">
                                        <input type="password" class="form-control" id="password" value="{{ config('database.connections.mysql.password') }}" name="password"
                                            placeholder="password">
                                        <i class="fa-solid fa-eye hidden" id="eye" ></i>


                                        {{-- <i class="glyphicon glyphicon-eye-open form-control-feedback"></i> --}}
                                    </div>



                                </div>
                            </div>
                        </div>





                </div>
                <div class="card-footer">   
                    <div class=" float-end">
                        <button type="reset" id="reset" class="btn btn-outline-info">Reset</button>
                        <button type="submit" class="btn btn-outline-secondary">Save</button>
                       
                    </div>

                </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
    <script>
        const eye = $('#eye');
        const passwordInput = $('#password');
        $(document).ready(function() {
        //    alert(passwordInput.val().length);
        //    alert(passwordInput.val());
        if($("#password").val().length>0){
            // alert('ss');
            eye.addClass('fa-eye-slash display');
                    eye.removeClass('fa-eye hidden');
        }
            $(document).on('keyup', '#password', function() {
                // e.preventDefault();
                var promo = $("#password").val();
                if (promo) {

                    eye.addClass('fa-eye-slash display');
                    eye.removeClass('fa-eye hidden');
                } else {
                    eye.addClass('fa-eye hidden');
                    eye.removeClass('fa-eye-slash display');
                }

            });

            eye.on('click', function() {
                // e.preventDefault();
                this.classList.toggle('fa-eye');

                const type = passwordInput.attr("type") === "password" ? "text" : "password";
                // alert(type);
                passwordInput.attr("type", type);
                // eye.addClass('fa-eye');
                // eye.removeClass('fa-eye-slash');
            });
            // $('#reset').click(function (e) { 
            //     // e.preventDefault();
                
			// 	/*Clear all input type="text" box*/
			// 	// $('#form input[type="text" ]').val('');
			// 	/*Clear textarea using id */
			// 	// $('#form #txtAddress').val('');
			
            //     // $("#intstallForm")[0].reset();
            //     // $(this).closest('intstallForm').find('input[type=text], textarea').val('');

            // });
        });
        //     const passwordInput = $('#password');
        //     const eye = $('#eye');
        //     alert(passwordInput.val());
        //     if (passwordInput.val() !="") {
        //     alert('ss');
        // }
        // passwordInput.keypress(function (e) { 
        //     alert( passwordInput.val());
        // //    if(passwordInput.val()!=""){
        // //     // eye.classList.toggle("fa-eye-slash");
        // //     // eye.addClass('fa-eye-slash show');
        // //    }
        // //    else{
        // //     alert('empty');
        // //    }
        // });
    </script>
</body>

</html>
