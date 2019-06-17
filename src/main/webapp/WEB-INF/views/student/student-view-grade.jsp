<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>SPM </title>

</head>
<body class="bg-light h-100">
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
						href="#">Search <span class="sr-only">(current)</span></a></li> -->

				</ul>
				<button class="btn btn-dark my-2 my-sm-0" type="submit"> <c:out value="${user.getEmail() }"></c:out></button>

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
							Sinh viên
					</span>
					<span class = "text-white mr-2 ml-2 h4">/</span>
					<span class = "text-secondary h6">
							Xem điểm
					</span>
				</div>
			</div>
			<div class="col-1 h-100 bg-white p-0 border"
				style="min-height: 870px;">
				<div class="menu ">
					<a href="/spm.mock/handler/st-view-info/<c:out value="${user.getId()}"></c:out>" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-user-edit"></i>
						</p>
						<p class="text-center">Xem  thông tin</p>

					</div>
					</a>
					<a href="/spm.mock/handler/st-view-list-grade" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Xem điểm</p>

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
				<div class="row p-2">
					<div class="col-8">
						<div class="left-title ">
							<p class="h4 text-info">Bài test số 1</p>
							<p class="h5 text-text font-italic">Bạn trả lời được 
								<span class="badge badge-info number-true"><c:out value="${score.getTrueAnswer()}"></c:out>/<c:out value="${score.getCountQuestion()}"></c:out></span> 
								câu, số điểm của bạn là
								
								<span class="badge badge-danger score"><c:out value="${String.format('%.2g%n',score.getScore())}"></c:out></span>
							</p>
						</div>	
						<div class="left-body mt-3 col-10">
						<%int i = 1 ; %>
							<c:forEach items="${gradeCustoms}" var="item">

								<div class="quest-box">
									<div class="quest-n">
										<span class="text-left">Question <%=i++ %> of <c:out value="${gradeCustoms.size()}"></c:out> </span> <span
											class="text-right offset-2"> <c:out
												value="${ item.getPoint()}"></c:out>
										</span>
									</div>
									<div class="quest-q ml-5">
										<c:out value="${ item.getQuestion()}"></c:out>
									</div>
									<div class="quest-option ml-5">
										<div class="radio">
										<c:choose>
									         <c:when test = "${item.getAnswer() == 1}">
									        	 <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option1" checked>${ item.getOption1()}
											</label>   
									         </c:when>
									         <c:otherwise>
									          <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option1" disabled>${ item.getOption1()}
											</label>
									         </c:otherwise>
									      </c:choose>
									      </div>
									      <div class="radio">
									      <c:choose>
									         <c:when test = "${item.getAnswer() == 2}">
									        	 <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option2" checked>${ item.getOption2()}
											</label>   
									         </c:when>
									         <c:otherwise>
									          <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option2" disabled>${ item.getOption2()}
											</label>
									         </c:otherwise>
									      </c:choose>
									      </div>
									      <div class="radio">
									      <c:choose>
									         <c:when test = "${item.getAnswer() == 3}">
									        	 <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option3" checked>${ item.getOption3()}
											</label>   
									         </c:when>
									         <c:otherwise>
									          <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option3" disabled>${ item.getOption3()}
											</label>
									         </c:otherwise>
									      </c:choose>
									      </div>
									      <div class="radio">
											<c:choose>
									         <c:when test = "${item.getAnswer() == 4}">
									        	 <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option4" checked>${ item.getOption4()}
											</label>   
									         </c:when>
									         <c:otherwise>
									          <label> <input type="radio" name="exampleRadios<c:out value="${ item.getId()}"></c:out>"
												value="option4" disabled>${ item.getOption4()}
											</label>
									         </c:otherwise>
									      </c:choose>
										</div>
								
									</div>
								</div>

							</c:forEach>
						</div>
<!-- 						<div class="left-footer mt-5">
							<a href="" class="btn btn-info ml-5">Cancel</a>

						</div> -->
					</div>
				</div>

			</div>
		</div>
	</div>

	</div>
	<div class="footer"></div>


</body>
</html>