<?php session_start();
?>
<h2><b>Reviewer您好，歡迎進入論文評論網頁</b></h2>
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
<form action="showreviewer.php" method="post">
論文評審決定：
<input type="radio" name="decision" value="accept">Accept
<input type="radio" name="decision" value="minor revision">Minor Revision
<input type="radio" name="decision" value="majorRevision">Major Revision
<input type="radio" name="decision" value="reject">Reject
<br/>
論文評論評語：
<textarea name="Comment" value="" rows="10" cols="50">

</textarea>
<br/>
<input type="submit" value="提交">