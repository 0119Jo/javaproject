<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>

<body>
	<jsp:include page="top.jsp" />
	<main class="content">
	<div class="container-fluid p-0">


		<h1 class="h3 mb-3">지급현황</h1>
		<div class="col-12 col-lg-12">
			<div class="card">
				<div class="card-header">
					<ul class="nav nav-tabs card-header-tabs pull-right" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#tab-1">전체현황</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tab-2">부서별현황</a></li>
					</ul>
				</div>
				<div class="card-body">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="tab-1" role="tabpanel">
							<div class="row">
							<div class="mb-3 col-md-3">
								<select id="inputState" class="form-control">
									<option selected>성명</option>
									<option>사원번호</option>
								</select>
							</div>
							<div class="mb-3 col-md-8">
								<input type="text" class="form-control" name="wage_statement_mon" value=""
									placeholder="왼쪽에서 항목을 선택 후, 검색할 단어를 입력하세요.">
							</div>
							<div class="mb-3 col-md-1">
								<a href="wagelist" class="btn btn-primary" aria-label="Search">검색</a>
							</div>
						</div>

							<div class="col-12">
								<div class="card">
									<div class="table-responsive">
										<table class="table mb-0 table-bordered"
											style="text-align: center; width: 150%">
											<thead>

												<tr>
													<th scope="col" rowspan="2">NO</th>
													<th scope="col" rowspan="2">성명</th>
													<th scope="col" rowspan="2">부서</th>
													<th scope="col" rowspan="2">지급일</th>
													<th scope="col" colspan="6">지급내용(과세)</th>
													<th scope="col" rowspan="2">과세총액</th>
													<th scope="col" colspan="2">지급내용(비과세)</th>
													<th scope="col" rowspan="2">지급총액</th>
													<th scope="col" colspan="8">공제내역</th>
													<th scope="col" rowspan="2">공제합계</th>
													<th scope="col" rowspan="2">차감수령액</th>
												</tr>
												<tr>
													<th scope="col">기본급</th>
													<th scope="col">직책수당</th>
													<th scope="col">시간외수당</th>
													<th scope="col">특별수당</th>
													<th scope="col">기타수당</th>
													<th scope="col">상여금</th>
													<th scope="col">식대</th>
													<th scope="col">자가운전보조비</th>
													<th scope="col">국민연금</th>
													<th scope="col">건강보험</th>
													<th scope="col">장기요양보험</th>
													<th scope="col">고용보험</th>
													<th scope="col">소득세</th>
													<th scope="col">지방소득세</th>
													<th scope="col">전월미처리공제액</th>
													<th scope="col">연말정산</th>
												</tr>
											</thead>
											<tbody>
													<tr>
														<td>${wage_statement_Bean.wage_statement_emp_no }</td>
														<td>${wage_statement_Bean.wage_statement_emp_name }</td>
														<td>${wage_statement_Bean.wage_statement_dept_name }</td>
														<td>${wage_statement_Bean.wage_statement_mon }</td>
														<td>${wage_statement_Bean.wage_statement_sal }</td>
														<td>${wage_statement_Bean.wage_statement_jikpay }</td>
														<td>${wage_statement_Bean.wage_statement_overpay }</td>
														<td>${wage_statement_Bean.wage_statement_specialpay }</td>
														<td>${wage_statement_Bean.wage_statement_etcpay }</td>
														<td>${wage_statement_Bean.wage_statement_bonus }</td>
														<td>${wage_statement_Bean.wage_statement_taxtarget }</td>
														<td>${wage_statement_Bean.wage_statement_meal }</td>
														<td>${wage_statement_Bean.wage_statement_drive }</td>
														<td>${wage_statement_Bean.wage_statement_psum }</td>
														<td>${wage_statement_Bean.wage_statement_nation }</td>
														<td>${wage_statement_Bean.wage_statement_helin }</td>
														<td>${wage_statement_Bean.wage_statement_carein }</td>
														<td>${wage_statement_Bean.wage_statement_empin }</td>
														<td>${wage_statement_Bean.wage_statement_intax }</td>
														<td>${wage_statement_Bean.wage_statement_lotax }</td>
														<td>${wage_statement_Bean.wage_statement_beforedel }</td>
														<td>${wage_statement_Bean.wage_statement_yearendtax }</td>
														<td>${wage_statement_Bean.wage_statement_dsum }</td>
														<td>${wage_statement_Bean.wage_statement_salary }</td>
													</tr>
												
											</tbody>
										</table>
									</div>
								</div>
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