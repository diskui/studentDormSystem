<%@page import="student.data.Paybill"%>
<%@page import="admin.daofactory.DaoFactory"%>
<%@page import="student.data.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="admin.dao.WaterElectricityInterface"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
        <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css" />
        <title>电费</title>
        <style type="text/css">
        legend { display: block; width:100px; border-bottom:0px; font-family: "Microsoft YaHei","Helvetica Neue";}
		legend a{ color:#666;} legend a:hover{ text-decoration:none;}
		.layui-table{ font-family: "Microsoft YaHei","Helvetica Neue";}
        </style>
    </head>
    <body>
    <%
 	Student student =  ((ArrayList<Student>)session.getAttribute("studentlist")).get(0); //获取数据库信息
 	Paybill waterbill =  ((ArrayList<Paybill>)session.getAttribute("billlist")).get(0);
 	Paybill electricitybill =  ((ArrayList<Paybill>)session.getAttribute("billlist")).get(1);
 	
 	WaterElectricityInterface electricity = DaoFactory.getWaterElectricityMethod();
 	String area = student.getArea();
 	String build = student.getBuild();
 	String room = student.getRoom();
 	int electricitymoney = electricity.findElectricityMoney(area, build, room);
 	%>
    <div class="container-fluid ygyd-wrapper"><!-- 框架 -->
    
    <div style="height: 15px;"></div>
    
        <div class="row"><!--相关统计-->

		<div class="col-sm-4">
          <section class="panel"style="height: 437px;">
           <div class="panel-heading">详细信息</div>
           <div class="panel-body">
   			 <blockquote class="layui-elem-quote" style="margin-top: 36px;">
       			 <span>宿舍位置：<%=student.getArea()%>    <%=student.getBuild()%>号楼    <%=student.getRoom()%>房间</span>
    		 </blockquote>
    		  <blockquote class="layui-elem-quote"style="margin-top: 36px;">
       			 <span>用电类型：居民用电</span>
    		 </blockquote>
    		  <blockquote class="layui-elem-quote"style="margin-top: 36px;">
       			 <span>剩余水费：<%=electricitymoney%>元</span>
    		 </blockquote>
    		 <button class="layui-btn" onclick="electricity_add('充值电费','Electricity_add.jsp','450','350')" style="margin-top: 36px;font-size: 20px;">充值电费</button>
    		 <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right;"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
           </div>
          </section>
        </div>

        <div class="col-sm-8">
          <section class="panel">
            <div class="panel-heading">电费统计(度)</div>
            <div class="panel-body">
              <div class="echarts" id="electricity" style="height:300px; height:350px"></div>
            </div>
          </section>
        </div>
    		  		    
        </div><!--@相关统计-->
        
         <fieldset class="layui-elem-field layui-field-title site-title"><!--分割线-->
        	<legend><a name="default">信息反馈</a></legend>
    	 </fieldset><!--@分割线-->
    	 
    	 <div class="row">
    	 
    	 	<div class="col-sm-6">
    	 	  <blockquote class="layui-elem-quote" style="margin-top: 20px;width: 400px;margin-left: 100px;">
       		    <span>举报电话：孟老师 138236514567</span>
    	      </blockquote>
    	       <blockquote class="layui-elem-quote" style="margin-top: 20px;width: 400px;margin-left: 100px;">
       		    <span>咨询电话：戚老师 18846865248</span>
    	      </blockquote>
    	 	</div>
    	 	
    	 	<div class="col-sm-4">
    	 	<form class="layui-form layui-form-pane" action="" style="margin-top: 15px;">
    	 	  <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                   <span>提出意见</span>
                 </label>
                 <div class="layui-input-block">
                    <textarea placeholder="您的宝贵意见，真宝贵" class="layui-textarea" name="info" id="info"></textarea>
                 </div>
              </div>
              </form>
    	 	</div>
    	 	<div class="col-sm-2">
    	 		<button class="layui-btn" lay-filter="add" lay-submit="" style="margin-top: 60px;font-size: 20px;">提交意见</button>
    	 	</div>
    	 </div>

    	 
    </div><!-- @框架 -->
     
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
	<script src="./js/echarts.min.js"></script>
    <script src="./js/x-layui.js" charset="utf-8"></script>
      
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('electricity'));

    // 指定图表的配置项和数据
    var option = {
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data:['用电量','苑区平均用电量']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        color: ['#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',

            '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',

            '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'],
            
        /*toolbox: {      //保存图片的功能模块
            feature: {    
                saveAsImage: {}
            }
        },*/
        
        xAxis: {
            type: 'category',
            //boundaryGap: false,
            data:["第一周","第二周","第三周","第四周","第五周","第六周","第七周",
            	"第八周","第九周","第十周","第十一周","第十二周","第十三周","第十四周",
            	"第十五周","第十六周","第十七周","第十八周"]
        },
        yAxis: {
            type: 'value',
            //boundaryGap: false,
            //data:['1','2','3','4','5','6','7']
        },
        series: [
            {
                name:'用电量',
                type:'line',
                /*stack: '总量',*/
                data:[<%=electricitybill.getWeek1()%>, <%=electricitybill.getWeek2()%>, <%=electricitybill.getWeek3()%>, <%=electricitybill.getWeek4()%>,
                	<%=electricitybill.getWeek5()%>, <%=electricitybill.getWeek6()%>, <%=electricitybill.getWeek7()%>, <%=electricitybill.getWeek8()%>, 
                	<%=electricitybill.getWeek9()%>, <%=electricitybill.getWeek10()%>,<%=electricitybill.getWeek11()%>,<%=electricitybill.getWeek12()%>,
                	<%=electricitybill.getWeek13()%>, <%=electricitybill.getWeek14()%>, <%=electricitybill.getWeek15()%>, <%=electricitybill.getWeek16()%>, 
                	<%=electricitybill.getWeek17()%>,<%=electricitybill.getWeek18()%>]              
            },
            {
                name:'苑区平均用电量',
                type:'line',
                /*stack: '总量',*/
                data:[12,14,15,15,13,16,14,13,15,16,14,16,14,16,14,15,14,13]               
            }
        ]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

<script>
layui.use(['laydate','element','laypage','layer'], function(){
    $ = layui.jquery;//jquery
  laydate = layui.laydate;//日期插件
  lement = layui.element();//面包导航
  laypage = layui.laypage;//分页
  layer = layui.layer;//弹出层
  //以上模块根据需要引入
    layer.ready(function(){ //为了layer.ext.js加载完毕再执行
      layer.photos({
        photos: '#x-img'
        //,shift: 5 //0-6的选择，指定弹出图片动画类型，默认随机
      });
    }); 
});

//弹出充值界面
function electricity_add(title,url,w,h){
    x_admin_show(title,url,w,h);
}

</script>

       <script>
        layui.use(['form','layer','upload'], function(){//layui.use
            $ = layui.jquery;
          var form = layui.form()
          ,layer = layui.layer;
        
          //监听提交
          form.on('submit(add)', function(){ //form.on
          
            var text = document.getElementById("info").value;
            
            if(text.length != 0){//if
                layer.alert("感谢您的意见", {icon: 6});
            }//if
            else{
                layer.alert("您的意见呢？", {icon: 5});
            }
            	return false;

          });//form.on
          
        });//layui.use
        </script>
                
    </body>
</html>