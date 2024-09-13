@extends('Layouts.layout')

@section('main-content')
    <div class="wrap">
        <div class="body-content">
            <h1 style="position:absolute; z-index:-100000; visibility:hidden; width:1px">Trang chủ - SƠN TINH FOOD - Thực phẩm sạch, HTX Nông nghiệp hữu cơ &Chế biến Thực phẩm núi Ba Vì</h1>
            <div id="home-slider">
                <div class="header-top-right slide-full">
                    <div class="homeslider">
                        <div class="content-slide">
                            <ul id="contenhomeslider">
                                <li class="item-slide">
                                    <div class="slider-thumb">
                                        <img class="img-responsive" src="images/banner/banner-ga-trong.jpg" alt="Gà trống cúng lễ"/>
                                    </div>
                                    <div class="content" style="display:none;">
                                        <div class="slide-info-in">
                                            <div class="desc caption" style="color:#111111;">
                                                <h2 class="title caption" style="color:#111111;">Gà trống cúng lễ</h2>
                                                Gà trống cúng lễ
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="item-slide">
                                    <div class="slider-thumb">
                                        <img class="img-responsive" src="images/banner/banner-home2.jpg" alt="Thực phẩm chế biến"/>
                                    </div>
                                    <div class="content" style="display:none;">
                                        <div class="slide-info-in">
                                            <div class="desc caption" style="color:#111111;">
                                                <h2 class="title caption" style="color:#111111;">Thực phẩm chế biến</h2>
                                                Thực phẩm chế biến


                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <section class="row-cate-pro">
                <div class="container">
                    <div class="row-cate">
                        <div class="section-title-2">
                            <h2>Danh mục sản phẩm</h2>
                        </div>
                        <ul class="cate-pro owl-carousel" data-dots="false" data-loop="true" data-nav="true" data-margin="20" data-autoplay="true" data-responsive='{"0":{"items":1},"320":{"items":2},"600":{"items":2},"1000":{"items":4},"1360":{"items":5}}'>
                            <li class="cate-item">
                                <a href="/san-pham.html">
                                            <span class="effect-cate-image">
                                                <img class="cate-thumb" src="images/product/ga-ri-muong-trong-mai.jpg" alt="Sản phẩm"/>
                                            </span>
                                    <div class="cate-name">Sản phẩm</div>
                                </a>
                            </li>
                            <li class="cate-item">
                                <a href="/danh-muc/ga-le-cung-tien_1.html">
                                            <span class="effect-cate-image">
                                                <img class="cate-thumb" src="images/product/ga-le.jpg" alt="Gà lễ cúng tiến"/>
                                            </span>
                                    <div class="cate-name">Gà lễ cúng tiến</div>
                                </a>
                            </li>
                            <li class="cate-item">
                                <a href="/danh-muc/ga-tuoi-mo-san_2.html">
                                            <span class="effect-cate-image">
                                                <img class="cate-thumb" src="images/product/ga-ri.jpg" alt="Gà tươi mổ sẵn"/>
                                            </span>
                                    <div class="cate-name">Gà tươi mổ sẵn</div>
                                </a>
                            </li>
                            <li class="cate-item">
                                <a href="/mon-ngon-so-che.html">
                                            <span class="effect-cate-image">
                                                <img class="cate-thumb" src="images/product/ga-h-mong-tuoi-lau-ngai-cuu-1.jpg" alt="Món ngon sơ chế"/>
                                            </span>
                                    <div class="cate-name">Món ngon sơ chế</div>
                                </a>
                            </li>
                            <li class="cate-item">
                                <a href="/mon-ngon-chin-san.html">
                                            <span class="effect-cate-image">
                                                <img class="cate-thumb" src="images/product/ga-trong-lam-le-2.jpg" alt="Món ngon chín sẵn"/>
                                            </span>
                                    <div class="cate-name">Món ngon chín sẵn</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$HiddenFieldNumberHome" id="ctl00_MainContent_PageView1_ctl00_HiddenFieldNumberHome" value="8"/>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl00$HiddenFieldId" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl00_HiddenFieldId" value="4814"/>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl00$HiddenFieldsType" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl00_HiddenFieldsType" value="2"/>
            <div id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl00_PanelGioiThieu">
                <section class="welcome-section">
                    <div class="container">
                        <div class="sec-title-three">
                            <h2>
                                <a href="/huyen-su-nui-ba-vi.html">Huyền sử núi Ba Vì</a>
                            </h2>
                            <div class="sub-title">
                                <p>
                                    Núi Ba Vì không chỉ là ngọn núi &nbsp;huyền thoại &nbsp;về Sơn Tinh – Thủy Tinh mà còn là ngọn núi linh của xứ Đoài. Những phát hiện về khảo cổ học vùng văn hóa cổ Ba Vì đã chứng tỏ đây là một vùng truyền thuyết lớn phát triển sớm trong lịch sử hình thành dân tộc. Đây là nơi ngự trị muôn đời của Thánh Tản Viên – Sơn Tinh, vị thần tối linh trong &nbsp;Tứ bất tử &nbsp;của tín ngưỡng dân gian Việt Nam.<br>
                                </p>
                            </div>
                        </div>
                        <div class="service-column welcome-carousel">
                            <div class="service-block-one">
                                <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <div class="icon-box">
                                        <a href="/ke-truyen-sontinhfood.html">
                                            <img loading="lazy" src="/images/new/Thumb_bghome1.jpg" alt="Kể truyện SơnTinhFood"/>
                                        </a>
                                    </div>
                                    <h3 class="text-center">
                                        <a href="/ke-truyen-sontinhfood.html">Kể truyện SơnTinhFood</a>
                                    </h3>
                                </div>
                            </div>
                            <div class="service-block-one">
                                <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <div class="icon-box">
                                        <a href="/xuong-che-bien-dong-goi.html">
                                            <img loading="lazy" src="/images/new/Thumb_ga-ac-tan.jpg" alt="Xưởng Chế biến & Đóng Gói"/>
                                        </a>
                                    </div>
                                    <h3 class="text-center">
                                        <a href="/xuong-che-bien-dong-goi.html">Xưởng Chế biến &Đóng Gói</a>
                                    </h3>
                                </div>
                            </div>
                            <div class="service-block-one">
                                <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <div class="icon-box">
                                        <a href="/trang-trai-thuc-nghiem.html">
                                            <img loading="lazy" src="images/new/Thumb_bghome3.jpg" alt="Trang trại thực nghiệm"/>
                                        </a>
                                    </div>
                                    <h3 class="text-center">
                                        <a href="/trang-trai-thuc-nghiem.html">Trang trại thực nghiệm</a>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl01$HiddenFieldId" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl01_HiddenFieldId" value="4804"/>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl01$HiddenFieldsType" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl01_HiddenFieldsType" value="11"/>
            <div id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl01_PanelProduct">
                <section class="best-service-section product-list">
                    <div class="container">
                        <!--sec-title-->
                        <div class="sec-title-three">
                            <h2>
                                <a href="/san-pham.html">Sản phẩm</a>
                            </h2>
                            <ul class="subcatepro">
                                <li>
                                    <a href="/danh-muc/ga-le-cung-tien_1.html">Gà lễ cúng tiến</a>
                                </li>
                                <li>
                                    <a href="/danh-muc/ga-tuoi-mo-san_2.html">Gà tươi mổ sẵn</a>
                                </li>
                                <li>
                                    <a href="/danh-muc/mon-ngon-so-che_3.html">Món ngon sơ chế</a>
                                </li>
                                <li>
                                    <a href="/danh-muc/mon-ngon-chin-san_4.html">Món ngon chín sẵn</a>
                                </li>
                            </ul>
                            <div class="sub-title">
                                <p>
                                    Sơn Tinh Food &nbsp;được biết đến là một trong những cơ sở đầu tiên tại Hà Nội thực hiện nuôi trồng và sản xuất thực phẩm hữu cơ và các loại thực phẩm sạch khác. Các sản phẩm được bán ở đây bao gồm các loại rau sạch, trái cây từ các vùng miền, thịt lợn sinh học và các loại gà hữu cơ, đặc sản vùng miền &nbsp;có xuất xứ từ các vùng sản xuất tại huyện Sóc Sơn, huyện Lạc Sơn, huyện Lương Sơn, Tây Bắc, Hưng Yên, Phú Thọ... Một điểm nổi trội của &nbsp;Sơn Tinh Food &nbsp;là có khá nhiều nhà phân phối với lượng hàng dồi dào cùng nhiều chủng loại và các sản phẩm đảm bảo chất lượng, được bao gói, dán tem mác, truy xuất nguồn gốc xuất xứ rõ ràng. Vì vậy, các bạn không cần lo lắng mà hãy sử dụng các sản phẩm tại đây.<br>
                                </p>
                            </div>
                        </div>
                        <div class="row loadproduct">
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-ri-muong-trong-mai8EA.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/Thumb_ga-ri-tu-nhien-muong.jpg" alt="Gà ri Mường (Trống/Mái)" loading="lazy"/>
                                        </a>
                                        <div class="group-price"></div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà tươi mổ sẵn</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-ri-muong-trong-mai8EA.html">Gà ri Mường (Trống/Mái)</a>
                                        </h3>
                                        <div class="product-star"></div>
                                        <div class="content_price">Mời liên hệ
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4902" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-ri-muong-trong-mai8EA.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-dong-tao-trong-to.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/Thumb_2ga-dong-tao-trong-to.jpg" alt="Gà Đông Tảo (Trống tơ)" loading="lazy"/>
                                        </a>
                                        <div class="group-price"></div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà lễ cúng tiến</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-dong-tao-trong-to.html">Gà Đông Tảo (Trống tơ)</a>
                                        </h3>
                                        <div class="product-star"></div>
                                        <div class="content_price">Mời liên hệ
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4946" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-dong-tao-trong-to.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-trong-thien3CD.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/Thumb_2ga-trong-thien.jpg" alt="Gà trống thiến" loading="lazy"/>
                                        </a>
                                        <div class="group-price"></div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà lễ cúng tiến</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-trong-thien3CD.html">Gà trống thiến</a>
                                        </h3>
                                        <div class="product-star"></div>
                                        <div class="content_price">Mời liên hệ
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4947" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-trong-thien3CD.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-hoa-dat-muong-trong-gio.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/Thumb2_ga-9-cua-trang-1.jpg" alt="Gà hoa đất Mường (Trống giò)" loading="lazy"/>
                                        </a>
                                        <div class="group-price"></div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà lễ cúng tiến</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-hoa-dat-muong-trong-gio.html">Gà hoa đất Mường (Trống giò)</a>
                                        </h3>
                                        <div class="product-star"></div>
                                        <div class="content_price">Mời liên hệ
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4949" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-hoa-dat-muong-trong-gio.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-ri-muong-trong-gio.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/ga-ri-muong-trong-mai.jpg" alt="Gà ri Mường (Trống giò)" loading="lazy"/>
                                        </a>
                                        <div class="group-price">
                                            <div class="product-label new-label">New</div>
                                        </div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà lễ cúng tiến</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-ri-muong-trong-gio.html">Gà ri Mường (Trống giò)</a>
                                        </h3>
                                        <div class="product-star"></div>
                                        <div class="content_price">Mời liên hệ
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4951" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-ri-muong-trong-gio.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-ri-ba-vi-trong-gio.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/Thumb_ga-ri-ba-vi-trong-gio.jpg" alt="Gà ri Ba Vì (Trống giò)" loading="lazy"/>
                                        </a>
                                        <div class="group-price">
                                            <div class="product-label new-label">New</div>
                                        </div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà lễ cúng tiến</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-ri-ba-vi-trong-gio.html">Gà ri Ba Vì (Trống giò)</a>
                                        </h3>
                                        <div class="product-star"></div>
                                        <div class="content_price">Mời liên hệ
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4954" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-ri-ba-vi-trong-gio.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-9-cua-trong-gio.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/Thumb_ga-9-cua.jpg" alt="Gà 9 cựa (Trống giò)" loading="lazy"/>
                                        </a>
                                        <div class="group-price"></div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà lễ cúng tiến</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-9-cua-trong-gio.html">Gà 9 cựa (Trống giò)</a>
                                        </h3>
                                        <div class="product-star">Đang sản xuất
                                        </div>
                                        <div class="content_price">
                                            <span class="price2">290,000</span>
                                            <span class="price3">đ/chiếc</span>
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4957" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-9-cua-trong-gio.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-xs-12">
                                <div class="pricing-column">
                                    <div class="img_par left-block">
                                        <a href="/ga-9-cua-trang-trong-gio.html" class="adv-thumb-link">
                                            <img class="preview_img img-responsive" src="images/product/Thumb_ga-9-cua-trang-1.jpg" alt="Gà 9 cựa trắng (Trống giò)" loading="lazy"/>
                                        </a>
                                        <div class="group-price"></div>
                                    </div>
                                    <div class="right-block">
                                        <div class="cat-name">
                                            <span>Gà lễ cúng tiến</span>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="/ga-9-cua-trang-trong-gio.html">Gà 9 cựa trắng (Trống giò)</a>
                                        </h3>
                                        <div class="product-star">Luôn sẵn hàng
                                        </div>
                                        <div class="content_price">
                                            <span class="price2">200,000</span>
                                            <span class="price3">đ/bộ</span>
                                        </div>
                                        <div class="view-button text-center">
                                            <a title="Mua ngay" class="theme-btn btn-style-one addtocartlist like" data-id="4958" data-cid="9459874349" href="javascript:void(0);">Mua ngay</a>
                                            <a href="/ga-9-cua-trang-trong-gio.html" class="theme-btn btn-style-one btn-view-more">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="btnSentWaitHome" style="text-align: center;">
                            <img src="/images/icon/loader.gif" alt="wait image"/>
                        </div>
                        <a href="/san-pham.html" id="loadMore" class="loadMoreHome">
                            <span>Tải thêm sản phẩm...</span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                    </div>
                </section>
            </div>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl02$HiddenFieldId" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl02_HiddenFieldId" value="4796"/>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl02$HiddenFieldsType" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl02_HiddenFieldsType" value="1"/>
            <div id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl02_PanelTinTuc">
                <section class="news-section">
                    <div class="container">
                        <!--sec-title-->
                        <div class="sec-title-three">
                            <h2>
                                <a href="/tin-tuc.html">Tin tức</a>
                            </h2>
                            <div class="sub-title"></div>
                        </div>
                        <div class="news-carousel two-column-carousel">
                            <div class="news-style-one">
                                <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <div class="row clearfix">
                                        <div class="image-column col-md-5 col-sm-6 col-xs-12">
                                            <figure class="image-box">
                                                <img loading="lazy" src="images/new/Thumb_ga-ac-tan.jpg" alt="Đặc sản trong truyền thuyết Gà 9 cựa Phú Thọ"/>
                                                <a class="overlay-link" href="/dac-san-ga-9-cua-phu-tho.html">
                                                    <span class="icon flaticon-plus-1"></span>
                                                </a>
                                            </figure>
                                        </div>
                                        <div class="content-column col-md-7 col-sm-6 col-xs-12">
                                            <div class="content">
                                                <h3>
                                                    <a href="/dac-san-ga-9-cua-phu-tho.html">Đặc sản trong truyền thuyết Gà 9 cựa Phú Thọ</a>
                                                </h3>
                                                <ul class="post-meta clearfix">
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-clock-o"></span>
                                                            07/02/2023
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-folder-o"></span>
                                                            Tin tư vấn sản phẩm mới
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class="text">Gà chín cựa có tướng mạo hùng dũng với bộ lông ngũ sắc, mào đỏ như máu, mắt sáng tinh anh, ngực nở, đuôi cong  ...</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="news-style-one">
                                <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <div class="row clearfix">
                                        <div class="image-column col-md-5 col-sm-6 col-xs-12">
                                            <figure class="image-box">
                                                <img loading="lazy" src="images/new/Thumb_ga-ac-tan.jpg" alt="Món ngon - Đặc sản tiến vua - Vịt Cổ Lũng"/>
                                                <a class="overlay-link" href="/dac-san-tien-vua-vit-co-lung.html">
                                                    <span class="icon flaticon-plus-1"></span>
                                                </a>
                                            </figure>
                                        </div>
                                        <div class="content-column col-md-7 col-sm-6 col-xs-12">
                                            <div class="content">
                                                <h3>
                                                    <a href="/dac-san-tien-vua-vit-co-lung.html">Món ngon - Đặc sản tiến vua - Vịt Cổ Lũng</a>
                                                </h3>
                                                <ul class="post-meta clearfix">
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-clock-o"></span>
                                                            07/02/2023
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-folder-o"></span>
                                                            Tin tư vấn sản phẩm mới
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class="text">SƠN TINH FOOD - Thực phẩm sạch, HTX Nông nghiệp hữu cơ &Chế biến Thực phẩm núi Ba Vì</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="news-style-one">
                                <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <div class="row clearfix">
                                        <div class="image-column col-md-5 col-sm-6 col-xs-12">
                                            <figure class="image-box">
                                                <img loading="lazy" src="images/new/Thumb_ga-ac-tan.jpg" alt="Cách chế biến đậu Hà Lan cùng công dụng tuyệt diệu từ chúng"/>
                                                <a class="overlay-link" href="/dau-ha-lan-cung-cong-dung-tuyet-dieu.html">
                                                    <span class="icon flaticon-plus-1"></span>
                                                </a>
                                            </figure>
                                        </div>
                                        <div class="content-column col-md-7 col-sm-6 col-xs-12">
                                            <div class="content">
                                                <h3>
                                                    <a href="/dau-ha-lan-cung-cong-dung-tuyet-dieu.html">Cách chế biến đậu Hà Lan cùng công dụng tuyệt diệu từ chúng</a>
                                                </h3>
                                                <ul class="post-meta clearfix">
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-clock-o"></span>
                                                            07/02/2023
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-folder-o"></span>
                                                            Phong cách tiêu dùng sạch xanh
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class="text">Sự bổ dưỡng, thực phẩm đa năng và rất tốt cho sức khỏe là những điều có thể thấy ở đậu Hà Lan. Với một  ...</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="news-style-one">
                                <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <div class="row clearfix">
                                        <div class="image-column col-md-5 col-sm-6 col-xs-12">
                                            <figure class="image-box">
                                                <img loading="lazy" src="images/new/Thumb_ga-ac-tan.jpg" alt="9 cách để ăn sạch, sống khỏe"/>
                                                <a class="overlay-link" href="/9-cach-de-an-sach-song-khoe.html">
                                                    <span class="icon flaticon-plus-1"></span>
                                                </a>
                                            </figure>
                                        </div>
                                        <div class="content-column col-md-7 col-sm-6 col-xs-12">
                                            <div class="content">
                                                <h3>
                                                    <a href="/9-cach-de-an-sach-song-khoe.html">9 cách để ăn sạch, sống khỏe</a>
                                                </h3>
                                                <ul class="post-meta clearfix">
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-clock-o"></span>
                                                            07/02/2023
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <span class="icon fa fa-folder-o"></span>
                                                            Bí quyết ăn sạch sống khỏe
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class="text">9 cách để ăn sạch, sống khỏe. SƠN TINH FOOD - Thực phẩm sạch, HTX Nông nghiệp hữu cơ &Chế biến Thực phẩm núi  ...</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl03$HiddenFieldId" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl03_HiddenFieldId" value="7049"/>
            <input type="hidden" name="ctl00$MainContent$PageView1$ctl00$RepeaterCateShow$ctl03$HiddenFieldsType" id="ctl00_MainContent_PageView1_ctl00_RepeaterCateShow_ctl03_HiddenFieldsType" value="20"/>
        </div>
    </div>

</body>
@endsection
