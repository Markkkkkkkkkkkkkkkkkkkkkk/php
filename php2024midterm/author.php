<?php 
session_start();
?>
<h2><b>Author您好，歡迎進入論文投稿網頁</b></h2>
<?php
if($_SESSION["check"]=="Yes"){
    echo"登入成功";
    echo"<a href='logout.php'>登出</a>";
}else{
    echo"非法進入網頁";
    header("Refresh:3;url=index.php");
}
?>   
<br/>
<form action="showpaper.php" method="post">
論文標語：<input type="text" name="stitle" value="">
<br/>
作者姓名：<input type="text" name="sname" value="">
<br/>
作者Email：<input type="text" name="semail" value="">
<br/>
論文摘要：
<textarea name="Comment" value="" rows="10" cols="50">

</textarea>
<br/>
<input type="submit" value="提交">

