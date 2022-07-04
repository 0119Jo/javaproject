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

<title>Invoice | AdminKit Demo</title>

<link href="./resources/css/app.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("input.num_only")
				.on(
						"keyup",
						function() {
							var cnt = $("input.num_sum").length;

							for (var i = 1; i < cnt; i++) {
								var sum = parseInt($(this).val() || 0);
								sum++;
							}

							var sal = parseInt($(
									"input:text[name=wage_statement_sal]")
									.val() || 0); // input 값을 가져오며 계산하지만 값이 없을경우 0이 대입된다  뒷부분에 ( || 0 ) 없을경우 합계에 오류가 생겨 NaN 값이 떨어진다
							var jikpay = parseInt($(
									"input:text[name=wage_statement_jikpay]")
									.val() || 0);
							var overpay = parseInt($(
									"input:text[name=wage_statement_overpay]")
									.val() || 0);
							var specialpay = parseInt($(
									"input:text[name=wage_statement_specialpay]")
									.val() || 0);
							var etcpay = parseInt($(
									"input:text[name=wage_statement_etcpay]")
									.val() || 0);
							var bonus = parseInt($(
									"input:text[name=wage_statement_bonus]")
									.val() || 0);
							var meal = parseInt($(
									"input:text[name=wage_statement_meal]")
									.val() || 0);
							var drive = parseInt($(
									"input:text[name=wage_statement_drive]")
									.val() || 0);

							var taxtarget = sal + jikpay + overpay + specialpay
									+ etcpay + bonus;
							$("input:text[name=wage_statement_taxtarget]").val(
									taxtarget);
							var psum = taxtarget + meal + drive;
							$("input:text[name=wage_statement_psum]").val(psum);
							var nation = Math.floor(taxtarget * 0.045, -1);
							$("input:text[name=wage_statement_nation]").val(
									nation);
							var helin = Math.floor(taxtarget * 0.03335, -1);
							$("input:text[name=wage_statement_helin]").val(
									helin);
							var carein = Math.floor(helin * 0.1, -1);
							$("input:text[name=wage_statement_carein]").val(
									carein);
							var empin = Math.floor(taxtarget * 0.0008, -1);
							$("input:text[name=wage_statement_empin]").val(
									empin);
							var intax = Math.floor(taxtarget * 0.03, -1);
							$("input:text[name=wage_statement_intax]").val(
									intax);
							var lotax = Math.floor(intax * 0.1, -1);
							$("input:text[name=wage_statement_lotax]").val(
									lotax);
							var delsum = nation + helin + carein + empin
									+ intax + lotax;
							var beforedel = parseInt($(
									"input:text[name=wage_statement_beforedel]")
									.val() || 0);
							var yearendtax = parseInt($(
									"input:text[name=wage_statement_yearendtax]")
									.val() || 0);
							var dsum = delsum + beforedel + yearendtax;
							$("input:text[name=wage_statement_dsum]").val(dsum);

							var realsalary = Math.floor(psum - dsum, -1);
							$("input:text[name=wage_statement_salary]").val(
									realsalary);
						});
	});
</script>
</head>

<body>
	<jsp:include page="top.jsp" />
	<main class="content">
	<div class="container-fluid p-0">

		<h1 class="h3 mb-3">급여상세</h1>

		<div class="row">
			<div class="col-md-12 col-xl-12">
				<div class="tab-content">
					<div class="tab-pane fade show active" id="account" role="tabpanel">
						<div class="card">
							<div class="card-header">

								<h5 class="card-title mb-0">급여정보를 입력해주세요.</h5>
							</div>
							<div class="card-body">
								<form action="insertWage" method="post">
									<div class="card-body-detail1">
										<h2>직원 정보</h2>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputState">사원번호</label> <select
													id="inputState" class="form-control"
													name="wage_statement_emp_no">
													<option selected>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">사원명</label> <input
													type="text" class="form-control"
													name="wage_statement_emp_name" placeholder="사원명을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">부서명</label> <input
													type="text" class="form-control"
													name="wage_statement_dept_name" placeholder="부서명을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">지급일</label> <input
													type="text" class="form-control" name="wage_statement_mon"
													value="2021-01-25" placeholder="지급일을 입력하세요.">
											</div>
										</div>
									</div>
									<div class="card-body-detail2">
										<h2>과세대상항목</h2>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">기본급</label> <input
													type="text" class="form-control num_only num_comma num_sum"
													name="wage_statement_sal" placeholder="기본급을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">국민연금</label> <input
													type="text" class="form-control"
													name="wage_statement_nation" placeholder="국민연금을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">직책수당</label>
												<input type="text"
													class="form-control num_only num_comma num_sum"
													name="wage_statement_jikpay" placeholder="직책수당을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">건강보험</label> <input
													type="text" class="form-control"
													name="wage_statement_helin" placeholder="건강보험을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">시간외수당</label>
												<input type="text"
													class="form-control num_only num_comma num_sum"
													name="wage_statement_overpay" placeholder="시간외수당을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">장기요양보험료</label>
												<input type="text" class="form-control"
													name="wage_statement_carein" placeholder="장기요양보험료을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">특별수당</label>
												<input type="text"
													class="form-control num_only num_comma num_sum"
													name="wage_statement_specialpay" placeholder="특별수당을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">고용보험</label> <input
													type="text" class="form-control"
													name="wage_statement_empin" placeholder="고용보험을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">기타수당</label>
												<input type="text"
													class="form-control num_only num_comma num_sum"
													name="wage_statement_etcpay" placeholder="기타수당을 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">소득세</label> <input
													type="text" class="form-control"
													name="wage_statement_intax" placeholder="소득세를 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">상여</label> <input
													type="text" class="form-control num_only num_comma num_sum"
													name="wage_statement_bonus" placeholder="상여를 입력하세요.">
											</div>

											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">지방소득세</label>
												<input type="text" class="form-control"
													name="wage_statement_lotax" placeholder="지방소득세를 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">과세총액</label>
												<input type="text"
													class="form-control text-right font-weight-bold num_only num_comma num_sum"
													name="wage_statement_taxtarget">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">전월미처리공제액</label>
												<input type="text"
													class="form-control num_only num_comma num_sum"
													name="wage_statement_beforedel"
													placeholder="전월미처리공제액을 입력하세요.">
											</div>
										</div>
									</div>
									<div class="card-body-detail3">
										<h2>비과세대상항목</h2>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">식대</label> <input
													type="text" class="form-control num_only num_comma num_sum"
													name="wage_statement_meal" placeholder="식대를 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">연말정산</label> <input
													type="text" class="form-control num_only num_comma num_sum"
													name="wage_statement_yearendtax" placeholder="연말정산을 입력하세요.">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">자가운전보조비</label>
												<input type="text"
													class="form-control num_only num_comma num_sum"
													name="wage_statement_drive" placeholder="자가운전보조비를 입력하세요.">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">공제합계</label> <input
													type="text" class="form-control" name="wage_statement_dsum">
											</div>
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputFirstName">지급총액</label>
												<input type="text"
													class="form-control text-right font-weight-bold num_only num_comma num_sum"
													name="wage_statement_psum">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputLastName">차인지급액</label>
												<input type="text" class="form-control"
													name="wage_statement_salary" placeholder="차감지급액을 입력하세요.">
											</div>
										</div>
									</div>
									<button type="submit" class="btn btn-primary">저장하기</button>
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
	<script src="./resources/js/app.js"></script>
</body>
</html>