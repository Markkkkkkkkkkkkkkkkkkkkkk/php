<html>

<?php
include("include.inc");
?>
<h2><b>高大資管論文投稿系統</b></h2>
<form action="check.php" method="get">
請選擇你的角色：
<select name="character">
<option value="Chair">Chair
<option value="Reviewer">Reviewer
<option value="Author">Author
</select>
<br/>
帳號：<input type="text" name="uId"><br/>
密碼：<input type="password" name="uPwd" required><br/>
<input type="submit" value="提交">
</form>
<br/>
<?php

if(isset($_COOKIE["username"])){
    echo $_COOKIE["username"]."歡迎回來";
}else{
    echo"這是你第一次登入網站";
}
?>

<?php
include("footer.inc")
?>
</html>