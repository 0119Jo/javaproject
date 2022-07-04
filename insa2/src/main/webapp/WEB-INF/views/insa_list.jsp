<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	$(document).ready(function(){
		$("")
	})
</script>
</head>

<body>
	<jsp:include page="top.jsp" />

	<main class="content">
		<div class="container-fluid p-0">

			<h1 class="h3 mb-3">인사목록</h1>

			<div class="col-12 col-xl-12" style="margin-top: 2%;">
				<div class="card">
					<div class="card-header">
						<div class="row">
							<div class="mb-3 col-md-12">
								
								<form action="search" method="get">
									<select name="searchName" id="inputState" class="form-control" style="width:19%; margin-right:2%; display: inline-block;">
										<option value="salinfo_name">성명</option>
										<option value="jik_name">직책</option>
										<option value="dept_name">부서</option>
										<option value="empinfo_hiredate">입사일자</option>
									</select>
									<input type="text" class="form-control" name="searchValue" 
									placeholder="왼쪽에서 항목을 선택 후, 검색할 단어를 입력하세요." style="width:64%; margin-right:2%; display: inline-block;">
									<input type="submit" class="btn btn-primary" value="검색" style="width:10%; display: inline-block;">
								</form>
							</div>
						</div>
					</div>
					<table class="table table-striped" style="text-align: center;">
						<thead>
							<tr>
								<th style="width: %;">사원번호</th>
								<th style="width: %">성명</th>
								<th style="width: %">직책</th>
								<th style="width: %">부서</th>
								<th style="width: %">입사일자</th>
								<th style="width: %">핸드폰</th>
								<th style="width: %">이메일</th>
								<th style="width: %">주소</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="l" items="${data}">
								<tr>
									<td>${l.emp_no}</td>
									<td>${l.salinfo_name}</td>
									<td>${l.jik_name}</td>
									<td>${l.dept_name}</td>
									<td>${l.empinfo_hiredate}</td>
									<td>${l.myinfo_tel}</td>
									<td>${l.myinfo_email}</td>
									<td>${l.myinfo_addr}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
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