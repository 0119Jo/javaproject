<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<h1 class="h3 mb-3">급여명세서</h1>
		<form action="salstatement" method="post">
			<div class="row">
				<div class="mb-3 col-md-5">
					<label class="form-label" for="inputFirstName">사원번호</label> <input
						type="text" class="form-control" name="wage_statement_emp_no"
						value="">
				</div>
				<div class="mb-3 col-md-5">
					<label class="form-label" for="inputFirstName">지급일</label> <input
						type="text" class="form-control" name="wage_statement_mon"
						value="">
				</div>
				<div class="mb-3 col-md-2">
					<button type="submit" class="btn btn-primary">검색</button>
				</div>
			</div>
		</form>
		<div class="row">

			<div class="col-12">
				<div class="card">
					<div class="card-body m-sm-3 m-md-5">
						<div class="mb-4">
							<c:set var="s" value="${mywage}" />
							<strong>${s.wage_statement_emp_name}</strong> 안녕하세요. 당신의 이번달 총
							급여는 <strong>${s.wage_statement_salary }</strong> 원 입니다.
						</div>

						<div class="row">
							<div class="col-md-6">
								<div class="text-muted">Wage Statement</div>
								<strong>${s.wage_statement_mon.substring(0,4)}년${s.wage_statement_mon.substring(5,7)}월
									분 급여명세서</strong>
							</div>
							<div class="col-md-6 text-md-right">
								<div class="text-muted">Payment Date</div>
								<strong>${s.wage_statement_mon.substring(0,4)}-${s.wage_statement_mon.substring(5,7)}월-01
									~
									${s.wage_statement_mon.substring(0,4)}-${s.wage_statement_mon.substring(5,7)}월-31</strong>
							</div>
						</div>

						<hr class="my-4" />
						<table class="table table-sm">
							<thead>
								<tr>
									<th>지급내역</th>
									<th>지금액</th>
									<th>공제내역</th>
									<th class="text-right">공제액</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>기본급<br> 직책수당<br> 시간외수당<br> 특별수당<br>
										기타수당<br> 상여<br> 식대<br> 자가운전보조비<br> 지급총액
									</td>
									<td>${s.wage_statement_sal }<br>
										${s.wage_statement_jikpay }<br>
										${s.wage_statement_overpay }<br>
										${s.wage_statement_specialpay }<br>
										${s.wage_statement_etcpay }<br> 
										${s.wage_statement_bonus }<br>
										${s.wage_statement_meal }<br>
										${s.wage_statement_drive }<br>
										${s.wage_statement_psum }
									</td>
									<td>국민연금<br> 건강보험<br> 장기요양보험료<br> 고용보험<br>
										소득세<br> 지방소득세<br> 전월미처리공제액<br> 연말정산<br>
										공제합계<br> 
									</td>
									<td class="text-right">${s.wage_statement_nation }<br>
										${s.wage_statement_helin }<br> ${s.wage_statement_carein }<br>
										${s.wage_statement_empin }<br> ${s.wage_statement_intax }<br>
										${s.wage_statement_lotax }<br>${s.wage_statement_beforedel }<br>
										${s.wage_statement_yearendtax }<br>
										${s.wage_statement_dsum }<br> 
									</td>
								</tr>
								<tr>
									<td><h2>차감수령액</h2></td>
									<td colspan="3"><h2>${s.wage_statement_salary }</h2></td>
								</tr>
							</tbody>
						</table>

						<div>
							<p class="text-sm">
							<div class="text-left">※ 귀하의 노고에 진심으로 감사드립니다.</div>
							<div class="text-right">
								<strong>5팀 주식회사</strong><img alt=""
									src="./resources/img/img.png" style="width: 10%; height: 10%;">
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