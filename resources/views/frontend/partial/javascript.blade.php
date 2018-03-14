<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="{{ asset('kkhs/frontend/best_study/js/jquery-2.1.4.min.js')}}"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.4.2/bootstrap-tagsinput.min.js"></script>
<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=7l9cwatx9v7nbuhitapj8m93plhiugcdcs7yknme455h58bl"></script>
<script src="{{ asset('kkhs/frontend/js/main.js')}}"></script>
	<!-- stats numscroller-js-file -->
<script src="{{ asset('kkhs/frontend/best_study/js/numscroller-1.0.js')}}"></script>
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 5000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 1
					},
					tablet: {
						changePoint: 768,
						visibleItems: 1
					}
				}
			});

		});
	</script>
	<script src="{{ asset('kkhs/frontend/best_study/js/jquery.flexisel.js')}}"></script>
	<script src="{{ asset('kkhs/frontend/best_study/js/SmoothScroll.min.js')}}"></script>
	<script src="{{ asset('kkhs/frontend/best_study/js/move-top.js')}}"></script>
	<script src="{{ asset('kkhs/frontend/best_study/js/easing.js')}}"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
		    $(".fancybox").fancybox({
		        openEffect: "none",
		        closeEffect: "none"
		    });
		});
	</script>


