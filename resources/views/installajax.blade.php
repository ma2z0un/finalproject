<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Install</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"> --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }

    html {
        height: 100%;
    }

    /* li requirement */
    .list .list__item.list__title {
        background: rgba(0, 0, 0, .12);
    }

    .list__item {
        border-bottom: 1px solid rgba(0, 0, 0, .12);
        overflow: hidden;
        padding: 7px 20px;
        position: relative;
    }

    #dbtype {
        margin-bottom: 25px;
        margin-top: 2px;
    }


    /* password and eye */
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
        top: 20%;
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

    /*Background color*/
    #grad1 {
        background-color: : #9C27B0;
        background-image: linear-gradient(120deg, #FF4081, #81D4FA);
    }

    /*form styles*/
    #msform {
        text-align: center;
        position: relative;
        margin-top: 20px;
    }

    #msform fieldset .form-card {
        background: white;
        border: 0 none;
        border-radius: 0px;
        box-shadow: 0 2px 2px 2px rgba(0, 0, 0, 0.2);
        padding: 20px 40px 30px 40px;
        box-sizing: border-box;
        width: 94%;
        margin: 0 3% 20px 3%;

        /*stacking fieldsets above each other*/
        position: relative;
    }

    #msform fieldset {
        background: white;
        border: 0 none;
        border-radius: 0.5rem;
        box-sizing: border-box;
        width: 100%;
        margin: 0;
        padding-bottom: 20px;

        /*stacking fieldsets above each other*/
        position: relative;
    }

    /*Hide all except first fieldset*/
    #msform fieldset:not(:first-of-type) {
        display: none;
    }

    #msform fieldset .form-card {
        text-align: left;
        color: #9E9E9E;
    }

    #msform input,
    #msform textarea {
        padding: 0px 8px 4px 8px;
        border: none;
        border-bottom: 1px solid #ccc;
        border-radius: 0px;
        margin-bottom: 25px;
        margin-top: 2px;
        width: 100%;
        box-sizing: border-box;
        font-family: montserrat;
        color: #2C3E50;
        font-size: 16px;
        letter-spacing: 1px;
    }

    #msform input:focus,
    #msform textarea:focus {
        -moz-box-shadow: none !important;
        -webkit-box-shadow: none !important;
        box-shadow: none !important;
        border: none;
        font-weight: bold;
        border-bottom: 2px solid skyblue;
        outline-width: 0;
    }

    /*Blue Buttons*/
    #msform .action-button {
        width: 100px;
        background: skyblue;
        font-weight: bold;
        color: white;
        border: 0 none;
        border-radius: 0px;
        cursor: pointer;
        padding: 10px 5px;
        margin: 10px 5px;
    }

    #msform .action-button:hover,
    #msform .action-button:focus {
        box-shadow: 0 0 0 2px white, 0 0 0 3px skyblue;
    }

    /*Previous Buttons*/
    #msform .action-button-previous {
        width: 100px;
        background: #616161;
        font-weight: bold;
        color: white;
        border: 0 none;
        border-radius: 0px;
        cursor: pointer;
        padding: 10px 5px;
        margin: 10px 5px;
    }

    #msform .action-button-previous:hover,
    #msform .action-button-previous:focus {
        box-shadow: 0 0 0 2px white, 0 0 0 3px #616161;
    }

    /*Dropdown List Exp Date*/
    select.list-dt {
        border: none;
        outline: 0;
        border-bottom: 1px solid #ccc;
        padding: 2px 5px 3px 5px;
        margin: 2px;
    }

    select.list-dt:focus {
        border-bottom: 2px solid skyblue;
    }

    /*The background card*/
    .card {
        z-index: 0;
        border: none;
        border-radius: 0.5rem;
        position: relative;
    }

    /*FieldSet headings*/
    .fs-title {
        font-size: 25px;
        color: #2C3E50;
        margin-bottom: 10px;
        font-weight: bold;
        text-align: left;
    }

    /*progressbar*/
    #progressbar {
        margin-bottom: 30px;
        overflow: hidden;
        color: lightgrey;
    }

    #progressbar .active {
        color: #000000;
    }

    #progressbar li {
        list-style-type: none;
        font-size: 12px;
        width: 25%;
        float: left;
        position: relative;
    }

    /*Icons in the ProgressBar*/
    #progressbar #home:before {
        font-family: FontAwesome;
        content: "\f015";
    }

    #progressbar #require:before {
        font-family: FontAwesome;
        content: "\f03a";
    }

    #progressbar #database:before {
        font-family: FontAwesome;
        content: "\f013";
    }

    /* #progressbar #payment:before {
        font-family: FontAwesome;
        content: "\f09d";
    } */

    #progressbar #confirm:before {
        font-family: FontAwesome;
        content: "\f00c";
    }

    /*ProgressBar before any progress*/
    #progressbar li:before {
        width: 50px;
        height: 50px;
        line-height: 45px;
        display: block;
        font-size: 18px;
        color: #ffffff;
        background: lightgray;
        border-radius: 50%;
        margin: 0 auto 10px auto;
        padding: 2px;
    }

    /*ProgressBar connectors*/
    #progressbar li:after {
        content: '';
        width: 100%;
        height: 2px;
        background: lightgray;
        position: absolute;
        left: 0;
        top: 25px;
        z-index: -1;
    }

    /*Color number of the step and the connector before it*/
    #progressbar li.active:before,
    #progressbar li.active:after {
        background: skyblue;
    }

    /*Imaged Radio Buttons*/
    .radio-group {
        position: relative;
        margin-bottom: 25px;
    }

    .radio {
        display: inline-block;
        width: 204;
        height: 104;
        border-radius: 0;
        background: lightblue;
        box-shadow: 0 2px 2px 2px rgba(0, 0, 0, 0.2);
        box-sizing: border-box;
        cursor: pointer;
        margin: 8px 2px;
    }

    .radio:hover {
        box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.3);
    }

    .radio.selected {
        box-shadow: 1px 1px 2px 2px rgba(0, 0, 0, 0.1);
    }

    /*Fit image in bootstrap div*/
    .fit-image {
        width: 100%;
        object-fit: cover;
    }
</style>

<body>
    <!-- MultiStep Form -->
    <div class="container-fluid" id="grad1">
        <div class="row justify-content-center mt-0">
            <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2">
                <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                    <h2><strong>Installation</strong></h2>
                    <p>Fill all form field to go to next step</p>
                    <div class="row">

                        <div class="col-md-12 mx-0">
                            <form id="msform" method="POST">
                                @csrf
                                <!-- progressbar -->
                                <ul id="progressbar">
                                    <li class="active" id="home"><strong>Home</strong></li>
                                    <li id="require"><strong>Requirement</strong></li>
                                    <li id="database"><strong>DB</strong></li>
                                    {{-- <li id="payment"><strong>Payment</strong></li> --}}
                                    <li id="confirm"><strong>Finish</strong></li>
                                </ul>
                                <!-- fieldsets -->
                                <fieldset>
                                    <div class="form-card">
                                        <h2 class="fs-title">Welcome</h2>
                                        <p> Before getting started, we need some information on the database. You will
                                            need to know the following items before proceeding.</p>
                                        {{-- <input type="text"  placeholder="PHP" disabled/>
                                    <input type="text"  placeholder="UserName" disabled />
                                    <input type="text"  placeholder="Password" disabled/>
                                    <input type="text"  placeholder="Confirm Password" disabled/> --}}
                                    </div>
                                    <input type="button" name="next" class="next action-button" value="Next Step" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <h2 class="fs-title">Require Information</h2>
                                        <ul class="list">
                                            <li class="list__item list__title success">
                                                <strong>Php</strong>
                                                <strong>
                                                    <small>
                                                        (version 8.0.2 required)
                                                    </small>
                                                </strong>
                                                <span class="float-right">
                                                    <strong>
                                                        8.0.2
                                                    </strong>
                                                    <i class="fa fa-fw fa-check-circle-o row-icon"
                                                        aria-hidden="true"></i>
                                                </span>
                                            </li>
                                            <li class="list__item success">
                                                Openssl
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Pdo
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Mbstring
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Tokenizer
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                JSON
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                CURL
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Gd
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Fileinfo
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Exif
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Xml
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                Ctype
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                guzzlehttp/guzzle
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                laravel/framework
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                laravel/sanctum
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                laravel/tinker
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                        </ul>


                                        <ul class="list">
                                            <li class="list__item list__title success">
                                                <strong>Permissions</strong>
                                            </li>
                                            <li class="list__item success">
                                                .env
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                database folder
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                storage/logs/
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                            <li class="list__item success">
                                                bootstrap/cache/
                                                <i class="fa fa-fw fa-check-circle-o row-icon" aria-hidden="true"></i>
                                            </li>
                                        </ul>
                                        {{-- <input type="text"  placeholder="PHP" disabled/>
                                    <input type="text"  placeholder="UserName" disabled />
                                    <input type="text"  placeholder="Password" disabled/>
                                    <input type="text"  placeholder="Confirm Password" disabled/> --}}
                                    </div>
                                    <input type="button" name="next" class="next action-button"
                                        value="Next Step" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <h2 class="fs-title">Data Base <span class=" text-danger" id="error_msg"
                                                style="display: none"></span></h2>
                                        <label for="domain" class="form-label">Domain/Port <span id="domain_error"
                                                class="text-danger"></span> </label>


                                        <input type="text" name="domain" value="{{ config('app.url') }}"
                                            placeholder="example.com:port" />

                                        <label for="dbtype" class="form-label">Type</label>

                                        <select name="dbtype" id="dbtype" class="form-control">
                                            <option value="mysql"
                                                {{ env('DB_CONNECTION') === 'mysql' ? 'selected' : '' }}>My SQL</option>
                                            <option value="sqlite"
                                                {{ env('DB_CONNECTION') === 'sqlite' ? 'selected' : '' }}>SQLITE
                                            </option>
                                            <option value="pgsql"
                                                {{ env('DB_CONNECTION') === 'pgsql' ? 'selected' : '' }}>PGSQL</option>
                                        </select>
                                        <label for="dbservername" class="form-label">Server Name <span
                                                id="dbservername_error" class="text-danger"></span> </label>

                                        <input type="text" id="dbservername"
                                            value="{{ config('database.connections.mysql.host') }}"
                                            name="dbservername" placeholder="127.0.0.1"
                                            {{ env('DB_CONNECTION') == 'sqlite' ? 'readonly' : '' }}>
                                        <label for="dbserverport" class="form-label">Server Port <span
                                                id="dbserverport_error" class="text-danger"></span></label>



                                        <input type="text" id="dbserverport"
                                            value="{{ config('database.connections.mysql.port') }}"
                                            name="dbserverport" placeholder="3306"
                                            {{ env('DB_CONNECTION') == 'sqlite' ? 'readonly' : '' }}>
                                        <label for="dbname" class="form-label">Name <span id="dbname_error"
                                                class="text-danger"></span></label>

                                        @php
                                            $final = config('database.connections.mysql.database');
                                            if (strpos(config('database.connections.mysql.database'), '.sqlite') !== false) {
                                                $config = config('database.connections.mysql.database');
                                                $start = strpos($config, 'sqllite/') + 8;
                                                // $end=strpos($config, '.sqlite')+7;
                                                $final = str_replace('.sqlite', '', Str::substr($config, $start));
                                            }
                                        @endphp
                                        {{-- // $end=strpos($config, '.sqlite');
                                                // Str::substr($config, $start, $end); --}}

                                        {{-- {{ Str::substr('The Laravel Framework', 4, 7); }} --}}

                                        <input type="text" id="dbname" value="{{ $final }}"
                                            name="dbname" placeholder="dbname">
                                        <label for="username" class="form-label">User Name <span id="username_error"
                                                class="text-danger"></span></label>


                                        <input type="text" id="username"
                                            value="{{ config('database.connections.mysql.username') }}"
                                            name="username" placeholder="root"
                                            {{ env('DB_CONNECTION') == 'sqlite' ? 'readonly' : '' }}>
                                        <label for="password" class="form-label">Password </label>


                                        <div class="password-container">
                                            <input type="password" id="password"
                                                value="{{ config('database.connections.mysql.password') }}"
                                                name="password" placeholder="password"
                                                {{ env('DB_CONNECTION') == 'sqlite' ? 'readonly' : '' }}>
                                            <i class="fa-solid fa-eye hidden" id="eye"></i>



                                        </div>
                                    </div>
                                    <input type="button" name="previous" class="previous action-button-previous"
                                        value="Previous" />
                                    <input type="button" name="next" id="dbinstall" class="action-button"
                                        value="Install" />
                                </fieldset>

                                <fieldset>
                                    <div class="form-card">
                                        <h2 class="fs-title text-center">Success !</h2>
                                        <br><br>
                                        <div class="row justify-content-center">
                                            <div class="col-3">
                                                <img src="https://img.icons8.com/color/96/000000/ok--v2.png"
                                                    class="fit-image">
                                            </div>
                                        </div>
                                        <br><br>
                                        <div class="row justify-content-center">
                                            <div class="col-7 text-center">
                                                <h5>You Have Successfully Installed</h5>
                                            </div>
                                            <a class="btn btn-success" href="{{ route('welcome') }}">Go To Site</a>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function() {

            var current_fs, next_fs, previous_fs,current; //fieldsets
            var opacity;
            
            // if( sessionStorage.getItem("currentfs")!=null){
            //     console.log(sessionStorage.getItem("currentfs"));
            //     // $("#progressbar li").eq($("fieldset").index()).addClass("active");
            //     // current=sessionStorage.getItem("currentfs");
            //     // current.attr('id','current');
            // }
            $(".next").click(function() {
               
                
                current_fs = $(this).parent();
                
                next_fs = $(this).parent().next();
                
                // console.log(next_fs);
                //Add Class Active
                $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

                //show the next fieldset
                next_fs.show();
                //hide the current fieldset with style
                current_fs.animate({
                    opacity: 0
                }, {
                    step: function(now) {
                        // for making fielset appear animation
                        opacity = 1 - now;

                        current_fs.css({
                            'display': 'none',
                            'position': 'relative'
                        });
                        next_fs.css({
                            'opacity': opacity
                        });
                    },
                    duration: 600
                });
        
                // sessionStorage.setItem("currentfs",next_fs.index());
    


            });

            $(".previous").click(function() {

                current_fs = $(this).parent();
                previous_fs = $(this).parent().prev();

                //Remove class active
                $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

                //show the previous fieldset
                previous_fs.show();

                //hide the current fieldset with style
                current_fs.animate({
                    opacity: 0
                }, {
                    step: function(now) {
                        // for making fielset appear animation
                        opacity = 1 - now;

                        current_fs.css({
                            'display': 'none',
                            'position': 'relative'
                        });
                        previous_fs.css({
                            'opacity': opacity
                        });
                    },
                    duration: 600
                });
            });

            $('.radio-group .radio').click(function() {
                $(this).parent().find('.radio').removeClass('selected');
                $(this).addClass('selected');
            });

            $(".submit").click(function() {
                return false;
            })

            $('#dbtype').change(function() {

                var selectecalue = $(this).find("option:selected").val();
                if (selectecalue == "mysql" || selectecalue == "pgsql") {
                    if(selectecalue == "pgsql"){
                        $('#dbserverport').val('5432');
                        $('#username').val('postgres');
                        $('#password').val('postgres');
                        $('#eye').addClass('fa-eye-slash display');
                        $('#eye').removeClass('fa-eye hidden');
                    }
                    if(selectecalue == "mysql"){
                        $('#dbserverport').val('3306');
                        
                    }
                    // $('#username').attr('readonly').remo
                    $('#username').removeAttr('readonly');
                    $('#dbserverport').removeAttr('readonly');
                    $('#dbservername').removeAttr('readonly');
                    $('#password').removeAttr('readonly');
                }
                if (selectecalue == "sqlite") {
                    // alert('ss');
                    $('#username').attr('readonly', 'readonly');
                    $('#dbserverport').attr('readonly', 'readonly');
                    $('#dbservername').attr('readonly', 'readonly');
                    $('#password').attr('readonly', 'readonly');
                    $('#username').val('root');
                    $('#dbserverport').val('3306');
                    $('#dbservername').val('127.0.0.1');
                    $('#password').val(null);
                    $('#eye').addClass('fa-eye hidden');
                        $('#eye').removeClass('fa-eye-slash display');
                    // $('#username').attr('readonly').remo

                }
                //  $('#price').val(selectedPrice);
            })




            $(document).on('click', '#dbinstall', function() {
                // alert('ali');
                event.preventDefault();
                // $('#photo_ar_error').text(' ');
                var formData = new FormData($('#msform')[0]);
                current_fs = $(this).parent();
                // console.log(current_fs);
                next_fs = $(this).parent().next();
                // console.log(next_fs);
                //Add Class Active

                $.ajax({
                    enctype: 'multipart/form-data',
                    type: 'post',
                    url: "{{ route('install.db') }}",
                    data: formData,
                    processData: false,
                    contentType: false,
                    cache: false,


                    success: function(data) {
                        // alert(data.msg);
                        if (data.status == true) {
                            // alert(data.msg);
                            // $('#success_msg').show();
                            $("#progressbar li").eq($("fieldset").index(next_fs)).addClass(
                                "active");

                            //show the next fieldset
                            next_fs.show();
                            //hide the current fieldset with style
                            current_fs.animate({
                                opacity: 0
                            }, {
                                step: function(now) {
                                    // for making fielset appear animation
                                    opacity = 1 - now;

                                    current_fs.css({
                                        'display': 'none',
                                        'position': 'relative'
                                    });
                                    next_fs.css({
                                        'opacity': opacity
                                    });
                                },
                                duration: 600
                            });
                        } else if (data.status == false) {


                            $('#error_msg').text(data.msg);
                            $('#error_msg').show();
                            $("#domain_error").text('');
                            $("#dbservername_error").text('');
                            $("#dbserverport_error").text('');
                            $("#dbname_error").text('');
                            $("#username_error").text('');

                        }
                    },
                    error: function(reject) {
                        // alert("error catch");
                        var response = $.parseJSON(reject.responseText);

                        $.each(response.errors, function(key, val) {
                            // alert(key);
                            $("#" + key + "_error").text(val[0]);
                        });
                        $('#error_msg').text();
                        $('#error_msg').hide();
                    }
                });
            });













        });
    </script>

    <script>
        const eye = $('#eye');
        const passwordInput = $('#password');
        $(document).ready(function() {
            //    alert(passwordInput.val().length);
            //    alert(passwordInput.val());
            if ($("#password").val().length > 0) {
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

                passwordInput.attr("type", type);

            });

        });
    </script>


</body>

</html>
