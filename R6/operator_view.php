<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);

if (array_key_exists("operator_no", $_GET)) {
    $operator_no = $_GET["operator_no"];
    $query = "select * from Operator natural join Ability natural join Army where op_no = $operator_no";
    $res = mysqli_query($conn, $query);
    $operator = mysqli_fetch_assoc($res);
    $query2 = "select gun_no, gun_name from Operator natural join Op_Gun natural join Gun where op_no = $operator_no";
    $res2 = mysqli_query($conn, $query2);
    if (!$operator) {
        msg("대원이 존재하지 않습니다.");
    }
}
?>

<style>
        body {
        	background-color: white;
        }
        .container {
            position: relative;
            background: rgba(255, 255, 255, .9);
        }
</style>

    <div class="container fullwidth">

        <h3>대원 상세보기</h3>
		<?
		$img_src = "images/operators/".$operator['op_name'].".png";
		echo "<p><img src=$img_src align=\"left\"width=\"50%\"></p>";
		?>
		<br>
		<br>
		<br>
        <p>
            <label for="op_name">대원 이름</label>
            <?
            echo " : {$operator['op_name']}";
            ?>
        </p>

        <p>
            <label for="real_name">실제 이름</label>
            <?
            echo " : {$operator['real_name']}";
            ?>
        </p>
        
        <p>
            <label for="army_name">소속 부대</label>
           <?
            echo " : <a href='army_view.php?army_no={$operator['army_no']}'>{$operator['army_name']}</a>";
            ?>
        </p>

        <p>
            <label for="ability_name">대원 능력</label>
            <?
            echo " : {$operator['ability_name']}";
            ?>
        </p>

        <p>
            <label for="ability_info">능력 설명</label>
            <?
            echo " : {$operator['ability_info']}";
            ?>
        </p>
        
        <p>
            <label for="gun_names">사용 총기</label>
            <?
            echo " : <br>";
            while ($row = mysqli_fetch_array($res2)){
            	echo "<a href='gun_view.php?gun_no={$row['gun_no']}'>{$row['gun_name']}</a><br>";
            }
            ?>
        </p>
        
        
		<p>
            <label for="op_info">배경 설명</label>
            <?
            echo " : <br>{$operator['op_info']}";
            ?>
        </p>
        
    </div>