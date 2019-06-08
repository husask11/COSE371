<?php
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host,$dbid,$dbpass,$dbname);

mysqli_query($conn, "set autocommit = 0");	// autocommit 해제
mysqli_query($conn, "set transation isolation level serializable");	// isolation level 설정
mysqli_query($conn, "begin");	// begins a transation

$title = $_POST['title'];
$eval_no = $_POST['eval_no'];
$op_no = $_POST['op_no'];
$gun_no = $_POST['gun_no'];
$eval_text = $_POST['eval_text'];

$ret = mysqli_query($conn, "update Evaluation set title = '$title', op_no = '$op_no', gun_no = '$gun_no', eval_text = '$eval_text' where eval_no = '$eval_no'");

if(!$ret)
{
	mysqli_query($conn, "rollback"); // eval 수정 query 수행 실패. 수행 전으로 rollback
    msg('Query Error : '.mysqli_error($conn));
}
else
{
	mysqli_query($conn, "commit"); // eval 수정 query 수행 성공. 수행 내역 commit
    s_msg ('성공적으로 수정 되었습니다');
    echo "<meta http-equiv='refresh' content='0;url=eval_list.php'>";
}

?>

