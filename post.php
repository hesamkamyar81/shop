<?php
session_start();
require 'jdf.php';
?>
<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
    <title>فروشگاه لپ تاپ مرکزی</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.rtl.css"/>
    <script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
<?php
error_reporting(0);
if(isset($_SESSION['id']))
{
    $uid = $_SESSION['id'];
}

if(isset($_SESSION['is-admin'])):?>
    <b style="margin-right: 12px;" class="text-info"><?php echo ' مدیریت محترم ' . ' خوش امدید '?> </b>
<?php endif;?>
<?php if(isset($_SESSION['name']) && !isset($_SESSION['is-admin'])):
    ?>
    <p><?php echo $_SESSION['name'].' خوش امدید '?> </p>
    <p><a href="backet.php">مشاهده سبد خرید</a></p>
    <p><a href="delete-session.php">خروج</a></p>
<?php endif;?>
<?php
if(!isset($_SESSION['name']) && !isset($_SESSION['is-admin'])):?>
    <p><?php echo ' کاربر گرامی '.' خوش امدید '?> </p>
<?php endif;?>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php">فروشگاه لپ تاپ مرکزی</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.php">صفحه اصلی</a></li>
            <li><a href="ContactUs.php">تماس با ما</a></li>
            <li><a href="AboutUs.php">درباره ما</a></li>
            <li><a href="">تبلیغات</a></li>
            <li><a href="Blog.php">وبلاگ</a></li>
            <li><a href="SignUp.php">ثبت نام</a></li>
            <li><a href="LogIn.php">ورود</a></li>
        </ul>
    </div>
</nav>
<style>
    th,td
    {
        text-align: center;
    }
</style>
    <div class="container">
        <h2 style="padding: 10px 10px;" class="text-center text-success bg-info">اطلاعات محصول</h2>
        <?php
        $id = intval($_GET['id']);
        $conn = mysqli_connect("localhost","root","","shop");
        $sql = "(SELECT * FROM product WHERE id = '$id')";
        $query = mysqli_query($conn,$sql);
        $row = mysqli_fetch_array($query);
        $pr = str_replace(',','',$row['price']);
                ?>
                <div class="row">
                <div class="col-sm-6 table-bordered">
                    <img style="margin-top: 3pt;" class="img-responsive img-thumbnail" src="admin/images/<?php echo $row['image'];?>" alt="img-pro" id="img-pro"/>
                    <h4 style="padding: 10px 10px;" class="text-center bg-info text-primary"><?php echo ' نام محصول :  ' . $row['title'];?></h4>
                    <p style="padding: 10px 10px;" class="text-center bg-info text-primary"><?php echo $row['description'];?></p>
                    <p style="padding: 10px 10px;" class="text-center bg-info text-primary"><?php echo ' قیمت :  ' . number_format($row['price']).' تومان ';?></p>
                    <a href="https://idpay.ir/hesamkamyar?amount=<?php echo $pr.'0';?>">
                        <?php if(isset($_SESSION['name'])):
                            $name= $_SESSION['name'];
                                $sq = "SELECT * FROM users WHERE fullname = '$name'";
                                $q = mysqli_query($conn,$sq);
                                $r = mysqli_fetch_array($q);
                                $uid = $r['id'];
                                 $_SESSION['uid'] = $uid;
                            ?>
                            <a href="insert.php?id=<?php echo $id;?>&uid=<?php echo $_SESSION['uid']?>">
                                <button onclick="window.alert(' محصول مورد نظر با موفقیت به سبد خرید افزوده شد ');" style="margin-right: 250px;" class="btn-success" type="submit" name="buy">
                                    افزودن به سبد خرید
                                </button>
                            </a>
                        <?php endif;?>
                        <?php if(!isset($_SESSION['name'])):?>
                        <a href="LogIn.php">
                                <button style="margin-right: 230px;"  class="btn-primary" type="submit" name="buy">
                                    جهت خرید وارد شوید!
                                </button>
                            </a>
                        <?php endif;?>
                    </a>
                </div>
    </div>
    </div>
<h3 style="padding: 10px 10px;margin-right: 100px;" class="text-left text-primary bg-info">نظرات</h3>
    <div style="border: 2px solid black;" class="row bg-warning">
        <?php
        $conn = mysqli_connect("localhost", "root", "", "shop");
        $sql = "SELECT * FROM messages WHERE pid = '$id' AND status = '1' ORDER BY id DESC;";
        $query = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($query)):
        ?>
        <h4 style="padding: 10px 10px;margin-right: 100px;" class="text-left text-primary">
            <img src="admin/images/user.jpg" style="width: 32px;height: 32px;border-radius: 50%;" alt="">
            <?php echo $row['fullname'].' میگه: ';?>
        </h4>
        <p style="padding: 10px 10px;margin-right: 100px;" class="text-left text-primary"><?php echo $row['message'];?></p>
        <b style="padding: 10px 10px;margin-right: 100px;" class="text-left text-primary">
            <?php
            $day = jdate('d-m-y');
            ?>
            <?php echo ' نوشته شده در  : '.$row['ctime'];?>
        </b>
            <hr />
        <?php endwhile;?>
    </div>
<?php if(isset($_SESSION['name'])):?>
    <div class="row">
        <div class="container">
            <form style="padding: 10px 10px;" class="bg-info" method="post" action="post.php?id=<?php echo $id;?>">
                <label>نام</label>
                <br />
                <label><input class="form-control" type="text" name="name" disabled value="<?php echo $_SESSION['name'];?>" required/></label>
                <br />
                <label>نظر شما</label>
                <br />
                <label><textarea class="form-control" name="message"  cols="50" rows="5"></textarea></label>
                <br />
                <label><input class="btn-success" type="submit" value="ثبت نظر" name="submit"/></label>
                <label><input class="btn-primary" type="reset" value="ریست"/></label>
            </form>
        </div>
    </div>
<?php endif;?>
<?php if(!isset($_SESSION['name'])):?>
<p style="margin-right: 30px;">برای نظر دادن باید وارد شوید</p>
<b style="margin-right: 30px;"><a href="LogIn.php">جهت وارد شدن کلیک کنید</a></b>
<?php endif;?>
<?php
    if(isset($_POST['submit']) && isset($_SESSION['name']))
    {
        $name = $_SESSION['name'];
        $message = $_POST['message'];
        $i = $_GET['id'];
        $date = jdate('H:i:s');

        $connection = mysqli_connect("localhost", "root", "", "shop");
        $sql = "INSERT INTO messages (id,pid,fullname,message,ctime,status) VALUES (null,'$i','$name','$message','$date','0');";
        $query = mysqli_query($conn, $sql);
    }
?>
</body>
</html>