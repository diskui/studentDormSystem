<%@page import="student.data.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="admin.daofactory.DaoFactory"%>
<%@page import="admin.dao.DormListInterface"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            宿舍管理列表
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
        <link rel="stylesheet" href="./css/font-awesome.min.css">
   		<link rel="stylesheet" href="./iconfont/iconfont.css">
    </head>
    <body>
    <%
    DormListInterface dormList = DaoFactory.getDormListMethod();
    ArrayList<Student> dormlist = dormList.findAllStudent();
    %>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>宿舍管理列表</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
        <button class="layui-btn" onclick="dormlist_add('添加信息','Dormlist_add.jsp','600','600')" style="margin-top: 0px;font-size: 15px;">添加</button>
            <table class="layui-table">
                <thead>
                    <tr>
                    	<th>
                            学号
                        </th>
                     	<th>
                            姓名
                        </th>
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
                            宿舍人数
                        </th>
                         <th>
                            宿舍类别
                        </th>
                        <th>
                            宿舍长联系电话
                        </th>
                        <th>
                            本人联系电话
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                </thead>
                <tbody id="x-link">
                <%for(Student student:dormlist){
                	String studentnumber = student.getStudentnumber();
                	String studentname = student.getStudentname();
                	String area = student.getArea();
                	String build = student.getBuild();
                	String room = student.getRoom();
                	String dormheader = student.getDormheader();
                	String dormnumber = student.getDormnumber();
                	String dormtype = student.getDormtype();
                	String dormheaderphone = student.getDormheaderphone();
                	String phone = student.getPhone();
                    String url = "Dormlist_change.jsp?studentnumber="+studentnumber+"&studentname="+studentname+"&area="+area+"&build="+build+"&room="+room+"&dormheader="+dormheader+"&dormnumber="+dormnumber+"&dormtype="+dormtype+"&dormheaderphone="+dormheaderphone+"&phone="+phone+"";
                %>
                    <tr>
                    	<td ><%=student.getStudentnumber()%></td>
                        <td ><%=student.getStudentname()%></td>
                        <td ><%=student.getArea()%></td>
                        <td ><%=student.getBuild()%></td>
                        <td ><%=student.getRoom()%></td>
                        <td ><%=student.getDormheader()%></td>
                        <td ><%=student.getDormnumber()%></td>
                        <td ><%=student.getDormtype()%></td>
                        <td ><%=student.getDormheaderphone()%></td>
                        <td ><%=student.getPhone()%></td>
                        <td class="td-manage">
                        	<a title="修改" href="javascript:;" onclick="dormlist_change('修改信息','<%=url%>','600','600')" style="text-decoration:none"><i class="iconfont icon-bianji"></i></a>
                        	<a title="删除" href="javascript:;" onclick="commemt_del(this,'<%=student.getStudentnumber()%>')" style="text-decoration:none"><i class="iconfont icon-shanchu"></i></a>
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
                    window.setTimeout("window.location = 'DormListDel?studentnumber="+id+"'",1100);
                });
            }
          
            function dormlist_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            
            function dormlist_change(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            </script>
 
    </body>
</html>