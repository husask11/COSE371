<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수
?>


<style>
body {
        	background-image:url('images/background.png') ;
        	background-color:black;
    		background-position:center top;
    		background-repeat:no-repeat;
    		background-size :cover;
        }
</style>

<style>
        body {
        	background-color: black;
        }
        .container {
            position: relative;
            background: rgba(255, 255, 255, .9);
        }
</style>

<br>
<br>
<br>

<div class="container">
    <?
    $conn = dbconnect($host, $dbid, $dbpass, $dbname);
    $query = "select * from Evaluation natural join Operator natural join Gun order by added_time desc";
    $res = mysqli_query($conn, $query);
    if (!$res) {
         die('Query Error : ' . mysqli_error());
    }
    ?>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th align=center>No.</th>
            <th align=center>제목</th>
            <th align=center>대원</th>
            <th align=center>무기</th>
            <th align=center>등록일</th>
        </tr>
        </thead>
        <tbody>
        <?
        $row_index = 1;
        while ($row = mysqli_fetch_array($res)) {
            echo "<tr>";
            echo "<td align=center>{$row_index}</td>";
            echo "<td><a href='eval_view.php?eval_no={$row['eval_no']}'>{$row['title']}</td>";
            echo "<td align=center><a href='operator_view.php?operator_no={$row['op_no']}'>{$row['op_name']}</td>";
            echo "<td align=center><a href='gun_view.php?gun_no={$row['gun_no']}'>{$row['gun_name']}</td>";
            echo "<td align=center>{$row['added_time']}</td>";
            echo "</tr>";
            $row_index++;
        }
        ?>
        </tbody>
    </table>
    
    <DIV style="TEXT-ALIGN: center">
		<p><a href='eval_form.php'>평가 등록</a></p>
	</DIV>
</div>
<? include("footer.php") ?>
