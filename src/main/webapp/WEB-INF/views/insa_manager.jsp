<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
<meta name="author" content="AdminKit">
<meta name="keywords"
	content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

<link rel="shortcut icon" href="./resources/img/icons/icon-48x48.png" />

<title>인적기본사항</title>

<link href="./resources/css/app.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	window.onload = function(){
		let btnIns = document.getElementById("btnIns");
		btnIns.addEventListener('click',checkData);
	}
	function checkData(){
		if(frm.myinfo_number.value===""){
			alert("주민번호를 입력하세요.");
			frm.myinfo_number.focus();
			return;
		}else if(frm.myinfo_email.value===""){
			alert("이메일을 입력하세요.");
			frm.myinfo_email.focus();
			return;
		}else if(frm.myinfo_tel.value===""){
			alert("전화번호를 입력하세요.");
			frm.myinfo_tel.focus();
			return;
		}else if(frm.myinfo_addr.value===""){
			alert("주소를 입력하세요.");
			frm.myinfo_addr.focus();
			return;
		}else if(frm.myinfo_helnum.value===""){
			alert("건강보험번호를 입력하세요.");
			frm.myinfo_helnum.focus();
			return;
		}else if(frm.salinfo_bank.value===""){
			alert("급여이체은행을 입력하세요.");
			frm.salinfo_bank.focus();
			return;
		}else if(frm.salinfo_banknum.value===""){
			alert("계좌번호를 입력하세요.");
			frm.salinfo_banknum.focus();
			return;
		}else if(frm.empinfo_pass.value===""){
			alert("비밀번호를 입력하세요.");
			frm.empinfo_pass.focus();
			return;
		}else{
			alert("저장");
			//frm.submit();
		}
		
		/* else if(frm.salinfo_name.value===""){
			alert("예금주를 입력하세요.");
			frm.salinfo_name.focus();
			return;
		} */
		
	}
</script>
</head>

<body>
	<jsp:include page="top.jsp" />

	<main class="content">
		<div class="container-fluid p-0">

			<h1 class="h3 mb-3">나의인사관리</h1>

			
			<div class="row">
				<div class="col-md-12 col-xl-12">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="account"
							role="tabpanel">
							<div class="card">
								<div class="card-body">
									<form action="insa_manager" method="post" name="frm">
										<div class="row">
											<div class="mb-3 col-md-2">
												<div class="card-body text-center">
													<img alt="Charles Hall"
														src="./resources/img/avatars/images.png"
														class="rounded-circle img-responsive mt-2" width="128"
														height="128" />
													<div class="mt-2">
														<span class="btn btn-primary"><i
															class="fas fa-upload"></i> Upload</span>
													</div>
													<div class="text-muted mb-2">사진 업로드.</div>
												</div>
											</div>
											<div class="mb-3 col-md-3">
												<label class="form-label" for="">사원번호</label> <input
													type="text" class="form-control" name="emp_no"
													placeholder="" value="50"><br>
													<label class="form-label" for="">사원명</label> <input
													type="text" class="form-control" name="salinfo_name"
													placeholder="" value="홍길동"><br>
													<label class="form-label" for="">입사일</label> <input
													type="text" class="form-control" name="empinfo_hiredate"
													placeholder="" value="2021-01-25">
											</div>
											<div class="mb-3 col-md-4">
												<label class="form-label" for="">부서명</label> <input
													type="text" class="form-control" name="dept_name"
													placeholder="" value="총무부"><br>
													
													<label class="form-label" for="">성별</label> <input
													type="text" class="form-control" name="myinfo_gen"
													placeholder="" value="남">
											</div>
											<div class="mb-3 col-md-3">
													<label class="form-label" for="">직급</label> <input
													type="text" class="form-control" name="jik_name"
													placeholder="" value="사원"><br>
													
													<label class="form-label" for="">고용형태</label> <input
													type="text" class="form-control" name="empinfo_status"
													placeholder=""  value="정규직">
													<!-- 퇴사일 -->
													<input type="hidden" class="form-control" name="empinfo_firedate" placeholder=""><br>
													<!-- 재직구분 -->
													<input type="hidden" class="form-control" name="empinfo_work" placeholder=""><br>
													<!-- 급여지급일 -->
													<input type="hidden" class="form-control" name="salinfo_date" placeholder=""><br>
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">주민번호</label> <input
													type="text" class="form-control" name="myinfo_number"
													placeholder="주민번호를 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">이메일</label> <input
													type="email" class="form-control" name="myinfo_email"
													placeholder="이메일을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">전화번호</label> <input
													type="text" class="form-control" name="myinfo_tel"
													placeholder="전화번호를 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">주소</label> <input
													type="text" class="form-control" name="myinfo_addr"
													placeholder="주소를 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">건강보험번호</label> <input
													type="text" class="form-control" name="myinfo_helnum"
													placeholder="건강보험번호를 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">급여이체은행</label> <input
													type="text" class="form-control" name="salinfo_bank"
													placeholder="급여이체은행을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">예금주</label> <input
													type="text" class="form-control" name="salinfo_name"
													placeholder="예금주를 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">계좌번호</label> <input
													type="text" class="form-control" name="salinfo_banknum"
													placeholder="계좌번호를 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="">비밀번호</label> <input
													type="text" class="form-control" name="empinfo_pass"
													placeholder="비밀번호를 입력하세요.">
											</div>
											<!-- <div class="mb-3 col-md-6">
												<label class="form-label" for="inputAddress2">비밀번호확인</label> <input
													type="text" class="form-control" name="empinfo_pass_check"
													placeholder="비밀번호 확인여부로 동일하게 입력하세요.">
											</div> -->
										</div>
										<button type="button" id="btnIns" class="btn btn-primary">등록하기</button>
									</form>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>
	</main>

	<jsp:include page="footer.jsp" />
	</div>
	</div>

	<script src="./resources/js/app.js"></script>

</body>

</html>