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
        <title>转宿申请</title>
        <style type="text/css">
                input[type="file"] {display: none !important;}
        </style>
    </head>
    <body>
    
        <div class="x-body">   
           <blockquote class="layui-elem-quote">
        		<span style="font-family: SimHei;font-size: 20px;">转宿申请！（请如实填写）</span>
   		    </blockquote>
   			      
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
              <div class="layui-tab-content" >
   			 
                <div class="layui-tab-item layui-show">
                    <form class="layui-form layui-form-pane" action="">
                    
                    
                      <fieldset class="layui-elem-field layui-field-title site-title"><!--分割线-->
        					<legend><a name="default">现在宿舍</a></legend>
    	 				</fieldset><!--@分割线-->
    	 				
                        <div class="layui-form-item"style="margin-top: 10px;">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>现在苑区
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="area" id="area" autocomplete="off" placeholder="(东苑、北苑、华苑、南苑等)"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>现在楼号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="build" id="build"autocomplete="off" placeholder="请输入所在楼号（如：23）"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>现在房间号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="room" id="room" autocomplete="off" placeholder="请输入所在房间号（如：149）"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                       <fieldset class="layui-elem-field layui-field-title site-title"><!--分割线-->
        					<legend><a name="default">转宿宿舍</a></legend>
    	 				</fieldset><!--@分割线-->
                                                                                                                                                                                                                                                                                                                       
                        <div class="layui-form-item" style="margin-top: 10px;">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>转宿苑区
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="toarea" id="toarea"autocomplete="off" placeholder="(东苑、北苑、华苑、南苑等)"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                         <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>转宿楼号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="tobuild" id="tobuild"autocomplete="off" placeholder="请输入转宿楼号（如：23）"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>转宿房间号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="toroom"id="toroom" autocomplete="off" placeholder="请输入转宿房间号（如：149）"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>联系电话
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="phone" id="phone"autocomplete="off" placeholder="联系电话以便通知"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">
                                <span></span>情况说明
                            </label>
                            <div class="layui-input-block"style="height: 90px;">
                                <textarea placeholder="这里可以填写转宿原因理由，管理员会进行审理" class="layui-textarea" id="description"></textarea>
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="*">申请转宿</button>
                        </div>
                        
                    </form>

                </div>
              
              </div>
            </div> 
        </div>
        
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-layui.js" charset="utf-8"></script>
        <script>
            layui.use(['laydate','element','layer','form'], function(){
              $ = layui.jquery;//jquery
              laydate = layui.laydate;//日期插件
              lement = layui.element();//面包导航
              layer = layui.layer;//弹出层
              form = layui.form()
              
             //监听提交
              form.on('submit(*)', function(data){
                console.log(data);
                //发异步，把数据提交给php
                var area = $("#area").val();
                var build = $("#build").val(); 
                var room = $("#room").val();
                var toarea = $("#toarea").val();
                var tobuild = $("#tobuild").val(); 
                var toroom = $("#toroom").val();
                var phone = $("#phone").val();
                var description = $("#description").val();
                layer.alert("已上交申请，请等待审核", {icon: 6}); 
                window.setTimeout("window.location = 'DormChange?area="+area+"&build="+build+"&room="+room+"&toarea="+toarea+"&tobuild="+tobuild+"&toroom="+toroom+"&description="+description+"&phone="+phone+"'",5000);
                return false;
              });
              
              layer.ready(function(){ //为了layer.ext.js加载完毕再执行
                  layer.photos({
                      photos: '#x-img'
                      //,shift: 5 //0-6的选择，指定弹出图片动画类型，默认随机
                  });
              });
            })
            </script>
            
    </body>
</html>