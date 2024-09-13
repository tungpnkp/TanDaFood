@extends('Layouts.layout')

@section('main-content')
    <div class="body-content">

        <div class="columns-container page-products">

            <div class="bg-breadcrumb">
                <div class="container">
                    <div class="breadcrumb clearfix">
                        <a class="home" href="/" title="Trang chủ">Trang chủ</a><span class="navigation-pipe">&nbsp;</span><a href="/san-pham.html" title="Sản phẩm">Sản phẩm</a>
                    </div>
                </div>
            </div>
            <div class="container" id="columns">
                <h1 style="position:absolute; z-index:-100000; visibility:hidden; width:1px">Sản phẩm</h1>
                <div class="content-shop">
                    <div class="center_column" id="center_column">
                        <h2 class="page-heading product">
                    <span class="page-heading-title">
                        Sản phẩm</span>
                        </h2>
                        <div class="content-pro2">
                            <p>Sơn Tinh Food&nbsp;được biết đến là một trong những cơ sở đầu tiên tại Hà Nội thực hiện nuôi trồng và sản xuất thực phẩm hữu cơ và các loại thực phẩm sạch khác. Các sản phẩm được bán ở đây bao gồm các loại rau sạch, trái cây từ các vùng miền, thịt lợn sinh học và các loại gà hữu cơ, đặc sản vùng miền&nbsp;có xuất xứ từ các vùng sản xuất tại huyện Sóc Sơn, huyện Lạc Sơn, huyện Lương Sơn, Tây Bắc, Hưng Yên, Phú Thọ... Một điểm nổi trội của&nbsp;Sơn Tinh Food&nbsp;là có khá nhiều nhà phân phối với lượng hàng dồi dào cùng nhiều chủng loại và các sản phẩm đảm bảo chất lượng, được bao gói, dán tem mác, truy xuất nguồn gốc xuất xứ rõ ràng. Vì vậy, các bạn không cần lo lắng mà hãy sử dụng các sản phẩm tại đây.<br></p>
                        </div>
                        <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldcIds" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldcIds" value="4804,4805,4806,4807,4808,4809,4810,4811,4812,4813" />
                        <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldProductNumPerPage" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldProductNumPerPage" value="12" />

                        <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldTitle" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldTitle" value="Sản phẩm" />
                        <div id="ctl00_MainContent_PageView1_ctl00_PanelCategory" class="group-products product-list">
                            @foreach($categoryWithProducts as $category)
                                @if(count($category->products) != 0)
                                    <div id="ctl00_MainContent_PageView1_ctl00_RepeaterCategory_ctl00_PanelSubCategory">

                                    <div class="cate-title">
                                        <h3 class="pro-cate-name text-center"><a href="{{getStringUrlCategoryName($category->name)}}">{{ $category->name }}</a></h3>
                                    </div>
                                    <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCategory$ctl00$HiddenFieldSub" id="ctl00_MainContent_PageView1_ctl00_RepeaterCategory_ctl00_HiddenFieldSub" value="4805" />

                                    <div class="cate-pro owl-carousel" data-dots="false" data-loop="true" data-nav="true" data-margin="10" data-autoplayhoverpause="true" data-autoplaytimeout="1000" data-autoplay="false" data-responsive='{"0":{"items":1},"360":{"items":1},"760":{"items":2},"990":{"items":3},"1200":{"items":4},"1300":{"items":4}}'>
                                        @foreach($category->products as $product)
                                            <div class="cate-item">
                                                <div class="img_par left-block">
                                                    <a href="{{getStringUrlProductName($product->name, $product->id)}}" class="adv-thumb-link">
                                                        <img class="preview_img img-responsive" src="{{ getProductImage($product->image)}}" alt="Gà 9 cựa trắng (Trống giò)" loading="lazy" />
                                                    </a>
                                                    <div class="group-price">
                                                    </div>
                                                </div>
                                                <div class="right-block">
                                                    <div class="cat-name">
                                                        <span>{{ $category->name }}</span>
                                                    </div>
                                                    <h3 class="product-name"><a href="{{getStringUrlProductName($product->name, $product->id)}}">Gà 9 cựa trắng (Trống giò)</a></h3>
                                                    @if(!is_null($product->price) && $product->price != 0)
                                                        <div class="product-star">
                                                            Luôn sẵn hàng
                                                        </div>
                                                        <div class="content_price">
                                                            <span class="price2">{{ convertPrice($product->price) }}</span><span class="price3"> đ/bộ</span>
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
                                                        <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="{{ $product->id }}" onclick="addToCart({{ $product->id }})">Mua ngay</a>
                                                        <a href="{{getStringUrlProductName($product->name, $product->id)}}" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>


                                </div>
                                @endif
                            @endforeach
                        </div>
                        <div class="content-pro3 show_content3_nhom">
                            <div class="cate-detail">
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
@endsection
