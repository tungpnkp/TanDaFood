<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Trang chủ - SƠN TINH FOOD
    </title>
    <meta name="description" content="SƠN TINH FOOD - Thực phẩm sạch, HTX Nông nghiệp hữu cơ &amp; Chế biến Thực phẩm núi Ba Vì"/>
    <meta name="keywords" content="SƠN TINH FOOD, Thực phẩm sạch, HTX Nông nghiệp hữu cơ, Chế biến Thực phẩm, thực phẩm tươi sống, thực phẩm chế biến"/>
    <meta name="viewport" content="width=device-width"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="author" content="sontinhfood.vn"/>
    <link rel="alternate" href="https://nuibavi.com" hreflang="vi"/>
    <meta name="copyright" content="© 2022 Copyright by sontinhfood.vn. All rights reserved."/>
    <link rel="icon" type="image/png" href="/images/banner/logo_favi.png"/>
    <meta name="robots" content="noindex, nofollow"/>
    <meta name="google-site-verification" content="jkyrwGtdIvdJsWn0AmHKKsRVr8AUG85hiu5VVL32gbs"/>
    <meta name="revisit-after" content="1 day"/>
    <meta name="document-rating" content="General"/>
    <meta name="document-distribution" content="Global"/>
    <meta name="distribution" content="Global"/>
    <meta name="placename" content="vietnam"/>
    <meta name="resource-type" content="Document"/>
    <link rel="stylesheet" type="text/css" href="/css/general/animate.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/cthemify-icons.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/dflip.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/font-all.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/jquery-ui.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/jquery.bxslider.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/jquery.fancybox.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/owl.carousel.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/reset.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/select2.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/sky-forms.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/style.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/wresponsive.css"/>
    <link rel="stylesheet" type="text/css" href="/css/general/option04.css"/>
    <link rel="canonical" href="https://nuibavi.com/"/>
    <link rel="canonical" href="https://nuibavi.com/"/>
    <meta property="og:title" content="Trang chủ"/>
    <meta property="og:type" content="article"/>
    <meta property="og:image" content="images/logo/logo_head.png"/>
    <meta property="og:url" content="https://nuibavi.com/"/>
    <meta property="og:description" content="SƠN TINH FOOD - Thực phẩm sạch, HTX Nông nghiệp hữu cơ &amp; Chế biến Thực phẩm núi Ba Vì"/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:title" content="Trang chủ"/>
    <meta property="twitter:description" content="SƠN TINH FOOD - Thực phẩm sạch, HTX Nông nghiệp hữu cơ &amp; Chế biến Thực phẩm núi Ba Vì"/>
    <meta property="twitter:image" content="/images/logo/logo_head.png"/>
    <style type="text/css">
        #xt-detail-kite {
            display: none !important;
        }
    </style>
    <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script><![endif]-->
</head>

<body>

<div class="header-content">
    @include('Layouts.header')
</div>
<!--header area end-->

<div class="main-content">
    @yield('main-content')
</div>

<div  id="phonering-alo-phoneIcon">
    <a href="https://zalo.me/0832152020" class="pps-btn-img" title="Liên hệ" target="_blank" rel="noopener noreferrer">
        <div class="phonering-alo-ph-img-circle" ></div>
    </a>
</div>

<!--footer area start-->
<div class="footer-content">
    @include('Layouts.footer')
</div>
<!--footer area end-->


<!-- custom js -->


@yield('Script')

<script type="text/javascript">
    function formatNumber (num) {
        return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
    }
    $('#shipping').change(function(){
        $('#total').html(formatNumber(parseInt({{ Cart::subtotal() }})+ parseInt($('#shipping').val())));
    });
</script>

<script type="text/javascript">
    function addToCart(id,instance = null){
        var buy_qty = $('#buy_qty').val();
        if (buy_qty == null) {
            buy_qty = 1
        }
        $.ajax({
            url: '/addToCart',
            type: 'POST',
            dataType: 'json',
            data: {id: id,instance:instance, qty : buy_qty , _token :'<?php echo e(csrf_token()); ?>'},
            success: function(data){
                flg= parseInt(data.flg);
                if(flg ===1)
                {
                    var itemCountcart = data.count_cart
                    $(".cartlist-number").html(itemCountcart);
                    alert('Sản phẩm đã được thêm vào giỏ hàng thành công!');
                }else{
                    alert(data.error);
                }

            }
        });

    }
</script>
</body>

</html>
