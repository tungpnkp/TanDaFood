@extends('Layouts.layout')

@section('header-content')
    @include('Layouts.header')
@endsection

@section('footer-content')
    @include('Layouts.footer')
@endsection

@section('main-content')
    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <h3>Shop</h3>
                        <ul>
                            <li><a href="/index.html">Trang chủ</a></li>
                            <li><a href="/contact.html">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--contact map start-->
    <div class="contact_map mt-70">
        <div class="map-area">
            <div id="googleMap"></div>
        </div>
    </div>
    <!--contact map end-->

    <!--contact area start-->
    <div class="contact_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="contact_message content">
                        <h3>Thông tin liên hệ: </h3>
                        <p></p>
                        <ul>
                            <li><i class="fa fa-fax"></i>  Địa chỉ: Thôn Thuận An, xã Thái Hòa, huyện Ba Vì, thành phố Hà Nội</li>
                            <li><i class="fa fa-phone"></i> <a href="#">(+84) 83 215 2020</a></li>
                            <li><i class="fa fa-envelope-o"></i><a href="tel:0(1234)567890">htxnuibavi@gmail.com</a>  </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact_message form">
                        <h3>Hãy nói cho chúng tôi dự định của bạn</h3>
                        <form id="contact-form" method="POST"  action="assets/mail.php">
                            <p>
                                <label> Tên của bạn: </label>
                                <input name="name" placeholder="Name *" type="text">
                            </p>
                            <p>
                                <label>  Địa chỉ email</label>
                                <input name="email" placeholder="Email *" type="email">
                            </p>
                            <p>
                                <label>  Tiêu đề</label>
                                <input name="subject" placeholder="Subject *" type="text">
                            </p>
                            <div class="contact_textarea">
                                <label>  Nội dung</label>
                                <textarea placeholder="Message *" name="message"  class="form-control2" ></textarea>
                            </div>
                            <button type="submit"> Gửi</button>
                            <p class="form-messege"></p>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--contact area end-->

@endsection

@section('Script')
    <!--map js code here-->
    <script src="https://maps.google.com/maps/api/js?sensor=false&amp;libraries=geometry&amp;v=3.22&amp;key=AIzaSyChs2QWiAhnzz0a4OEhzqCXwx_qA9ST_lE"></script>
    <script  src="https://www.google.com/jsapi"></script>
    <script src="assets/js/map.js"></script>
@endsection