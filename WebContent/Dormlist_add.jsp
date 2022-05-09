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
        <title>添加信息</title>
    </head>
    
    <body>
        <div class="x-body">
            <form class="layui-form">
                
                <div class="layui-form-item" style="margin-top: 5px;">
                    <label for="studentnumber" class="layui-form-label"  style="width: 150px;">
                        <span class="x-red">*</span>学号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="studentnumber" name="studentnumber" required="" lay-verify="required"
                        autocomplete="off" class="layui-input" style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item" style="margin-top: 5px;">
                    <label for="area" class="layui-form-label"  style="width: 150px;">
                        <span class="x-red">*</span>苑区
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="area" name="area" required="" lay-verify="required"
                        autocomplete="off" class="layui-input" style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="build" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>楼号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="build" name="build" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="room" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>宿舍号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="room" name="room" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="name" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>姓名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="name" name="name" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="dormheader" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>宿舍长
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="dormheader" name="dormheader" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="dormnumber" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>宿舍人数
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="dormnumber" name="dormnumber" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="dormtype" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>宿舍类型
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="dormtype" name="dormtype" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="dormheaderphone" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>宿舍长联系电话
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="dormheaderphone" name="dormheaderphone" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="phone" class="layui-form-label" style="width: 150px;">
                        <span class="x-red">*</span>本人联系电话
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="phone" name="phone" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="add" class="layui-form-label" style="width: 150px;"> </label>
                    <button  class="layui-btn" lay-filter="add" lay-submit="">添加</button>
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
            var studentnumber = $("#studentnumber").val();
            var area = $("#area").val();
            var build = $("#build").val(); 
            var room = $("#room").val(); 
            var name = $("#name").val(); 
            var dormheader = $("#dormheader").val();
            var dormnumber = $("#dormnumber").val();
            var dormtype = $("#dormtype").val();
            var dormheaderphone = $("#dormheaderphone").val();
            var phone = $("#phone").val();
            

            layer.confirm('确定要添加吗？',function(index){ 
                layer.msg('添加成功',{icon:6,time:15});
                window.setTimeout("window.location = 'DormListAdd?studentnumber="+studentnumber+"&area="+area+"&build="+build+"&room="+room+"&name="+name+"&dormheader="+dormheader+"&dormnumber="+dormnumber+"&dormtype="+dormtype+"&dormheaderphone="+dormheaderphone+"&phone="+phone+"'",10); 
                
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