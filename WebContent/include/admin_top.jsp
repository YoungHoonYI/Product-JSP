<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/1c8b531657.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap');
body {
  margin:0;
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
	top: 38px;
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
	
	display: none;
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

.fa-user-plus {
   
   font-size: 25px;
   margin-right: 30px;
   text-decoration: none;
   color: white;
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
		<img src="images/mainlogo.png">
	</div>
	
	<ul class="menu">
		<li><a class="cate_a" href="<%=request.getContextPath() %>/admin_main.do">Home</a></li>
		<li><a class="cate_a" href="<%=request.getContextPath() %>/admin/shop_info.jsp">???  ???</a>
			<ul class="sub">
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin/shop_info.jsp">Shop Info</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin_product_list.do">????????????</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin_board_list.do">????????????</a></li>
			</ul>
		</li>
		
		<li><a class="cate_a" href="<%=request.getContextPath() %>/admin_product_control.do">???  ???</a>
			<ul class="sub">
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin_product_control.do">????????????</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin_order.do">????????????</a></li>
			</ul>
		</li>
		
		<li><a class="cate_a" href="<%=request.getContextPath() %>/admin_weekly.do">???  ???</a>
			<ul class="sub">
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin_weekly.do">?????? ??????</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin_monthly.do">??? ??????</a></li>
				<li> <a class="cate_a" href="<%=request.getContextPath() %>/admin_summary.do">?????? ??????</a></li>
			</ul>
		</li>
		
	</ul>
	
	<ul class="logout">
		<li> <span style="font-size: 15px">????????????&nbsp;&nbsp;</span><a class="fas fa-user-plus" href="<%=request.getContextPath() %>/admin/shop_write.jsp"></a> </li>
		<li> <a class="cate_a" href="#">????????? &nbsp;</a> </li>
		<li><i class="fas fa-sign-in-alt"></i></li>
		<li><a class="cate_a" href="<%=request.getContextPath() %>/admin_logout.do">Logout</a></li>
	</ul>
	
</nav>

</body>
</html>