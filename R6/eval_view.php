<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);

if (array_key_exists("eval_no", $_GET)) {
    $eval_no = $_GET["eval_no"];
    $query = "select * from Evaluation natural join Gun natural join Operator where eval_no = $eval_no";
    $res = mysqli_query($conn, $query);
    $eval = mysqli_fetch_assoc($res);
    if (!$eval) {
        msg("평가가 존재하지 않습니다.");
    }
}
?>



    <div class="container fullwidth">

        <h3>평가 상세보기</h3>
        
        <p>
            <label for="title">제목</label>
            <input readonly type="text" id="title" name="title" value="<?= $eval['title'] ?>"/>
        </p>

        <p>
            <label for="op_name">대원 이름</label>
            <input readonly type="text" id="op_name" name="op_name" value="<?= $eval['op_name'] ?>"/>
        </p>

        <p>
            <label for="gun_name">무기 이름</label>
            <input readonly type="text" id="gun_name" name="gun_name" value="<?= $eval['gun_name'] ?>"/>
        </p>
        <p>
            <label for="eval_text">평가내용</label>
            <textarea readonly id="eval_text" name="eval_text" rows="25"><?= $eval['eval_text'] ?></textarea>
        </p>
        
        <p align="center" width='17%'>
            <a href='eval_form.php?eval_no=<?= $eval['eval_no'] ?>' <button class='button primary small'>수정</button></a>
            <button onclick='javascript:deleteConfirm(<?=$eval['eval_no']?>)' class='button danger small'>삭제</button>
        </p>
    </div>
    <script>
        function deleteConfirm(eval_no) {
            if (confirm("정말 삭제하시겠습니까?") == true){    //확인
                window.location = "eval_delete.php?eval_no=" + eval_no;
            }else{   //취소
                return;
            }
        }
    </script>
<? include("footer.php") ?>