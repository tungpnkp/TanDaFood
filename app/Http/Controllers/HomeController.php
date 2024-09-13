<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\CmsNews;
use App\Models\CmsPage;
use App\Models\Config;
use App\Models\ShopBrand;
use App\Models\ShopCategory;
use App\Models\ShopProduct;
use Illuminate\Http\Request;

use Cart;
use Illuminate\Support\Facades\Redirect;

class HomeController extends Controller
{
    public $theme       = "Shop";

    public function __construct()
    {
        $host = request()->getHost();
        config(['app.url' => 'https://' . $host]);
        //End demo multihost
//        $this->banners = Banner::where('status', 1)->orderBy('sort', 'desc')->orderBy('id', 'desc')->get();
//        $this->news    = (new CmsNews)->getItemsNews($limit = 8, $opt = 'paginate');
//        $this->notice  = (new CmsPage)->where('uniquekey', 'notice')->where('status', 1)->first();
//        $this->brands     = ShopBrand::getBrands();
//        $this->categories = ShopCategory::getCategories(0);
//        $this->configs    = Config::pluck('value', 'key')->all();
//        $this->sorting    = 'SORT_BY_CREATED';
//Config for  SMTP
//        config(['app.name' => $this->configs['site_title']]);
//        config(['mail.driver' => ($this->configs['smtp_mode']) ? 'smtp' : 'sendmail']);
//        config(['mail.host' => empty($this->configs['smtp_host']) ? env('MAIL_HOST', '') : $this->configs['smtp_host']]);
//        config(['mail.port' => empty($this->configs['smtp_port']) ? env('MAIL_PORT', '') : $this->configs['smtp_port']]);
//        config(['mail.encryption' => empty($this->configs['smtp_security']) ? env('MAIL_ENCRYPTION', '') : $this->configs['smtp_security']]);
//        config(['mail.username' => empty($this->configs['smtp_user']) ? env('MAIL_USERNAME', '') : $this->configs['smtp_user']]);
//        config(['mail.password' => empty($this->configs['smtp_password']) ? env('MAIL_PASSWORD', '') : $this->configs['smtp_password']]);
//        config(['mail.from' =>
//                ['address' => $this->configs['site_email'], 'name' => $this->configs['site_title']]]
//        );
//
//        View::share('categories', $this->categories);
//        View::share('brands', $this->brands);
//        View::share('banners', $this->banners);
//        View::share('configs', $this->configs);
//        View::share('theme_asset', $this->theme_asset);
//        View::share('theme', $this->theme);
//        View::share('products_hot', (new ShopProduct)->getProducts($type = 1, $limit = 4, $opt = 'hot'));
//        View::share('logo', Banner::where('status', 1)->where('type', 0)->orderBy('sort', 'desc')->orderBy('id', 'desc')->first());

    }
    public function Index() {
        $products = (new ShopProduct)->getProducts($type = null, $limit = 20, $opt = null);
        return view('UI.home', array(
            'title' => 'Tản Đà Food - Sạch từ nông trại đến bàn ăn',
            'title_h1' => 'Tản Đà Food - Sạch từ nông trại đến bàn ăn',
            'description' => 'TanDaFood chọn nguồn nguyên liệu sạch, có sẵn tại địa phương. Lúc đầu thật sự mọi thứ rất gian nan & vất vả, là tay ngang bước sang mảng thực phẩm, chỉ có tình yêu đối với quê hương, ý chí mong muốn được mang nguồn dinh dưỡng từ thực phẩm an toàn đến mọi người và nâng cao giá trị nông sản giúp người nông dân là động lực thôi thúc tôi phải thực sự  nghiêm túc với dự án này. ',
            'keyword' => 'Tan Đà Food',
            'products' => $products
        ));

    }

    public function Contact() {
        return view( 'Other.contact', array(
            'title' => 'Tản Đà Food - Sạch từ nông trại đến bàn ăn',
            'title_h1' => 'Tản Đà Food - Sạch từ nông trại đến bàn ăn',
            'description' => 'TanDaFood chọn nguồn nguyên liệu sạch, có sẵn tại địa phương. Lúc đầu thật sự mọi thứ rất gian nan & vất vả, là tay ngang bước sang mảng thực phẩm, chỉ có tình yêu đối với quê hương, ý chí mong muốn được mang nguồn dinh dưỡng từ thực phẩm an toàn đến mọi người và nâng cao giá trị nông sản giúp người nông dân là động lực thôi thúc tôi phải thực sự  nghiêm túc với dự án này. ',
            'keyword' => 'Tan Đà Food',
        ));

    }

    public function About() {
        return view( 'Other.about_us', array(
            'title' => 'Tản Đà Food - Sạch từ nông trại đến bàn ăn',
            'title_h1' => 'Tản Đà Food - Sạch từ nông trại đến bàn ăn',
            'description' => 'TanDaFood chọn nguồn nguyên liệu sạch, có sẵn tại địa phương. Lúc đầu thật sự mọi thứ rất gian nan & vất vả, là tay ngang bước sang mảng thực phẩm, chỉ có tình yêu đối với quê hương, ý chí mong muốn được mang nguồn dinh dưỡng từ thực phẩm an toàn đến mọi người và nâng cao giá trị nông sản giúp người nông dân là động lực thôi thúc tôi phải thực sự  nghiêm túc với dự án này. ',
            'keyword' => 'Tan Đà Food',
        ));

    }

    public function Introduce() {
        return view('Other.introduce');
    }

    public function Recrui() {
        return view('Other.recrui');
    }

    public function Review() {
        return view('Other.review');
    }

    public function Transfer() {
        return view('Other.transfer');
    }

    public function Insurance() {
        return view('Other.insurance');
    }

    public function Privacy() {
        return view('Other.privacy');
    }

    public function Customer() {
        return view('Other.customer');
    }

    public function Store() {
        return view('Other.store');
    }

    public function addToCart(Request $request)
    {
        if (!$request->ajax()) {
            return redirect('/gio-hang.html');
        }
        $instance = empty($request->get('instance')) ? 'default' : $request->get('instance');
        $id       = $request->get('id');
        $qty      = $request->get('qty');
        if (is_null($qty)) {
            $qty = 1;
        }
        $product  = ShopProduct::find($id);
        if ($instance == 'default') {
            if ($product->status != 0) {
                Cart::add(
                    array(
                        'id'    => $id,
                        'name'  => $product->name,
                        'qty'   => $qty,
                        'price' => $product->getPrice($id),
                    )
                );
            }
            $cart     = Cart::content();

        }
        return response()->json(
            [
                'flg'        => 1,
                'subtotal'   => number_format(Cart::instance($instance)->subtotal()),
                'count_cart' => Cart::instance($instance)->count(),
                'instance'   => $instance,
            ]
        );

    }

    public function removeItem($id = null)
    {
        if ($id === null) {
            return redirect('gio-hang.html');
        }

        if (array_key_exists($id, Cart::content()->toArray())) {
            Cart::remove($id);
        }

        return Redirect::back()->with('message','Xóa sản phẩm khỏi giỏ thành công');
    }
}
