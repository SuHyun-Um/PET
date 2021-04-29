/**
 * 게시판, 회원, 로그인 등 입력과 관련된 함수 라이브러리
 */

function isNull(obj, msg) {
	if (!obj.value) {
		alert(msg);
		return true;
	} else return false;
	
}

function isNullCheckbox(obj, msg){
	obj.forEach(function(element){
		if (element.checked) {
			return false;
		}
	});
	return true;
}