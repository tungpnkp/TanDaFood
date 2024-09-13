@extends('Layouts.layout')

@section('main-content')
    <div class="body-content">


        <style type="text/css">
            tfoot {
                font-weight: 600;
                background: #efeeee;
            }

            .text-foot {
                font-weight: 600;
                background: #efeeee;
                text-align: right;
                border: 1px solid #ddd;
                border-top: 0;
                padding: 10px 20px 10px 0;
            }

            .table {
                margin-bottom: 0;
            }

            tbody select,
            tbody input {
                height: 30px;
            }

            tbody select {
                width: 120px;
            }
            .input-card{
                max-width: 60px; text-align: center;
                border:1px solid #ddd;
            }
        </style>

        <div class="container">
            <h2 class="color2 title30 text-center title-box2" style="padding-top: 30px;">
                Giỏ hàng
            </h2>
            @if(count($cart) != 0)
            <h2 class="text-center" id="thongbao_cart" style="padding: 15px 0 30px 0;display:none;">Chưa có sản phẩm nào được chọn. Xin mời chọn sản phẩm trong danh sách...</h2>
            <div id="thongbao">Thông báo:
                <p>Cập nhật thành công!</p>
            </div>
            <div id="ctl00_MainContent_MyAcc_ctl00_PanelList">

                <div class="table-responsive">
                    <table class="table table-striped jambo_table" id="myTableCart">
                        <thead>
                        <tr class="headings">
                            <th class="column-title text-center last"><i class="fa fa-trash-o" style="color:orangered;"></i></th>

                            <th class="column-title text-center hidden-xs"><i class="fa fa-picture-o"></i></th>
                            <th class="column-title hidden-xs">
                                Mã hàng</th>
                            <th class="column-title">
                                Tên hàng</th>
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
                                    <input type="hidden" id="cart-row-{{$item->id}}" value="{{$item->rowId}}">
                                    <input type="hidden" id="product-price-{{$item->id}}" value="{{ $product->price }}">
                                    <td style="width: 20px; text-align: center;">
                                        <a onClick="return confirm('Bạn có muốn xóa sản phẩm này?')" title="Remove Item" alt="Remove Item" class="cart_quantity_delete" href="{{"/removeItem/" . $item->rowId}}"><i class="fa fa-trash-o"></i></a>
                                    </td>

                                    <td style="width: 65px;" class="hidden-xs">
                                        <a href="{{ getStringUrlProductName($product->name, $product->id) }}" target="_blank">
                                            <img style="max-width: 60px;" src="{{ getProductImage($product->image) }}" alt="{{$product->name}}}">
                                        </a>
                                    </td>
                                    <td style="font-weight: 500; font-size: 16px;" class="hidden-xs">
                                        <a href="{{ getStringUrlProductName($product->name, $product->id) }}" target="_blank">
                                            {{ $product->sku }}
                                        </a>
                                    </td>
                                    <td style="font-weight: 500; font-size: 16px;">
                                        <a href="{{ getStringUrlProductName($product->name, $product->id) }}" target="_blank">
                                            {{ $product->name }}
                                        </a>
                                    </td>
                                    <td>
                                        <input class="input-card item-qty" type="number" onChange="updateCart({{$item->id}})" id="item-{{$item->id}}" name="qty-{{$item->id}}" value="{{$item->qty}}"><span class="text-danger item-qty-{{$item->id}}" style="display: none;"> </span>
                                        <span class="hidden-lg hidden-md hidden-sm visible-xs">
                                        x {{$product->price}}
                                        </span>
                                    </td>
                                    <td class="hidden-xs">{{ number_format($product->price) }} vnđ</td>
                                    <td class="amount_card_item">{{ number_format($item->subtotal)}} vnđ</td>
                                </tr>
                            @endforeach



                        </tbody>
                    </table>
                    <div class="text-foot" id="more_myTableCart">
                        Tổng cộng:
                        <span class="total_card_item">{{ number_format($totalPaid) }} vnđ</span>
                    </div>
                    <div class="modal-footer more_footerCart">
                        <a href="/san-pham.html" class="btn btn-primary btn_tieptuc">Tiếp tục chọn hàng</a>
                        <a class="btn btn-danger btn_checkout" href="/checkout.html">Gửi đơn hàng</a>
                    </div>
                </div>

            </div>
            @else
                <h2 class="text-center">Chưa có sản phẩm nào được chọn. Xin mời chọn sản phẩm trong danh sách <a href="/san-pham.html" style="color: #337ab7"> Tại đây </a></h2>
            @endif
        </div>


    </div>

<div>

{{--    <!--breadcrumbs area start-->--}}
{{--    <div class="breadcrumbs_area">--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}
{{--                <div class="col-12">--}}
{{--                    <div class="breadcrumb_content">--}}
{{--                        <h1>Giỏ hàng</h1>--}}
{{--                        <ul>--}}
{{--                            <li><a href="/index.html">Trang chủ</a></li>--}}
{{--                            <li><a href="/cart.html">Giỏ hàng</a></li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <!--breadcrumbs area end-->--}}

{{--    @if(count($cart) == 0)--}}
{{--        <div class="error_section">--}}
{{--            <div class="container">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-12">--}}
{{--                        <div class="error_form">--}}
{{--                            <p>Giỏ hàng trống</p>--}}
{{--                            <a href="/">Tiếp tục mua hàng</a>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    @else--}}
{{--    <!--shopping cart area start -->--}}
{{--    <div class="shopping_cart_area mt-70">--}}
{{--        <div class="container">--}}
{{--            <form action="#">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-12">--}}
{{--                        <div class="table_desc">--}}
{{--                            <div class="cart_page">--}}
{{--                                <table>--}}
{{--                                    <thead>--}}
{{--                                    <tr>--}}
{{--                                        <th class="product_remove">Xóa</th>--}}
{{--                                        <th class="product_thumb">Ảnh</th>--}}
{{--                                        <th class="product_name">Sản phẩm</th>--}}
{{--                                        <th class="product-price">Giá</th>--}}
{{--                                        <th class="product_quantity">Số lượng</th>--}}
{{--                                        <th class="product_total">Tổng</th>--}}
{{--                                    </tr>--}}
{{--                                    </thead>--}}
{{--                                    <tbody>--}}
{{--                                    @foreach($cart as $item)--}}
{{--                                        @php--}}
{{--                                            $n = (isset($n)?$n:0);--}}
{{--                                            $n++;--}}
{{--                                            $product = App\Models\ShopProduct::find($item->id);--}}
{{--                                        @endphp--}}
{{--                                        <tr>--}}
{{--                                            <input type="hidden" id="cart-row-{{$item->id}}" value="{{$item->rowId}}">--}}
{{--                                            <td class="product_remove">--}}
{{--                                                <a onClick="return confirm('Bạn có muốn xóa sản phẩm này?')" title="Remove Item" alt="Remove Item" class="cart_quantity_delete" href="{{"/removeItem/" . $item->rowId}}"><i class="fa fa-trash-o"></i></a>--}}
{{--                                            </td>--}}
{{--                                            <td class="product_thumb"><a target="_blank" href="/product-details/{{$product->id}}.html"><img src="/{{getProductImageFile('documents/website/'.$product->image)}}" alt="Sơn Tinh Food - {{$product->name}}"></a></td>--}}
{{--                                            <td class="product_name"><a href="/product-details/{{$product->id}}.html">{{$product->name}}</a></td>--}}
{{--                                            <td class="product-price">{{number_format($product->price)}} đ</td>--}}
{{--                                            <td class="product_quantity"><label>Số lượng</label>--}}
{{--                                                <input style="width: 70px;" type="number" onChange="updateCart({{$item->id}})" class="item-qty" id="item-{{$item->id}}" name="qty-{{$item->id}}" value="{{$item->qty}}"><span class="text-danger item-qty-{{$item->id}}" style="display: none;">--}}
{{--                                                </span>--}}
{{--                                            </td>--}}
{{--                                            <td class="product_total">{{number_format($item->subtotal)}} đ</td>--}}
{{--                                        </tr>--}}
{{--                                    @endforeach--}}
{{--                                    </tbody>--}}
{{--                                </table>--}}
{{--                            </div>--}}
{{--                            <div class="cart_submit">--}}
{{--                                <a href="/shop.html">--}}
{{--                                    <button>Tiếp tục mua hàng</button>--}}
{{--                                </a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <!--coupon code area start-->--}}
{{--                <div class="coupon_area">--}}
{{--                    <div class="row">--}}
{{--                        <div class="col-lg-6 col-md-6">--}}
{{--                            <div class="coupon_code left">--}}
{{--                                <h3>Mã giảm giá</h3>--}}
{{--                                <div class="coupon_inner">--}}
{{--                                    <p>Vui lòng nhập mã giảm giá ở đây .</p>--}}
{{--                                    <input placeholder="Mã giảm giá..." type="text">--}}
{{--                                    <button type="submit">Sử dụng</button>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="col-lg-6 col-md-6">--}}
{{--                            <div class="coupon_code right">--}}
{{--                                <h3>Đơn hàng</h3>--}}
{{--                                <div class="coupon_inner">--}}
{{--                                    <div class="cart_subtotal">--}}
{{--                                        <p>Tổng</p>--}}
{{--                                        <p class="cart_amount">{{$totalPaid}}</p>--}}
{{--                                    </div>--}}
{{--                                    <div class="cart_subtotal ">--}}
{{--                                        <p>Nhân viên sẽ thông báo phí Giao hàng cho bạn ngay sau khi xác nhận đơn hàng</p>--}}
{{--                                    </div>--}}

{{--                                    <div class="cart_subtotal">--}}
{{--                                        <p>Tổng: </p>--}}
{{--                                        <p class="cart_amount">{{$totalPaid}}</p>--}}
{{--                                    </div>--}}
{{--                                    <div class="checkout_btn">--}}
{{--                                        <a href="/checkout.html">Thanh toán</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <!--coupon code area end-->--}}
{{--            </form>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <!--shopping cart area end -->--}}
{{--    @endif--}}
</div>


@endsection

@section('Script')
    <script type="text/javascript">
        function updateCart(id){
            var new_qty = $('#item-'+id).val();
            var row_id = $('#cart-row-'+id).val();
            $.ajax({
                url: '/updateToCart',
                type: 'POST',
                dataType: 'json',
                async: true,
                cache: false,
                data: {
                    id: id,
                    new_qty: new_qty,
                    rowId : row_id,
                    _token:'{{ csrf_token() }}'},
                success: function(data){
                    flg= parseInt(data.flg);
                    if(flg === 1)
                    {
                        // window.location.reload()
                        var sum = 0;
                        var quantity;
                        $('#myTableCart > tbody  > tr').each(function () {
                            quantity = $('#item-'+id).val();
                            var price = $('#product-price-'+id).val();
                            var amount = quantity * price;
                            sum += amount;
                            $(this).find('.amount_card_item').text(formatDollar(amount)).fadeIn("slow");
                            if (parseInt(quantity) === parseInt(new_qty)) {
                                $(this).find('.amount_card_item').css("color", "#3f51b5");
                            }
                        });
                        $('.total_card_item').css("color", "#3f51b5");
                        $('.total_card_item').text(formatDollar(sum)).fadeIn("slow");

                        setTimeout(function () {
                            $("#thongbao").hide(200);
                            $('.total_card_item').css("color", "initial");
                            $("#myTableCart").find('.amount_card_item').css("color", "initial");
                        }, 2500);
                    }else{
                        $('.item-qty-'+id).css('display','block').html(data.msg);
                    }

                }
            });
        }

        function formatDollar(num) {
            var p = num.toFixed(2).split(".");
            return p[0].split("").reverse().reduce(function (acc, num, i, orig) {
                return num === "-" ? acc : num + (i && !(i % 3) ? "," : "") + acc;
            }, "");
        }

    </script>
@endsection
