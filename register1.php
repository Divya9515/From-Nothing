<?php 
$db_hostname='localhost';
$db_username='root';
$db_password='';
$db_name='sample1';
$db_server=mysqli_connect($db_hostname,$db_username,$db_password,$db_name);
if(!$db_server) die("Unable to connect to MYSQL: ".mysqli_error());
$name=$_POST['txt1'];
$pwd=$_POST['txt2'];
$gender=$_POST['radio'];
$course=$_POST['course'];
$addrress=$_POST['txt3'];
$chkbox=$_POST['ch1'];
$chk="";
foreach($chkbox as $chk1)
{
    $chk .=$chk1.",";
}
$query="INSERT INTO student1(Sname,Spwd,Gender,Course,SAddress,Qualification) VALUES ('$name','$pwd','$gender','$course','$addrress','$chk')";
if(mysqli_query($db_server,$query))
{
    $message="You have been successfully registered";
    echo "<script>alert('$message');</script>";
}
else{
    echo "Error".mysqli_error($db_server);
}
mysqli_close($db_server);
?>