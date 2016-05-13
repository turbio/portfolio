$ ->
	$('#navbar > h1').css('font-size', (2 + ((100 - window.scrollY) / 20)) + 'em');
	$(window).scroll (event) ->
		if window.scrollY <= 100
			$('#navbar').removeClass('nav-shadow')
			$('#navbar > h1').css('font-size', (2 + ((100 - window.scrollY) / 20)) + 'em');
		else
			$('#navbar').addClass('nav-shadow')
			$('#navbar > h1').css('font-size', '2em');
