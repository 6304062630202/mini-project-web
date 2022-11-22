<?php include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
};
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>dashboard</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>

<?php include 'admin_header.php'; ?>

<section class="dashboard">

   <h1 class="title">dashboard</h1>

   <div class="box-container">

      <div class="box">
         <?php
            $total_pendings = 0;
            $select_pendings = mysqli_query($conn, "SELECT * FROM orders WHERE payment_status = 'รอดำเนินการ'") or die('query failed');
            while($fetch_pendings = mysqli_fetch_assoc($select_pendings)){
               $total_pendings += $fetch_pendings['total_price'];
            };
         ?>
         <h3><?php echo $total_pendings; ?>฿</h3>
         <p>ราคารวมสำหรับผู้รอดำเนินการ</p>
      </div>

      <div class="box">
         <?php
            $total_completes = 0;
            $select_completes = mysqli_query($conn, "SELECT * FROM orders WHERE payment_status = 'ชำระสำเร็จ'") or die('query failed');
            while($fetch_completes = mysqli_fetch_assoc($select_completes)){
               $total_completes += $fetch_completes['total_price'];
            };
         ?>
         <h3><?php echo $total_completes; ?>฿</h3>
         <p>ราคารวมสำหรับผู้ชำระเงินสำเร็จ</p>
      </div>

      <div class="box">
         <?php
            $select_orders = mysqli_query($conn, "SELECT * FROM orders") or die('query failed');
            $number_of_orders = mysqli_num_rows($select_orders);
         ?>
         <h3><?php echo $number_of_orders; ?></h3>
         <p>คำสั่งซื้อ</p>
      </div>

      <div class="box">
         <?php
            $select_products = mysqli_query($conn, "SELECT * FROM product") or die('query failed');
            $number_of_products = mysqli_num_rows($select_products);
         ?>
         <h3><?php echo $number_of_products; ?></h3>
         <p>จำนวนสินค้า</p>
      </div>


      <div class="box">
         <?php
            $select_users = mysqli_query($conn, "SELECT * FROM users WHERE user_type = 'user'") or die('query failed');
            $number_of_users = mysqli_num_rows($select_users);
         ?>
         <h3><?php echo $number_of_users; ?></h3>
         <p>ผู้ใช้งาน</p>
      </div>

      <div class="box">
         <?php
            $select_admin = mysqli_query($conn, "SELECT * FROM users WHERE user_type = 'admin'") or die('query failed');
            $number_of_admin = mysqli_num_rows($select_admin);
         ?>
         <h3><?php echo $number_of_admin; ?></h3>
         <p>แอดมิน</p>
      </div>

   

         <?php
         $select_query = mysqli_query($conn, "SELECT users.id, users.name, SUM(quantity), SUM(price) 
            FROM users JOIN cart ON users.id = cart.user_id GROUP BY user_id") or die('query failed');
         if(mysqli_num_rows($select_query) > 0){
            while($fetch_users = mysqli_fetch_assoc($select_query)){
      ?>
      <div class="box-user">
         <p>user id : <span><?php echo $fetch_users['id']; ?></span></p>
         <p>ชื่อผู้ใช้ : <span><?php echo $fetch_users['name']; ?></span></p>
         <p>มีสินค้าค้างที่ตะกร้า : <span><?php echo $fetch_users['SUM(quantity)']; ?> รายการ</span></p>
         <p>ราคารวมทั้งหมด : <span><?php echo $fetch_users['SUM(price)']; ?>฿</span></p>
      </div>
      <?php
         }
      }
      ?>
      </div>



   </div>

</section>


<script src="js/javascript.js"></script>

</body>
</html>