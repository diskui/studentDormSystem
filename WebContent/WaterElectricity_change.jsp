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
        <title>修改水电费</title>
    </head>
    
    <body>
    <%
    String area = request.getParameter("area");
    String build = request.getParameter("build");
    String room = request.getParameter("room");
    int watermoney = Integer.parseInt(request.getParameter("watermoney"));
    int electricitymoney = Integer.parseInt(request.getParameter("electricitymoney"));
    %>
        <div class="x-body">
            <form class="layui-form">
                
                <div class="layui-form-item" style="margin-top: 5px;">
                    <label for="area" class="layui-form-label"  style="width: 150px;">
                        <span class="x-red">*</span>苑区
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="area" name="area" required="" lay-verify="required" value="<%=area%>"
                        autocomplete="off" class="layui-input" style="width: 200px;"disabled="disabled">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="build" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>楼号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="build" name="build" required="" lay-verify="required"value="<%=build%>"
                        autocomplete="off" class="layui-input"style="width: 200px;"disabled="disabled">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="room" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>宿舍号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="room" name="room" required="" lay-verify="required"value="<%=room%>"
                        autocomplete="off" class="layui-input"style="width: 200px;"disabled="disabled">
                    </div>
                </div>
                     
                <div class="layui-form-item">
                    <label for="watermoney" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>水费
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="watermoney" name="watermoney" required="" lay-verify="required"value="<%=watermoney%>"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="electricitymoney" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>电费
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="electricitymoney" name="electricitymoney" required="" lay-verify="required"value="<%=electricitymoney%>"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="add" class="layui-form-label" style="width: 150px;"> </label>
                    <button  class="layui-btn" lay-filter="add" lay-submit="">修改</button>
                </div>
            </form>
        </div>
        
        <script src="./lib/layui/layui.js" charset="utf-8"> </script>
        <script src="./js/x-layui.js" charset="utf-8"></script>
        
        <script>
        
        layui.use(['form','layer','upload'], function(){//layui.use
            $ = layui.jquery;
          var form = layui.form()
          ,layer = layui.layer;
        
          //监听提交
          form.on('submit(add)', function(data){ //form.on
            console.log(data);//发异步，把数据提交给php
            var area = $("#area").val();
            var build = $("#build").val(); 
            var room = $("#room").val(); 
            var electricitymoney = $("#electricitymoney").val();
            var watermoney = $("#watermoney").val();

            layer.confirm('确定要修改吗？',function(index){ 
                layer.msg('修改成功',{icon:6,time:15});
                window.setTimeout("window.location = 'WaterElectricityChange?area="+area+"&build="+build+"&room="+room+"&watermoney="+watermoney+"&electricitymoney="+electricitymoney+"'",10); 
                
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index); 
                //window.parent.location.reload();
            });

            return false;
          });//form.on
          
        });//layui.use
        </script>
        
    </body>

</html>