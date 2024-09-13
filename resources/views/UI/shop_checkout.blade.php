@extends('Layouts.layout')

@section('header-content')
    @include('Layouts.header')
@endsection

@section('footer-content')
    @include('Layouts.footer')
@endsection

@section('main-content')

    <div class="body-content">


        <style type="text/css">
            .tfoot {
                font-weight: 600;
                background: #efeeee;
                display: inline-block;
                width: 100%;
                clear: both;
                padding: 10px 15px 10px 5px;
                position: relative;
                margin-bottom: 30px;
                border-top: 1px solid #cfcfcf;
            }

            .errors {
                position: absolute;
                color: red;
                float: right;
                right: 30px;
                top: 25px;
            }

            .errors2 {
                position: absolute;
                color: red;
                float: right;
                right: 25px;
                top: 5px;
            }

            .modal-footer {
                text-align: left;
            }

            .frm-nhan {
                display: none;
                clear: both;
                padding-top: 2px;
            }

            label {
                max-width: 100%;
                margin-bottom: 5px;
                font-weight: 500;
                padding-left: 5px;
            }
            label.required {
                color: red;
                margin-top: 5px;
                margin-bottom: 0;
            }

            .center-title {
                text-align: center;
                font-size: 24px;
                font-weight: 600;
                padding: 30px 0;
            }

            .frm-vc {
                display: none;
                padding: 10px 15px;
                border: 1px solid #ddd;
                border-radius: 10px;
            }
            .table {
                margin-bottom: 0;
            }
            .table > tbody > tr > td {
                vertical-align: middle;
            }

            #PanelKetThuc h2 {
                color: #34ab04;
            }

            #PanelKetThuc h3 {
                line-height: 24px;
                font-weight: 500;
            }
            #btnSentWait{
                left: 210px !important;
            }
        </style>

        <div class="container">
            <h2 class="color2 title30 text-center title-box2" style="padding-top: 30px; text-transform: uppercase;">
                Gửi đơn hàng</h2>

            <div id="thongbao">
                Thông báo:
                <p>Nhập những mục bắt buộc!</p>
            </div>
            <div id="PanelDatHang">
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <h3 style="margin-bottom: 33px; text-transform: uppercase;">Giỏ hàng của bạn</h3>
                        <table class="table table-striped jambo_table table_product">
                            <thead>
                            <tr class="headings">
                                <th class="column-title text-center hidden-xs"><i class="fa fa-picture-o"></i></th>
                                <th class="column-title hidden-xs">
                                    Mã hàng</th>
                                <th class="column-title">
                                    Số lượng</th>
                                <th class="column-title hidden-xs">
                                    Đơn giá</th>
                                <th class="column-title">
                                    Thành tiền</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($cart as $item)
                                @php
                                    $n = (isset($n)?$n:0);
                                    $n++;
                                    $product = App\Models\ShopProduct::find($item->id);
                                @endphp
                                <tr class="even pointer">
                                    <td class="hidden-xs" style="width: 65px;">
                                        <a href="{{ getStringUrlProductName($product->name, $product->id) }}" target="_blank">
                                            <img style="max-width: 60px;" src="{{ getProductImage($product->image) }}" alt="Gà hoa đất Mường (Trống giò)">
                                        </a>
                                    </td>

                                    <td>
                                        <a href="{{ getStringUrlProductName($product->name, $product->id) }}" target="_blank">
                                            <p style="color:#e098ae;">{{ $product->sku }}</p>{{ $product->name }}
                                        </a>
                                    </td>
                                    <td >
                                        {{ number_format($product->price) }} vnđ
                                    </td>
                                    <td class="btn_action">
                                        {{ $item->qty }}
                                    </td>
                                    <td class="">{{ number_format($item->subtotal)}} vnđ</td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <div class="tfoot">
                            <div class="pull-left">
                                Tổng cộng:
                            </div>
                            <div class="pull-right">
                                <span class="total_card_item">{{ number_format($totalPaid) }} vnđ</span>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a class="btn btn-primary btn_checkout" href="http://demo2.banmauweb.com/mau-web/4/my-account/shoppingcart.html">Giỏ hàng của bạn</a>

                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <section class="sky-form clearfix checkOutForm" style="padding: 5px 10px; margin-bottom: 30px;">
                            <input type="hidden" id="csrf_token" value="{{ csrf_token() }}">
                            <h3 style="text-transform: uppercase;">Thông tin khách hàng</h3>
                            <div class="row">
                                <div class="frm-user">
                                    <div class="col-md-12">
                                        <label class="required">(*) Nhập họ và tên</label>
                                        <input name="ctl00$MainContent$MyAcc$ctl00$TextBoxHoTenCheckOut" type="text" id="ctl00_MainContent_MyAcc_ctl00_TextBoxHoTenCheckOut" class="input form-control TextBoxHoTenCheckOut" placeholder="Họ tên">
                                    </div>
                                    <div class="col-md-12">
                                        <label class="required">(*) Nhập Email</label>
                                        <input name="ctl00$MainContent$MyAcc$ctl00$TextBoxEmailCheckOut" type="text" id="ctl00_MainContent_MyAcc_ctl00_TextBoxEmailCheckOut" class="input form-control TextBoxEmailCheckOut" placeholder="Email">
                                    </div>
                                    <div class="col-md-12">
                                        <label class="required">(*) Nhập điện thoại</label>
                                        <input name="ctl00$MainContent$MyAcc$ctl00$TextBoxDienThoaiCheckOut" type="text" id="ctl00_MainContent_MyAcc_ctl00_TextBoxDienThoaiCheckOut" class="input form-control TextBoxDienThoaiCheckOut" placeholder="Di động">
                                    </div>

                                    <div class="col-md-12">
                                        <label class="required">(*) Nhập địa chỉ</label>
                                        <input name="ctl00$MainContent$MyAcc$ctl00$TextBoxDiaChiCheckOut" type="text" id="ctl00_MainContent_MyAcc_ctl00_TextBoxDiaChiCheckOut" class="input form-control TextBoxDiaChiCheckOut" placeholder="Địa chỉ">
                                    </div>
                                    <div class="col-md-12">
                                        <textarea name="ctl00$MainContent$MyAcc$ctl00$TextBoxGhiChuCheckOut" rows="2" cols="20" id="ctl00_MainContent_MyAcc_ctl00_TextBoxGhiChuCheckOut" class="input form-control TextBoxGhiChuCheckOut" placeholder="Nội dung ghi chú" style="height:80px;"></textarea>
                                    </div>

                                </div>
                                <div class="col-md-12 col-xs-12" style="margin-top:20px;">
                                    <div id="btnSentWait">
                                        <img src="/images/icon/loader.gif" alt="wait image">
                                    </div>
                                    <div id="sencontact_error"></div>
                                    <a href="javascript:void(0);" class="btn btn-lg btn-danger sendCheckOut"><i class="fa fa-plus"></i>
                                        Gửi đơn hàng
                                    </a>

                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <div id="PanelKetThuc" style="display: none;">
                <div style="padding: 30px 10px;">
                    <h2 class="text-center">
                        Quý khách đã gửi đơn đặt hàng thành công
                    </h2>
                    <div style="padding: 30px 10px; text-align: center;">
                        <h3>Chúng tôi sẽ liên lạc với Quý khách trong thời gian sớm nhất để xác nhận lại các thông tin trước khi giao hàng. Hàng hóa sẽ được chuyển tới địa điểm theo yêu cầu, ngay sau khi đơn hàng được xác nhận.</h3>
                        <div style="color: #c64d06; font-weight: bold; font-size: 16px; padding: 20px 0 20px 0; width: 100%;">
                            Cám ơn Quý khách đã đặt hàng

                        </div>
                        <div style="width: 100%; font-size: 14px;">
                            <a href="/" class="btn btn-primary">Back to Home page</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
@endsection
