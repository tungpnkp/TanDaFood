@extends('Layouts.layout')
@section('main-content')
    <div class="body-content">
        <div class="columns-container page-products">
            <div class="bg-breadcrumb">
                <div class="container">
                    <div class="breadcrumb clearfix">
                        <a class="home" href="/" title="Trang chủ">Trang chủ</a><span class="navigation-pipe">&nbsp;</span><a href="/san-pham.html" title="Sản phẩm">Sản phẩm</a><span class="navigation-pipe">&nbsp;</span><a href="{{getStringUrlCategoryName($category->name, $category->id)}}" title="{{$category->name}}">{{$category->name}}</a>
                    </div>
                </div>
            </div>
            <div class="container" id="columns">
                <h1 style="position:absolute; z-index:-100000; visibility:hidden; width:1px">{{$category->name}}</h1>
                <div class="content-shop">
                    <div class="center_column" id="center_column">
                        <h2 class="page-heading product">
                    <span class="page-heading-title">
                        {{$category->name}}</span>
                        </h2>
                        <div class="content-pro2">

                        </div>
                        <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldcIds" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldcIds" value="4807" />
                        <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldProductNumPerPage" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldProductNumPerPage" value="12" />

                        <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldTitle" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldTitle" value="Món ngon sơ chế" />

                        <div id="ctl00_MainContent_PageView1_ctl00_view_product_list" class="view-product-list product-list">
                            <div class="content-header clearfix">
                                <div class="content-header-left chkfeature_category">

                                </div>
                                <div class="content-header-right">
                                    <div class="drop-group-sort">
                                        <select name="ctl00$MainContent$PageView1$ctl00$DropDownListSortBy" id="ctl00_MainContent_PageView1_ctl00_DropDownListSortBy" title="Sort by" class="drop-sort dropsort_category">
                                            <option selected="selected" value="0">Ngầm định</option>
                                            <option value="1">Gi&#225; thấp đến cao</option>
                                            <option value="2">Gi&#225; cao đến thấp</option>
                                            <option value="3">Sản phẩm mới</option>
                                            <option value="4">Sản phẩm ti&#234;u biểu</option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div id="loadMoreWaiting">
                                <img src="/images/icon/loader.gif" alt="wait image" />
                            </div>
                            <div class="row loadproduct grid">
                                @foreach($products as $product)
                                        <?php
                                            $isInStock = (!empty($product->price) && $product->price != 0);
                                        ?>
                                    <div class="col-lg col-md-3 col-sm-4 col-xs-12">
                                    <div class="pricing-column">
                                        <div class="img_par left-block">
                                            <a href="{{ getStringUrlProductName($product->name, $product->id) }}" class="adv-thumb-link">
                                                <img class="preview_img img-responsive" src="{{ getProductImage($product->image) }}" alt="{{ $product->name }}" loading="lazy" />
                                            </a>
                                            <div class="group-price">
                                            </div>
                                        </div>
                                        <div class="right-block">
                                            <div class="cat-name">
                                                <span>{{ $product->category->name }}</span>
                                            </div>
                                            <h5 class="product-name"><a href="{{ getStringUrlProductName($product->name, $product->id) }}">{{ $product->name }}</a></h5>
                                            <div class="product-star">
                                            </div>
                                            <div class="content_price">{{ $isInStock ? convertPrice($product->price) . ' đ/bộ' : 'Mời liên hệ' }}
                                            </div>
                                            <div class="view-button text-center">
                                                @if( $isInStock)
                                                    <a title="Mua ngay" class="theme-btn btn-style-one like" onclick="addToCart({{ $product->id }})">Mua ngay</a>
                                                @endif
                                                <a href="{{ getStringUrlProductName($product->name, $product->id) }}" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach


                            </div>
                            <div class="properties-page-wrapper">
                                <a href="javascript:void(0);" id="ctl00_MainContent_PageView1_ctl00_loadMore" data-type="category" class="loadMore loadMoreProducts"><span>Xem thêm</span><i class="fa fa-angle-down"></i></a>
                            </div>

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
