<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            留言板
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
    </head>
    <body>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>这里是留言板，可以在这里留言！</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
        <button class="layui-btn" onclick="message_add('添加留言','message_add.jsp','900','500')"><i class="layui-icon">&#xe608;</i>我要留言</button>
            <table class="layui-table">
                <thead>
                    <tr>
                        <th>
                            宿舍号
                        </th>
                        <th>
                            姓名
                        </th>
                        <th>
                            留言内容
                        </th>
                        <th>
                            留言时间
                        </th>
                        <th>
                            状态
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                </thead>
                <tbody id="x-link">
                    <tr>
                        <td>149</td><td>谢昊宸</td><td >国庆节快乐！</td><td >2021-10-1 12:14:34</td>
                        <td ><span class="layui-btn layui-btn-normal layui-btn-mini">180赞</span></td>
                        <td class="td-manage"><a title="删除" href="javascript:;" onclick="commemt_del(this,'1')" style="text-decoration:none"><i class="layui-icon">&#xe640;</i></a></td>
                    </tr>
                    <tr>
                        <td>149</td><td>杨浩</td><td >快期末了，啥也不会！</td><td >2021-11-11 14:21:15</td>
                        <td ><span class="layui-btn layui-btn-normal layui-btn-mini">1800赞</span></td>
                        <td class="td-manage"><a title="删除" href="javascript:;" onclick="commemt_del(this,'1')" style="text-decoration:none"><i class="layui-icon">&#xe640;</i></a></td>
                    </tr>
                    <tr>
                        <td>149</td><td>戚文豪</td><td >鸡汤来喽！</td><td >2021-11-27 20:45:36</td>
                        <td ><span class="layui-btn layui-btn-normal layui-btn-mini">150赞</span></td>
                        <td class="td-manage"><a title="删除" href="javascript:;" onclick="commemt_del(this,'1')" style="text-decoration:none"><i class="layui-icon">&#xe640;</i></a></td>
                    </tr>
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
                layer.confirm('确定要删除此留言吗？',function(index){
                    //发异步删除数据
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                });
            }
            
            function message_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            </script>
            
    </body>
</html>