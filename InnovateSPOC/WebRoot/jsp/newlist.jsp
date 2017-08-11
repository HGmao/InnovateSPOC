<%@ page language="java"
	import="java.util.*,com.base.Po.*,com.base.Dao.*,com.base.DaoImpl.*"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>湖南农业大学基地实习综合管理系统</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Bootstrap -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/index_main.css">
<link rel="stylesheet" href="../css/calendar.css" media="screen">

<style>
.table {
	background: #FFF;
}

.table>tbody>tr>td,.table>tbody>tr>th,.table>tfoot>tr>td,.table>tfoot>tr>th,.table>thead>tr>td,.table>thead>tr>th
	{
	border-top: 0 solid #ddd;
}
</style>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

</head>
<body>
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- 点击收缩左边的菜单栏  + 缩小后左边菜单栏的显示 -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a><i
						class="icon-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a><i
						class="icon-align-justify"></i></a></li>
			</ul>
			<span class="teachCenterTitle">思博客管理系统</span>						
			<!-- End Navbar Right -->
		</div>
	</div>



	<div class="container-fluid content">
		<div class="row">

			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header ">
						
					</div>

					<!-- Sidebar Menu-->
					<div class="sidebar-menu" style="height: 384px;">
						<nav id="menu" class="nav-main" role="navigation">
							<ul class="nav nav-sidebar">
								
								<div class="divider2"></div>

								<li class="menuItem nav-parent"><a> <i
										class="icon-copy" aria-hidden="true"></i><span>用户管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="studentManage.jsp"><span class="text"></span>学生管理</a></li>
										<li><a href="teacherManage.jsp"><span class="text"></span>教师管理</a></li>
										
									</ul></li>

								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>组别管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="rent-approve.jsp"><span class="text">组别信息管理</span></a></li>

									</ul>
								</li>

								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>简历管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="studentResume.jsp"><span class="text">学生简历管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>作品管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="rent-approve.jsp"><span class="text">作品信息管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>就业管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="rent-approve.jsp"><span class="text">就业信息管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>企业交流管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="rent-approve.jsp"><span class="text">企业交流信息管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>新闻管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="notification.jsp"><span class="text">新闻信息管理</span></a></li>

									</ul>
								</li>
							</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->
				</div>
				<!-- Sidebar Footer-->
				<div class="sidebar-footer">
					<div class="copyright text-center">
						<div>湖南农业大学版权所有</div>
					</div>
				</div>
				<!-- End Sidebar Footer-->
			</div>
			<!-- End Sidebar-->


			<div class="main " style="min-height: 584px;">
				<!-- 当前地址导航 -->
				<div class="page-header row">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a>位置 :</a></li>
							<li><a href="newlist.do"> <i class=" icon-home"></i>新闻列表
							</a></li>
						</ol>
					</div>

				</div>
				<!-- 主面板内容 -->
				<div class="row form">
					<div class="col-lg-12">
						<div class="list-group">
							<!-- <a class="list-group-item active"> 公告列表 </a> <a href="#"
								class="list-group-item">Dapibus ac facilisis in</a> <a href="#"
								class="list-group-item">Morbi leo risus</a> <a href="#"
								class="list-group-item">Porta ac consectetur ac</a> <a href="#"
								class="list-group-item ">Vestibulum at eros</a> <a href="#"
								class="list-group-item">Dapibus ac facilisis in</a> <a href="#"
								class="list-group-item">Morbi leo risus</a> <a href="#"
								class="list-group-item">Porta ac consectetur ac</a> <a href="#"
								class="list-group-item">Vestibulum at eros</a> -->
							<a class="list-group-item active"> 公告列表 </a>
							<c:forEach items='${notifications}' var='notification'>

								<a href="newdetail.do?id=${notification.id }"
									class="list-group-item">${notification.title }</a>

							</c:forEach>


						</div>
					</div>
					<div class="col-lg-12">
						<!-- <nav>
                                                                                <ul class="pagination">
                                                                                    <li class="disabled">
                                                                                        <a href="#">&laquo;</a>
                                                                                    </li>
                                                                                    <li class="active">
                                                                                        <a href="#">1
                                                                                            <span class="sr-only">(current)</span>
                                                                                        </a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">2</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">3</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">4</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">5</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">&raquo;</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </nav> -->

						<nav>
							<ul class="pagination">
								<!-- 上一页 按钮 -->

								<c:choose>
									<c:when test="${page != 1}">
										<li><a href="newlist.do?page=${page-1}">上一页</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="newlist.do?page=${page}">上一页</a></li>
									</c:otherwise>
								</c:choose>

								<!-- 页数列表 -->
								<c:forEach items="${pageList}" var="item">
									<c:choose>
										<c:when test="${item == page}">
											<li><a href="newlist.do?page=${item}"
												class="currentPage">${item}</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="newlist.do?page=${item}">${item}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<!-- 下一页 按钮 -->
								<c:choose>
									<c:when test="${page != totalPages}">
										<li><a href="newlist.do?page=${page+1}">下一页</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="newlist.do?page=${page}">下一页</a></li>
									</c:otherwise>
								</c:choose>

								<!-- 直接跳转 -->
								<li><a style="padding: 3px 12px;">共${totalPages}页 -向<input
										type="text" id="jumpTo" />页<input type="button" value="跳转"
										onclick="jumpTo(${totalPages})" /></a></li>


							</ul>


						</nav>
					</div>
				</div>
			</div>
			<!-- End Sidebar-->

		</div>
		<!--row end-->
	</div>
	<div class="clearfix"></div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!--[if lt IE 9]>
		<script src="../js/html5shiv.min.js"></script>
		<script src="../js/respond.min.js"></script>
	<![endif]-->
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bootbox.min.js"></script>
	<script src="../dist/jquery.cokie.min.js"></script>
	<script src="../js/kg.js"></script>
	<script>
		function jumpTo(maxPage) {
			var page = $("#jumpTo").val();
			if (page > maxPage || page < 1) {
				bootbox.dialog({
					message : "对不起，无法到达该页",
				});
			} else {
				$('body').load('newlist.do?page=' + page);
			}
		}
	</script>
</body>
</html>