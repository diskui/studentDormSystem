<%@page import="admin.daofactory.DaoFactory"%>
<%@page import="admin.dao.WaterElectricityInterface"%>
<%@page import="student.data.Paybill"%>
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
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
        <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css" />
        <title>水费</title>
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
 	
 	WaterElectricityInterface water = DaoFactory.getWaterElectricityMethod();
 	String area = student.getArea();
 	String build = student.getBuild();
 	String room = student.getRoom();
 	int watermoney = water.findWaterMoney(area, build, room);
 	%>
    <div class="container-fluid ygyd-wrapper"><!-- 框架 -->
    
    <div style="height: 15px;"></div>
    
        <div class="row"><!--相关统计-->

        <div class="col-sm-8">
          <section class="panel">
            <div class="panel-heading">水费统计(吨)</div>
            <div class="panel-body">
              <div class="echarts" id="water" style="height:300px; height:350px"></div>
            </div>
          </section>
        </div>
        
        <div class="col-sm-4">
          <section class="panel"style="height: 437px;">
           <div class="panel-heading">详细信息</div>
           <div class="panel-body">
   			 <blockquote class="layui-elem-quote" style="margin-top: 36px;">
       			 <span>宿舍位置：<%=student.getArea()%>    <%=student.getBuild()%>号楼    <%=student.getRoom()%>房间</span>
    		 </blockquote>
    		  <blockquote class="layui-elem-quote"style="margin-top: 36px;">
       			 <span>用水类型：居民用水</span>
    		 </blockquote>
    		  <blockquote class="layui-elem-quote"style="margin-top: 36px;">
       			 <span>剩余水费：<%=watermoney%>元</span>
    		 </blockquote>
    		 <button class="layui-btn" onclick="water_add('充值水费','Water_add.jsp','450','350')" style="margin-top: 36px;font-size: 20px;">充值水费</button>
    		 <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right;"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
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
       		    <span>举报电话：谢老师 18837017412</span>
    	      </blockquote>
    	       <blockquote class="layui-elem-quote" style="margin-top: 20px;width: 400px;margin-left: 100px;">
       		    <span>咨询电话：杨老师 15936417561</span>
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
    var myChart = echarts.init(document.getElementById('water'));
    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '用水量',
            //副标题  subtext: '纯属虚构',
            x: 'center'
        },
        //color: ['#3398DB'],
        tooltip: {
            trigger: 'axis',
            axisPointer: { // 坐标轴指示器，坐标轴触发有效
                type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [{
            type: 'category',
            data: ['第一周', '第二周', '第三周', '第四周', '第五周', '第六周', '第七周', '第八周', '第九周', '第十周',
            	'第十一周', '第十二周', '第十三周', '第十四周', '第十五周', '第十六周', '第十七周', '第十八周'],
            axisTick: {
                alignWithLabel: true
            }
        }],
        yAxis: [{
            type: 'value'
        }],
        series: [{
            name: '用水量',
            itemStyle: {
                normal: {
                    //好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                            '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                            '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                            '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                        ];
                        return colorList[params.dataIndex]
                    },
                    //以下为是否显示，显示位置和显示格式的设置了
                    label: {
                        show: true,
                        position: 'top',
               //                             formatter: '{c}'
                        formatter: '{c}\n{b}'
                    }
                }
            },
            type: 'bar',
            barWidth: '60%',
            data: [<%=waterbill.getWeek1()%>, <%=waterbill.getWeek2()%>, <%=waterbill.getWeek3()%>, <%=waterbill.getWeek4()%>,
            	<%=waterbill.getWeek5()%>, <%=waterbill.getWeek6()%>, <%=waterbill.getWeek7()%>, <%=waterbill.getWeek8()%>, 
            	<%=waterbill.getWeek9()%>, <%=waterbill.getWeek10()%>,<%=waterbill.getWeek11()%>,<%=waterbill.getWeek12()%>,
            	<%=waterbill.getWeek13()%>, <%=waterbill.getWeek14()%>, <%=waterbill.getWeek15()%>, <%=waterbill.getWeek16()%>, 
            	<%=waterbill.getWeek17()%>,<%=waterbill.getWeek18()%>]
        }]
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
function water_add(title,url,w,h){
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