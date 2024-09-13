<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@Index');

Route::get('/index', 'HomeController@Index');

Route::get('/trang-chu.html',  'HomeController@Index');

//Route::get('/404', function () {
//    return view('User.404');
//});
//
//Route::get('test', function () {
//    return asset('css/bootstrap.css');
//});
//
//
////shop
//Route::get('/', 'HomeController@index');
//Route::get('index.html', 'HomeController@index');

Route::get('/san-pham.html', 'ShopController@shop');
Route::get('/san-pham/{product_name}.html', 'ProductController@show');
//Route::get('/product-details/{id}.html', 'ProductController@show');
Route::get('/danh-muc/{category_name}.html', 'ShopController@category');


Route::get('/cart.html', 'CartController@cart');
Route::post('/updateToCart', 'CartController@updateToCart');
Route::get('/removeItem/{id}', 'CartController@removeItem');
Route::get('/checkout.html', 'CartController@checkout');
Route::post('/storeCart.html', 'CartController@storeCart');
Route::get('/shop_order_done.html', 'CartController@shop_order_done');

Route::get('/blog.html', 'BlogController@index');
Route::post('/blog.html', 'BlogController@search');
Route::get('/blog-details/{id}.html', 'BlogController@show');

Route::get('/contact.html', 'HomeController@contact');
Route::get('/about.html', 'HomeController@about');

Route::get('/huyen-su-nui-ba-vi.html', function () {
    return view('product.news.huyen-su-nui-ba-vi');
});

Route::get('/xuong-che-bien-dong-goi.html', function () {
    return view('product.news.xuong-che-bien-dong-goi');
});

Route::get('/ke-truyen-sontinhfood.html', function () {
    return view('product.news.ke-truyen-sontinhfood');
});

Route::get('/trang-trai-thuc-nghiem.html', function () {
    return view('product.news.trang-trai-thuc-nghiem');
});

Route::get('/tuyen-dung.html', function () {
    return view('product.news.tuyen-dung');
});

Route::get('/chinh-sach-khach-hang.html', function () {
    return view('product.news.chinh-sach-khach-hang');
});

Route::get('/chinh-sach-quy-dinh-chung.html', function () {
    return view('product.news.chinh-sach-quy-dinh-chung');
});

Route::get('/giao-hang-tan-nha.html', function () {
    return view('product.news.giao-hang-tan-nha');
});

Route::get('/cham-soc-khach-hang.html', function () {
    return view('product.news.cham-soc-khach-hang');
});

Route::get('/cua-hang.html', function () {
    return view('product.shop.cua-hang');
});

Route::get('/lien-he.html', function () {
    return view('product.shop.lien-he');
});

Route::get('/tai-ung-dung-appstore-googleplay.html', function () {
    return redirect('/trang-chu.html');
});

Route::get('/khuyen-mai.html', function () {
    return redirect('/trang-chu.html');
});

Route::get('/doi-tac-thuong-hieu-lien-ket.html', function () {
    return view('product.news.doi-tac-thuong-hieu-lien-ket');
});


//gioi thieu tag
//Route::get('/gioi-thieu.html', 'HomeController@Introduce');
//Route::get('/tuyen-dung.html', 'HomeController@Recrui');
//Route::get('/khach-hang-danh-gia.html', 'HomeController@Review');
//Route::get('/van-chuyen-thanh-toan.html', 'HomeController@Transfer');
//Route::get('/chinh-sach-bao-hanh.html', 'HomeController@Insurance');
//Route::get('/chinh-sach-bao-mat.html', 'HomeController@Privacy');
//Route::get('/chinh-sach-khach-hang.html', 'HomeController@Customer');
//Route::get('/he-thong-phan-phoi.html', 'HomeController@Store');

//cart
Route::post('/addToCart', 'HomeController@addToCart');
Route::get('/removeItem/{id}', 'HomeController@removeItem');

