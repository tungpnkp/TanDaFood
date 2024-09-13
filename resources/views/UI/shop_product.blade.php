@extends('Layouts.layout')

@section('main-content')
    <div class="body-content">
        <div class="columns-container page-product-detail">
            <h1 style="position:absolute; z-index:-100000; visibility:hidden; width:1px">{{ $product->name }}</h1>
            <div class="container" id="columns">
                <div class="breadcrumb clearfix">
                    <a class="home" href="/" title="Trang chủ">Trang chủ</a><span class="navigation-pipe">&nbsp;</span><a class="home" href="/san-pham.html" title="Sản phẩm">Sản phẩm</a><span class="navigation-pipe">&nbsp;</span><a class="home" href="/danh-muc/ga-le-cung-tien_1.html" title="{{$product->category->name}}">{{ $product->category->name }}</a>
                </div>
                <div class="row product-detail-main pr_style_01" id="product">
                    <div class="col-md-6 col-sm-12 col-xs-12 pb-left-column">
                        <div class="product-gallery-2 product-image">
                            <div class="product-full img_par">
                                <img class="preview_img img-responsive" src="{{ getProductImage($product->image) }}" alt="{{ $product->name }}" loading="lazy" />
                            </div>
                            @if( count($product->images) != 0 )
                                <div class="product-img-thumb" id="gallery_01">
                                    <ul class="owl-carousel" data-items="3" data-nav="true" data-dots="false" data-margin="10" data-loop="false">
                                        <li>
                                            <a  title="{{ $product->name }}" href="{{ getProductImage($product->image) }}" data-image="{{ getProductImage($product->image) }}" data-zoom-image="{{ getProductImage($product->image) }}">
                                                <img id="product-zoom" src="{{ getProductImage($product->image) }}" alt="{{ $product->name }}" />
                                            </a>
                                        </li>
                                        @foreach( $product->images as $otherImage)
                                            <li>
                                                <a  title="{{ $product->name }}" href="{{ getProductImage($otherImage->image) }}" data-image="{{ getProductImage($otherImage->image) }}" data-zoom-image="{{ getProductImage($otherImage->image) }}">
                                                    <img id="product-zoom" src="{{ getProductImage($otherImage->image) }}" alt="{{ $product->name }}" />
                                                </a>
                                            </li>
                                        @endforeach

                                    </ul>
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12 product-content-desc cart-main" id="detail-product">
                        <div class="pb-right-column">
                            <h2 class="product-name">
                                {{$product->name}}
                            </h2>
                            <?php $isAvailable = !is_null($product->price) && $product->price != 0 ?>
                            <div class="info-orther"><p>Mã sản phẩm: <span>{{$product->sku}}</span></p><p>Tình trạng: <span class="in-stock"> <?php echo $isAvailable ? "Luôn sẵn hàng" : "Tạm hết hàng" ?></span></p><p>Nhóm sản phẩm <span><a class="label-cate" href="/danh-muc/ga-le-cung-tien_1.html" target="_blank" title="{{ $product->category->name }}">{{ $product->category->name }}</a></span></p></div>

                            <div class="product-price-group">
                                <span class="price">
                                    @if($isAvailable)
                                        Giá bán: <span class="price2">{{ convertPrice($product->price) }}</span><span class="price3"> đ/bộ</span>
                                    @else
                                        <span>Vui Lòng liên hệ</span>
                                    @endif
                                </span></div>
                            @if( $isAvailable)
                                <div class="form-cart-option">
                                    <div id="ctl00_MainContent_PageView1_ctl00_addcart" class="form-option">
                                        <div class="attributes">
                                            <div class="attribute-label">Sl: </div>
                                            <div class="attribute-list product-qty">
                                                <div class="input-group">
                                        <span class="input-group-btn">
                                            <button type="button" class="quantity-left-minus btn btn-success btn-number" data-type="minus" data-field="">
                                                <span class="fa fa-minus"></span>
                                            </button>
                                        </span>
                                                    <input name="ctl00$MainContent$PageView1$ctl00$TextBoxSL" type="text" value="1" id="product_buy_quality" class="qty-vl form-control input-number" min="1" max="100" />
                                                    <span class="input-group-btn">
                                            <button type="button" class="quantity-right-plus btn btn-danger btn-number" data-type="plus" data-field="">
                                                <span class="fa fa-plus"></span>
                                            </button>
                                        </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-action">
                                        <div class="button-group">
                                            <a id="ctl00_MainContent_PageView1_ctl00_LinkButtonAddCart" class="btn-add-cart" onclick="addToCartProduct({{ $product->id }})">Đặt hàng</a>
                                        </div>
                                    </div>
                                </div>
                            @else
                                <div class="form-cart-option">
                                    <p> Vui lòng liên hệ phía dưới</p>
                                </div>
                            @endif
                            <div class="form-action2">
{{--                                <a href="javascript:void(0);" title="Buy Now" class="addbox-link adprobook2" data-id='4958' data-href="/add-book/4958.html" data-src='/images/product/ga-9-cua-trang-1.jpg' data-title='Đăng ký quà tặng: Gà 9 cựa trắng (Trống giò) - BV6734'>Đăng ký quà tặng</a>--}}
{{--                                <a href="javascript:void(0);" class="heart addtowishlist like" title="Yêu thích" data-id="4958" data-wid="2356858631"><i class="fa fa-heart"></i> <span>Yêu thích</span></a>--}}
                            </div>
                            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldId" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldId" value="4958" />

                            <div class="box-content">
                                <div class="product-desc nd1"><p style="text-align: justify;">{{ $product->description }}<br></p></div>
                            </div>
                            <div class="form-share">
                                <div id="ctl00_MainContent_PageView1_ctl00_show_share" class="network-share">
                                    <div class="share-title">
                                        Chia sẻ lên mạng xã hội
                                    </div>

                                    <style type="text/css">
                                        .mangxh {
                                            margin: 0;
                                            padding: 0;
                                            padding-top: 10px;
                                        }

                                        .mangxh li.xht {
                                            list-style: none;
                                            display: inline-block;
                                            vertical-align: top;
                                            padding-right: 5px;
                                            text-align: left;
                                        }

                                        .mangxh li .goxl {
                                            margin-top: 0;
                                        }

                                        .t {
                                            margin-top: -1px;
                                        }
                                        .xht.fb,
                                        .xht.tw {
                                            margin-top: 7px;
                                        }
                                        .xht.bm {
                                            margin-top: 3px;
                                        }
                                        #content .t img {
                                            border: 0;
                                            width: 40px;
                                        }
                                        .content-area ul.mangxh li,
                                        #product-detail ul.mangxh li {
                                            padding-left: 0 !important;
                                            margin-left: 0 !important;
                                            padding-right: 5px !important;
                                        }
                                    </style>
                                    <section>
                                        <ul class="mangxh">
                                            <li class="xht fb">
                                                <div id="fb-root"></div>
                                                <div class="fb-like" data-href="{{ getStringUrlProductName($product->name, $product->id) }}" data-width="100" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>
                                            </li>
{{--                                            <li class="xht bm">--}}
{{--                                                <a data-pin-do="buttonBookmark" data-pin-lang="en" href="https://www.pinterest.com/pin/create/button/" data-url="{{ getStringUrlProductName($product->name, $product->id) }}"></a>--}}
{{--                                                <script async defer src="//assets.pinterest.com/js/pinit.js"></script>--}}
{{--                                            </li>--}}
{{--                                            <li class="xht tw">--}}
{{--                                                <a href="https://twitter.com/share" class="twitter-share-button" data-url="{{ getStringUrlProductName($product->name, $product->id) }}">Tweet</a>--}}
{{--                                                <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>--}}
{{--                                            </li>--}}
                                        </ul>
                                    </section>
                                </div>
                                <div class="network-tags">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row position-stiky">
                    <div class="center_column col-xs-12 col-sm-12" id="center_column">
                        <div class="product-tab" id="tabcontainer">
                            <ul class="nav-tab">
                                <li class="active">
                                    <a aria-expanded="true" data-toggle="tab" href="#product-detail">Thông tin về sản phẩm <i class="fa fa-files"></i></a>
                                </li>
                                <li><a href="#information" data-toggle="tab" aria-expanded="false" id="tab2">Để lại tin nhắn</a></li>

                            </ul>
                            <div class="tab-container">
                                <div id="product-detail" class="tab-panel active">
                                    <div class="product-detail-scoll">
                                        <p style="text-align: justify;">
                                            <?php echo $product->content; ?>
                                        </p>
                                        <div class="detail-adtt">
                                            <div class="box-orther" id="box_other"><p><img alt="" src="/uploads/data/4/files/images/logo/logo_head.png" /></p>

                                                <p>​<b>HTX Nông nghiệp Hữu cơ &amp; Chế biến Thực phẩm núi Ba Vì</b></p>

                                                <p>Địa chỉ: Thôn thuận An, xã Thái Hòa, huyện Ba Vì, thành phố Hà Nội</p>

                                                <p>Điện thoại: 098.400.8996</p>

                                                <p>Số ĐK: xxx.xxx.xxxx do UBND huyện Ba Vì cấp Ngày 07/11/2022</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div id="information" class="tab-panel">
                                    <div id="ctl00_MainContent_PageView1_ctl00_PanelComment" class="product-comments-block-tab">

                                        <section style="padding: 5px 0;">
                                            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldpIdComment" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldpIdComment" value="4958" />
                                            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldMemId" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldMemId" value="0" />
                                            <div id="ctl00_MainContent_PageView1_ctl00_ssend_PanelBV">

                                                <!--Bac Viet comment-->
                                                <style type="text/css">
                                                    .btnSendComment {
                                                        max-width: 130px;
                                                        float: left;
                                                        margin-right: 10px !important;
                                                        display: inline-block;margin-top: 15px !important;
                                                    }

                                                    #btnSentWait {
                                                        display: none;
                                                        position: absolute;
                                                        left: 150px;
                                                    }
                                                </style>
                                                <section class="box-parallax">
                                                    <section class="sky-form clearfix" style="padding: 5px 0;">
                                                        <div class="headline-pro">
                                                            <h2>Phản hồi bài viết</h2>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                <div class="input">
                                                                    <input name="ctl00$MainContent$PageView1$ctl00$ssend$TextBoxNameComment" type="text" id="ctl00_MainContent_PageView1_ctl00_ssend_TextBoxNameComment" class="TextBoxNameComment" placeholder="Họ và tên (*)" style="width:100%;padding-left: 38px;" />
                                                                    <i class="icon-prepend fa fa-user"></i>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                <div class="input">
                                                                    <input name="ctl00$MainContent$PageView1$ctl00$ssend$TextBoxEmailComment" type="text" id="ctl00_MainContent_PageView1_ctl00_ssend_TextBoxEmailComment" class="TextBoxEmailComment" placeholder="Địa chỉ Email (*)" style="width:100%;padding-left: 38px;" />
                                                                    <i class="icon-prepend fa fa-envelope"></i>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                <div class="input">
                                                                    <input name="ctl00$MainContent$PageView1$ctl00$ssend$TextBoxPhoneComment" type="text" id="ctl00_MainContent_PageView1_ctl00_ssend_TextBoxPhoneComment" class="TextBoxPhoneComment" placeholder="Di động (*)" style="width:100%;padding-left: 38px;" />
                                                                    <i class="icon-prepend fa fa-phone"></i>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12 col-sm-12">
                                                                <div class="input">
                        <textarea name="ctl00$MainContent$PageView1$ctl00$ssend$TextBoxNoiDungComment" rows="2" cols="20" id="ctl00_MainContent_PageView1_ctl00_ssend_TextBoxNoiDungComment" class="TextBoxNoiDungComment" placeholder="Nội dung (*)" style="height:120px;width:100%;padding-left: 38px; font-weight: 400;">
</textarea>
                                                                    <i class="icon-prepend fa fa-comment"></i>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12 col-sm-12">
                                                                <div class="head-lead">
                                                                    <div class="group-led">
                                                                        <div id="hearts" class="starrr" style="display: inline-block;"></div>
                                                                        <div class="number-star">(<span id="count">5</span> stars)</div>
                                                                        <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$ssend$HiddenFieldNumberStar" id="ctl00_MainContent_PageView1_ctl00_ssend_HiddenFieldNumberStar" value="0" />
                                                                    </div>
                                                                </div>
                                                                <div class="error-comment">Nhập vào những mục bắt buộc</div>
                                                            </div>
                                                            <div class="col-xs-12 col-sm-12">
                    <span id='senComment_success' style='display:none;color:blue;'><p>Cảm ơn bạn đã để lại thông tin!</p>
    <p>Bộ phận chuyên môn sẽ liên hệ lại cho quý khách trong giây lát.</p></span><span id='senComment_error' style='display:none;color:red;'>Thông tin đã được gửi đi. Cám ơn bạn đã quan tâm!</span><span id='senComment_captcha' style='display:none;color:red;'>Thông tin đã được gửi đến ban biên tập. Cám ơn bạn đã quan tâm!</span>
                                                                <div id="btnSentWait">
                                                                    <img src="/images/icon/loader.gif" alt="wait image" />
                                                                </div>
                                                                <a href="javascript:void(0);" class="btn btn-lg btn-danger btnSendComment">Gửi liên hệ</a>
                                                            </div>
                                                        </div>
                                                    </section>
                                                </section>

                                            </div>




                                        </section>

                                    </div>
                                </div>
                                <div id="reviews-catalog" class="tab-panel">

                                </div>
                            </div>
                        </div>
                        <div class="show_content3_nhom">

                        </div>

                        <div id="ctl00_MainContent_PageView1_ctl00_product_orther" class="page-product-box product-list">
                            @if(count($otherProducts) != 0)
                                <h3 class="heading">Sản phẩm cùng loại</h3>
                                <div class="owl-carousel" data-dots="false" data-loop="true" data-nav="true" data-margin="10" data-autoplaytimeout="1000" data-autoplayhoverpause="true" data-responsive='{"0":{"items":1},"360":{"items":1},"760":{"items":2},"990":{"items":3},"1200":{"items":4},"1300":{"items":4}}'>
                                    @foreach($otherProducts as $sameProduct)
                                        <?php
                                            $isInStock = !is_null($sameProduct->price) && $sameProduct->price != 0;
                                        ?>
                                        <div class="product-container item-hover">
                                        <div class="img_par left-block">
                                            <a href="{{ getStringUrlProductName($sameProduct->name, $sameProduct->id) }}">
                                                <img class="preview_img img-responsive" src="{{ getProductImage($sameProduct->image)}}" alt="{{ $sameProduct->name }}" loading="lazy" />
                                            </a>
                                            <div class="group-price">
                                            </div>
                                        </div>
                                        <div class="right-block">
                                            <h5 class="product-name"><a href="{{ getStringUrlProductName($sameProduct->name, $sameProduct->id) }}">{{ $sameProduct->name }}</a></h5>
                                            @if($isInStock)
                                                <div class="product-star">
                                                    Luôn sẵn hàng
                                                </div>
                                                <div class="content_price">
                                                    <span class="price2">{{ convertPrice($sameProduct->price) }}</span><span class="price3"> đ/bộ</span>
                                                </div>
                                            @else
                                                <div class="product-star">
                                                    Sản phẩm không có sẵn
                                                </div>
                                                <div class="content_price">
                                                    <span class="price2">Vui lòng liên hệ</span>
                                                </div>
                                            @endif
                                            <div class="view-button text-center">
                                                @if ( $isInStock )
                                                    <a title="Mua ngay" class="theme-btn btn-style-one like" onclick="addToCart({{ $sameProduct->id }})">Mua ngay</a>
                                                @endif
                                                <a href="{{ getProductImageFile($sameProduct->image) }}" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach

                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <script type="text/javascript">
        function addToCartProduct(id,instance = null){
            var buy_qty = $('#product_buy_quality').val();
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
@endsection
