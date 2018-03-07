<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->		
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="index.jsp">Yummy</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp" class="active">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">生日蛋糕<b class="caret"></b></a>
						</li>
					    <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">婚礼蛋糕<b class="caret"></b></a>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">儿童蛋糕<b class="caret"></b></a>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">特殊场合<b class="caret"></b></a>
						</li>								
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>	
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">                
						<form id="loginForm" action="${pageContext.request.contextPath}/user/userLogin" method="post">
							<fieldset id="body">
								<fieldset>
									<label for="email">用户名</label>
									<input type="text" name="email" id="email">
								</fieldset>
								<fieldset>
									<label for="password">密码</label>
									<input type="password" name="password" id="password">
								</fieldset>
								<input type="submit" id="login" value="登录">
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>记住用户</i></label>
							</fieldset>
							<p>新用户 <a class="sign" href="account.html">注册</a> <span><a href="#">忘记密码</a></span></p>
						</form>
					</div>
				</div>
				<div class="header-right cart">
					<a href="${pageContext.request.contextPath}/cake/cart"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--products-->
	<div class="products">	 
		<div class="container">
			<h2>Our Products</h2>			
			<div class="col-md-9 product-model-sec">
			
				<c:forEach items="${cakes }" var="cake">
					<div class="product-grid">
						<a href="${pageContext.request.contextPath}/cake/single?cakeId=${cake.cakeId }">
							<div class="more-product"><span> </span></div>						
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="images/${cake.p1 }" class="img-responsive" alt=""/>
								<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">							
								<button> View </button>
								</h4>
								</div>
							</div>
						</a>				
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${cake.cakeName }</h4>								
								<span class="item_price">${cake.getLp() }</span>
								<div class="ofr">
									<p class="pric1"><del>$2300.00</del></p>
									<p class="disc">[15% Off]</p>
								</div>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add items" value="Add">
								<div class="clearfix"> </div>
							</div>						
						</div>
					</div>
				</c:forEach>
				
				<!-- <div class="product-grid">
					<a href="single.jsp">
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="images/m9.png" class="img-responsive" alt=""/>
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button> View </button>
							</h4>
							</div>
						</div>
					</a>				
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$2000.00</span>
							<div class="ofr">
								<p class="pric1"><del>$2300.00</del></p>
								<p class="disc">[15% Off]</p>
							</div>
							<input type="text" class="item_quantity" value="1" />
							<input type="button" class="item_add items" value="Add">
							<div class="clearfix"> </div>
						</div>						
					</div>
				</div> -->
			</div>	
			
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>种类</h4>
						<div class="tab1">
							<ul class="place">								
								<li class="sort">鸡蛋蛋糕</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>								
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="${pageContext.request.contextPath}/cake/type?typeName=海绵蛋糕"><p>海绵蛋糕</p></a>
								<a href="${pageContext.request.contextPath}/cake/type?typeName=戚风蛋糕"><p>戚风蛋糕</p></a>
						    </div>
					    </div>						  
						<div class="tab2">
							<ul class="place">								
								<li class="sort">奶油蛋糕</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="${pageContext.request.contextPath}/cake/type?typeName=芝士蛋糕"><p>芝士蛋糕</p></a>
								<a href="${pageContext.request.contextPath}/cake/type?typeName=慕斯蛋糕"><p>慕斯蛋糕</p></a>	
								<a href="${pageContext.request.contextPath}/cake/type?typeName=翻糖蛋糕"><p>翻糖蛋糕</p></a>
								<a href="${pageContext.request.contextPath}/cake/type?typeName=杯子蛋糕"><p>杯子蛋糕</p></a>								
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">								
								<li class="sort">随行糕点</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="${pageContext.request.contextPath}/cake/type?typeName=布丁"><p>布丁</p></a>
								<a href="${pageContext.request.contextPath}/cake/type?typeName=面包"><p>面包</p></a>
						    </div>
					    </div>
						<!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!--//script -->	
					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>折扣</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>70% - 60% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						</div>
					</div>
				</section>  				 
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>价格</h4>
					<ul class="dropdown-menu1">
						<li><a href="">								               
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';" />
							</a></li>			
					</ul>
				</section>
				<!---->
				<script type="text/javascript" src="js/jquery-ui.min.js"></script>
				<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[ 
						$(window).load(function(){
						 $( "#slider-range" ).slider({
									range: true,
									min: 0,
									max: 100000,
									values: [ 500, 100000 ],
									slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
									}
						 });
						$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

						});//]]> 
					</script>
				<!---->
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>口味</h4>
					<div class="row row1 scroll-pane">
						<a href="${pageContext.request.contextPath}/cake/flavour?flavourName=水果"><div class="tab1">
							<ul class="place">								
								<li class="sort">水果</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					    					    
						<a href="${pageContext.request.contextPath}/cake/flavour?flavourName=奶油"><div class="tab1">
							<ul class="place">								
								<li class="sort">奶油</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					    
					    <a href="${pageContext.request.contextPath}/cake/flavour?flavourName=蜂蜜"><div class="tab1">
							<ul class="place">								
								<li class="sort">蜂蜜</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					   
					   <a href="${pageContext.request.contextPath}/cake/flavour?flavourName=巧克力"><div class="tab1">
							<ul class="place">								
								<li class="sort">巧克力</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>尺寸</h4>
					<div class="row row1 scroll-pane">
						<a href="${pageContext.request.contextPath}/cake/size?sizeName=06寸"><div class="tab1">
							<ul class="place">								
								<li class="sort">06寸</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					    					    
						<a href="${pageContext.request.contextPath}/cake/size?sizeName=08寸"><div class="tab1">
							<ul class="place">								
								<li class="sort">08寸</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					    
					    <a href="${pageContext.request.contextPath}/cake/size?sizeName=10寸"><div class="tab1">
							<ul class="place">								
								<li class="sort">10寸</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					   
					   <a href="${pageContext.request.contextPath}/cake/size?sizeName=12寸"><div class="tab1">
							<ul class="place">								
								<li class="sort">12寸</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					</div>
				</section>	
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>颜色</h4>
					<div class="row row1 scroll-pane">
						<a href="${pageContext.request.contextPath}/cake/color?colorName=白色"><div class="tab1">
							<ul class="place">								
								<li class="sort">白色</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					    					    
						<a href="${pageContext.request.contextPath}/cake/color?colorName=粉色"><div class="tab1">
							<ul class="place">								
								<li class="sort">粉色</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					    
					    <a href="${pageContext.request.contextPath}/cake/color?colorName=黑色"><div class="tab1">
							<ul class="place">								
								<li class="sort">黑色</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					   
					   <a href="${pageContext.request.contextPath}/cake/color?colorName=其他"><div class="tab1">
							<ul class="place">								
								<li class="sort">其他</li>							
							</ul>
							<div class="clearfix"> </div>
					    </div></a>
					</div>
				</section>			 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//products-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>公司</h4>
					<ul>
						<li><a href="products.html">产品</a></li>
						<li><a href="#">团队</a></li>
						<li><a href="#">公司简介</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>服务</h4>
					<ul>
						<li><a href="#">支持</a></li>
						<li><a href="#">常见问题</a></li>
						<li><a href="contact.html">联系我们</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>订单退货</h4>
					<ul>
						<li><a href="#">订单状态</a></li>
						<li><a href="#">网购协议</a></li>
						<li><a href="#">退货细则</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>法律顾问</h4>
					<ul>
						<li><a href="#">隐私策略</a></li>
						<li><a href="#">条款声明</a></li>
						<li><a href="#">社会责任</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>联系我们</h4>
					<ul>
						<li><a href="#"><img src="images/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="images/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="images/i3.png" alt=""/>Follow us on WeChat</a></li>
						<li><a href="#"><img src="images/i4.png" alt=""/>Follow us on QQ</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	</div>
</body>
</html>