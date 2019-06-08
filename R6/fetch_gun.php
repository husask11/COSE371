<?
include "config.php";
$connect = mysqli_connect($host,  $dbid, $dbpass, $dbname);
$output = '';
$sql = "SELECT * FROM Gun Natural Join Op_Gun where op_no = '".$_POST["op_no"]."' ORDER BY gun_name";
$result = mysqli_query($connect, $sql);
$output = '<option value="">선택해 주십시오.</option>';
while($row = mysqli_fetch_array($result)){
	$output .= '<option value="'.$row["gun_no"].'">'.$row["gun_name"].'</option>';
}
echo $output;
?>