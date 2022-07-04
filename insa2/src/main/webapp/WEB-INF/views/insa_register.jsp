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
		if(frm.emp_no.value===""){
			alert("사원번호를 입력하세요.");
			frm.emp_no.focus();
			return;
		}else if(frm.dept_name.value===""){
			alert("부서명을 입력하세요.");
			frm.dept_name.focus();
			return;
		}else if(frm.jik_name.value===""){
			alert("직급을 입력하세요.");
			frm.jik_name.focus();
			return;
		}else if(frm.salinfo_name.value===""){
			alert("사원명을 입력하세요.");
			frm.salinfo_name.focus();
			return;
		}else if(frm.myinfo_gen.value===""){
			alert("성별을 입력하세요.");
			frm.myinfo_gen.focus();
			return;
		}else if(frm.empinfo_status.value===""){
			alert("고용형태를 입력하세요.");
			frm.empinfo_status.focus();
			return;
		}else if(frm.empinfo_hiredate.value===""){
			alert("입사일을 입력하세요.");
			frm.empinfo_hiredate.focus();
			return;
		}else if(frm.empinfo_work.value===""){
			alert("재직구분을 입력하세요.");
			frm.empinfo_work.focus();
			return;
		}else if(frm.salinfo_date.value===""){
			alert("급여지급일을 입력하세요.");
			frm.salinfo_date.focus();
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

			<h1 class="h3 mb-3">인사등록</h1>

			
			<div class="row">
				<div class="col-md-12 col-xl-12">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="account"
							role="tabpanel">
							<div class="card">
								<div class="card-body">
									<form action="insa_register" method="get" name="frm">
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputEmail4">사원번호</label> <input
													type="text" class="form-control" name="emp_no"
													placeholder="사원번호를 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputEmail4">부서명</label> <input
													type="text" class="form-control" name="dept_name"
													placeholder="부서명을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputEmail4">직급</label> <input
													type="text" class="form-control" name="jik_name"
													placeholder="직급을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputEmail4">사원명</label> <input
													type="text" class="form-control" name="salinfo_name"
													placeholder="사원명을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputEmail4">성별</label> <input
													type="text" class="form-control" name="myinfo_gen"
													placeholder="성별을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputAddress">고용형태</label> <input
													type="text" class="form-control" name="empinfo_status"
													placeholder="고용형태를 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputAddress">입사일</label> <input
													type="text" class="form-control" name="empinfo_hiredate"
													placeholder="입사일을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputAddress2">퇴사일</label> <input
													type="text" class="form-control" name="empinfo_firedate"
													placeholder="퇴사일 입력 없이 등록 가능합니다.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputAddress">재직구분</label> <input
													type="text" class="form-control" name="empinfo_work"
													placeholder="재직구분을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputAddress2">급여지급일</label> <input
													type="text" class="form-control" name="salinfo_date"
													placeholder="급여지급일을 입력하세요.">
											</div>
										</div>
											<!-- empinfo : 직급코드 -->
											<input type="hidden" class="form-control" name="jik_no" value="0" placeholder="">
											<!-- empinfo : 재직기간 -->
											<input type="hidden" class="form-control" name="empinfo_year" value="0" placeholder="">
											<!-- empinfo : 퇴사일 -->
											<input type="hidden" class="form-control" name="empinfo_firedate" value="0" placeholder="">
											<!-- empinfo : 비밀번호 -->
											<input type="hidden" class="form-control" name="empinfo_pass" value="1234" placeholder="">
											
											<!-- salinfo : 급여이체은행 -->
											<input type="hidden" class="form-control" name="salinfo_bank" value="0" placeholder="">
											<!-- salinfo : 계좌번호 -->
											<input type="hidden" class="form-control" name="salinfo_banknum" value="0" placeholder="">
											<!-- salinfo : 차인지급액 -->
											<input type="hidden" class="form-control" name="salinfo_salary" value="0" placeholder="">
											<!-- salinfo : 최근3개월급여 -->
											<input type="hidden" class="form-control" name="salinfo_3month" value="0" placeholder="">
											
											<!-- myinfo : 주소 -->
											<input type="hidden" class="form-control" name="myinfo_addr" value="0" placeholder="">
											<!-- myinfo : 이메일 -->
											<input type="hidden" class="form-control" name="myinfo_email" value="0" placeholder="">
											<!-- myinfo : 전화번호 -->
											<input type="hidden" class="form-control" name="myinfo_tel" value="0" placeholder="">
											<!-- myinfo : 주민번호 -->
											<input type="hidden" class="form-control" name="myinfo_number" value="0" placeholder="">
											<!-- myinfo : 건강보험번호 -->
											<input type="hidden" class="form-control" name="myinfo_helnum" value="0" placeholder="">
											
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