<?php
include("include.inc");
?>

<?php
$cCharacter="Chair";
$rCharacter="Reviewer";
$aCharacter="Author";
$cId="chair";
$cPwd="123";
$rId="reviewer";
$rPwd="234";
$aId="author";
$aPwd="345";
$uCharacter=$_GET["character"];
$uId=$_GET["uId"];
$uPwd=$_GET["uPwd"];
if($cId==$uId && $cPwd==$uPwd && $cCharacter==$uCharacter){
    $_SESSION["check"]="Yes";
    setcookie("username",$uId,time()+604800);
    header("Location:chair.php");
}else if($rId==$uId && $rPwd==$uPwd && $rCharacter==$uCharacter){
    $_SESSION["check"]="Yes";
    setcookie("username",$uId,time()+604800);
    header("Location:reviewer.php");
}else if($aId==$uId && $aPwd==$uPwd && $aCharacter==$uCharacter){
    $_SESSION["check"]="Yes";
    setcookie("username",$uId,time()+604800);
    header("Location:author.php");
}else{
    $_SESSION["check"]="No";
    header("Location:fail.php");
}
ob_flush();
?>