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
        <title>充值电费</title>
    </head>
    
    <body>
    		 <%
                 String studentnumber = (session.getAttribute("studentnumber")).toString();
                 String password = (session.getAttribute("password")).toString();
                %>
        <div class="x-body">
            <form class="layui-form">
                
                <div class="layui-form-item">
                    <label for="numb" class="layui-form-label">
                        <span class="x-red">*</span>学号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="numb" name="numb" required="" lay-verify="required"
                        autocomplete="off" class="layui-input" style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="password" class="layui-form-label">
                        <span class="x-red">*</span>密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="password" name="password" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 200px;">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="money" class="layui-form-label">
                        <span class="x-red">*</span>充值金额
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="money" name="money" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"style="width: 100px;"placeholder="单位/元">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label"> </label>
                    <button  class="layui-btn" lay-filter="add" lay-submit="">充值</button>
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
            //console.log(data);//发异步，把数据提交给php
          
            var studentnumber2 = document.getElementById("numb").value;
            var password2 = document.getElementById("password").value;
            
            if(studentnumber2 == "<%=studentnumber%>" && password2 == "<%=password%>"){//if
                layer.alert("充值成功", {icon: 6},function () {
                	 var obj = document.getElementById("money");
                     var money = obj.value;//得到充值金额
                     window.setTimeout("window.location = 'ElectricityAdd?studentnumber="+studentnumber2+"&money="+money+"'",10); 
                     
                     var index = parent.layer.getFrameIndex(window.name);
                     parent.layer.close(index); 
                });
            }//if
            else{
                layer.alert("充值失败", {icon: 5},function () {
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });
            }
            	return false;


          });//form.on
          
        });//layui.use
        </script>
        
    </body>

</html>