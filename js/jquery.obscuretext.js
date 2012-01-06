(function( $ ){
	$.fn.obscuretext = function(options){
		var $this = $(this);

		var defaultOptions = {
			regex : /(Expected \[)[^\]]*/
		}

		$.extend(options || {}, defaultOptions);

		var errors = $this.find("td.error");

		errors.each(function(){
			var $this = $(this),
				html = $this.html();

			$this.replaceWith(getNewElem(html));
		});

		function getNewElem(hoverText){
			var $span = $("<span>...</span>");

			$span.on("mouseover",function(){
				showResult(hoverText)
			});

			$span.on("mouseout",function(){
				hideResult($(this));
			});
		}

		function showResult(text,$target) {
			var newSpan = $('<span class="tip">' + text + '</span>');
		}

		function hideResult($target){
			
		}

		return $this;
	}
}(jQuery));