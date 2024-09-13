<?php

namespace App\Http\Controllers;

use App\Models\CmsNews;
use Illuminate\Http\Request;

class BlogController extends Controller
{
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

    public function index()
    {
        $blogs = (new CmsNews)->getItemsNews(9, 'paginate');
        $newBlogs = (new CmsNews)->getItemsNews(3);

        return view(  'UI.shop_blog', array(
            'title' => 'Bài viết giới thiệu sản phẩm',
            'description' => 'TanDaFood chọn nguồn nguyên liệu sạch, có sẵn tại địa phương. Lúc đầu thật sự mọi thứ rất gian nan & vất vả, là tay ngang bước sang mảng thực phẩm, chỉ có tình yêu đối với quê hương, ý chí mong muốn được mang nguồn dinh dưỡng từ thực phẩm an toàn đến mọi người và nâng cao giá trị nông sản giúp người nông dân là động lực thôi thúc tôi phải thực sự  nghiêm túc với dự án này. ',
            'keyword' => 'blog',
            'blogs' => $blogs,
            'new_blogs' => $newBlogs
        ));
    }

    public function show($id)
    {
        $news_currently = CmsNews::find($id);
        if ($news_currently) {
            return view(  'UI.shop_blog_detail', array(
                'title' => 'Bài viết giới thiệu sản phẩm',
                'description' => 'TanDaFood chọn nguồn nguyên liệu sạch, có sẵn tại địa phương. Lúc đầu thật sự mọi thứ rất gian nan & vất vả, là tay ngang bước sang mảng thực phẩm, chỉ có tình yêu đối với quê hương, ý chí mong muốn được mang nguồn dinh dưỡng từ thực phẩm an toàn đến mọi người và nâng cao giá trị nông sản giúp người nông dân là động lực thôi thúc tôi phải thực sự  nghiêm túc với dự án này. ',
                'keyword' => 'blog',
                'blog_detail' => $news_currently,
                'blog_other' => (new CmsNews)->getItemsNews(3),
                'new_blogs' => (new CmsNews)->getItemsNews(3),
            ));
        } else {
            return redirect('/blog.html');
        }

    }

    public function search(Request $request)
    {
        $seachText = $request->input('text');

        $blogs = (new CmsNews)->searchItem($seachText, 9, 'paginate');

        $newBlogs = (new CmsNews)->getItemsNews(3);

        return view(  'UI.shop_blog', array(
            'title' => 'Bài viết giới thiệu sản phẩm',
            'description' => 'TanDaFood chọn nguồn nguyên liệu sạch, có sẵn tại địa phương. Lúc đầu thật sự mọi thứ rất gian nan & vất vả, là tay ngang bước sang mảng thực phẩm, chỉ có tình yêu đối với quê hương, ý chí mong muốn được mang nguồn dinh dưỡng từ thực phẩm an toàn đến mọi người và nâng cao giá trị nông sản giúp người nông dân là động lực thôi thúc tôi phải thực sự  nghiêm túc với dự án này. ',
            'keyword' => 'blog',
            'blogs' => $blogs,
            'new_blogs' => $newBlogs
        ));

    }
}
