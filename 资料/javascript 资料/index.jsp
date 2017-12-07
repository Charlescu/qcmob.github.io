<!Doctype HTML>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<%=path%>/assets/catering/css/base.css" />
<link rel="stylesheet"	href="<%=path%>/assets/plugins/bootstrap/css/bootstrap.min.css">
<script src="<%=path%>/assets/plugins/jQuery/jquery-1.9.1.min.js"></script>
<script	src="<%=path%>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path%>/assets/catering/js/jQuery.rotate.js"></script>

<script type="text/javascript">
$(function(){
	$('#sub-menu-board').click(function(){//点击a标签  
	if($('#sub-board').is(':hidden')){//如果当前隐藏  
		 
		$('#sub-board').show();//那么就显示div  
		}else{
        $('#sub-board').hide();//就隐藏div  
        }    
    });
  $("#sub-menu-dish").click(function(){
	if($("#sub-dish").is(":hidden")){
		$("#sub-dish").show();
	}else{
		$("#sub-dish").hide();
	}
  });
  $("#sub-menu-order").click(function(){
		if($("#sub-order").is(":hidden")){
			$("#sub-order").show();
		}else{
			$("#sub-order").hide();
		}
	  });
  $("#sub-menu-print").click(function(){
		if($("#sub-print").is(":hidden")){
			$("#sub-print").show();
		}else{
			$("#sub-print").hide();
		}
	  });
})  

</script>

<style>
html,body,#container{
height:100%;
width:100%;
margin:0px;
padding:0px;
}

#top_div{
	height:15%;
	min-height:80px;
	background-color:gray;
}
#middle_div{
  height:100%;
}
#left-bar{
 height:100%;
}
.col-lg-12,.col-lg-2{
padding:0px;
}
#sidebar{
 height:100%;
min-width:80px;
background-color:#394A59;
}
#sub-board,#sub-dish,#sub-order,#sub-print{

list-style:none;
display:none;
}
.sidebar-menu{

list-style:none;
}
.sidebar-menu,.sub-order{
padding:0px;
}
.sidebar-menu li:visited{
background-color:#2E3B46;
}
.sidebar-menu li:hover{
background-color:#2E3B46;
}
.sidebar-menu li.sub-menu-dish,.sidebar-menu li.sub-menu-order,.sidebar-menu li.sub-menu-board,.sidebar-menu li.sub-menu-print{
padding:10px 0px 10px 30px;
border-bottom:1px solid #ccc;
}
.sidebar-menu li a{
text-decoration: none;
color:white;
font-size:18px;
}
.sub-menu-print a,.sub-menu-dish a,.sub-menu-order a,.sub-menu-board a{
padding-left:30px;
}
.sub-print,.sub-order,.sub-dish,.sub-board{
padding:0px;
background-color:#2E3B46;
}
</style>
</head>
<body>

	<div id="container" class="container-fulid">

		<!-- top -->
		<div class="col-lg-12 top" id="top_div">
			<!-- logo start -->
			<div class="col-lg-2">
				logo <img src="">
			</div>
			<!-- logo end -->

			<!-- search start -->
			<div class="col-lg-7">
				<div class="input-group ">
					<input type="text" class="form-control" placeholder="Username"
						aria-describedby="basic-addon1">
				</div>
			</div>
			<!-- search end -->

			<!-- login start -->
			<div class="col-lg-3">
				admin <img src="">
			</div>
			<!-- login end -->
		</div>
		
		<!--middle  -->
	 <div class="col-lg-12" id="middle_div">
		<div class="col-lg-2" id="left-bar">
			<div id="sidebar" class="nav-collapse">
				<ul class="sidebar-menu">
					<li class="sub-menu-board" id="sub-menu-board"><a href="javascript:void(0)" class=""> <i class="glyphicon glyphicon-th-list"></i> <span>开台</span> <span class="menu-arrow arrow_carrot-right"></span></a>
						<ul class="sub-board" id="sub-board">
							<li><a class="" href="">并台</a></li>
							<li><a class="" href="">转台</a></li>
						</ul>
					</li>
					<li class="sub-menu-dish" id="sub-menu-dish"><a href="javascript:void(0);" class=""> <i class="glyphicon glyphicon-list-alt"></i> <span>点菜</span> <span class="menu-arrow arrow_carrot-right"></span></a>
						<ul class="sub-dish" id="sub-dish">
							<li><a class="" href="">凉菜</a></li>
							<li><a class="" href="">热菜</a></li>
						</ul>
					</li>
					<li class="sub-menu-order" id="sub-menu-order"><a href="javascript:void(0);" class=""> <i class="glyphicon glyphicon-inbox"></i> <span>结算</span> <span class="menu-arrow arrow_carrot-right"></span></a>
						<ul class="sub-order" id="sub-order">
							<li><a class="" href="">结算呆呆</a></li>
							<li><a class="" href="">得得结算</a></li>
						</ul>
					</li>
					<li class="sub-menu-print" id="sub-menu-print"><a href="javascript:void(0);" class=""> <i class="glyphicon glyphicon-link"></i> <span>打印</span> <span class="menu-arrow arrow_carrot-right"></span></a>
						<ul class="sub-print" id="sub-print">
							<li><a class="" href="">打印报表</a></li>
							<li><a class="" href="">打印</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-lg-9">
		   <div class="clo-md-2">
		     
		   </div>
		</div>
	</div>
	
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
</div>


</body>
</html>
