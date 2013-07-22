var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-25957234-11']);
_gaq.push(['_setDomainName', 'gaslight.co']);

$("meta[property='og:article:tag']").each(function(){
  _gaq.push(['_setCustomVar', 1, 'Tag', $(this).attr('content'), 3]);
});

$("meta[property='og:article:author']").each(function(){
  _gaq.push(['_setCustomVar', 1, 'Author', $(this).attr('content'), 3]);
});

_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();