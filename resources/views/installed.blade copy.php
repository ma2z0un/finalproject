<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Intalled</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <style>
            html,body,.cotainernew {
                height: 100%
                }
        </style>
</head>
<body class="bg-secondary.bg-gradient">
    {{-- <div class="cotainernew d-flex align-items-center justify-content-center "> --}}
  {{-- <div class="container h-50"> --}}
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mt-5">
                <div class="card ">
                    <div class="card-header text-center ">Installation</div>
                    <div class="card-body" style="height: 200px">
                        @if (session('message'))
                       
                        {{ session('message') }}
                    @endif   
                    </div>
                    <div class="card-footer text-center">
                        <a href="{{ route('welcome') }}" class="btn btn-sm btn-secondary">Go To Site</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
    
    
  {{-- </div> --}}
{{-- </div> --}}

    
    
</body>
</html>