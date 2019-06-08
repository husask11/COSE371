<?php
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host,$dbid,$dbpass,$dbname);

$title = $_POST['title'];
$op_no = $_POST['op_no'];
$gun_no = $_POST['gun_no'];
$eval_text = $_POST['eval_text'];

$ret = mysqli_query($conn, "insert into Evaluation (title, op_no, gun_no, eval_text, added_time) values('$title','$op_no', '$gun_no', '$eval_text', NOW())");
if(!$ret)
{
	echo mysqli_error($conn);
    msg('Query Error : '.mysqli_error($conn));
}
else
{
    s_msg ('성공적으로 입력 되었습니다');
    echo "<meta http-equiv='refresh' content='0;url=eval_list.php'>";
}

?>

