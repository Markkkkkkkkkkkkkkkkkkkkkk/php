<meta charset="utf8">
<?php
$stitle=$_POST["stitle"];
echo "<b>論文標題：</b>".$stitle."<br/>";

$sname=$_POST["sname"];
echo "<b>作者姓名：</b>".$sname."<br/>";

$semail=$_POST["semail"];
echo "<b>作者Email：</b>".$semail."<br/>";

$sComment=$_POST["Comment"];
echo "<b>論文摘要：</b>".$sComment."<br/>";
?>
