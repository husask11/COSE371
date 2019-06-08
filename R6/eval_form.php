<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);
$mode = "입력";
$action = "eval_insert.php";
$default = '-1';

if (array_key_exists("eval_no", $_GET)) {
    $eval_no = $_GET["eval_no"];
    $query =  "select * from Evaluation natural join Gun where eval_no = $eval_no";
    $res = mysqli_query($conn, $query);
    $eval = mysqli_fetch_array($res);
    if(!$eval) {
        msg("평가가 존재하지 않습니다.");
    }
    $default = $eval['gun_no'];
    $mode = "수정";
    $action = "eval_modify.php";
    $query2 = "select * from Gun natural join Op_Gun where op_no = ".$eval['op_no'];
    $res2 = mysqli_query($conn, $query2);
}

$Operators = array();
$query = "select * from Operator order by op_name";
$res = mysqli_query($conn, $query);
while($row = mysqli_fetch_array($res)) {
    $Operators[$row['op_no']] = $row['op_name'];
}
?>



    <div class="container">
        <form name="eval_form" action="<?=$action?>" method="post" class="fullwidth">
            <input type="hidden" name="eval_no" value="<?=$eval['eval_no']?>"/>
            <h3>평가 <?=$mode?></h3><p>
            <p>
                <label for="title">제목 (256자 이내)</label>
                <input type="text" placeholder="제목 입력" id="title" name="title" value="<?=$eval['title']?>"/>
            </p>
            <p>
                <label for="op_no">대원</label>
                <select name="op_no" id="op_no">
                    <option value="-1">선택해 주십시오.</option>
                    <?
                        foreach($Operators as $id => $name) {
                            if($id == $eval['op_no']){
                                echo "<option value='{$id}' selected>{$name}</option>";
                            } else {
                                echo "<option value='{$id}'>{$name}</option>";
                            }
                        }
                    ?>
                </select>
            </p>
            <!--대원에 맞는 무기만 나올 수 있도록 설정할 수 있으면 좋겠음..-->
            <p>
                <label for="gun_no">무기</label>
                <select name="gun_no" id="gun_no">
                    <?
                    if($default == "-1"){
                    	echo '<option value="">선택해 주십시오.</option>';
                    } else {
                    	echo "<option value='{$eval['gun_no']}' selected>{$eval['gun_name']}</option>";
                    	while ($row = mysqli_fetch_array($res2))
                    		if($row['gun_no'] != $default)
                    		echo "<option value='{$row['gun_no']}'>{$row['gun_name']}</option>";
                    }
                    ?>
                </select>
            </p>
            <p>
                <label for="eval_text">평가내용 (1000자 이내)</label>
                <textarea placeholder="평가 내용 입력" id="eval_text" name="eval_text" rows="20"><?=$eval['eval_text']?></textarea>
            </p>

            <p align="center"><button class="button primary large" onclick="javascript:return validate();"><?=$mode?></button></p>
            
			<script src ="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<script type='text/javascript'>
			$(document).ready(function(){
				$('#op_no').on('change', function(){
					var operation_no = $(this).val();
					$.ajax({
						type:'POST',
						url: 'fetch_gun.php',
						data: 'op_no='+operation_no,
						success:function(html){
							$('#gun_no').html(html);
						}
					})
				})
			});
			</script>
            <script>
                function validate() {
                	if(document.getElementById("title").value == "") {
                        alert ("제목을 입력해 주십시오"); return false;
                    }
                    if(document.getElementById("title").value.length >256){
                    	alert ("제목이 너무 깁니다."); return false;
                    }
                    if(document.getElementById("op_no").value == "-1") {
                        alert ("대원을 선택해 주십시오"); return false;
                    }
                    if(document.getElementById("gun_no").value == "") {
                        alert ("무기을 선택해 주십시오"); return false;
                    }
                    if(document.getElementById("eval_text").value == "") {
                        alert ("평가 내용을 입력해 주십시오"); return false;
                    }
                    if(document.getElementById("eval_text").value.length > 1000){
                    	alert ("평가 내용이 너무 깁니다."); return false;
                    }
                    return true;
                }
            </script>

        </form>
    </div>
<? include("footer.php") ?>