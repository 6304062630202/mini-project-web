<header class="header">

    <div class="flex">

        <a href="home.php" class="logo"><img src="img/logo.png" width="70"></a>

        <nav class="navbar">
            <ul>
                <li><a href="home.php">หน้าแรก</a></li>
                <li><a href="home.php#process">วิธีการสั่งซื้อ</a></li>
                <li><a href="home.php#event">เลือกตามโอกาส</a></li>
                <li><a href="orders.php">คำสั่งซื้อ</a></li>
                <li><a href="recommend.php">แนะนำ</a></li>
            </ul>
        </nav>

        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <a href="search_page.php" class="fas fa-search"></a>
            <?php 
                $select_cart_count = mysqli_query($conn, "SELECT * FROM cart WHERE user_id = '$user_id'") or die('query failed');
                $cart_num_rows = mysqli_num_rows($select_cart_count);
            ?>
            <a href="cart.php"><i class="fas fa-shopping-basket"></i>
            <span>(<?php echo $cart_num_rows ?>)</span></a>

            <div id="user-btn" class="fas fa-user"></div>


        </div>

        <div class="account-box">
            <p>username : <a href=""></a><span><?php echo $_SESSION['user_name']; ?></span></p>
            <p>email : <span><?php echo $_SESSION['user_email']; ?></span></p>
            <a href="logout.php" class="delete-btn">logout</a>
            <div>new <a href="login.php">login</a> | <a href="register.php">register</a> </div>
        </div>

    </div>

</header>