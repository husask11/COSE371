<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);

if (array_key_exists("gun_no", $_GET)) {
    $gun_no = $_GET["gun_no"];
    $query = "select * from Gun where gun_no = $gun_no";
    $res = mysqli_query($conn, $query);
    $gun = mysqli_fetch_assoc($res);
    $query2 = "select * from Gun natural join Op_Gun natural join Operator where gun_no = $gun_no";
    $res2 = mysqli_query($conn, $query2);
    if (!$gun) {
        msg("무기가 존재하지 않습니다.");
    }
}
?>


    <div class="container fullwidth">
        <h3>총 상세보기</h3>
		<br>
		<?
		$img_src = "images/guns/".$gun['gun_name'].".jpg";
		echo "<p align=\"center\"><img src=$img_src width=\"50%\"></p>";
		?>
        <p>
            <label for="gun_name">총기명</label>
            <?
            echo " : {$gun['gun_name']}";
            ?>
        </p>

        <p>
            <label for="gun_type">총종류</label>
            <?
            echo " : {$gun['gun_type']}";
            ?>
        </p>
        
        <p>
            <label for="bullets">장탄수</label>
            <?
            echo " : {$gun['bullets']}";
            ?>
        </p>
        
        
        <p>
            <label for="gun_names">사용 대원</label>
            <?
            echo " : <br>";
            while ($row = mysqli_fetch_array($res2)){
            	echo "<a href='operator_view.php?operator_no={$row['op_no']}'>{$row['op_name']}</a><br>";
            }
            ?>
        </p>
    </div>
<? include("footer.php") ?>