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
        <link rel="stylesheet" href="./css/Welcome.css" type="text/css" />
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
        <title>投诉举报管理员</title>
        <style type="text/css">
                input[type="file"] {display: none !important;}
        </style>
    </head>
    <body>
    
        <div class="x-body">   
           <blockquote class="layui-elem-quote">
        		<span style="font-family: SimHei;font-size: 20px;">投诉举报管理员！（下面填写所要举报的管理员）</span>
   		    </blockquote>

            <form class="layui-form"id="#area-picker">
            
                <div class="layui-form-item">
                    <label for="area" class="layui-form-label">
                        <span class="x-red">*</span>苑区
                    </label>
                    <div class="layui-input-inline">
                		<select name="area" id="area">
                    		<option value="东苑">东苑</option>
                    		<option value="北苑">北苑</option>
                    		<option value="南苑">南苑</option>
                    		<option value="华苑">华苑</option>
                		</select>
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="building" class="layui-form-label">
                        <span class="x-red">*</span>楼号
                    </label>
                    <div class="layui-input-inline">
                		<select name="build" id="build">
                    		<option value="23">23</option>
                    		<option value="24">24</option>
                    		<option value="25">25</option>
                    		<option value="26">26</option>
                		</select>
                    </div>
                </div>
                
               <div class="layui-form-item">
                    <label for="admin" class="layui-form-label">
                        <span class="x-red">*</span>管理员
                    </label>
                    <div class="layui-input-inline">
                		<select name="admin" id="admin">
                    		<option value="谢昊宸">谢昊宸</option>
                    		<option value="孟子归">孟子归</option>
                    		<option value="戚文豪">戚文豪</option>
                    		<option value="刘佳奇">刘佳奇</option>
                    		<option value="杨浩">杨浩</option>
                		</select>
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="phone" class="layui-form-label">
                        <span class="x-red">*</span>联系方式
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="phone" name="phone" required="" lay-verify="phone"
                        autocomplete="off" class="layui-input"placeholder="电话号">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="email" class="layui-form-label">
                        <span class="x-red">*</span>联系邮箱
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="email" name="email" required="" lay-verify="email"
                        autocomplete="off" class="layui-input"placeholder="以便反馈举报处理结果">
                    </div>
                </div>

                <div class="layui-form-item">
                  <label class="layui-form-label">
                     <span class="x-red">*</span>情况说明
                   </label>
                  <div class="layui-input-block">
                       <textarea placeholder="这里可以描述详细情况" class="layui-textarea" lay-verify="required" id="description"></textarea>
                  </div>
                </div>
                
                 <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    <button  class="layui-btn" lay-filter="add" lay-submit="">
                        举报
                    </button>
                </div>
            </form>
                        
         </div>

        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-layui.js" charset="utf-8"></script>
        <script>
            layui.use(['form','layer'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer;           

              //监听提交
              form.on('submit(add)', function(data){
                console.log(data);
                //发异步，把数据提交给php
                var admin = $("#admin").val();
                var description = $("#description").val();
                var phone = $("#phone").val();
                var email = $("#email").val();
                layer.alert("举报已提交，请等待审理", {icon: 6});
                window.setTimeout("window.location = 'ComplainAdmin?admin="+admin+"&description="+description+"&phone="+phone+"&email="+email+"'",1100);
                return false;
              });
              
            });
            
        </script>
    </body>
</html>