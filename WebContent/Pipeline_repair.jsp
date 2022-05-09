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
        <title>管道报修</title>
        <style type="text/css">
                input[type="file"] {display: none !important;}
        </style>
    </head>
    <body>
    
        <div class="x-body">   
           <blockquote class="layui-elem-quote">
        		<span style="font-family: SimHei;font-size: 20px;">管道报修！</span>
   		    </blockquote>
   			      
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
              <div class="layui-tab-content" >
   			 
                <div class="layui-tab-item layui-show">
                    <form class="layui-form layui-form-pane" action="">
                    
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>苑区
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="area" id="area" autocomplete="off" placeholder="(东苑、北苑、华苑、南苑等)"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>楼号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="build" id="build"autocomplete="off" placeholder="请输入所在楼号（如：23）"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>房间号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="room" id="room" autocomplete="off" placeholder="请输入所在房间号（如：149）"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>报修项目
                            </label>
                            <div class="layui-input-block" style="padding-top: 5px;">
                                <input type="checkbox" name="水龙头损坏" value="水龙头" title="水龙头损坏" > 
                                <input type="checkbox" name="水管损坏" value="水管" title="水管损坏" >
                                <input type="checkbox" name="洗漱池损坏" value="洗漱池" title="洗漱池损坏" > 
                                <input type="checkbox" name="便池堵塞" value="便池" title="便池堵塞" >
                                <input type="checkbox" name="其他" value="其他" title="其他">
                            </div>
                        </div>                                                                                                                                                                                                                                                                                                  
                        
                        <div class="layui-form-item">
                        
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>损坏日期
                            </label>
                            <div class="layui-input-block">
                			 <div class="layui-input-inline">
                    			<input class="layui-input" placeholder="损坏日期" id="LAY_demorange_s" lay-verify="required">
               			     </div>
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>预约日期
                            </label>
                            <div class="layui-input-inline">
                   			   <input class="layui-input" placeholder="预约日期" id="LAY_demorange_e" lay-verify="required">
                			</div>
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>联系电话
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="telephone" autocomplete="off" placeholder="联系电话以便维修人员联系"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">
                                <span></span>其他说明
                            </label>
                            <div class="layui-input-block">
                                <textarea placeholder="这里可以输入损坏说明，或特别注意事项和要求" class="layui-textarea" id="description"></textarea>
                            </div>
                        </div>
                        
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="*">报修</button>
                            <button type="button" class="layui-btn" id="upload-btn">
                            	<i class="layui-icon">&#xe67c;</i>上传损坏设施图片
                            	<input type="file" id="upload-input" class="upload-input" multiple>
                            </button>
                            <button class="layui-btn" id="origin-btn" type="button">撤销图片上传</button>
                        </div>
                        
                    </form>

                </div>
              
              </div>
            </div> 
        </div>
        
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-layui.js" charset="utf-8"></script>
        <script src="./js/ewViewer.js"></script>
    	<script src="./js/pictureUp.js"></script>
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
               var value1 = document.getElementsByName("水龙头损坏")[0].checked;
                var value2 = document.getElementsByName("水管损坏")[0].checked;
                var value3 = document.getElementsByName("洗漱池损坏")[0].checked;
                var value4 = document.getElementsByName("便池堵塞")[0].checked;
                var value5 = document.getElementsByName("其他")[0].checked;
                if(!value1 && !value2 && !value3 && !value4 && !value5)
                {
                	layer.alert("报修项目没有填报", {icon: 5});
                }
                else
                {
                	 var area = $("#area").val();
                     var build = $("#build").val(); 
                     var room = $("#room").val();
                     var description = $("#description").val();
                	layer.alert("已上报维修", {icon: 6});
                	window.setTimeout("window.location = 'PipelineRepair?area="+area+"&build="+build+"&room="+room+"&description="+description+"'",5000);
                }              
                return false;
              });

              layer.ready(function(){ //为了layer.ext.js加载完毕再执行
                  layer.photos({
                      photos: '#x-img'
                      //,shift: 5 //0-6的选择，指定弹出图片动画类型，默认随机
                  });
              });
              

              var start = {
                  min: laydate.now()
                  ,max: '2099-06-16 23:59:59'
                  ,istoday: false
                  ,choose: function(datas){
                      end.min = datas; //开始日选好后，重置结束日的最小日期
                      end.start = datas //将结束日的初始值设定为开始日
                  }
              };

              var end = {
                  min: laydate.now()
                  ,max: '2099-06-16 23:59:59'
                  ,istoday: false
                  ,choose: function(datas){
                      start.max = datas; //结束日选好后，重置开始日的最大日期
                  }
              };

              document.getElementById('LAY_demorange_s').onclick = function(){
                  start.elem = this;
                  laydate(start);
              }
              document.getElementById('LAY_demorange_e').onclick = function(){
                  end.elem = this
                  laydate(end);
              }
              })
            </script>
            
        <script>
        let page = new Page({
            data: [
                {
                    url: "",
                    text: "1"
                },
                {
                    url: "",
                    text: "2"
                },
                {
                    url: "",
                    text: "3"
                },
                {
                    url: "",
                    text: "4"
                },
                {
                    url: "",
                    text: "5"
                }
            ]
        });
    </script>
    </body>
</html>