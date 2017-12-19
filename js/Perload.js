(function($){
 
  function PreLoad(imgs,options){
  	this.imgs = (typeof imgs === 'string') ? [imgs] : imgs;
  	this.opts = $.extend({},PreLoad.DEFAULTS,options);
  	this._unoredered();

  };
PreLoad.DEFAULTS = {
	each:null,
	all:null
};
PreLoad.pertotype._unoredered=function(){
	var imgs = this.imgs;
	var opts = this.opts;
	var count=0,len = imgs.length;
  $.each(imgs,function(i,src){
      if(typeof imgs != 'string')  return;
      var imgObj = new Image();
      $(imgObj).on('load',functin(){
         opts.each && opts.each(count);
         if(count>= len-1){
         opts.all && opts.all();
         }
         count ++;
      });
      imgObj.src = src;
  });
};
$.extend({
	preLoad:function(imgs,options){
		new Preload(imgs,opts);
	}
});
})(jQuery);