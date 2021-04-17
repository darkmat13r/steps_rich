<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- Styles -->

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"
            integrity="sha512-bZS47S7sPOxkjU/4Bt0zrhEtWx0y0CRkhEp8IckzK+ltifIIE9EMIMTuT/mEzoIMewUINruDBIR/jJnbguonqQ=="
            crossorigin="anonymous"></script>
    <script
        src="https://www.paypal.com/sdk/js?&client-id=AWoQbQejH10gMyA0rC9NRqH-MNouJOR74EtNA3DSlYJmYyoM15ctj9n7cZJ2PLXFqGcoCVD3cdhpV183&merchant-id=sb-oq2dv5911529@business.example.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="font-sans container-fluid">
    <div class="row justify-content-center mt-7">
        <div class="col-md-6  mt-8">
            <div class="card card-border">
                <div class="card-body">
                    <h6 class="text-primary text-center">Hello, {{$user->name}}</h6>
                    @if(!$user->active && $user->is_profile_complete)


                    <h6 class="text-center text-muted mb-8">Activate Account</h6>
                    <p class="text-center text-muted mb-8">To activate your account you will need to pay the
                        amount.</p>
                    <h4 class="text-center mb-8">MYR 12</h4>
                    <br>
                    <div id="paypal-button-container" class="mt-8 text-center"></div>

                    @elseif(!$user->is_profile_complete)
                    <div>
                        <h6 class="text-center text-muted mb-8">Please complete your profile</h6>
                    </div>
                    @elseif($user->active)
                    <div>
                        <h6 class="text-center text-muted mb-8">Your account is already activated</h6>
                    </div>
                    @endif
                </div>
            </div>
        </div>

    </div>
</div>
<script>

</script>
</body>
</html>
