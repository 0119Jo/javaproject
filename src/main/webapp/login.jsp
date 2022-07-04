<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="shortcut icon" href="./resources/img/icons/icon-48x48.png" />

	<title>Sign In | AdminKit Demo</title>

	<link href="./resources/css/app.css" rel="stylesheet">
</head>

<body>
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">로그인을 해주세요.</h1>
							<p class="lead">
								5팀 주식회사 직원 여러분 환영합니다.
							</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<div class="text-center">
										<img src="./resources/img/avatars/images.png" alt="Charles Hall" class="img-fluid rounded-circle" width="132" height="132" />
									</div>
									<form action="login">
										<div class="mb-3">
											<label class="form-label">사번</label>
											<input class="form-control form-control-lg" type="text" name="emp_no" placeholder="사번을 입력해주세요" />
										</div>
										<div class="mb-3">
											<label class="form-label">비밀번호</label>
											<input class="form-control form-control-lg" type="password" name="empInfo_pass" placeholder="비밀번호를 입력해주세요" />
											<small>
            <a href="pages-reset-password.html">비밀번호를 잊으셨나요?</a>
          </small>
										</div>
										<div>
											<label class="form-check">
            <input class="form-check-input" type="checkbox" value="remember-me" name="remember-me" checked>
            <span class="form-check-label">
             사번 저장
            </span>
          </label>
										</div>
										<div class="text-center mt-3">
											<!-- <a href="index.jsp" class="btn btn-lg btn-primary">로그인하기</a> -->
											<button type="submit" class="btn btn-lg btn-primary">Sign in</button>
										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main>

	<script src="./resources/js/app.js"></script>

</body>

</html>