<?php session_start();
?>
<?php
if($_SESSION["check"]=="Yes"){
    echo"登入成功";
    echo"<a href='logout.php'>登出</a>";
}else{
    echo"非法進入網頁";
    header("Refresh:3;url=login.php");
}

?>