/**
 *  종 선택, 증상 선택과 관련된 라이브러리
 */

var checklist = new Array;
	
function isCheckedById(id, i){
	var j, checked;
	
	var index = -1;
	for(j=1; j<=i; j++){
		checked = $("#" + id + j).prop("checked");
		
		if(checked== true){
			index = checklist.indexOf(id+j);
			if(index==-1)
				checklist.push(id + j);
			checked=0;
			index=-1;
		}
		else{
			index = checklist.indexOf(id+j);
			if(index!=-1){
				checklist.splice(index, 1);
			}
			index=-1;
		}
		
	}
	$("#"+id).modal('hide');
}

function closeCheck(id, i){
	var j
	var index=-1;
	for(j=1; j<=i; j++){
		index = checklist.indexOf(id+j);
		checked = $("#" + id + j).prop("checked");
		if(index==-1 && checked==true)
			$("input:checkbox[id='"+id+j+"']").prop("checked", false);
		else if(index!=-1 && checked==false)
			$("input:checkbox[id='"+id+j+"']").prop("checked", true);
	}
}

function checkVal() {
	let form = document.diagForm;
	if (isNull(form.dage, "나이를 입력하세요.")){
		return false;
	}
	if (isNull(form.spcode, "종을 입력하세요.")){
		return false;
	}
	if(!$("input:checkbox[name='syname']").is(":checked")){
		alert("증상을 입력하세요.");
		return false;
	}
	else
		return true;
}

function writeCheckVal() {
	let form = document.diagForm;
	if (isNull(form.dage, "나이를 입력하세요.")){
		return false;
	}
	if (!$("input:checkbox[name='spcodeList']").is(":checked")){
		alert("종을 입력하세요.")
		return false;
	}
	if(!$("input:checkbox[name='syname']").is(":checked")){
		alert("증상을 입력하세요.");
		return false;
	}
	else
		return true;
}