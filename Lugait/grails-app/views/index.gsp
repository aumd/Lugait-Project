<!doctype html>
<html>
	<head>
		<!-- <meta name="layout" content="main"/> -->
		<!-- <title> Poblacion</title> -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Starter files for implementing Twitter Bootstrap's Carousel -- using Bootstrap version 2.0.4">
		<meta name="author" content="David Cochran for webdesign.tutsplus.com">
		<style type="text/css">
			body {
				padding-top: 0px;
				padding-bottom: 0px;
				background-color: #ffffff;
			}
		</style>
		 <style>

		/* GLOBAL STYLES
		-------------------------------------------------- */
		/* Padding below the footer and lighter body text */

		body {
		  padding-bottom: 0px;
		  color: #5a5a5a;
		}


		/* CUSTOMIZE THE CAROUSEL
		-------------------------------------------------- */

		/* Carousel base class */
		.carousel {
		  margin-bottom: -150px;
		}

		.carousel .container {
		  position: relative;
		  z-index: 9;
		}

		.carousel-control {
		  height: 100px;
		  margin-top: 2;
		  font-size: 120px;
		  text-shadow: 0 1px 1px rgba(0,0,0,.4);
		  background-color: transparent;
		  border: 0;
		  z-index: 10;
		}

		.carousel .item {
		  height: 440px;
		}
		.carousel img {
		  position: absolute;
		  top: 0;
		  left: ;
		  min-width: 100%;
		  height: 350px;
		}

		.carousel-caption {
		  background-color: transparent;
		  position: static;
		  max-width: 550px;
		  padding: 0 20px;
		  margin-top: 200px;
		}
		.carousel-caption h1,
		.carousel-caption .lead {
		  margin: 0;
		  line-height: 1.25;
		  color: #FFF;
		  text-shadow: 0 1px 1px rgba(0,0,0,.4);
		}
		.carousel-caption .btn {
		  margin-top: 10px;
		}

		/* Featurettes
		------------------------- */

		.featurette-divider {
		  margin: 80px 0; /* Space out the Bootstrap <hr> more */
		}
		.featurette {
		  padding-top: 1500px; /* Vertically center images part 1: add padding above and below text. */
		  overflow: hidden; /* Vertically center images part 2: clear their floats. */
		}
		.featurette-image {
		  margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
		}

		/* Give some space on the sides of the floated elements so text doesn't run right into it. */
		.featurette-image.pull-left {
		  margin-right: 40px;
		}
		.featurette-image.pull-right {
		  margin-left: 40px;
		}

		/* Thin out the marketing headings */
		.featurette-heading {
		  font-size: 50px;
		  font-weight: 300;
		  line-height: 1;
		  letter-spacing: -1px;
		}



		/* RESPONSIVE CSS
		-------------------------------------------------- */

		@media (max-width: 979px) {

		  .container.navbar-wrapper {
			margin-bottom: 0;
			width: auto;
		  }
		  .navbar-inner {
			border-radius: 0;
			margin: -20px 0;
		  }

		  .carousel .item {
			height: 500px;
		  }
		  .carousel img {
			width: auto;
			height: 500px;
		  }

		  .featurette {
			height: auto;
			padding: 0;
		  }
		  .featurette-image.pull-left,
		  .featurette-image.pull-right {
			display: block;
			float: none;
			max-width: 40%;
			margin: 0 auto 20px;
		  }
		}


		@media (max-width: 767px) {

		  .navbar-inner {
			margin: -20px;
		  }

		  .carousel {
			margin-left: -20px;
			margin-right: -20px;
		  }
		  .carousel .container {

		  }
		  .carousel .item {
			height: 300px;
		  }
		  .carousel img {
			height: 300px;
		  }
		  .carousel-caption {
			width: 65%;
			padding: 0 70px;
			margin-top: 100px;
		  }
		  .carousel-caption h1 {
			font-size: 30px;
		  }
		  .carousel-caption .lead,
		  .carousel-caption .btn {
			font-size: 18px;
		  }

		  .marketing .span4 + .span4 {
			margin-top: 40px;
		  }

		  .featurette-heading {
			font-size: 30px;
		  }
		  .featurette .lead {
			font-size: 18px;
			line-height: 1.5;
		  }
		}
		</style>
	</head>


	<body>
		<!-- added this bit 09/01 -->
		<div id="myCarousel" class="carousel slide">
		  <div class="carousel-inner">
			<div class="item active">
			  <img src="images/BB.jpg" alt="">
			  <div class="container">
				<div class="carousel-caption">
				</div>
			  </div>
			</div>
			<div class="item">
			  <img src="images/FF.jpg" alt="">
			  <div class="container">
				<div class="carousel-caption">
				</div>
			  </div>
			</div>
			<div class="item">
			  <img src="images/DD.jpg" alt="">
			  <div class="container">
				<div class="carousel-caption">
				</div>
			  </div>
			</div>
			<div class="item">
			  <img src="images/CC.jpg" alt="">
			  <div class="container">
				<div class="carousel-caption">
				</div>
			  </div>
			</div>
			<div class="item">
			  <img src="images/EE.jpg" alt="">
			  <div class="container">
				<div class="carousel-caption">
				</div>

			  </div>
			</div>
		  </div>
		  <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		  <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
		</div><!-- /.carousel -->

		<div class="jumbotron">
			<div class="container">
				<div class="row">
					<div class="span8">
						<div class="hero-content">
							<h4>Barangay Poblacion</h4>
							<h4>Lugait, Misamis Oriental</h4>
							<h1>Stakeholder Profile</h1>
							<div class="shameless-self-promotion">
							  &copy; 2014
							</div>
						</div>
					</div>
					<div class="span4">
						<br></br><br>
						<div class="actions">
							<a class="btn btn-large btn-github" href="http://localhost:8080/Lugait/Resident/create"
								<i class=""></i>
							   Add <br>Resident</a>

							<a class="btn btn-large btn-github" href="http://localhost:8080/Lugait"
								<i class=""></i>
								Reports <br> <br> </a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- js for carousel -->
		<script src="js/bootstrap-carousel.js"></script>
		<script>
		  !function ($) {
			$(function(){
			  $('#myCarousel').carousel()
			})
		  }(window.jQuery)
		</script>
		<script>
		  $(document).ready(function(){
			$('#myCarousel').carousel({
			  interval: 10
			});
		  });
		</script>
		<script src="js/jquery-1.7.1.min.js"></script>
		<script src="js/underscore.min.js"></script>
		<script src="js/backbone.min.js"></script>
		<script src="js/prettify.min.js"></script>
		<script src="js/bootstrap-222.min.js"></script>
		<script src="js/index/index.js"></script>
		
 
	</body>
</html>