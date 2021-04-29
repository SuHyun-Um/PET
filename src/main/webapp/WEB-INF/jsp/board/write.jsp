<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
textarea {
	width: 100%;
}

table {
	width: 85%;
	margin-left: auto;
	margin-right: auto;
}

th {
	width: 12%
}

ul {
	display: inline-block;
	list-style-type: none;
	text-align: left;
	vertical-align: top;
}

.ageBtn{
	background-color: transparent !important;
	width: 200px;
	height: 200px;
	border-color: transparent;
}

.ageText{
	 font-size:15px;
	 line-height:16.5px;
	 font-weight:bold;
	 color:#191970;
}
</style>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<script src="${ pageContext.request.contextPath }/resources/js/checkForm.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/diagForm.js"></script>
<script>
function setAge(age){
	$("#check").val(age);
	for (var i = -1; i < 2; i++) {
		getTd(i).css("font-weight", "normal");
	}
	getTd(age).css("font-weight", "bold");
}

function getTd(age){
	let id = age + 2;
	let td = $("#collapseOne > div > table > tbody > tr:nth-child(2) > td:nth-child(" + id + ")");
	return td;
}
</script>
</head>
<body style="background-color:#F8F1EB">

<div class="text-center" style="margin-top:0; padding:0; width:80%; margin-left:24%; display:block; margin-bottom:0;  ">
   <h5
				style=" display: block; width:70%;white-space:pre-line; color: black	; margin-top: 3rem; margin-bottom:2rem; font-weight: 700; font-size: 2.5rem; font-family: 'Noto Sans KR';">새로운 질병을 추가하세요</h5>
  
 </div>
	<div>
		<form method="post"
			action="${ pageContext.request.contextPath }/board" name="diagForm"
			onsubmit="return writeCheckVal()" enctype="multipart/form-data">
			<input type="hidden" name="mid" value="${ loginVO.mid }">
			<div align="center">
				<table>
					<tr>
						<th>병명(제목)</th><td><input type="text" style="width:100%" name="dname" required="required"></td>
					</tr>
					<tr>
						<th>요약:</th><td><textarea name="bsum"></textarea></td>
					</tr>
					<tr>
						<th>원인:</th><td><textarea name="bcause"></textarea></td>
					</tr>
					<tr>
						<th>치료법:</th><td><textarea name="btreat"></textarea></td>
					</tr>
					<tr>
						<th>관리법:</th><td><textarea name="bcare"></textarea></td>
					</tr>
					<tr>
						<th>이미지:</th><td><input type="file" name="uploadFile"></td>
					</tr>
				</table>
			</div>
			<div style="margin-left: 100px; margin-right: 100px; margin-top: 10px; text-align: center;">
				<div class="accordion" id="accordionExample">
					<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link" type="button"
										data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
											질병에 취약한 나이를 입력하세요!
										</button>
								</h2>
							</div>
							<div id="collapseOne" class="collapse show"
								aria-labelledby="headingOne" data-parent="#accordionExample">
								<div class="card-body">
									<table>
										<tr>
											<td>
												<button class="ageBtn" type="button" onclick=setAge(-1)>
													<img src="${ pageContext.request.contextPath }/resources/images/4.png">
												</button>
											</td>
											<td>
												<button class="ageBtn" type="button" onclick=setAge(0)>
													<img src="${ pageContext.request.contextPath }/resources/images/5.png">
												</button>
											</td>
											<td>
												<button class="ageBtn" type="button" onclick=setAge(1)>
													<img src="${ pageContext.request.contextPath }/resources/images/6.png">
												</button>
											</td>
										</tr>
										<tr>
											<td>0~1세의 어린 강아지</td>
											<td>해당없음</td>
											<td>7세 이상의 노견 강아지</td>
										</tr>
									</table>
									<input type="hidden" name="dage" id="check">
									</div>
							</div>
						</div>
					<div class="card">
						<div class="card-header" id="headingTwo">
							<h2 class="mb-0">
								<button class="btn btn-link" type="button"
									data-toggle="collapse" data-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">질병에 취약한 종을
									입력하세요!</button>
							</h2>
						</div>
						<div id="collapseTwo" class="collapse"
							aria-labelledby="headingTwo" data-parent="#accordionExample">
							<div class="card-body" align="left">
								<ul>
									<h3>ㄱ</h3>
									<li><input type="checkbox" name="spcodeList" value="great">그레이트
										데인</li>
								</ul>
								<ul>
									<h3>ㄷ</h3>
									<li><input type="checkbox" name="spcodeList" value="dachs">닥스훈트</li>
									<li><input type="checkbox" name="spcodeList" value="dalma">달마시안</li>
									<li><input type="checkbox" name="spcodeList" value="dober">도베르만핀셔</li>
								</ul>
								<ul>
									<h3>ㄹ</h3>
									<li><input type="checkbox" name="spcodeList" value="lassa">라사압소</li>
									<li><input type="checkbox" name="spcodeList" value="rott">로트와일러</li>
									<li><input type="checkbox" name="spcodeList" value="retri">리트리버</li>
								</ul>
								<ul>
									<h3>ㅁ</h3>
									<li><input type="checkbox" name="spcodeList" value="masti">마스티프</li>
									<li><input type="checkbox" name="spcodeList" value="malte">말티즈</li>
								</ul>
								<ul>
									<h3>ㅂ</h3>
									<li><input type="checkbox" name="spcodeList" value="bhound">바셋
										하운드</li>
									<li><input type="checkbox" name="spcodeList" value="bteri">보스턴테리어</li>
									<li><input type="checkbox" name="spcodeList" value="bull">불독</li>
									<li><input type="checkbox" name="spcodeList" value="buteri">불테리어</li>
									<li><input type="checkbox" name="spcodeList" value="britt">브리트니</li>
									<li><input type="checkbox" name="spcodeList" value="brteri">블랙러시안테리어</li>
									<li><input type="checkbox" name="spcodeList" value="beagle">비글</li>
									<li><input type="checkbox" name="spcodeList" value="bichon">비숑프리제</li>
								</ul>
								<ul>
									<h3>ㅅ</h3>
									<li><input type="checkbox" name="spcodeList" value="samo">사모예드</li>
									<li><input type="checkbox" name="spcodeList" value="shar">샤페이</li>
									<li><input type="checkbox" name="spcodeList" value="stber">세인트버나드</li>
									<li><input type="checkbox" name="spcodeList" value="schn">슈나우저</li>
									<li><input type="checkbox" name="spcodeList" value="husky">시베리안
										허스키</li>
									<li><input type="checkbox" name="spcodeList" value="shitzu">시츄</li>
								</ul>
								<ul>
									<h3>ㅇ</h3>
									<li><input type="checkbox" name="spcodeList" value="akita">아키타</li>
									<li><input type="checkbox" name="spcodeList" value="amalam">알래스칸맬러뮤트</li>
									<li><input type="checkbox" name="spcodeList" value="oeshee">올드
										잉글리쉬 쉽독</li>
									<li><input type="checkbox" name="spcodeList" value="weima">와이마라너</li>
									<li><input type="checkbox" name="spcodeList" value="yteri">요크셔테리어</li>
									<li><input type="checkbox" name="spcodeList" value="welsh">웰시코기</li>
									<li><input type="checkbox" name="spcodeList" value="esspan">잉글리쉬
										스프링거 스파니엘</li>
									<li><input type="checkbox" name="spcodeList" value="esett">잉글리쉬
										세터</li>
								</ul>
								<ul>
									<h3>ㅈ</h3>
									<li><input type="checkbox" name="spcodeList" value="schaf">저먼셰퍼드</li>
									<li><input type="checkbox" name="spcodeList" value="gpoint">저먼숏헤어포인터</li>
								</ul>

								<ul>
									<h3>ㅊ</h3>
									<li><input type="checkbox" name="spcodeList" value="chihua">치와와</li>
								</ul>
								<ul>
									<h3>ㅋ</h3>
									<li><input type="checkbox" name="spcodeList" value="cteri">케언테리어</li>
									<li><input type="checkbox" name="spcodeList" value="coca">코카스파니엘</li>
								</ul>
								<ul>
									<h3>ㅍ</h3>
									<li><input type="checkbox" name="spcodeList" value="pug">퍼그</li>
									<li><input type="checkbox" name="spcodeList" value="peki">페키니즈</li>
									<li><input type="checkbox" name="spcodeList" value="pome">포메라니안</li>
									<li><input type="checkbox" name="spcodeList" value="point">포인터</li>
									<li><input type="checkbox" name="spcodeList" value="mpoo">(미니어쳐)푸들</li>
									<li><input type="checkbox" name="spcodeList" value="tpoo">(토이)푸들</li>
									<li><input type="checkbox" name="spcodeList" value="pitbull">핏불</li>
								</ul>
								<ul>
									<h3>ㅎ</h3>
									<li><input type="checkbox" name="spcodeList" value="hava">하바네즈</li>
								</ul>
								<ul>
									<h3>기타</h3>
									<li><input type="checkbox" name="spcodeList" value="etc">해당없음</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header" id="headingThree">
							<h2 class="mb-0">
								<button class="btn btn-link collapsed" type="button"
									data-toggle="collapse" data-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">질병의 증상을 체크해주세요!</button>
							</h2>
						</div>
						<div id="collapseThree" class="collapse"
							aria-labelledby="headingThree" data-parent="#accordionExample">
							<br>
							<h2>부위별</h2>
							<br>
							<table style="margin-left: auto; margin-right: auto;">
								<tr>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary sym"
												data-toggle="modal" data-target="#mouth"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">입</button>

											<!-- Modal -->
											<div class="modal fade" id="mouth" tabindex="-1"
												role="dialog" aria-labelledby="exampleModalCenterTitle"
												aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">입</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('mouth', 4)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth1" value="입악취">악취
															</p>
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth2" value="입침">침많이흘림
															</p>
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth3" value="입잇몸붉음">잇몸이 붉게 부음
															</p>
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth4" value="입치석증가">치석 증가
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('mouth', 4)">Save
																changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#ear"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">귀</button>

											<!-- Modal -->
											<div class="modal fade" id="ear" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">귀</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('ear', 2)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="ear"
																	id="ear1" value="귀악취">악취
															</p>
															<p>
																<input type="checkbox" name="syname" class="ear"
																	id="ear2" value="귀지">귀지
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('ear', 2)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#skin"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">피부</button>

											<!-- Modal -->
											<div class="modal fade" id="skin" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">피부</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('skin', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="skin"
																	id="skin1" value="피부몸긁기">몸긁기
															</p>
															<p>
																<input type="checkbox" name="syname" class="skin"
																	id="skin2" value="피부핥기">핥기
															</p>
															<p>
																<input type="checkbox" name="syname" class="skin"
																	id="skin3" value="피부습진">습진/반점
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('skin', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#eye"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">눈</button>

											<!-- Modal -->
											<div class="modal fade" id="eye" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">눈</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('eye', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="eye"
																	id="eye1" value="눈물많음">눈물많음
															</p>
															<p>
																<input type="checkbox" name="syname" class="eye"
																	id="eye2" value="눈불투명">불투명
															</p>
															<p>
																<input type="checkbox" name="syname" class="eye"
																	id="eye3" value="눈시력저하">시력저하
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('eye', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#nose"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">코</button>

											<!-- Modal -->
											<div class="modal fade" id="nose" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">코</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('nose', 1)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="nose"
																	id="nose1" value="콧물">콧물많음
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('nose', 1)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>

									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#hair"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">털</button>

											<!-- Modal -->
											<div class="modal fade" id="hair" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">털</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('hair', 2)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="hair"
																	id="hair1" value="털탈모">탈모
															</p>
															<p>
																<input type="checkbox" name="syname" class="hair"
																	id="hair2" value="털모질악화">모질악화
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('hair', 2)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>


									</th>

									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#foot"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">발톱</button>

											<!-- Modal -->
											<div class="modal fade" id="foot" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">발톱</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('foot', 1)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="foot"
																	id="foot1" value="발톱이상">발톱이상
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('foot', 1)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
								</tr>
							</table>
							<br> <br>
							<hr>
							<h2>변 상태</h2>
							<br>
							<table>
								<tr>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#pee"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">소변</button>

											<!-- Modal -->
											<div class="modal fade" id="pee" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">소변</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('pee', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="pee"
																	id="pee1" value="무뇨">감소/무뇨
															</p>
															<p>
																<input type="checkbox" name="syname" class="pee"
																	id="pee2" value="다뇨">다뇨
															</p>
															<p>
																<input type="checkbox" name="syname" class="pee"
																	id="pee3" value="혈뇨">혈뇨
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('pee', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>

									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#poo"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">대변</button>

											<!-- Modal -->
											<div class="modal fade" id="poo" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">대변</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('poo', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="poo"
																	id="poo1" value="변설사">설사
															</p>
															<p>
																<input type="checkbox" name="syname" class="poo"
																	id="poo2" value="변검은색">검은색 변
															</p>
															<p>
																<input type="checkbox" name="syname" class="poo"
																	id="poo3" value="변비">변비
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('poo', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
								</tr>
							</table>
							<br>
							<hr>
							<h2>생활</h2>
							<br>
							<table style="font-size: 20px;">
								<tr style="color: #332621; font-size: 25px;">
									<th>수면</th>
									<th>음수량</th>
									<th>호흡</th>
									<th>공격성</th>
									<th>무기력</th>
									<th>식욕</th>
									<th>걸음</th>
									<th>무릎</th>
								</tr>
								<tr>
									<th><input type="checkbox" name="syname" value="수면증가">증가
										<input type="checkbox" name="syname" value="수면감소">감소</th>
									<th><input type="checkbox" name="syname" value="음수량증가">증가
										<input type="checkbox" name="syname" value="음수량감소">감소</th>
									<th><input type="checkbox" name="syname" value="과호흡">과호흡
										<input type="checkbox" name="syname" value="호흡곤란">호흡곤란</th>
									<th><input type="checkbox" name="syname" value="공격성증가">증가
									</th>
									<th><input type="checkbox" name="syname" value="무기력">무기력</th>
									<th><input type="checkbox" name="syname" value="식욕감소">감소</th>
									<th><input type="checkbox" name="syname" value="걸음이상">걸음이상</th>
									<th><input type="checkbox" name="syname" value="무릎소리">무릎에서
										소리가 남</th>

								</tr>
							</table>
							<br>
							<hr>
							<h2>상태</h2>
							<br>

							<table style="font-size: 20px;">
								<tr>
									<th><input type="checkbox" name="syname" value="창백">창백(눈,
										귀, 잇몸 등)</th>
									<th><input type="checkbox" name="syname" value="종양">종양</th>
									<th><input type="checkbox" name="syname" value="열">열</th>
									<th><input type="checkbox" name="syname" value="구토">구토</th>
									<th><input type="checkbox" name="syname" value="체중감소">체중감소</th>
									<th><input type="checkbox" name="syname" value="기침">기침</th>
									<th><input type="checkbox" name="syname" value="발작">발작</th>
									<th><input type="checkbox" name="syname" value="복부팽만">복부팽만</th>
									<th><input type="checkbox" name="syname" value="경련">경련</th>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div align="center">
			<button type="submit" class="btn btn-outline-dark">작성</button>
			</div>
		</form>
	</div>

</body>

</html>