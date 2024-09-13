<?php

namespace App\Http\Controllers;

use App\Models\ShopOrder;
use App\Models\ShopOrderDetail;
use App\Models\ShopOrderHistory;
use App\Models\ShopOrderTotal;
use App\Models\ShopProduct;
use Illuminate\Http\Request;
use Cart;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

class CartController extends Controller
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

    public function cart(Request $request)
    {
        if ($request->isMethod('post')) {
            $product_id = $request->get('product_id');
            $opt_sku    = empty($request->get('opt_sku')) ? null : $request->get('opt_sku');
            $qty        = $request->get('qty');
            $product    = ShopProduct::find($product_id);
            //Condition:
            //In of stock
            //Active
            //Date availabe
            if ($product->status != 0) {
                $options = array();
                if ($opt_sku != $product->sku && $opt_sku) {
                    $options[] = $opt_sku;
                }
                Cart::add(
                    array(
                        'id'      => $product_id,
                        'name'    => $product->name,
                        'qty'     => $qty,
                        'price'   => (new ShopProduct)->getPrice($product_id, $opt_sku),
                        'options' => $options,
                    )
                );
            }
        }
//====================================================
        $objects   = array();
        $objects[] = (new ShopOrderTotal)->getShipping();
//        $objects[] = (new ShopOrderTotal)->getDiscount();
        $objects[] = (new ShopOrderTotal)->getReceived();
        if (!empty(session('coupon'))) {
            $hasCoupon = true;
        } else {
            $hasCoupon = false;
        }

        $dataTotal = ShopOrderTotal::processDataTotal($objects);
        $totalPaid = 0;
        foreach ($dataTotal as $data) {
            if ($data['code'] == 'total'){
                $totalPaid = $data['value'];
            }

        }
        $cart = Cart::content();
        
        
        foreach ($cart as $key => $item) {
            if ($item->price == 0) {
                Cart::remove($key);
            }
        }

        return view('UI.shop_cart',
            array(
                'cart'        => Cart::content(),
                'dataTotal'   => ShopOrderTotal::processDataTotal($objects),
                'hasCoupon'   => $hasCoupon,
                'totalPaid'   => $totalPaid,
            )
        );

    }

    public function checkout()
    {

        $objects   = array();
        $objects[] = (new ShopOrderTotal)->getShipping();
//        $objects[] = (new ShopOrderTotal)->getDiscount();
        $objects[] = (new ShopOrderTotal)->getReceived();
        if (!empty(session('coupon'))) {
            $hasCoupon = true;
        } else {
            $hasCoupon = false;
        }

        $dataTotal = ShopOrderTotal::processDataTotal($objects);
        $totalPaid = 0;
        foreach ($dataTotal as $data) {
            if ($data['code'] == 'total'){
                $totalPaid = $data['value'];
            }

        }
        
        return view('UI.shop_checkout',
            array(
                'cart'        => Cart::content(),
                'dataTotal'   => ShopOrderTotal::processDataTotal($objects),
                'hasCoupon'   => $hasCoupon,
                'totalPaid'   => $totalPaid,
            )
        );
    }

    public function updateToCart(Request $request)
    {
        if (!$request->ajax()) {
            return redirect('/cart.html');
        }

        $id      = $request->get('id');
        $rowId   = $request->get('rowId');
        $product = ShopProduct::find($id);
        $new_qty = $request->get('new_qty');

        Cart::update($rowId, ($new_qty) ? $new_qty : 0);
        return response()->json(
            ['flg' => 1]);

    }

    public function removeItem($id = null)
    {
        if ($id === null) {
            return redirect('cart.html');
        }

        if (array_key_exists($id, Cart::content()->toArray())) {
            Cart::remove($id);
        }

        return Redirect::back()->with('message','Xóa sản phẩm khỏi giỏ thành công');
    }

    public function storeCart(Request $request)
    {
        if (Cart::count() == 0) {
            return response()->json(
                [
                    'status' => 400,
                    'message' => "Không thể gửi đơn hàng, vui long thử lại sau một vài phút hoặc liên hệ trực tiếp với chungs tôi"
                ]
            );
        }
    
        try {
            DB::connection('mysql')->beginTransaction();
            $objects                     = array();
            $objects[]                   = (new ShopOrderTotal)->getShipping(); //module shipping
            $objects[]                   = (new ShopOrderTotal)->getReceived(); //module reveived
            $dataTotal                   = ShopOrderTotal::processDataTotal($objects); //sumtotal and re-sort item total
            $subtotal                    = (new ShopOrderTotal)->sumValueTotal('subtotal', $dataTotal);
            $shipping                    = (new ShopOrderTotal)->sumValueTotal('shipping', $dataTotal); //sum shipping
            $discount                    = (new ShopOrderTotal)->sumValueTotal('discount', $dataTotal); //sum discount
            $received                    = (new ShopOrderTotal)->sumValueTotal('received', $dataTotal); //sum received
            $total                       = (new ShopOrderTotal)->sumValueTotal('total', $dataTotal);
            $arrOrder['user_id']         = empty(Auth::user()->id) ? 0 : Auth::user()->id;
            $arrOrder['subtotal']        = $subtotal;
            $arrOrder['shipping']        = $shipping;
            $arrOrder['discount']        = $discount;
            $arrOrder['received']        = $received;
            $arrOrder['payment_status']  = 0;
            $arrOrder['shipping_status'] = 0;
            $arrOrder['status']          = 1;
            $arrOrder['total']           = $total;
            $arrOrder['balance']         = $total + $received;
            $arrOrder['toname']          = $request->get('name');
            $arrOrder['address1']        = $request->get('address');
            $arrOrder['address2']        = $request->get('address');
            $arrOrder['phone']           = $request->get('mobile');
            $arrOrder['email']           = $request->get('email');
            $arrOrder['comment']         = $request->get('note');
            $arrOrder['payment_method']  = $request->get('payment_method');
            $arrOrder['created_at']      = date('Y-m-d H:i:s');

            //Insert to Order
            $orderId = ShopOrder::insertGetId($arrOrder);
            //

            //Insert order total
            ShopOrderTotal::insertTotal($dataTotal, $orderId);
            //End order total

            foreach (Cart::content() as $value) {
                $product                  = ShopProduct::find($value->id);
                $arrDetail['order_id']    = $orderId;
                $arrDetail['product_id']  = $value->id;
                $arrDetail['name']        = $value->name;
                $arrDetail['price']       = $value->price;
                $arrDetail['qty']         = $value->qty;
                $arrDetail['type']        = $value->options->toJson();
                $arrDetail['sku']         = $product->sku;
                $arrDetail['total_price'] = $value->price * $value->qty;
                $arrDetail['created_at']  = date('Y-m-d H:i:s');
                ShopOrderDetail::insert($arrDetail);
            }

            Cart::destroy(); // destroy cart

            //Add history
            $dataHistory = [
                'order_id' => $orderId,
                'content'  => 'New order',
                'user_id'  => empty(Auth::user()->id) ? 0 : Auth::user()->id,
                'add_date' => date('Y-m-d H:i:s'),
            ];
            ShopOrderHistory::insert($dataHistory);

            DB::connection('mysql')->commit();

            //Send email
            try {
//                $data = ShopOrder::with('details')->find($orderId)->toArray();
//                Mail::send('vendor.mail.order_new', $data, function ($message) use ($orderId) {
//                    $message->to($this->configs['site_email'], $this->configs['site_title']);
//                    $message->replyTo($this->configs['site_email'], $this->configs['site_title']);
//                    $message->subject('[#' . $orderId . '] Đơn hàng mới!');
//                });
            } catch (\Exception $e) {
                //
            }
            return response()->json(
                [
                    'status' => "100",
                    'message' => "Đơn hàng được đặt thành công!"
                ]
            );
        } catch (\Exception $e) {
            DB::connection('mysql')->rollBack();
            echo 'Caught exception: ', $e->getMessage(), "\n";
            return response()->json(
                [
                    'status' => 400,
                    'message' => "Không thể gửi đơn hàng, vui long thử lại sau một vài phút hoặc liên hệ trực tiếp với chungs tôi"
                ]
            );
        }

    }

    public function shop_order_done() {
        return view('Other.shop_order_done');
    }

}
