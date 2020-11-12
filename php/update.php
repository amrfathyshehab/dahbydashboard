<?php 


session_start();$host="localhost" ;$username="root" ;$password="" ;$database="el_dahby" ;$message="" ;try{$connect = mysqli_connect("$host" , "$username" , "$password" , "$database" );}catch(PDOException $error){$message = $error->getMessage();
 }
?>


<?php
if( (@$_GET['q'])=='addhome' ){
$n=@$_GET['n'];
$eid=@$_GET['eid'];
$ch=@$_GET['ch'];

for($i=1;$i<=$n;$i++)
 {
 $qid=uniqid();
 $qns=$_POST['qns'.$i];
$q3=mysqli_query($connect,"INSERT INTO homework_questions VALUES  ('$eid','$qid','$qns' , '$ch' , '$i')");
  $oaid=uniqid();
  $obid=uniqid();
$ocid=uniqid();
$odid=uniqid();
$a=$_POST[$i.'1'];
$b=$_POST[$i.'2'];
$c=$_POST[$i.'3'];
$d=$_POST[$i.'4'];
$qa=mysqli_query($connect,"INSERT INTO homework_options	 VALUES  ('$qid','$a','$oaid')") or die('Error61');
$qb=mysqli_query($connect,"INSERT INTO homework_options	 VALUES  ('$qid','$b','$obid')") or die('Error62');
$qc=mysqli_query($connect,"INSERT INTO homework_options	 VALUES  ('$qid','$c','$ocid')") or die('Error63');
$qd=mysqli_query($connect,"INSERT INTO homework_options	 VALUES  ('$qid','$d','$odid')") or die('Error64');
$e=$_POST['ans'.$i];
switch($e)
{
case 'a':
$ansid=$oaid;
break;
case 'b':
$ansid=$obid;
break;
case 'c':
$ansid=$ocid;
break;
case 'd':
$ansid=$odid;
break;
default:
$ansid=$oaid;
}


$qans=mysqli_query($connect,"INSERT INTO homework_answer	 VALUES  ('$qid','$ansid')");

 }
header("location:homework.php?q=1");
}else{
	
	
	
	$n=@$_GET['n'];
$eid=@$_GET['eid'];
$ch=@$_GET['ch'];

for($i=1;$i<=$n;$i++)
 {
 $qid=uniqid();
 $qns=$_POST['qns'.$i];
$q3=mysqli_query($connect,"INSERT INTO questions VALUES  ('$eid','$qid','$qns' , '$ch' , '$i')");
  $oaid=uniqid();
  $obid=uniqid();
$ocid=uniqid();
$odid=uniqid();
$a=$_POST[$i.'1'];
$b=$_POST[$i.'2'];
$c=$_POST[$i.'3'];
$d=$_POST[$i.'4'];
$qa=mysqli_query($connect,"INSERT INTO options VALUES  ('$qid','$a','$oaid')") or die('Error61');
$qb=mysqli_query($connect,"INSERT INTO options VALUES  ('$qid','$b','$obid')") or die('Error62');
$qc=mysqli_query($connect,"INSERT INTO options VALUES  ('$qid','$c','$ocid')") or die('Error63');
$qd=mysqli_query($connect,"INSERT INTO options VALUES  ('$qid','$d','$odid')") or die('Error64');
$e=$_POST['ans'.$i];
switch($e)
{
case 'a':
$ansid=$oaid;
break;
case 'b':
$ansid=$obid;
break;
case 'c':
$ansid=$ocid;
break;
case 'd':
$ansid=$odid;
break;
default:
$ansid=$oaid;
}


$qans=mysqli_query($connect,"INSERT INTO answer VALUES  ('$qid','$ansid')");

 }
header("location:homework.php?q=0");
}

?>