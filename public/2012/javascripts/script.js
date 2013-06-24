/* Author: 

*/

$(document).ready(function() {
  var ie7 = (document.all && !window.opera && window.XMLHttpRequest) ? true : false;
  if(ie7){
  $(".projectimage img").fancybox({
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'elastic'
  });
  }
  else{
  $(".projectimage a").fancybox({
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'elastic'
  });
  };
});





















