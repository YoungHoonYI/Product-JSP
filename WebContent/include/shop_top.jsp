<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/1c8b531657.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap');
body {
  font-family: 'Noto Sans KR', sans-serif;
}

.cate_a {
	text-decoration: none;
	color: white;
}

.bar{
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #263343;
	padding: 8px 12px;
	
	margin-bottom: 30px;
}


.logo{
	font-size:24px;
	color:white;
}

.logo i{
	color:white;
}

.menu{
	display: flex;
	list-style: none;
	padding-left: 0;
	z-index: 1;
	margin-top: 17px;
}

.menu li{
	padding: 8px 20px;
	
	margin:5px 30px;
	float: left;
	position: relative;
	padding:0;
	
}

.menu li a{
	display: block;
	margin:0;
	padding: 7px 8px;
}

.menu ul{
	list-style: none;
	margin: 0;
	padding: 0;
	position:absolute;
	left:0;
	top: 40px;
	width: 105px;
	background: #263343;
	text-align: center;
	border-radius: 4px;
}

.menu ul li:hover a{
	border-radius: 4px;
	background-color: white;
	
}

.menu ul li{
	float: none;
	margin:0;
	padding: 0;
	font-size: 13px;
	
	display:none;
}

.menu ul{
	list-style: none;
	margin:0;
	padding: 0;
	position: absolute;
	left: 0;
	top: 38px;
	width: 105px;
	background: #263343;
	text-align: center;
	opacity: 0;
	
}

.menu li:hover ul{
	opacity: 1;
}

.menu li:hover ul li{
	height: 35px;
	overflow: visible;
	padding: 0;
	
	display: block;
}

.menu li:hover > a{
	background-color: white;
	color: black;
	border-radius: 4px;
}

.logout{
	list-style: none;
	color: white;
	display: flex;
	padding-left: 0;
	margin-top: 17px;

}

.logout li {
	padding: 3px;
}

@media screen and (max-width: 666px) {
	.bar{
		flex-direction: column;
		align-items: flex-start;
		padding: 8px 24px;
	}
	
	.menu{
		flex-direction: column;
		align-items: center;
		width: 100%;
	}
	
	.menu li{
	width: 100%;
	text-align: center;
	}
	
	.logout{
		justify-content: center;
		width: 100%;
	}
	
}

</style>

</head>
<body>

<nav class="bar" >
	
	<div class="logo">
		<img class="img" src="images/mainlogo.png">
	</div>
	
	<ul class="menu">
		<li><a class="cate_a" href="<%=request.getContextPath() %>/shop_login_ok.do?code=1">Home</a></li>
		
		<li><a class="cate_a" href="<%=request.getContextPath() %>/shop/shop_info.jsp">매  장</a>
			<ul class="sub">
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop/shop_info.jsp">Shop Info</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/user_apple_product.do">제품목록</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop_board_list.do">공지사항</a></li>
			</ul>
		</li>
		
		<li><a class="cate_a" href="<%=request.getContextPath() %>/user_product_list.do">재  고</a>
			<ul class="sub">
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/user_product_list.do">재고관리</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop_order.do">발주 폼</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop_order_check.do">발주내역</a></li>
			</ul>
		</li>
		
		<li><a class="cate_a" href="<%=request.getContextPath() %>/shop_weekly.do">매  출</a>
			<ul class="sub">
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop_weekly.do">주간 매출</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop_monthly.do">월 매출</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop_summary.do">매출 조회</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/shop_report.do">매출 보고</a></li>
			</ul>
		</li>
		
	</ul>
	
	<ul class="logout">
		<li> <a class="cate_a" href="#">${shopName } &nbsp;</a> </li>
		<li><i class="fas fa-sign-in-alt"></i></li>
		<li><a class="cate_a" href="<%=request.getContextPath() %>/user_logout.do">Logout</a></li>
	</ul>
</nav>



</body>
</html>