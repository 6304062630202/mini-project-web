<?php include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
  header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>orders</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="placed-orders">

    <h1 class="title">คำสั่งซื้อของคุณ</h1>

    <div class="box-container">

    <?php
        $select_orders = mysqli_query($conn, "SELECT * FROM orders JOIN users ON orders.user_id = users.id WHERE user_id = '$user_id'") or die('query failed');
        if(mysqli_num_rows($select_orders) > 0){
            while($fetch_orders = mysqli_fetch_assoc($select_orders)){
    ?>
    <div class="box">
        <p> คำสั่งซื้อที่ : <span><?php echo $fetch_orders['oid']; ?></span></p>
        <p> user id : <span><?php echo $fetch_orders['user_id']; ?></span> </p>
        <p> user type : <span><?php echo $fetch_orders['user_type']; ?></span> </p>
         <p> วัน-เดือน-ปี : <span><?php echo $fetch_orders['placed_on']; ?></span> </p>
         <p> ชื่อผู้ใช้ : <span><?php echo $fetch_orders['pname']; ?></span> </p>
         <p> เบอร์โทรศัพท์ : <span><?php echo $fetch_orders['number']; ?></span> </p>
         <p> email : <span><?php echo $fetch_orders['email']; ?></span> </p>
         <p> ที่อยู่ : <span><?php echo $fetch_orders['address']; ?></span> </p>
         <p> รายการสินค้า : <span><?php echo $fetch_orders['total_products']; ?></span> </p>
         <p> ราคารวม : <span><?php echo $fetch_orders['total_price']; ?>฿</span> </p>
        <p> สถานะการจัดส่ง : <span style="color:<?php if($fetch_orders['payment_status'] == 'รอดำเนินการ'){echo 'green'; }
            elseif($fetch_orders['payment_status'] == 'ชำระสำเร็จ'){echo 'orange';}else{echo '-';} ?>"><?php echo $fetch_orders['payment_status']; ?></span> </p>
    </div>
    <?php
        }
    }else{
        echo '<p class="empty">no orders placed yet!</p>';
    }
    ?>
    </div>

</section>







<?php include 'footer.php'; ?>

<script src="js/javascript.js"></script>

</body>
</html>