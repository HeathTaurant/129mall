function DaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                //document.getElementById("Addr1").value = extraAddr;
            
            } else {
               // document.getElementById("Addr1").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("member_postcode").value = data.zonecode;
            document.getElementById("member_addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("member_addr2").focus();
        }
    }).open({
        popupName: 'postcodePopup'
    });
}

function joinForm_check(){
    var member_id = document.getElementById("member_id");
    var member_password = document.getElementById("member_password");
    var member_password_chk = document.getElementById("member_password_chk");
    var member_name = document.getElementById("member_name");
    var birth_year = document.getElementById("memberBirth_year");
    var birth_month = document.getElementById("memberBirth_month");
    var birth_day = document.getElementById("memberBirth_day");
    var member_postcode = document.getElementById("member_postcode");
    var member_addr1 = document.getElementById("member_addr1");
    var member_addr2 = document.getElementById("member_addr2");
    var member_num2 = document.getElementById("member_num2");
    var member_num3 = document.getElementById("member_num3");
    var member_email = document.getElementById("member_email");
    var chk_All = document.getElementById("chk_All");
    var chk_1 = document.getElementById("chk_1");
    var chk_2 = document.getElementById("chk_2");
    var idDuplication = document.getElementById("idDuplication");
    
    if(idDuplication.value != "idCheck"){
    	alert("아이디 중복체크를 해주세요");
    	return false;
    }
    if(!member_id.value){
        alert("아이디를 입력하세요");
        member_id.focus();
        return false;
    }

    if(!member_password.value){
        alert("비밀번호를 입력하세요");
        member_password.focus();
        return false;
    }

    if(!member_password_chk.value){
        alert("비밀번호확인을 입력하세요");
        member_password_chk.focus();
        return false;
    }

    if(member_password.value != member_password_chk.value){
        alert("비밀번호가 일치하지 않습니다");
        member_password_chk.focus();
        return false;
    }
    
    if(!member_name.value){
        alert("이름을 입력하세요");
        member_name.focus();
        return false;
    }
    
    if(!birth_year.value || !birth_month.value || !birth_day.value){
        alert("생일을 입력하세요");
        memberBirth_year.focus();
        return false;
    }
    if(isNaN(birth_month.value) && isNaN(birth_day.value)){
    	alert("생일은 숫자만 입력가능합니다.");
    	return false;
    }
    
    if(!(parseInt(birth_month.value)<=12 && parseInt(birth_month.value)>=1) && !(parseInt(birth_day.value)<=31 && parseInt(birth_day.value)>=1)){
    	  alert("생일을 올바르게 입력하세요");
          memberBirth_year.focus();
          return false;
    }
    
    if(!member_postcode.value || !member_addr1.value || !member_addr2.value){
    	alert("주소를 입력하세요");
    	member_postcode.focus();
    	return false;
    }
    
    if(!member_num2.value || !member_num3.value){
        alert("핸드폰번호를 입력하세요");
        member_num2.focus();
        return false;
    }
    if(!member_email.value){
        alert("이메일을 입력하세요");
        member_email.focus();
        return false;
    }

    if(!chk_All.checked){
        alert("약관동의를 입력하세요");
        member_email.focus();
        return false;
    }

        
    var pw = member_password.value;
    var num = pw.search(/[0-9]/g);
    var eng = pw.search(/[a-z]/ig);
    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

    if(pw.length < 8 || pw.length > 16){
    alert("8자리 ~ 16자리 이내로 입력해주세요.");
    member_password.focus();
    return false;
    }else if(pw.search(/\s/) != -1){
    alert("비밀번호는 공백 없이 입력해주세요.");
    member_password.focus();
    return false;
    }else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
    alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
    member_password.focus();
    return false;
    }else {
        console.log("통과");	 
    }

    joinForm.submit(); //form 식별을 위한 name 
}


function checkSelectAll(){
    const checkboxes 
    = document.querySelectorAll('input[name="agreements"]'); //체크박스
    const checked 
    = document.querySelectorAll('input[name="agreements"]:checked'); //선택된 체크박스
    const selectAll 
    = document.querySelector('input[name="chk_All"]'); //

    if(checkboxes.length === checked.length){
      selectAll.checked = true;
    }else{
      selectAll.checked = false;
    }
  }

function selectAll(selectAll){
   const checkboxes = document.getElementsByName('agreements');
   checkboxes.forEach((checkbox) => {
   checkbox.checked = selectAll.checked
   })
}

//아이디 중복체크 화면 열기
function openIdChk(){
	window.name = "parentForm";
	//window.open(url, name, specs, replace);
	window.open("/Join/IdCheckForm","chkForm","width=500, height=300, resizable=no, scrollbars =no");
	//스프링의 경우 컨트롤러에 페이지에대한 mvc설정해주고 리턴해주면 뜸
	//컨트롤러 접근 없이 사용 가능한데 이경우는 src/main/webapp/WEB-INF/view/page.jsp형태인데 이경우는 spring에서 WEB-INF/view에서 찾도록 한 것인데,그 부분을 수정하여 사용할 수는 있음.
	//헷갈리지않도록 그냥 컨트롤러에서 하자...^^
}

//다시 아이디 창이 새로운 아이디를 입력했을때 다시 중복체크
function inputIdChk(){
	document.joinForm.idDuplication.value="idUncheck";
}
    
    