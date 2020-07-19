function pwCheck() {
    var pw = document.modalForm.pw.value;
    var pwc = document.modalForm.pwc.value;
    if (pw == pwc && pw.length > 3) {
        console.log("비밀번호 일치");
        document.getElementById("btn").disabled = false;
        pwCk = 1;
    } else {
        console.log("비밀번호 틀림");
        document.getElementById("btn").disabled = true;
        pwCk = 0;
    }
} //  pwCheck() end

function rePwCheck() {
    document.getElementById("btn").disabled = true;
}
$(document).ready(function(){
$("#member_grade").on("click",function(){
    if($("#member_grade").prop("checked")==true){
        $("#member_grade").val(2);
        var k=$("#member_grade").val();
        console.log(k);
    }else{
        $("#member_grade").val(1);
        var k=$("#member_grade").val();
        console.log(k)
    }
});

});
