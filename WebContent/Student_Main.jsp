<%@page import="student.data.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
   <meta charset="utf-8">
   <meta name="renderer" content="webkit">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
   <meta name="apple-mobile-web-app-status-bar-style" content="black">
   <meta name="apple-mobile-web-app-capable" content="yes">
   <meta name="format-detection" content="telephone=no">
   <link rel="stylesheet" href="./css/x-admin.css" media="all">
   <link rel="stylesheet" href="./css/Main.css">
   <link rel="stylesheet" href="./css/font-awesome.min.css">
   <link rel="stylesheet" href="./iconfont/iconfont.css">
   <title>学生宿舍管理系统-主页</title>
 </head>

 <body>
 	<%
 	Student student =  ((ArrayList<Student>)session.getAttribute("studentlist")).get(0); //获取数据库信息
 	%>
	<div class="layui-layout layui-layout-admin"> <!-- layout样式 -->
	<!--顶端侧导航区域-->
	  <div class="layui-header header header-demo"><!-- 顶端导航条框架 -->
	    <div class="layui-main"><!-- 顶端导航条内容 -->
	      <div class="admin-logo-box"><!-- logobox -->
	      	<img  src="./picture/Login/logo.png" id="logo">
	        <a class="logo" title="logo"> 学生宿舍管理系统</a>
	        <div class="larry-side-menu"><!-- 左侧导航条收缩按钮 -->
	          <i class=" layui-icon iconfont" aria-hidden="true">&#xe83c;</i>
	        </div><!-- @左侧导航条收缩按钮 -->
	      </div><!-- @logobox -->
	      
	      <ul class="layui-nav layui-layout-left layui-ygyd-menu" style="position:absolute; left:250px;"><!-- 顶端导航条控制左侧导航条按钮 -->
	        <li class="layui-nav-item daohang" ids="#table1"><a href="javascript:;">我的宿舍</a></li>
	        <li class="layui-nav-item daohang" ids="#table2"><a href="javascript:;">我的苑区</a></li>
	      </ul><!-- @顶端导航条控制左侧导航条按钮 -->
	
	      <ul class="layui-nav" lay-filter=""><!-- 顶端导航条右端内容-->
	      
	        <li class="layui-nav-item" id="time"></li><!-- @时间-->
	        
	        <li class="layui-nav-item"><!-- @系统公告-->
	          <a href="" title="系统公告">系统公告</a>
	        </li>
	        
	        <li class="layui-nav-item"><!-- @消息-->
	          <a href="" title="消息"><i class="layui-icon" style="top: 1px;">&#xe63a;</i></a>
	        </li>
	        
	        <li class="layui-nav-item"><!-- @用户小头像-->
	          <img src="./images/logo.png" class="layui-circle" style="border: 2px solid #A9B7B7;" width="35px" alt="">
	        </li>
	        
	        <li class="layui-nav-item"> <a href="javascript:;"><%= student.getStudentname()%></a><!-- 下拉框-->
	          <dl class="layui-nav-child"><!-- 二级菜单 -->
	            <dd><a href="">个人信息</a></dd>
	            <dd><a href="Student_Login.html">切换帐号</a></dd>
	            <dd><a href="Student_Login.html">退出</a></dd>
	          </dl><!-- @二级菜单 -->
	        </li><!-- @下拉框-->
	        
	        <li class="layui-nav-item x-index"><a href="">前台首页</a></li>
	        
	      </ul><!-- @顶端导航条右端内容-->
	      
	    </div><!-- @顶端导航条内容 -->
	  </div><!-- @顶端导航条样式 -->
	  <!--@顶端侧导航区域-->
	
	<!--左侧导航区域-->
	  <!--左侧导航1-->
	  <div class="layui-side layui-bg-black x-side show_list" style="left:0px;" id="table1"> <!--左侧导航框架-->
	  
	    <div style="height: 130px; width: 220px; "><!--用户大头像-->
	      <a class="img" title="我的头像" style="display: block;width: 80px;height: 80px;margin: 10px auto 10px;">
	        <img src="./images/logo.png" class="userAvatar" style="display: block;width: 100%;height: 100%;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;border: 4px solid #44576b;box-sizing: border-box;">
	      </a>
	      <p style=" display: block;width: 100%;height: 25px;color: #ffffff;text-align: center;font-size: 12px;white-space: nowrap;line-height: 25px;overflow: hidden;">
	        你好！<span class="userName"><%= student.getStudentname()%></span>, 欢迎回来
	      </p>
	    </div><!--@用户大头像-->
	    
	    <div class="layui-side-scroll"><!-- 分割 -->
	    
	      <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side"><!--左侧导航内容-->
	      
	        <li class="layui-nav-item"><!--第一行-->
	         <a class="javascript:;" href="javascript:;"> <i class="iconfont icon-jinbi"></i><cite>生活缴费</cite> </a>
	          <dl class="layui-nav-child">
	            <dd class=""> <a href="javascript:;" _href="./Water.jsp"> <cite>充值水费</cite> </a> </dd>
	            <dd class=""> <a href="javascript:;" _href="./Electricity.jsp"> <cite>充值电费</cite> </a> </dd>
	          </dl>
	        </li><!--@第一行-->
	        
	        <li class="layui-nav-item"><!--第二行-->
	         <a class="javascript:;" href="javascript:;"> <i class="iconfont icon-weixiufuwu"></i><cite>故障报修</cite> </a>
	          <dl class="layui-nav-child">	            
	            <dd class=""> <a href="javascript:;" _href="./Pipeline_repair.jsp"> <cite>管道报修</cite> </a> </dd>
	            <dd class=""> <a href="javascript:;" _href="./Electricapp_repair.jsp"> <cite>电器报修</cite> </a> </dd> 
	            <dd class=""> <a href="javascript:;" _href="./Furniture_repair.jsp"> <cite>门窗桌椅报修</cite> </a> </dd>
	            <dd class=""> <a href="javascript:;" _href="./FloorWall_repair.jsp"> <cite>地板墙体报修</cite> </a> </dd>  
	          </dl>
	        </li><!--@第二行-->
	        
	        <li class="layui-nav-item"> <!--第三行-->
	         <a class="javascript:;" href="javascript:;"><i class="iconfont icon-biaoqing_beishang"></i><cite>投诉举报</cite> </a>
	          <dl class="layui-nav-child">
	            <dd class=""> <a href="javascript:;" _href="./Complain_dorm.jsp"> <cite>投诉举报宿舍</cite> </a> </dd>
	            <dd class=""> <a href="javascript:;" _href="./Complain_admin.jsp"> <cite>投诉举报管理员</cite> </a> </dd>
	          </dl>
	        </li><!--@第三行-->
	        
	        <li class="layui-nav-item"> <!--第四行-->
	         <a class="javascript:;" href="javascript:;"><i class="iconfont icon-cangku_daozhan"></i><cite>转宿申请</cite> </a>
	          <dl class="layui-nav-child">
	            <dd class=""> <a href="javascript:;" _href="./Dorm_change.jsp"> <cite>我要转宿</cite> </a> </dd>
	          </dl>
	        </li> <!--@第四行-->
	
	      </ul><!--@左侧导航内容-->
	    </div><!-- @分割 -->
	  </div><!--@左侧导航框架-->
	  <!--@左侧导航1-->
	  
	  
<!----------------------------------------------------------------------------------------------------------------------------------------------->
	  
	  
	  <!--左侧导航2-->
	  <div class="layui-side layui-bg-black x-side hide_lits " style="left:0px;" id="table2"><!--左侧导航框架-->
	  
	    <div style="height: 130px; width: 220px; " class="head-img" ><!--用户大头像-->
	      <a class="img" title="我的头像" style="display: block;width: 80px;height: 80px;margin: 10px auto 10px;">
	        <img src="./images/logo.png" class="userAvatar" style="display: block;width: 100%;height: 100%;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;border: 4px solid #44576b;box-sizing: border-box;">
	      </a>
	      <p style=" display: block;width: 100%;height: 25px;color: #ffffff;text-align: center;font-size: 12px;white-space: nowrap;line-height: 25px;overflow: hidden;">
	        你好！<span class="userName">admin</span>, 欢迎回来
	      </p>
	    </div><!--@用户大头像-->
	     
	    <div class="layui-side-scroll"><!-- 分割 -->
	    
	      <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side"><!--左侧导航内容-->
	
	
	        <li class="layui-nav-item"> <!-- 第一行 -->
	         <a class="javascript:;" href="javascript:;"> <i class="iconfont icon-tupian"></i><cite>苑区详情</cite> </a>
	          <dl class="layui-nav-child">
	            <dd class=""> <a href="javascript:;" _href="Area_introduction.jsp"> <cite>苑区介绍</cite> </a> </dd>
	            <dd class=""> <a href="javascript:;" _href="Area_scenery.html"> <cite>苑区风景</cite> </a> </dd>
	          </dl>
	        </li><!-- @第一行 -->
	        
	        <li class="layui-nav-item"> <!-- 第二行 -->
	         <a class="javascript:;" href="javascript:;"> <i class="iconfont icon-duanxin"></i><cite>苑区留言板</cite> </a>
	          <dl class="layui-nav-child">
	            <dd class=""> <a href="javascript:;" _href="./Message_box.jsp"> <cite>留言讨论区</cite> </a> </dd>
	          </dl>
	        </li><!-- @第二行 -->
	        
	      </ul><!--@左侧导航内容-->
	    </div><!-- @分割 -->
	  </div><!--@左侧导航框架-->
	  <!--@左侧导航2-->
	  <!--@左侧导航区域-->


<!----------------------------------------------------------------------------------------------------------------------------------------------->

	
	  <!--核心展示区域-->
	  <div class="layui-tab layui-tab-card site-demo-title x-main" lay-filter="x-tab" lay-allowclose="true" style="left: 220px;border-left: solid 2px;">
	  
	    <ul class="layui-tab-title"><!--展示区导航-->
	      <li class="layui-this"> 我的首页 <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> </li>
	    </ul><!--@展示区导航-->
	    
	    <div class="layui-tab-content site-demo site-demo-body"><!--展示区-->
	      <div class="layui-tab-item layui-show">
	        <iframe frameborder="0" src="./Welcome.jsp" class="x-iframe"></iframe>
	      </div>
	    </div><!--@展示区-->
	    
	  </div>
	  
	  <div class="site-mobile-shade"> </div>
	  <!--@核心展示区域-->

</div><!-- @layout样式 -->

<!--特效代码-->
<script src="./lib/layui/layui.js" charset="utf-8"></script>
<script src="./js/x-admin.js"></script>
<script src="./js/jquery.min.js"></script>
<script src="./js/x-layui.js" charset="utf-8"></script>

<script>
    $(".daohang").click(function(){
        var table = $(this).attr("ids");
        var ids = $(".show_list").attr("id");
        $("#"+ids+"").addClass("hide_lits");
        $("#"+ids+"").removeClass("show_list");
        $(""+table+"").removeClass("hide_lits");
        $(""+table+"").addClass("show_list");
    })
</script>

<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery
        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层
        //以上模块根据需要引入
    });

    function logout() {
        $.ajax({
            type:"post",
            url:"",
            data:{e:1},
            dataType:"json",
            success:function (data) {
                if(data.status==1){
                    layer.msg(data.info,{icon:1,time:1000});
                    setTimeout("window.location.href='{:url('Login/login')}'",2000);return false;
                    return false;
                }else{
                    layer.msg(data.info,{icon:5,time:2000});return false;
                }
            }

        })
        return false;
    }

    function member_show(title,url,id,w,h){
      x_admin_show(title,url,w,h);
    }
</script>

<script>
    //顶部时间
    function getTime(){
        var myDate = new Date();
        var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
        var myMonth = myDate.getMonth()+1; //获取当前月份(0-11,0代表1月)
        var myToday = myDate.getDate(); //获取当前日(1-31)
        var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
        var myHour = myDate.getHours(); //获取当前小时数(0-23)
        var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
        var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
        var week = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];
        var nowTime;

        nowTime = myYear+'-'+fillZero(myMonth)+'-'+fillZero(myToday)+'&nbsp;&nbsp;'+fillZero(myHour)+':'+fillZero(myMinute)+':'+fillZero(mySecond)+'&nbsp;&nbsp;'+week[myDay]+'&nbsp;&nbsp;';
        //console.log(nowTime);
        $('#time').html(nowTime);
    };
    function fillZero(str){
        var realNum;
        if(str<10){
            realNum	= '0'+str;
        }else{
            realNum	= str;
        }
        return realNum;
    }
    setInterval(getTime,1000);
</script>

</body>
</html>