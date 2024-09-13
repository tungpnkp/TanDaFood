@extends('Layouts.layout')

@section('header-content')
    @include('Layouts.header')
@endsection

@section('footer-content')
    @include('Layouts.footer')
@endsection

@section('main-content')
    <br>
    <hr>
    <!--testimonial area start-->
    <div class="faq-client-say-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="faq-client_title">
                        <h2>Hệ thống cửa hàng</h2>
                    </div>
                    <div class="faq-style-wrap" id="faq-five">
                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a id="octagon" class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse1" aria-expanded="true" aria-controls="faq-collapse1"> <span class="button-faq"></span>Cửa hàng Ba Vì</a>
                                </h5>
                            </div>
                            <div id="faq-collapse1" class="collapse show" aria-expanded="true" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>Địa chỉ: Thôn Thuận An, xã Thái Hòa, huyện Ba Vì, thành phố Hà nội</p>
                                    <p>Điện thoại: (+84) 83 215 2020 </p>
                                    <p>Email: htxnuibavi@gmail.com</p>
                                    <p>Xem trên bản đồ <a target="_blank" href="https://www.google.com/maps/@21.2376624,105.3736297,17z" style="color: green">tại đây</a></p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->

                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse2" aria-expanded="false" aria-controls="faq-collapse2"> <span class="button-faq"></span>Cửa hàng 2</a>
                                </h5>
                            </div>
                            <div id="faq-collapse2" class="collapse" aria-expanded="false" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>Sơn Tinh Food - Tinh khiết từ nguồn</p>
                                    <p> conten có dộ dài 300 - 600 từ
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->

                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse3" aria-expanded="false" aria-controls="faq-collapse3"> <span class="button-faq"></span>Cửa hàng 3</a>
                                </h5>
                            </div>
                            <div id="faq-collapse3" class="collapse" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>Sơn Tinh Food - Tinh khiết từ nguồn</p>
                                    <p> conten có dộ dài 300 - 600 từ
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->

                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse4" aria-expanded="false" aria-controls="faq-collapse4"> <span class="button-faq"></span>Cửa hàng 4</a>
                                </h5>
                            </div>
                            <div id="faq-collapse4" class="collapse" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>Sơn Tinh Food - Tinh khiết từ nguồn</p>
                                    <p> conten có dộ dài 300 - 600 từ
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->
                    </div>

                </div>
                 <div>
                {{--                    <!--testimonial area start-->--}}
                {{--                    <div class="testimonial_area  testimonial_about">--}}
                {{--                        <div class="section_title">--}}
                {{--                            <h2>What Our Customers Says ?</h2>--}}
                {{--                        </div>--}}
                {{--                        <div class="testimonial_container">--}}
                {{--                            <div class="testimonial_carousel testimonial-two owl-carousel">--}}
                {{--                                <div class="single_testimonial">--}}
                {{--                                    <div class="testimonial_thumb">--}}
                {{--                                        <a href="#"><img src="assets/img/about/testimonial1.png" alt=""></a>--}}
                {{--                                    </div>--}}
                {{--                                    <div class="testimonial_content">--}}
                {{--                                        <div class="testimonial_icon_img">--}}
                {{--                                            <img src="assets/img/about/testimonials-icon.png" alt="">--}}
                {{--                                        </div>--}}
                {{--                                        <p>I'm so happy with all of the themes, great support, could not wish for more. These people are geniuses! Kudo's from the Netherlands!..</p>--}}
                {{--                                        <a href="#">Lindsy Neloms</a>--}}
                {{--                                    </div>--}}
                {{--                                </div>--}}
                {{--                                <div class="single_testimonial">--}}
                {{--                                    <div class="testimonial_thumb">--}}
                {{--                                        <a href="#"><img src="assets/img/about/testimonial2.png" alt=""></a>--}}
                {{--                                    </div>--}}
                {{--                                    <div class="testimonial_content">--}}
                {{--                                        <div class="testimonial_icon_img">--}}
                {{--                                            <img src="assets/img/about/testimonials-icon.png" alt="">--}}
                {{--                                        </div>--}}
                {{--                                        <p>I'm so happy with all of the themes, great support, could not wish for more. These people are geniuses! Kudo's from the Netherlands!..</p>--}}
                {{--                                        <a href="#">Rebecka Filson</a>--}}
                {{--                                    </div>--}}
                {{--                                </div>--}}
                {{--                                <div class="single_testimonial">--}}
                {{--                                    <div class="testimonial_thumb">--}}
                {{--                                        <a href="#"><img src="assets/img/about/testimonial3.png" alt=""></a>--}}
                {{--                                    </div>--}}
                {{--                                    <div class="testimonial_content">--}}
                {{--                                        <div class="testimonial_icon_img">--}}
                {{--                                            <img src="assets/img/about/testimonials-icon.png" alt="">--}}
                {{--                                        </div>--}}
                {{--                                        <p>I'm so happy with all of the themes, great support, could not wish for more. These people are geniuses! Kudo's from the Netherlands!..</p>--}}
                {{--                                        <a href="#">Amber Laha</a>--}}
                {{--                                    </div>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                    <!--testimonial area end-->--}}
                          </div>
            </div>
        </div>
    </div>
    <!--testimonial area end-->

@endsection