<?php session_start();
?>
<meta charset="utf8">
<?php
$sId="nuk";
$sPwd="1234";
$uId=$_GET["uId"];
$uPwd=$_GET["uPwd"];
if($sId==$uId && $sPwd==$uPwd){
    $_SESSION["check"]="Yes";
    header("Location:week4.php");
}else{
    $_SESSION["check"]="No";
    header("Location:fail.php");
}
?>