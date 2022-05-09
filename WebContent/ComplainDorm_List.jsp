<%@page import="admin.data.DormCom"%>
<%@page import="java.util.ArrayList"%>
<%@page import="admin.daofactory.DaoFactory"%>
<%@page import="admin.dao.ComplainInterface"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            投诉举报宿舍管理
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
        <link rel="stylesheet" href="./iconfont/iconfont.css">
    </head>
    <body>
    <%
    ComplainInterface dormcomplain = DaoFactory.getComplainMethod();
    ArrayList<DormCom> dormcomlist = dormcomplain.findAllDormCom();
    %>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>投诉举报宿舍管理列表</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
            <table class="layui-table">
                <thead>
                    <tr>
                    	<th>
                            被举报苑区
                        </th>
                        <th>
                            被举报楼号
                        </th>
                        <th>
                            被举报宿舍号
                        </th>
                        <th>
                            宿舍长
                        </th>
                        <th>
                            情况描述
                        </th>
                        <th>
                            举报人联系电话
                        </th>
                        <th>
                            举报人联系邮箱
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                </thead>
                <tbody id="x-link">
                <%for(DormCom dormcom:dormcomlist){%>
                    <tr>
                        <td><%=dormcom.getArea()%></td>
                        <td><%=dormcom.getBuild()%></td>
                        <td ><%=dormcom.getRoom()%></td>
                        <td ><%=dormcom.getDormheader()%></td>
                        <td ><%=dormcom.getDescription()%></td>
                        <td ><%=dormcom.getPhone()%></td>
                        <td ><%=dormcom.getEmail()%></td>
 						<td class="td-manage"><a title="删除" href="javascript:;" onclick="commemt_del(this,'<%=dormcom.getArea()%>','<%=dormcom.getBuild()%>','<%=dormcom.getRoom()%>','<%=dormcom.getPhone()%>')" style="text-decoration:none"><i class="iconfont icon-shanchu"></i></a></td>
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
            function commemt_del(obj,area,build,room,phone){
                layer.confirm('确定要删除此信息吗？',function(index){
                    //发异步删除数据
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                    window.setTimeout("window.location = 'DormComplainDel?area="+area+"&build="+build+"&room="+room+"&phone="+phone+"'",1100);
                });
            }
            
            </script>
            
    </body>
</html>