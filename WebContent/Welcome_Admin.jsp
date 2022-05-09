<%@page import="admin.data.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="./css/x-admin.css" media="all" />
    <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="./css/Welcome.css" type="text/css" />
    <title>宿舍管理</title>
 </head>
 <body>
	<%
 	Admin admin =  ((ArrayList<Admin>)session.getAttribute("adminlist")).get(0); //获取数据库信息
 	%>
  <div class="x-body"><!-- 页面框架 -->
  
    <blockquote class="layui-elem-quote"><!-- 欢迎 -->
        <span><%=admin.getAdminname()%>老师，欢迎使用学生宿舍管理系统！</span>
    </blockquote><!-- @欢迎 -->
    
    <div class="row"><!-- 宿舍信息 -->
    
    	<div class="col-xs-6 col-sm-4 col-md-2" ><!-- 宿舍信息： -->
    	<section class="panel bgys"><!-- 灰色框 -->
    		<div style="font-size: 30px; margin-left: 40px; font-family: STCaiyun;margin-top: 28px;font-weight: bold;">楼栋信息：</div>
    	</section><!-- @灰色框 -->
    	</div><!-- @宿舍信息： -->
    
        <div class="col-xs-6 col-sm-4 col-md-2"><!-- 人数 -->
            <section class="panel bgys"><!-- 灰色框 -->
                <div class="symbol bgcolor-blue " style="margin-left:70px;"><!-- 底色 -->
                    <i class="fa iconfont"></i><!-- @图标 -->
                </div><!-- @底色 -->
                <div class="value tab-menu" bind="1" style="margin-right: 45px;"><!-- 信息 -->
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="宿舍人数"><i class="iconfont " data-icon=""></i> <h1>800</h1> </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="宿舍人数"> <i class="iconfont " data-icon=""></i><span>楼栋人数</span></a>
                </div><!-- @信息 -->
            </section><!-- @灰色框 -->
        </div><!-- @人数 -->
        
        <div class="col-xs-6 col-sm-4 col-md-2 ">
            <section class="panel bgys">
                <div class="symbol bgcolor-commred"style="margin-left:70px;">
                    <i class="glyphicon glyphicon-tent"></i>
                </div>
                <div class="value tab-menu" bind="1"style="margin-right: 45px;margin-top: 13px;">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="苑区"> <i class="iconfont " data-icon=""></i> <h1 style="font-size: 30px;">东苑</h1> </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="苑区"> <i class="iconfont " data-icon=""></i><span>苑区</span></a>
                </div>
            </section>
        </div>
        
        <div class="col-xs-6 col-sm-4 col-md-2 ">
            <section class="panel bgys">
                <div class="symbol bgcolor-dark-green"style="margin-left:70px;">
                    <i class="glyphicon glyphicon-oil"></i>
                </div>
                <div class="value tab-menu" bind="1"style="margin-right: 45px;">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="楼号"> <i class="iconfont " data-icon=""></i> <h1>23</h1> </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="楼号"> <i class="iconfont " data-icon=""></i><span>楼号</span></a>
                </div>
            </section>
        </div>
        
        <div class="col-xs-6 col-sm-4 col-md-2 ">
            <section class="panel bgys">
                <div class="symbol bgcolor-yellow-green"style="margin-left:70px;">
                    <i class="glyphicon glyphicon-home"></i>
                </div>
                <div class="value tab-menu" bind="1"style="margin-right: 45px;">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="宿舍号"> <i class="iconfont " data-icon=""></i> <h1>202</h1> </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="宿舍号"> <i class="iconfont " data-icon=""></i><span>宿舍数</span></a>
                </div>
            </section>
        </div>
        
        <div class="col-xs-6 col-sm-4 col-md-2 ">
            <section class="panel bgys">
                <div class="symbol bgcolor-dark-green"style="margin-left:70px;">
                    <i class="glyphicon glyphicon-unchecked"style="margin-left: 2px;"></i>
                </div>
                <div class="value tab-menu" bind="1"style="margin-right: 45px;">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="面积"> <i class="iconfont " data-icon=""></i> <h1>6</h1> </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="面积"> <i class="iconfont " data-icon=""></i><span>楼层</span></a>
                </div>
            </section>
        </div>
        
    </div><!-- @宿舍信息 -->
    
    <fieldset class="layui-elem-field layui-field-title site-title"><!--分割线-->
        <legend><a name="default">数据统计</a></legend>
    </fieldset>
    
    <!--相关统计-->
    <div class="row">
    
        <div class="col-sm-4">
            <section class="panel">
                <div class="panel-heading"> 用电量(度) </div><!--@标题-->
                <div class="panel-body"><!--表格-->
                    <div class="echarts" id="main" style="height:300px; height:350px"></div>
                </div><!--@表格-->
            </section>
        </div>
        
        <div class="col-sm-4">
            <section class="panel">
                <div class="panel-heading">用水量(吨)</div>
                <div class="panel-body">
                    <div class="echarts" id="years" style="height:300px; height:350px"></div>
                </div>
            </section>
        </div>
        
        <div class="col-sm-4">
            <section class="panel">
                <div class="panel-heading">楼栋年级分布(人)</div>
                <div class="panel-body">
                    <div class="echarts" id="area" style="height:300px; height:350px"></div>
                </div>
            </section>
        </div>
        
    </div>
    
  </div><!-- @页面框架 -->

<script src="./lib/layui/layui.js" charset="utf-8"></script>
<script src="./js/echarts.min.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data:['楼栋用电量','苑区平均用电量']
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
            data:["第一周","第二周","第三周","第四周","第五周","第六周","第七周"]
        },
        yAxis: {
            type: 'value',
            //boundaryGap: false,
            //data:['1','2','3','4','5','6','7']
        },
        series: [
            {
                name:'楼栋用电量',
                type:'line',
                /*stack: '总量',*/
                data:[12,13,12,14,15,16,14]              
            },
            {
                name:'苑区平均用电量',
                type:'line',
                /*stack: '总量',*/
                data:[12,14,15,15,13,16,14]               
            }
        ]
    };


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

<script type="text/javascript">
    // 指定图表的配置项和数据
    var myChart = echarts.init(document.getElementById('area'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '楼栋年级分布',
            //subtext: '文章总数',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        itemStyle: {
            normal: {
                //好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                color: function(params) {
                    // build a color map as your need.
                    var colorList = [
                        '#f36f8a','#B5C334','#FCCE10','#E87C25','#27727B',
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
                    formatter: '{b}\n{c}'
                }
            }
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['18级', '19级', '20级', '21级', '研究生' ]
        },
        series: [{
            name: '人数占比',
            type: 'pie',
            radius: '55%',
            center: ['50%', '60%'],
            data: [
                {value: 150, name: '18级'} ,
                {value: 200, name: '19级'} ,
                {value: 200, name: '20级'} ,
                {value: 200, name: '21级'} ,
                {value: 50, name: '研究生'} ,
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('years'));

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
            data: ['第一周', '第二周', '第三周', '第四周', '第五周', '第六周', '第七周', '第八周', '第九周', '第十周'],
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
            data: [2, 3, 2, 3, 4, 2, 2, 3, 4, 2]
        }]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

</body>
</html>