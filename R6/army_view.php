<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);

if (array_key_exists("army_no", $_GET)) {
    $army_no = $_GET["army_no"];
    $query = "select * from Army where army_no = $army_no";
    $res = mysqli_query($conn, $query);
    $army = mysqli_fetch_assoc($res);
    $query2 = "select * from Operator natural join Army where army_no = $army_no";
    $res2 = mysqli_query($conn, $query2);
    if (!$army) {
        msg("부대가 존재하지 않습니다.");
    }
}
?>

    <div class="container fullwidth">
        <h3>부대 상세보기</h3>
		<br>
		<?
		$img_src = "images/armys/".$army['army_name'].".png";
		echo "<p align=\"center\"><img src=$img_src width=\"50%\"></p>";
		?>
        <p>
            <label for="army_name">부대명</label>
            <?
            echo " : {$army['army_name']}";
            ?>
        </p>

        <p>
            <label for="country">소속 국가</label>
            <?
            echo " : {$army['country']}";
            ?>
        </p>
        
        <p>
            <label for="army_info">부대 설명</label>
            <?
            echo " : {$army['army_info']}";
            ?>
        </p>
        
        
        <p>
            <label for="gun_names">소속 대원</label>
            <?
            echo " : <br>";
            while ($row = mysqli_fetch_array($res2)){
            	echo "<a href='operator_view.php?operator_no={$row['op_no']}'>{$row['op_name']}</a><br>";
            }
            ?>
        </p>
    </div>
<? include("footer.php") ?>