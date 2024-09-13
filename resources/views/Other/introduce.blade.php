@extends('Layouts.layout')

@section('header-content')
    @include('Layouts.header')
@endsection

@section('footer-content')
    @include('Layouts.footer')
@endsection

@section('main-content')
    <!--error section area start-->
    <div class="error_section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="error_form">
                        <h2>Giới thiệu chung về chúng tôi</h2>
                        <a href="/index.html">Quay trở lại trang chủ</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--error section area end-->

@endsection