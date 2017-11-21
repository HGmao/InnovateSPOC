<%@ page language="java"
	import="java.util.*,com.base.Po.*,com.base.Dao.*,com.base.DaoImpl.*"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8" />
    <title>SPOC创新实验室动态列表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="renderer" content="webkit">
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
    
	<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<link href="../css/common.css" type="text/css" rel="stylesheet"/>
	<link href="../css/news_list.css" type="text/css" rel="stylesheet"/>

  </head>
  
  <body>
		<div class="header">

			<div class="Indextitle" id="J_m_nav">
					<div class="cc_c">
					  <div class="logo">
						<div class="logo_bg">						  
							<img src="../images/index/logo.png" width="200px">						
						</div>
					  </div>
					  <div class="menu">
						<ul>
						<li>
						  <a href="../index.jsp">
							<span class="name_ch">首页</span>
						  </a>
						</li>
                         <li>
							<a href="program.jsp">
							  <span class="name_ch">程序组</span>
							</a>
						  </li>
                         <li>
							<a href="UI.jsp">
							  <span class="name_ch">UI组</span>
							</a>
						  </li>
						<li>
							<a href="3D.jsp">
							  <span class="name_ch">3D组</span>
							</a>
						  </li>							
							 <li>
							<a href="CG.jsp">
						  	  <span class="name_ch">影视特效</span>
							</a>
						  </li>
							 <li>
							<a href="downloadfile.jsp">
						  	  <span class="name_ch">文件分享</span>
							</a>
						  </li>
						  <li>
							<a href="group_project.jsp">
						  <span class="name_ch">团队作品</span>
							</a>
						  </li>
						  <li>
							<a href="../login.html" target="_blank">
						  <span class="name_ch">登录</span>
							</a>
						  </li>						 
						</ul>
					  </div>
					  <div class="clear"></div>
					</div>
				</div>
		</div>
		
		<!-- 新闻列表 -->
		<div class="container-fluid">
			<div class="wrap">
				<h1 class="title">新闻列表</h1>
				<div class="list">
					<ul class="news">
						<c:forEach items='${notifications}' var='notification'>
						 		
						 		<li><a name="news" href="detailNew.do?id=${notification.id }"><p class="newline">${notification.title }</p><span class="date">${notification.time }</span></a></li>

								<%-- <div>
									<a name="news" href="detailNew.do?id=${notification.id }"
									class="list-group-item list_a">${notification.title }
									</a>
									<button id="delete" class="btn btn-danger btn-xs" type="button" value="${notification.id }">删除</button>
								</div> --%>
							</c:forEach>
						<!-- <li><a href="detailNew.jsp"><p class="newline">学校评为2016度非税收入“执收工作优秀单位fdasfdsafdsafdsafdsafdsaf”</p><span class="date">2017-06-09</span></a></li>
						<li><a href="detailNew.jsp"><span class="newline">学校评为2016度非税收入“执收工作优秀单位”</span><span class="date">2017-06-09</span></a></li>
						<li><a href="detailNew.jsp"><span class="newline">学校评为2016度非税收入“执收工作优秀单位”</span><span class="date">2017-06-09</span></a></li>
						<li><a href="detailNew.jsp"><span class="newline">学校评为2016度非税收入“执收工作优秀单位”</span><span class="date">2017-06-09</span></a></li>
						<li><a href="detailNew.jsp"><span class="newline">学校评为2016度非税收入“执收工作优秀单位”</span><span class="date">2017-06-09</span></a></li> -->
					</ul>
				</div>

				
			</div>
		</div>	
		
	</body>	
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/bootbox.min.js" type="text/javascript"></script>
	<script src="../js/news_list.js"></script>
</html>