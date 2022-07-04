<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<title>Invoice | AdminKit Demo</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	function start() {	//출근시각 상단표시
        var now = new Date();
        var s1 = now.getHours()+":"+ now.getMinutes();
        var start = document.getElementById("start").innerHTML=s1;
       document.getElementById("startdown").innerHTML=s1;
    }
	
	function end() {	//퇴근시간 상단표시
        var now = new Date();
        var s1 = now.getHours()+":"+ now.getMinutes();
        var s3 = now.getHours()+":"+ now.getMinutes();
        	var time = s3 - s1;
        	var end = document.getElementById("end").innerHTML=s3;
        	document.getElementById("enddown").innerHTML=s3;
    		document.getElementById("worktime").innerHTML=time;
    }
	function over() {
		var over = "O"
			
		var old = new Date("18");
		var now = new Date();
		var nowm = now.getDate();//오늘 일자.
		var gap = now.getTime()-old.getTime();
		var sec_gap = gap/1000;
		var min_gap = gap/1000/60;
		
		document.getElementById("over").innerHTML=over;
		document.getElementById("overtime").innerHTML=sec_gap;
	}
	
	</script>

	<link href="./resources/css/app.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="top.jsp"/>
			<main class="content">
				<div class="container-fluid p-0">
				
					
					<h1 class="h3 mb-3">근태관리</h1>
					<div class="col-12 col-lg-12">
							<div class="card">
								<div class="card-header">
									<ul class="nav nav-tabs card-header-tabs pull-right" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" data-toggle="tab" href="#tab-1">사원개인</a>
										</li>
										<!-- 관리자의 이름이 맞으면 보이기. -->
										<li class="nav-item">
											<a class="nav-link" data-toggle="tab" href="#tab-2">사원전체</a>
										</li>
										
									</ul>
								</div>
								<div class="card-body">
									<div class="tab-content">
										<div class="tab-pane fade show active" id="tab-1" role="tabpanel">
											<p class="card-text">
												※ 출/퇴근/연장근무 버튼이 보이지 않을 경우 문의하세요.<br>
												※ 사원번호, 성명, 출근시각, 퇴근시각, 연장근무시각, 정상근무시각이 정상적으로 보이지 않는 경우 문의하세요.
											</p>
											<div class="text-right">
												<button class="btn btn-primary" onclick="start()">출근</button>
												<button class="btn btn-primary" onclick="end()">퇴근</button>
												<button class="btn btn-primary" onclick="over()">연장근무</button>
												<!-- <a href="#" class="btn btn-primary">연장근무</a> -->
											</div>
											
											<div class="col-12 col-xl-12" style="margin-top:2%;">
												<div class="card">
													<table class="table table-striped" style="text-align:center;">
														<thead>
															<tr>
																<th style="width:10%;">사원번호</th>
																<th style="width:14%">성명</th>
																<th style="width:19%">출근시각</th>
																<th style="width:19%">퇴근시각</th>
																<th style="width:19%">정상근무시간</th>
																<th style="width:19%">연장근무시각</th>
															</tr>
														</thead>
														
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td id="start"></td>
																<td id="end"></td>
																<td id="worktime"></td>
																<td id="overtime"></td>
															</tr>
														</tbody>
														
													</table>
												</div>
											</div>
											
											<div class="col-12">
												<div class="card">
													<div class="table-responsive">
														<table class="table mb-0 table-bordered" style="text-align:center;">
															<thead>
																<tr>
																	<th scope="col"></th>
																	<th scope="col"></th>
																	<th scope="col">금</th>
																	<th scope="col">토</th>
																	<th scope="col">일</th>
																	<th scope="col">월</th>
																	<th scope="col">화</th>
																	<th scope="col">수</th>
																	<th scope="col">목</th>
																	<th scope="col">금</th>
																	<th scope="col">토</th>
																	<th scope="col">일</th>
																	
																	<th scope="col">월</th>
																	<th scope="col">화</th>
																	<th scope="col">수</th>
																	<th scope="col">목</th>
																	<th scope="col">금</th>
																	<th scope="col">토</th>
																	<th scope="col">일</th>
																	
																	<th scope="col">월</th>
																	<th scope="col">화</th>
																	<th scope="col">수</th>
																	<th scope="col">목</th>
																	<th scope="col">금</th>
																	<th scope="col">토</th>
																	<th scope="col">일</th>
																	
																	<th scope="col">월</th>
																	<th scope="col">화</th>
																	<th scope="col">수</th>
																	<th scope="col">목</th>
																	<th scope="col">금</th>
																	<th scope="col">토</th>
																	<th scope="col">일</th>
																	
																	<th scope="col"></th>
																	<th scope="col"></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td></td>
																	<td></td>
																	<td>1</td>
																	<td>2</td>
																	<td>3</td>
																	<td>4</td>
																	<td>5</td>
																	<td>6</td>
																	<td>7</td>
																	<td>8</td>
																	<td>9</td>
																	<td>10</td>
																	<td>11</td>
																	<td>12</td>
																	<td>13</td>
																	<td>14</td>
																	<td>15</td>
																	<td>16</td>
																	<td>17</td>
																	<td>18</td>
																	<td>19</td>
																	<td>20</td>
																	<td>21</td>
																	<td>22</td>
																	<td>23</td>
																	<td>24</td>
																	<td>25</td>
																	<td>26</td>
																	<td>27</td>
																	<td>28</td>
																	<td>29</td>
																	<td>30</td>
																	<td>31</td>
																	<td></td>
																</tr>
																<tr>
																	<td></td>
																	<th scope="col">구분</th>
																	<td>근무</td>
																	<td></td>
																	<td></td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td style="color:blue;">휴무일</td>
																	<td style="color:red;">휴일</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td style="color:blue;">휴무일</td>
																	<td style="color:red;">휴일</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td style="color:blue;">휴무일</td>
																	<td style="color:red;">휴일</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td>근무</td>
																	<td style="color:blue;">휴무일</td>
																	<td style="color:red;">휴일</td>
																	<td></td>
																</tr>
																<tr>
																	<td></td>
																	<th scope="col">근로시작</th>
																	<td id="startdown"></td>
																	<td id="startdown"></td>
																	<td></td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td></td>
																	<td></td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td></td>
																	<td></td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td></td>
																	<td></td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td>09:00</td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
																<tr>
																	<td></td>
																	<th scope="col">근로종료</th>
																	<td id="enddown"></td>
																	<td></td>
																	<td></td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td></td>
																	<td></td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td></td>
																	<td></td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td></td>
																	<td></td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td>18:00</td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
																<tr>
																	<td></td>
																	<th scope="col">연장신청</th>
																	<td id="over"></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											
										</div>
										<div class="tab-pane fade" id="tab-2" role="tabpanel">
											<p class="card-text">
												<span style="color:red;">※관리자 권한으로 수정시 주의하세요.</span>
											</p>
											<div class="row">
											<form action="search11" method="post">
													<div class="mb-3 col-md-3"> 
														<select id="inputState" class="form-control" name="searchName">
              										 		 <option selected value="name">성명</option>
              												 <option value="no">사원번호</option>
          										   		 </select>
													</div>
													<div class="mb-3 col-md-8">
														<input type="text" class="form-control" name="searchValue" placeholder="" size="10">
													</div>
													<div class="mb-3 col-md-1">
													<input type="submit" value="검색" class="btn btn-primary" >
														<!-- <a href="#" class="btn btn-primary"  aria-label="Search">검색</a> -->
  															
													</div>
													</form>
											</div>
											<div class="col-12 col-xl-12" style="margin-top:2%;">
												<div class="card">
													<table class="table table-striped" style="text-align:center;">
														<thead>
															<tr>
																<th style="width:8%;">사원번호</th>
																<th style="width:12%">성명</th>
																<th style="width:17%">출근시각</th>
																<th style="width:17%">퇴근시각</th>
																<th style="width:17%">정상근무시간</th>
																<th style="width:17%">연장근무시각</th>
																<th style="width:12%">수정</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>1</td>
																<td>홍길동</td>
																<td>09:00</td>
																<td>18:00</td>
																<td>8</td>
																<td>3</td>
																<td><a href="#" class="btn btn-primary">수정</a></td>
															</tr>
															<tr>
																<td>2</td>
																<td>고길동</td>
																<td>09:00</td>
																<td>18:00</td>
																<td>8</td>
																<td>3</td>
																<td><a href="#" class="btn btn-primary">수정</a></td>
															</tr>
															<tr>
																<td>3</td>
																<td>김길동</td>
																<td>09:00</td>
																<td>18:00</td>
																<td>8</td>
																<td>3</td>
																<td><a href="#" class="btn btn-primary">수정</a></td>
															</tr>
															<tr>
																<td>4</td>
																<td>홍길동</td>
																<td>09:00</td>
																<td>18:00</td>
																<td>8</td>
																<td>3</td>
																<td><a href="#" class="btn btn-primary">수정</a></td>
															</tr>
															<tr>
																<td>5</td>
																<td>홍길동</td>
																<td>09:00</td>
																<td>18:00</td>
																<td>8</td>
																<td>3</td>
																<td><a href="#" class="btn btn-primary">수정</a></td>
															</tr>
															<tr>
																<td>6</td>
																<td>홍길동</td>
																<td>09:00</td>
																<td>18:00</td>
																<td>8</td>
																<td>3</td>
																<td><a href="#" class="btn btn-primary">수정</a></td>
															</tr>
															<tr>
																<td>7</td>
																<td>홍길동</td>
																<td>09:00</td>
																<td>18:00</td>
																<td>8</td>
																<td>3</td>
																<td><a href="#" class="btn btn-primary">수정</a></td>
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
			</main>

			<jsp:include page="footer.jsp"/>
		</div>
	</div>

	<script src="./resources/js/app.js"></script>

</body>

</html>