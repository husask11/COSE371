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
    		background-size :contain;
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
    $query = "select * from Gun";
    $res = mysqli_query($conn, $query);
    if (!$res) {
         die('Query Error : ' . mysqli_error());
    }
    ?>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th align=center>No.</th>
            <th align=center>총기명</th>
            <th align=center>종류</th>
        </tr>
        </thead>
        <tbody>
        <?
        $row_index = 1;
        while ($row = mysqli_fetch_array($res)) {
        	$img_src = "images/icons/".$row['op_name'].".png";
            echo "<tr>";
            echo "<td align=center>{$row['gun_no']}</td>";
            echo "<td align=center><a href='gun_view.php?gun_no={$row['gun_no']}'>{$row['gun_name']}</td>";
            echo "<td align=center>{$row['gun_type']}</td>";
            $row_index++;
        }
        ?>
        </tbody>
    </table>
</div>
<? include("footer.php") ?>
