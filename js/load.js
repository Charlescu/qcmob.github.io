(function($){
	function preload(imgs,options){
		this.imgs = (typeof imgs === 'string') ? [imgs] :imgs;
		this.opts = $.extend({},preload.DEFAULT,options);
		if(this.opts.order === 'ordered'){
            this._ordered();
		}else{
            this._unordered();
		}
	}
	preload.DEFAULTS = {
		order: '_unordered',
		each: null,
		all: null
	}

	preload.prototype.ordered = function(){
		var imgs = this.imgs,
		    opts = this.opts,
		    len  = imgs.length,
		    count = 0;
		    load();
		function load(){
			var imgObj = new Image();
			$(imgObj).on('load error',function(){
              opts.each &&  opts.each(count);
              if(count>= len-1){
              	opts.all && opts.all();
              } else{
              	load();
              }
              count ++;
			});
			imgObj.src = imgs[count];
		}

	}

	preload.prototype._unordered = function(){
		var imgs = this.imgs,
		    opts = this.opts,
		    len  = imgs.length,
		   count = 0;
        $.each(imgs,function(i,src){
        	if(typeof src!= 'string' ){ return }
        		var imgObj = new Image();
        	$(imgObj).on('load error',function(){
        		opts.each && opts.each(count);
        		if(count >= len-1){
        			opts.all && opts.all();
        		}
        		count ++;
        	});
        	imgObj.src = src;
        });
	}

	$.extend({
		Preload:function(imgs,opts){
			new preload(imgs,opts);
		}
	});
})(jQuery);