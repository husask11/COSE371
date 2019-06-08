<?php
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host,$dbid,$dbpass,$dbname);

mysqli_query($conn, "set autocommit = 0");	// autocommit 해제
mysqli_query($conn, "set transation isolation level serializable");	// isolation level 설정
mysqli_query($conn, "begin");	// begins a transation

$eval_no = $_GET['eval_no'];

$checkQuery = mysqli_query($conn, "select * from Evaluation where eval_no = $eval_no");
$check = mysqli_fetch_assoc($checkQuery);

if(!$check)
{
	    msg('No eval_no : '.$eval_no);
}
else{
	$ret = mysqli_query($conn, "delete from Evaluation where eval_no = $eval_no");
	
	if(!$ret)
	{
		mysqli_query($conn, "rollback");	// eval 삭제 query 수행 실패, 수행 전으로 rollback
	    msg('Query Error : '.mysqli_error($conn));
	}
	else
	{
		mysqli_query($conn, "commit");		// eval 삭제 query 수행 성공. 수행 내역 commit
	    s_msg ('성공적으로 삭제 되었습니다');
	    echo "<meta http-equiv='refresh' content='0;url=eval_list.php'>";
	}
}

?>

