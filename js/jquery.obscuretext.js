(function( $ ){
	$.fn.obscuretext = function(){
		$this = $(this),
		var regex = //;

		var errors = $this.find(".error");

		errors.each(function(){
			var $this = $(this),
				html = $this.html();

			$this.replaceWith(getNewElem());
		});

		function getNewElem(hoverText){
			var span = $("<span>...</span>");

			span.on("mouseover",function(){
				showResult(hoverText)
			});

			span.on("mouseout",fuction(){
				hideResult($(this));
			});
		}

		function showResult(text,$target) {
			var newSpan = $('<span class="tip">' + text + '</span>');
		}

		function hideResult($target){
			
		}

		return this;
	}
}(jQuery));