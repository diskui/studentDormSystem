<%@page import="admin.daofactory.DaoFactory"%>
<%@page import="admin.dao.WaterElectricityInterface"%>
<%@page import="admin.data.WaterElectricity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            水电费管理
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
        <link rel="stylesheet" href="./iconfont/iconfont.css">
        <link rel="stylesheet" href="./iconfont/iconfont.css">
    </head>
    <body>
    	<%
    		WaterElectricityInterface waterelectricitymethod = DaoFactory.getWaterElectricityMethod();
    		ArrayList<WaterElectricity> waterelectricitylist = waterelectricitymethod.findAllWaterElectricity();
    	%>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>水电费管理列表</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
            <table class="layui-table">
                <thead>
                    <tr>
                    	<th>
                            苑区
                        </th>
                        <th>
                            楼号
                        </th>
                        <th>
                            宿舍号
                        </th>
                        <th>
                            宿舍长
                        </th>
                        <th>
                            剩余水费
                        </th>
                        <th>
                            剩余电费
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                </thead>
                <tbody id="x-link">
                <%for(WaterElectricity waterelectricity:waterelectricitylist){
                	String area = waterelectricity.getArea();
                	String build = waterelectricity.getBuild();
                	String room = waterelectricity.getRoom();
                	int watermoney = waterelectricity.getWatermoney();
                	int electricitymoney = waterelectricity.getElectricitymoney();
                	String url = "WaterElectricity_change.jsp?area="+area+"&build="+build+"&room="+room+"&watermoney="+watermoney+"&electricitymoney="+electricitymoney+"";
                %>
                    <tr>
                        <td><%=waterelectricity.getArea()%></td>
                        <td><%=waterelectricity.getBuild()%></td>
                        <td ><%=waterelectricity.getRoom()%></td>
                        <td ><%=waterelectricity.getDormheader()%></td>
                        <td ><%=waterelectricity.getWatermoney()%></td>
                        <td ><%=waterelectricity.getElectricitymoney()%></td>
                        <td class="td-manage">
                       	 	<a title="修改" href="javascript:;" onclick="change('修改水电费','<%=url%>','600','450')" style="text-decoration:none"><i class="iconfont icon-bianji"></i></a>
                        	<a title="删除" href="javascript:;" onclick="commemt_del(this,'1')" style="text-decoration:none"><i class="iconfont icon-shanchu"></i></a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

            <div id="page"></div>
        </div>
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-layui.js" charset="utf-8"></script>
        <script>
            layui.use(['element','laypage','layer','form'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层
              form = layui.form();//弹出层
          })
              //以上模块根据需要引入
            
            /*删除*/
            function commemt_del(obj,id){
                layer.confirm('确定要删除此信息吗？',function(index){
                    //发异步删除数据
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                });
            }
            
            function change(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            </script>
            
    </body>
</html>