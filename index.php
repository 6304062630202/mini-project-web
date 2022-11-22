<?php include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
    header('location:login.php');
};

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>รายละเอียดดอกไม้</title>
    <link rel="stylesheet" href="css/admin_style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"" rel=" nofollow">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- custom admin css file link  -->

    <style>
        .This {
            padding: 2rem;
            padding-left: 8rem;
        }

        .table {
            border: #000 2px solid;
            font-size: 20px;
            padding: 2rem;

        }

        .pagination {
            display: inline-flex;
            font-size: large;
            text-align: center;
            border: 2px solid black;

        }
    </style>
</head>

<body>
    <?php include 'admin_header.php'; ?>
    <?php
    $con = mysqli_connect('localhost', 'root', '', 'floralandshop');

    $perpage = 10;
    if (isset($_GET['page'])) {
        $page = $_GET['page'];
    } else {
        $page = 1;
    }

    $start = ($page - 1) * $perpage;

    $sql = "select id,name,details,price,event from product limit {$start} , {$perpage} ";
    $query = mysqli_query($con, $sql);
    ?>
    <h1 class="title">ข้อมูลสินค้า</h1>
    <div class="This">
        <div class="row">
            <div class="col-lg-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Details</th>
                            <th>Price</th>
                            <th>Event</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ($result = mysqli_fetch_assoc($query)) { ?>
                            <tr>
                                <td><?php echo $result['id']; ?></td>
                                <td><?php echo $result['name']; ?></td>
                                <td><?php echo $result['details']; ?></td>
                                <td><?php echo $result['price']; ?></td>
                                <td><?php echo $result['event']; ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <?php
                $sql2 = "select id,name,details,price,event from product ";
                $query2 = mysqli_query($con, $sql2);
                $total_record = mysqli_num_rows($query2);
                $total_page = ceil($total_record / $perpage);
                ?>

                <nav>
                    <ul class="pagination">
                        <li>
                            <a href="index.php?page=1" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <?php for ($i = 1; $i <= $total_page; $i++) { ?>
                            <li><a href="index.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                        <?php } ?>
                        <li>
                            <a href="index.php?page=<?php echo $total_page; ?>" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div> <!-- /container -->
    <script src="js/javascript.js"></script>
</body>

</html>