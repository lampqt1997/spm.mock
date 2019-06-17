<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPM - </title>
</head>
<body class="bg-light h-100">
	<input type="hidden" value="<c:out value="${userId }"></c:out>" id="userId" />
	<input type="hidden" value="<c:out value="${user }"></c:out>" id="user" />
	<div class="header border-bottom">
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<a class="navbar-brand" href="home.html">SPM</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link" href="/spm.mock/">Trang chủ
							<span class="sr-only">(current)</span>
					</a></li>
					<!-- <li class="nav-item active"><a class="nav-link text-dark"
						href="#">Search <span class="sr-only">(current)</span></a></li>
 -->
				</ul>
				<button class="btn btn-dark my-2 my-sm-0" ><c:out value="${user.getEmail() }"></c:out></button>

			</div>
		</nav>
	</div>
	<div class="content container-fluid h-100">
		<div class="row">
			<div class="navigation-bar  col-12" style="min-height: 50px">
				<div class="mt-2">
					<span class = "h5">
						<a class="text-white" href="/spm.mock/"> Trang chủ</a>
					</span>
					<span class = "text-white mr-2 ml-2 h4">/</span>
					<span class = "text-secondary h6">
							Giáo sư
					</span>
					<span></span>
				</div>
			</div>
			<div class="col-1 h-100 bg-white p-0 border"
				style="min-height: 870px;">
				<div class="menu ">
					<a href="/spm.mock/handler/pr-view-info" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-user-edit"></i>
						</p>
						<p class="text-center">Xem  thông tin</p>

					</div>
					</a>
					
					<a href="/spm.mock/handler/change-pass" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-exchange-alt"></i>
						</p>
						<p class="text-center">Đổi mật khẩu</p>

					</div>
					</a>
					<a href="/spm.mock/logout" class="text-info"> 
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-sign-out-alt"></i>
						</p>
						<p class="text-center">Đăng xuất</p>

					</div>
					</a>

					
				</div>
			</div>
			
			<div class="col-11">
				<div class="row mt-5 p-2">
					<div class="col-1">
						<a href="/spm.mock/handler/pr-create-topic"
							class="text-decoration-none text-info">
							<div class="card border-danger mb-3 h-50 ">

								<div class="card-body text-danger h-100">
									<h5 class="text-center">
										<i class="fa fa-plus"></i>
									</h5>
									<p class="card-text">Tạo đề tài</p>
								</div>
							</div>
						</a>

					</div>
					<div class="col-2 offset-1">
						
							<div class="card border-dark mb-3 h-100 ">
								<div class="card-body text-dark h-100">
									<p class="">
										<span class="card-text">Số lượng nhóm đã tạo: </span> 
										<span class="text-info float-right">
											<c:out value="${countGroup }"></c:out>
										</span>
									</p>
									<p class="">
										<span class="card-text">Số lượng nhóm đăng ký: </span> 
										<span class="text-info float-right">
											<c:out value="${countGroupRegister }"></c:out>
										</span>
									</p>
									<p class="">
										<span class="card-text">Số lượng Giáo sư: </span> 
										<span class="text-info float-right">
											<c:out value="${countProfessor }"></c:out>
										</span>
									</p>


								</div>
							</div>
					

					</div>

				</div>
				<div class="row mt-0">
					<div class="col-sm-4 p-2">
						<!-- <h5 class="text-danger">Bạn chưa tham gia nhóm nào! Hãy Tạo nhóm </h5> -->
						<div class="accordion card" id="accordionExample">
							<div class="">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-dark collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Danh sách nhóm đăng ký</button>

									</h2>
								</div>
								<div id="collapseThree" 
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Tên nhóm trưởng</th>
													<th>Điểm trung bình</th>
													<th>Thao tác</th>

												</tr>
											</thead>
											<tbody>
											<c:choose>
												<c:when test="${groups.size() == 0}">
													<p class="text-danger">Hiện chưa có nhóm nào đăng ký bạn!</p>
													<p class="text-secondary font-italic">Note: Có thể nhóm sinh viên đăng ký bạn và một giáo sư khác, và anh ta đã khóa nhóm sinh viên đó, hoặc nhóm sinh viên đã nằm trong danh sách hướng dẫn của bạn!</p>
												</c:when>
												<c:otherwise>
												<%
												int j = 1;
												%>
												<c:forEach items="${groups }" var="g">
												<tr>
													<td>
													<%=j++ %>
													</td>
													<td><a href='/spm.mock/handler/pr-view-group/<c:out value="${g.id }"></c:out>' class="btn btn-link text-info">
															<c:out value="${ g.getLeader()}"></c:out>
														</a>
													</td>
													<td>
														<c:out value="${g.getGrade() }"></c:out>
													</td>
													<td><a  class="btn text-success register-agree" title="Đồng ý" value="<c:out value="${g.id}"></c:out>">
															<i class="fa fa-check"></i>
													</a> <a class="btn text-danger register-reject" title="Từ chối" value="<c:out value="${g.id}"></c:out>"> <i
															class="fa fa-times"></i>
													</a></td>
												</tr>
												</c:forEach>
												</c:otherwise>
											</c:choose>
											
											</tbody>
										</table>

									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="col-sm-4 p-2">
						<!-- <h5 class="text-danger">Bạn chưa tham gia nhóm nào! Hãy Tạo nhóm </h5> -->
						<div class="accordion card" id="accordionExample">
							<div class="">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-dark collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Danh sách các nhóm khác</button>

									</h2>
								</div>
								<div id="collapseThree" 
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Tên nhóm trưởng</th>
													<th>Điểm trung bình</th>
													<th>Đăng ký</th>

												</tr>
											</thead>
											<tbody>
											<%
											int i=1;
											%>
											<c:forEach items="${groupsAnother }" var="g2">
												<tr>
													<td>
													<%=i++ %>
													</td>
													<td><a href='/spm.mock/handler/pr-view-group/<c:out value="${g2.getId() }"></c:out>' class="btn btn-link text-info">
															<c:out value="${ g2.getLeader()}"></c:out>
														</a>
													</td>
													<td>
														<c:out value="${g2.getGrade() }"></c:out>
													</td>
													<td>
														<c:out value="${g2.getProfessor() }"></c:out>
													</td>
												</tr>

											</c:forEach>
												
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

	</div>
	<div class="footer"></div>

	
	<script src="<c:url value="/resource/script/get-userid.js" />"></script>
	<script src="<c:url value="/resource/script/professor.js" />"></script>
</body>
</html>