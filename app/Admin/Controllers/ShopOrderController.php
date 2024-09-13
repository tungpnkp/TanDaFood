<?php

namespace App\Admin\Controllers;

use App\Admin\Extensions\ExcelExpoter;
use App\Http\Controllers\Controller;
use App\Models\ShopOrder;
use App\Models\ShopOrderDetail;
use App\Models\ShopOrderHistory;
use App\Models\ShopOrderStatus;
use App\Models\ShopOrderTotal;
use App\Models\ShopPaymentStatus;
use App\Models\ShopProduct;
use App\Models\ShopShippingStatus;
use App\User;
use DB;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
Use Encore\Admin\Widgets\Table;
use Illuminate\Http\Request;

class ShopOrderController extends Controller
{
    use ModelForm;
    public $statusPayment, $statusOrder, $statusShipping, $statusOrder2, $statusShipping2, $paymentMethod;

    public function __construct()
    {
        $this->statusOrder     = ShopOrderStatus::pluck('name', 'id')->all();
        $this->statusPayment   = ShopPaymentStatus::pluck('name', 'id')->all();
        $this->statusShipping  = ShopShippingStatus::pluck('name', 'id')->all();
        $this->statusOrder2    = ShopOrderStatus::mapValue();
        $this->statusShipping2 = ShopShippingStatus::mapValue();
        $this->paymentMethod = array('cod'=> 'Thanh toán khi nhận hàng');

    
    }

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        $keyword = \Request::input('keyword');
        $keyword = empty($keyword) ? "" : $keyword;
        return Admin::content(function (Content $content) use ($keyword) {

            $content->header('Quản lý đơn hàng');
            if ($keyword != "") {
                $content->description('Tìm kiếm đơn hàng theo từ khóa: "' . $keyword . '"');
            }

            $content->body($this->grid($keyword));
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Chỉnh sửa đơn hàng');
            // $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Tạo đơn hàng mới');
            // $content->description('description');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid($keyword)
    {
        return Admin::grid(ShopOrder::class, function (Grid $grid) use ($keyword) {

            $grid->id('ID')->sortable();
            $grid->phone('số điện thoại')->display(function ($phone) {
                return empty($phone) ? 'N/A' : $phone;
            });
            $shop = ShopOrder::class;
            $grid->toname('Tên khách hàng')->display(function ($name) {
                return $name;
            });
            $grid->details('Thông tin đơn hàng')->expand(function () {
                $details = json_decode($this->details);
                $tableArr = array();
                foreach ($details as $detail) {
                    $tableArr[] = array(
                        'ID sp' => $detail->id,
                        'Mã' => $detail->sku,
                        'Tên' => $detail->name,
                        'Giá' => $detail->price,
                        'Số lượng' => $detail->qty,
                        'Tổng' => $detail->total_price,
                    );
                    
                }
                $html = '<br>';
                $html .= '<span style="padding-left:20px;">Người nhận: ' . $this->toname . '</span><br>';
                $html .= '<span style="padding-left:20px;">Địa chỉ: ' . $this->address1 . ' ' . $this->address2 . '</span><br>';
                $html .= '<span style="padding-left:20px;">Số điện thoại: ' . $this->phone . '</span><br>';
                $html .= '<span style="padding-left:20px;"><span style="color:red;font-weight:bold;">Ghi chú:</span> ' . $this->comment . '<br>';
                $html .= '<span style="padding-left:20px;"><span style="color:red;font-weight:bold;"><a title="Chỉnh sửa đơn hàng" href="shop_order_edit/' . $this->id .'"><i class="fa fa-edit"></i> Chỉnh sửa</a></span>';

                return  $html. (new Table(['ID sp','Mã', 'Tên', 'Giá','Số lượng', 'Tổng'], $tableArr)) ;
            }, 'Thông tin đơn hàng');
            // orderTotal
            $grid->subtotal('Tiền hàng')->display(function ($price) {
                return number_format($price);
            });
            $grid->shipping('Tiền Ship')->display(function ($price) {
                return number_format($price);
            });
            $grid->discount('Giảm giá')->display(function ($price) {
                return number_format($price);
            });
            $grid->total('Tổng giá')->display(function ($price) {
                return number_format($price);
            });
            $grid->received('Đã thanh toán')->display(function ($price) {
                return number_format($price);
            });
            $paymentMethod = $this->paymentMethod;
            $grid->payment_method('Phương thức thanh toán')->display(function ($payment) use ($paymentMethod) {
                return is_null($payment) ? $paymentMethod['cod']: $paymentMethod[$payment];
            });
            $statusOrder = $this->statusOrder;
            $grid->status('Trạng thái')->editable('select',$this->statusOrder);

            $grid->created_at('Ngày tạo');
            // $grid->updated_at();
            // $grid->tools(function ($tools) {
            //     $tools->batch(function ($batch) {
            //         $batch->disableDelete();
            //     });
            // });
            $grid->model()->orderBy('id', 'desc');
            if ($keyword != "") {
                $grid->model()
                    ->where('toname', 'like', '%' . $keyword . '%')
                    ->orWhere('id', (int) $keyword);
            }
            $grid->disableExport();
            $grid->filter(function($filter){

                
                // Add a column filter
                $filter->like('phone', 'Số điện thoại');

                $filter->like('toname', 'Tên người nhận');

                $filter->date('created_at', 'Ngày tạo');

                $filter->like('status', 'trạng thái');
            });
            $grid->disableActions();
            $grid->column("Chỉnh sửa")->display(function () {
                $html = '<a title="Chỉnh sửa đơn hàng" href="shop_order_edit/' . $this->id .'"><i class="fa fa-edit"></i> Chỉnh sửa</a>';
                return $html;
            });
//            $grid->exporter(new ExcelExpoter());

//            $grid->column("Xóa")->display(function () {
//                $html = '<a title="Xóa đơn hàng" href="shop_order_delete/' . $this->id .'"><i class="fa fa-trash"></i> Xóa</a>';
//                return $html;
//            });
//            $grid->actions(function ($actions) {
//                $actions->disableDelete();
//                 $actions->disableEdit();
//                $actions->disableView();
//            });
        });

    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        Admin::script($this->jsProcess());
        return Admin::form(ShopOrder::class, function (Form $form) {
            $arrCustomer = array('0' => 'Khách');
            $customers   = User::all();
            foreach ($customers as $key => $value) {
                $arrCustomer[$value['id']] = $value['name'] . "<" . $value['email'] . ">";
            }
            $form->select('user_id', 'Chọn khách hàng')->options($arrCustomer);
            $form->text('toname', 'Tên người nhận hàng');
            $form->text('address1', 'Số nhà, đường');
            $form->text('address2', 'Quận Huyện');
            $form->mobile('phone', 'Phone');
            $form->textarea('comment', 'Ghi chú');
            $form->select('status', 'Trạng thái')->options($this->statusOrder);



            $form->saved(function (Form $form) {
                $id              = $form->model()->id;

                $objects                     = array();
                $objects[]                   = (new ShopOrderTotal())->getShipping();
//                $objects[]                   = (new ShopOrderTotal())->getDiscount();
                $objects[]                   = (new ShopOrderTotal())->getReceived();
                $objects[]                   = array(
                    'title' => 'Tổng tiền cần thanh toán',
                    'code'  => 'total',
                    'value' => 0,
                    'sort'  => 100,
                );

                $objects[]                   = array(
                    'title' => 'Tổng tiền hàng',
                    'code'  => 'subtotal',
                    'value' => 0,
                    'sort'  => 1,
                );
                usort($objects, function ($a, $b) {
                    return $a['sort'] > $b['sort'];
                });

                ShopOrderTotal::insertTotal($objects, $id);
            });

            $form->tools(function (Form\Tools $tools) {


                // Disable `Delete` btn.
//                $tools->disableDelete();

                // Disable `Veiw` btn.
                $tools->disableView();
            });
            // $form->divide();
        });
    }

    public function jsProcess()
    {
        $urlgetInfoUser    = route('getInfoUser');
        $urlgetInfoProduct = route('getInfoProduct');
        return <<<JS
        $('[name="user_id"]').change(function(){
            id = $(this).val();
                $.ajax({
                    url : '$urlgetInfoUser',
                    type : "get",
                    dateType:"application/json; charset=utf-8",
                    data : {
                         id : id
                    },
                    success: function(result){
                        var returnedData = JSON.parse(result);
                        $('[name="toname"]').val(returnedData.name);
                        $('[name="address1"]').val(returnedData.address1);
                        $('[name="address2"]').val(returnedData.address2);
                        $('[name="phone"]').val(returnedData.phone);
                    }
                });
        });

JS;
    }
/**
 * [getInfoUser description]
 * @param  Request $request [description]
 * @return [type]           [description]
 */
    public function getInfoUser(Request $request)
    {
        $id = $request->input('id');
        return User::find($id)->toJson();
    }
/**
 * [getInfoProduct description]
 * @param  Request $request [description]
 * @return [type]           [description]
 */
    public function getInfoProduct(Request $request)
    {
        $id  = $request->input('id');
        $sku = $request->input('sku');
        if ($id) {
            return ShopProduct::find($id)->toJson();
        } else {
            return ShopProduct::where('sku', $sku)->first()->toJson();
        }

    }
/**
 * [detailOrder description]
 * @param  [type] $id [description]
 * @return [type]     [description]
 */
    public function detailOrder($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Order #' . $id);
            // $content->description('description');
            $content->body(
                $this->detailOrderForm($id)
            );
        });
    }

    public function detailOrderForm($id = null)
    {
        $order = ShopOrder::find($id);
        if ($order === null) {
            return 'no data';
        }
        $products = ShopProduct::pluck('name', 'id')->all();
        return view('admin.OrderEdit')->with([
            "order" => $order, "products" => $products, "statusOrder" => $this->statusOrder, "statusPayment" => $this->statusPayment, "statusShipping" => $this->statusShipping, "statusOrder2" => $this->statusOrder2, "statusShipping2" => $this->statusShipping2, 'dataTotal' => ShopOrderTotal::getTotal($id),
        ])->render();
    }
/**
 * [postOrderUpdate description]
 * @param  Request $request [description]
 * @return [type]           [description]
 */
    public function postOrderUpdate(Request $request)
    {
        $id           = $request->input('pk');
        $field        = $request->input('name');
        $value        = $request->input('value');
        $order_origin = ShopOrder::find($id);
        if ($field == 'shipping' || $field == 'discount' || $field == 'received') {
            $fieldTotal = [
                'id'    => $id,
                'code'  => $field,
                'value' => $value,
            ];
            $order_id = ShopOrderTotal::updateField($fieldTotal);
        } else {
            $arrFields = [
                $field => $value,
            ];
            $order_id = $id;
            ShopOrder::updateInfo($order_id, $arrFields);
        }
        if (empty($order_origin) && !empty($order_id)) {
            $order_origin = ShopOrder::find($order_id);
        }

        //Add history
        $dataHistory = [
            'order_id' => $order_id,
            'content'  => 'Thay đổi <b>' . $field . '</b> từ <span style="color:blue">\'' . $order_origin[$field] . '\'</span> thành <span style="color:red">\'' . $value . '\'</span>',
            'admin_id' => Admin::user()->id,
            'add_date' => date('Y-m-d H:i:s'),
        ];
        ShopOrderHistory::insert($dataHistory);

        //updateField
        // $updateSubTotal = ShopOrderTotal::updateSubTotal($id, $fields = array($field => $value));

        if ($order_id) {
            $order = ShopOrder::find($order_id);
            if ($order->balance == 0 && $order->total != 0) {
                $style = 'style="color:#0e9e33;font-weight:bold;"';
            } else
            if ($order->balance < 0) {
                $style = 'style="color:#ff2f00;font-weight:bold;"';
            } else {
                $style = 'style="font-weight:bold;"';
            }
            $style_blance = '<tr ' . $style . ' class="data-balance"><td>Còn lại:</td><td align="right">' . number_format($order->balance) . '</td></tr>';
            return json_encode(['stt' => 1, 'msg' => [
                'total'          => number_format($order->total),
                'subtotal'       => number_format($order->subtotal),
                'shipping'       => number_format($order->shipping),
                'discount'       => number_format($order->discount),
                'received'       => number_format($order->received),
                'balance'        => $style_blance,
                'payment_status' => ($order->payment_status == 2) ? '<span style="color:#0e9e33;font-weight:bold;">' . $this->statusPayment[$order->payment_status] . '</span>' : (($order->payment_status == 3) ? '<span style="color:#ff2f00;font-weight:bold;">' . $this->statusPayment[$order->payment_status] . '</span>' : $this->statusPayment[$order->payment_status]),
            ],
            ]);
        } else {
            return json_encode(['stt' => 0, 'msg' => 'Error ']);
        }
    }

/**
 * [postOrderEdit description]
 * @param  Request $request [description]
 * @return [type]           [description]
 */
    public function postOrderEdit(Request $request)
    {
        //Add new item
        if ((int) $request->input('addItem-form') != 0) {
            $order_id = (int) $request->input('addItem-form');
            $pQty     = $request->input('pQty');
            $pAttr    = $request->input('pAttr');
            $pId      = $request->input('pId');
            $pPrice   = $request->input('pPrice');
            $arrData  = array();
            $listNew  = array();
            foreach ($pId as $key => $value) {
                if ($value['value'] == 0) {
                    continue;
                }

                $product                  = ShopProduct::find($value['value']);
                $listNew[$value['value']] = $product->name;
                $arrData[]                = array(
                    'order_id'    => $order_id,
                    'product_id'  => $value['value'],
                    'name'        => $product->name,
                    'qty'         => (int) $pQty[$key]['value'],
                    'option'      => empty($pAttr) ? null : $pAttr[$key]['value'],
                    'price'       => (int) $pPrice[$key]['value'],
                    'total_price' => (int) $pPrice[$key]['value'] * (int) $pQty[$key]['value'],
                    'sku'         => $product->sku,
                );
            }
            $rs = (new ShopOrderDetail)->insert($arrData);

            //Add history
            $dataHistory = [
                'order_id' => $order_id,
                'content'  => 'Thêm mới sản phẩm (' . implode(",", $listNew) . ')',
                'admin_id' => Admin::user()->id,
                'add_date' => date('Y-m-d H:i:s'),
            ];
            ShopOrderHistory::insert($dataHistory);

            //Update total price
            $subtotal = ShopOrderDetail::select(DB::raw('sum(total_price) as subtotal'))
                ->where('order_id', $order_id)
                ->first()->subtotal;
            $updateSubTotal = ShopOrderTotal::updateSubTotal($order_id, $subtotal);
            //end update total price
            if ($rs && $updateSubTotal === 1) {
                return json_encode(['stt' => 1, 'msg' => '']);
            } else {
                return json_encode(['stt' => 0, 'msg' => 'Error: ' . $updateSubTotal]);
            }
        }
        //end add new item
        //=======================

        //Remove item
        if ($request->input('removeItem-form') == 1) {
            $pId        = (int) $request->input('pId');
            $itemDetail = (new ShopOrderDetail)->where('id', $pId)->first();
            $order_id   = $itemDetail->order_id;
            $product_id = $itemDetail->product_id;
            $qty        = $itemDetail->qty;
            $rs         = $itemDetail->delete(); //Remove item from shop order detail
            //Update total price
            $subtotal = ShopOrderDetail::select(DB::raw('sum(total_price) as subtotal'))
                ->where('order_id', $order_id)
                ->first()->subtotal;
            $updateSubTotal = ShopOrderTotal::updateSubTotal($order_id, $subtotal);
            $item           = ShopProduct::find($product_id);
            $item->stock    = $item->stock + $qty; // Restore stock
            $item->sold     = $item->sold - $qty; // Subtract sold
            $item->save();

            //Add history
            $dataHistory = [
                'order_id' => $order_id,
                'content'  => 'Xóa sản phẩm pID#' . $pId,
                'admin_id' => Admin::user()->id,
                'add_date' => date('Y-m-d H:i:s'),
            ];
            ShopOrderHistory::insert($dataHistory);

            //end update total price
            if ($rs && $updateSubTotal === 1) {
                return json_encode(['stt' => 1, 'msg' => '']);
            } else {
                return json_encode(['stt' => 0, 'msg' => 'Error: ' . $updateSubTotal]);
            }
        }
        //end remove Item

        //Edit item
        if ($request->input('editItem-form') != 0) {
            $pId      = (int) $request->input('pId');
            $pQty     = (int) $request->input('pQty');
            $pPrice   = (int) $request->input('pPrice');
            $pName    = $request->input('pName');
            $pAttr    = $request->input('pAttr');
            $order_id = (int) $request->input('editItem-form');
            $data     = array(
                'qty'         => $pQty,
                'price'       => $pPrice,
                'name'        => $pName,
                'total_price' => $pQty * $pPrice,
                'option'      => $pAttr,
            );
            $rs = (new ShopOrderDetail)->updateDetail($pId, $data);

            //Add history
            $dataHistory = [
                'order_id' => $order_id,
                'content'  => 'Chỉnh sửa sản phẩm #' . $pId,
                'admin_id' => Admin::user()->id,
                'add_date' => date('Y-m-d H:i:s'),
            ];
            ShopOrderHistory::insert($dataHistory);

            //Update total price
            $subtotal = ShopOrderDetail::select(DB::raw('sum(total_price) as subtotal'))
                ->where('order_id', $order_id)
                ->first()->subtotal;
            $rs2 = ShopOrderTotal::updateSubTotal($order_id, $subtotal);
            //end update total price
            if ($rs && $rs2 === 1) {
                return json_encode(['stt' => 1, 'msg' => '']);
            } else {
                return json_encode(['stt' => 0, 'msg' => 'Error: ' . $rs2]);
            }
        }
        //End edit item

    }
    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('');
            $content->description('');
            $content->body(Admin::show(ShopOrder::findOrFail($id), function (Show $show) {
                $show->id('ID');
            }));
        });
    }
}
