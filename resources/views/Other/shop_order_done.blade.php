@extends('Layouts.layout')

@section('header-content')
    @include('Layouts.header')
@endsection

@section('footer-content')
    @include('Layouts.footer')
@endsection

@section('main-content')

    <p></p>
    <hr>
    <section class="main-container col1-layout">
        <div class="main container">
            <div class="col-main">
                <div class="cart">

                    <div class="page-content page-order">
                        <div class="col-md-12 text-center" >
                            <h3> Cảm ơn quý khách đã mua sản phẩm tại của hàng của chúng tôi </h3>
                            <h5> Nhân viên của chúng tôi sẽ nhanh chóng liên hệ với quý khách để xác nhận đơn hành </h5>
                            <b>Chi tiết đơn hàng: </b>
                            @if(Session::has('order'))
                                <table class="table box  table-bordered table-responsive">
                                    <thead>
                                    <tr>
                                        <th style="width: 50px;">TT</th>
                                        <th style="width: 100px;">Mã đơn hàng</th>
                                        <th>Giá trị đơn hàng</th>
                                        <th>Trạng thái</th>
                                        <th>Phương thức thanh toán</th>
                                        <th>Ngày mua</th>
                                        <th>Địa chỉ giao hàng</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @php
                                        $order = Session::get('order');
                                            $n = 0;
                                            $n++;
                                            $paymentMethod = getNamePaymentMethod($order['payment_method']);
                                    @endphp
                                    <tr>
                                        <td><span class="item_21_id">{{ $n }}</span></td>
                                        <td><span class="item_21_sku">#{{ $order['id'] }}</span></td>
                                        <td align="right">
                                            {{ number_format($order['total']) }} VNĐ
                                        </td>
                                        <td>{{ getStatusOrder([$order['status']])}}</td>
                                        <td>{{ $paymentMethod}}</td>
                                        <td>{{ $order['created_at'] }}</td>
                                        <td>
                                            {{ $order['address1'] . ' ' .  $order['address2']}}
                                        </td>
                                    </tr>

                                    <style>
                                        .shipping_address td{
                                            padding: 3px;
                                        }
                                        .shipping_address textarea,.shipping_address input{
                                            width: 100%;
                                        }
                                    </style>
                                    </tbody>
                                </table>
                            @endif
                            <br>
                            <p></p>
                            <a href="/shop.html"><button class="btn btn-default" style="background-color: rgb(20,97,49); color: white"> Tiếp tục mua sắm</button></a>
                        </div>
                    </div>
                </div>
            </div></div></section>


@endsection