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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@forevolve/bootstrap-dark@1.0.0/dist/css/bootstrap-dark.min.css" />
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>

<div class="font-sans container-fluid">
    <br>
    <div class="row justify-content-center mt-7">
        <div class="col-md-6  mt-8">
            <div class="card card-border">
                <div class="card-body">
                    <div id="action">
                        <h6 class="text-primary text-center">Hello, {{$user->name}}</h6>
                        @if(!$user->bankAccount)
                            <div class="text-center">
                                You haven't provided your PayPal Account yet.
                            </div>
                        @elseif(!$user->is_approved && $user->is_profile_complete)
                            <h6 class="text-center text-muted mb-8">Activate Account</h6>
                            <p class="text-center text-muted mb-8">To activate your account you will need to pay the
                                amount.</p>
                            <h4 class="text-center mb-8">USD 5</h4>
                            <br>
                            <div id="paypal-button-container" class="mt-8 text-center"></div>

                        @elseif(!$user->is_profile_complete)
                            <div>
                                <h6 class="text-center text-muted mb-8">Please complete your profile</h6>
                            </div>
                        @elseif($user->is_approved)
                            <div>
                                <h6 class="text-center text-muted mb-8">Your profile is already approved</h6>
                            </div>
                        @endif
                    </div>
                    <div id="loading" style="display: none">
                        <p>Please wait! we are processing payment.....</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<script>
    paypal.Buttons({
        createOrder: function (data, actions) {
            return fetch('/api/paypal/order/{{$user->id}}', {
                method: 'POST'
            }).then(function (res) {
                console.log(res.ok)
                return res.json();
            }).then(function (data) {
                return data.id;
            });
        },
        onApprove: function (data, actions) {
            $('#action').hide()
            $('#loading').show()
            return fetch('/api/paypal/verify/' + data.orderID, {
                method: 'POST'
            }).then(function (res) {
                if (!res.ok) {
                    alert('Something went wrong');
                }else{
                    res.json().then(data =>{
                        console.log(data)
                        App.postMessage(JSON.stringify(data));
                    })
                }
            });
        }
    }).render('#paypal-button-container');
</script>
</body>
</html>
