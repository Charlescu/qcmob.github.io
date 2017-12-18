//   图片预加载  使用闭包
(function($){   //用$来接收
 
  function PreLoad(imgs,options){  //用面向对象写法来写，首先写构造函数设置两个参数第一个是图片数组，第二个其他参数
      this.imgs = (typeof imgs === 'string') ? [imgs] :imgs;  //判断传进来的是否是字符串，是的话包装为数组，否则传递自身。保存图像完成
      this.opts = $.extend({},PreLoad.DEFAULTS,options);//将options和DEFAULTS融合一下，生成新的对象，原理为后面的options覆盖DEFAULTS生成新的对象，新对象返回给opts
      
      this._unoredered();
    }
  PreLoad.DEFAULTS = {  //设置默认参数，没有参数时用默认参数来代替
    each:null,   //每一张图片加载完毕后执行
    all:null     //所有图片加载完毕后执行
  };
  PreLoad.prototype._unoredered = function(){ //无序加载
      var imgs = this.imgs;  //接收PreLoad的参数imgs
      var opts = this.opts;  //each方法保存在opts参数上，所以接收opts参数 
      var count = 0,len = imgs.length;  //定义计数器count和数组长度len
      $.each(imgs,function(i,src){
       	if(typeof src != 'string') return; //判断传递到src的数组元素是否为字符串，不是则返回。防止发生错误
       	var imgObj = new Image();
       	
       	$(imgObj).on('load error',function(){
       		opts.each && opts.each(count);  //判断each方法是否存在，否则直接执行each方法时值为null，会报错
       		if(count>=len - 1){
       		opts.all && opts.all();   //判断all方法是否存在
         }
         count ++;
       });
        imgObj.src = src;
      });
    };
  // $.fn.extend -> $('#img').preload();
  $.extend({
  	preload:function(imgs,opts){  //将插件封装
      new PreLoad(imgs,opts);
    }
  });
})(jQuery);  //传递jQuery对象