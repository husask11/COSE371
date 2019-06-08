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
    $query = "select * from Operator natural join Army";
    if (array_key_exists("search_keyword", $_POST)) {  // array_key_exists() : Checks if the specified key exists in the array
        $search_keyword = $_POST["search_keyword"];
        $query =  $query . " where op_name like '%$search_keyword%' or real_name like '%$search_keyword%' or army_name like '%$search_keyword%' or position like '%$search_keyword%'";
    
    }
    $res = mysqli_query($conn, $query);
    if (!$res) {
         die('Query Error : ' . mysqli_error());
    }
    ?>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th align=center>아이콘</th>
            <th align=center>대원명</th>
            <th align=center>이름</th>
            <th align=center>포지션</th>
            <th align=center>부대</th>
        </tr>
        </thead>
        <tbody>
        <?
        $row_index = 1;
        while ($row = mysqli_fetch_array($res)) {
        	$img_src = "images/icons/".$row['op_name'].".png";
            echo "<tr>";
            echo "<td align=center><a href='operator_view.php?operator_no={$row['op_no']}'><img src=$img_src></td>";
            echo "<td align=center><a href='operator_view.php?operator_no={$row['op_no']}'>{$row['op_name']}</td>";
            echo "<td align=center>{$row['real_name']}</td>";
            if($row['position'] == "ATTACK")
            	echo "<td align=center><img src= \"images/icons/ATTACK.png\"></td>";
            else if($row['position'] == "DEFEND")
            	echo "<td align=center><img src= \"images/icons/DEFEND.png\"></td>";
            // echo "<td align=center>{$row['position']}</td>";
            echo "<td align=center><a href='army_view.php?army_no={$row['army_no']}'>{$row['army_name']}</td>";
            $row_index++;
        }
        ?>
        </tbody>
    </table>
</div>
<? include("footer.php") ?>
