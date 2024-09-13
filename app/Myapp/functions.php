<?php
function ktc_str_convert($str)
{
    $unicode = array(
        'a' => 'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
        'd' => 'đ',
        'e' => 'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
        'i' => 'í|ì|ỉ|ĩ|ị',
        'o' => 'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
        'u' => 'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
        'y' => 'ý|ỳ|ỷ|ỹ|ỵ',
        'A' => 'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
        'D' => 'Đ',
        'E' => 'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
        'I' => 'Í|Ì|Ỉ|Ĩ|Ị',
        'O' => 'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
        'U' => 'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
        'Y' => 'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
    );

    foreach ($unicode as $nonUnicode => $uni) {
        $str = preg_replace("/($uni)/i", $nonUnicode, $str);
    }
    return strtolower(preg_replace(
        array('/[^a-zA-Z0-9\s-]/', '/[\s-]+|[-\s]+|[--]+/', '/^[-\s_]|[-_\s]$/'),
        array('', '-', ''),
        strtolower($str)));
}

function getNamePaymentMethod ($key) 
{
    $nameArr = array(
        'cod' => 'Thanh toán khi nhận hàng',
        'cash'=> 'Thanh toán bằng thẻ'
    );

    if(!is_null($key) && array_key_exists($key, $nameArr)) {
        return $nameArr[$key];
    }
    return $nameArr['cod'];
}

function getStatusOrder ($key) 
{
    
    if (is_array($key)) {
        $key = reset($key);
    }
    $statusOrder = ['0' => 'Mới', '1' => 'Đang xử lý', '2' => 'Tạm giữ', '3' => 'Hủy bỏ', '4' => 'Hoàn thành'];


    if(!is_null($key) && array_key_exists($key, $statusOrder)) {
        return $statusOrder[$key];
    }
    return $statusOrder['0'];
}

function getBlogImageFile ($path) {
    if (is_file($path)) {
        return $path;
    }
    else {
        return '/assets/img/blog/blog1.jpg';
    }
}

function getProductImageFile ($path) {
    if (is_file($path)) {
        return $path;
    }
    else {
        return '/assets/img/product/product3.jpg';
    }
}


function getSmallProductImageFile ($path) {
    if (is_file($path)) {
        return $path;
    }
    else {
        return 'assets/img/product/product3.jpg';
    }
}
