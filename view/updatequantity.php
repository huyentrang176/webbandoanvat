<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Lấy dữ liệu từ ajax đẩy lên
    $productid_sp = $_POST['id_sp'];
    $newQuantity = $_POST['quantity'];

    // Kiểm giỏ hàng có tồn tại hay không
    if (!empty($_SESSION['cart'])) {
        // Kiểm tra sản phẩm đã có trong giỏ hàng chưa
        $index= array_search( $productid_sp, array_column($_SESSION['cart'],'id_sp'));

        // Nếu sản phẩm tồn tại thì cập nhật lại số lượng
        if ($index !== false) {
            $_SESSION['cart'][$index]['quantity'] = $newQuantity;
        } else {
            echo 'Sản phầm ko tồn tại trong giỏ hàng';
        }
    }

} else {
    echo 'Yêu cầu không hợp lệ';
}

?>