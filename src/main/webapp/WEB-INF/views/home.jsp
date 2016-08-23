<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html nowrap="true" id="ng-app" ng-app="SynergyApp" ng-controller="AppController ">
	<head>
		<title>Bankon</title>
		<meta chartset="utf-8">
		<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>	
		<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">	
		<link rel="stylesheet" type="text/css" href="resources/css/main.css">
	</head>
	<body>
		<!-- page Header -->
		<header class="pageHeader">
			<div class="container clearfix">
				<a href="#" class="logo" title="Bankon"></a>
				<nav class="pageMenu">
					<ul class="clearfix">
						<li><a href="#about" title="">About Us</a></li>	
						<li><a href="#whyus" title="">Why Bankon?</a></li>
						<li><a href="#" title="">Projects</a></li>
						<li class="hasSubMenu"><a href="#" title="">Services <i class="icon-down"></i></a>
							<ul class="subMenu">
								<li><a href="#customers">For Customers</a></li>
								<li><a href="#">For Builders</a></li>
							</ul>
						</li>
						<li><a href="#process" title="">Process</a></li>
						<li class="hasSubMenu">
							<a href="#contact" title="">Contact Us</a>
							<div class="subMenu contactSubMenu">
								<div class="teleContact">
									<p>
										<span>Phone: <span>
										<span>+49(0)89-99909790
									</p>
									<p>
										<span>fax: <span>
										<span>+49(0)89-99909799</span>
									</p>
								</div>									
								<div class="eContact">
									</p>	
										 E-Mail: info@bankon.biz
									</p>	
									<p>www.bankon.biz</p>
								</div>
							</div>
						</li>
					</ul>
				</nav>
			</div>	
		</header>
		<!-- end of page header -->

		<!-- banner-->
		<section class="section bannerSection">	
			<div class="container">
				<div class="banner">
					<div class="bannerInfo">
						<h2>We help builders and developers to sell their real estate projects faster in the competitive market. </h2>
					</div>
				</div>
			</div>
		</section>
		<!-- end of banner -->

		<!-- about section -->	
		<section class="section aboutSection" id="about">
			<div class="container">
				<div class="sectionData">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<h2><span>ABOUT US</span></h2>
							<blockquote>
								Bankon Realty is a professional sole selling company 
								and real estate project marketing company in Pune. 
							</blockquote>
							<p>
								We help builders and developers to sell their real estate projects faster in the competitive market. We understand the Red ocean nature of the real estate market in Pune. With the increased in supply and lower proportionate demand, there is a need to boost the sales in order to attain sustainability. Keeping this scenario in mind, along with sole selling expertise we also offers various lead generation programs and marketing activity like, Inbound & Outbound Call Centre facility, Digital Marketing, Search Engine optimization, News Paper Advertisement, TV Radio Advertisement for desired Builders to stand out in this market and achieve long term sustainability.
							</p>
						</div>
					</div>
				</div>			
			</div>	
		</section>
		<!-- end of about section-->

		<!-- why bankon -->
		<section class="section whybankon" id="whyus">
			<div class="container">
				<div class="sectionData">					
					<h2><span>Why Bankon ?</span></h2>
					<ul class="whyList">
							<li class="count1">
								<div class="count">1</div>
								<p>We are team of experts from property and Realty Industry with more than 16 years of experience in hardcore sales and Marketing, We are a client Centric organization and hence communication, constant update, micro Management ground work and attention to detail are our pillars of strength.</p>
							</li>
							<li class="count2">
								<div class="count">2</div>
								<p>To help our clients make even the most complex transactions smooth and totally satisfactory. We Provide the comprehensive dashboard of this Property Management and puts builders/Developers in the driver’s seat.</p>
							</li>
							<li class="count3">
								<div class="count">3</div>
								<p>For every given project, Bankon Realty deploys its trained personnel who would look after the entire gamut of sales activity of a particular project this involves whole range of activities like taking care of project site sales to co-ordination with all the channel partners and deal closures.</p>
							</li>
							<li class="count4">
								<div class="count">4</div>
								<p>In order to boost sales, we also design a specific, customized and target oriented marketing campaign for the particular project and also overlook its proper and timely implementations. Thus this ensures market stability for the developer and timely deals for the clients, Hence making it a Win-Win Scenario for all the players.</p>
							</li>
							<li class="count5">
								<div class="count">5</div>
								<p>We also do corporate presentations and different sales activities in corporate houses like, road shows, canopy activities for group booking.</p>
							</li>
					</ul>					
				</div>			
			</div>	
		</section>
		<!-- end of why bankon -->

		<!-- projects -->
		<section class="section ourProjects" id="projects">
			<div class="container">
				<div class="sectionData">					
					<h2><span>Projects</span></h2>

					<ul class="clearfix projectsTypes">
						<li class="projectTypesTile events">
							<img src="resources/images/ongoing.png" alt="Ongoing Bankon Projects"/>
							<div class="tileInfo">
								<h4>Events</h4>
								<p>More than 20 ongoing projects</p>
								<a href="#">View All</a>
							</div>								
						</li>
						<li class="projectTypesTile ongoing">							
							<img src="resources/images/events.png" alt="Bankon Events"/>
							<div class="tileInfo">
								<h4>Ongoing</h4>
								<p>More than 50 events</p>
								<a href="#">View All</a>
							</div>								
						</li>
					</ul>				
				</div>			
			</div>	
		</section>
		<!-- end projects -->
		
		<!-- customer -->
		<section class="section forCustomer" id="customers">
			<div class="container">
				<div class="sectionData clearfix">
					<h2><span>For Customers</span></h2>
					<div class="dispTable">
						<div class="colLeft tCell">
							<h3>Service under one roof</h3>
							<ul class="oneRoofList clearfix listBgGrey">
								<li><span>Manage everything in one place</span></li>
								<li><span>Take the burden of Manpower handling and manage 
									multiple employees across teams.</span></li>
								<li><span>Professional approach and Customer Communication</span></li>
								<li><span>Make every Enquiry count</span></li>
								<li><span>Documentation</span></li>
								<li><span>Identification of Property</span></li>
								<li><span>Product Analysis</span></li>
								<li></span>Detailed Market Survey</span></li>
								<li></span>Devising Marketing Plan</span></li>
								<li></span>Planning</span></li>
								<li></span>Determining Target Clientele</span></li>
								<li></span>Pricing And Valuation</span></li>
								<li></span>Possession</span></li>
								<li></span>Determining Advertising Campaign</span></li>
								<li></span>Marketing To Clients / Consumers</span></li>
								<li></span>Payment Collection</span></li>
								<li></span>Sales</span></li>
								<li></span>Registration</span></li>
							</ul>
						</div>
						<div class="colRight tCell">
							<h3>Services we provide</h3>
							<ul class="servicesList">
								<li>
									<h4>Sole <br/>Selling</h4>
									<p>
										As sole marketers we provide the following services such as Dedicated Sales Executives, Bookings & Payments Follow up, Essential Marketing Stationary, Loan Approvals & Sanctions.
									</p>
								</li>
								<li>
									<h4>Architecture <br/>Design/Planning</h4>
									<p>
										Bankon Realty is a firm that offers consultancy services in Architectural in Pune, At the heart of this organization is a team of some of the most talented and dedicated architects.
									</p>
								</li>
								<li>
									<h4>Marketing</h4>
									<p>
										As Sole Marketers we advertise the project and create demand by using the Print Media, Electronic Media, Boards and Hoardings, Exhibitions, Social Media Marketing and Search Engine Marketing
									</p>
								</li>
								<li>
									<h4>Digital <br/>Marketing</h4>
									<p>
										As Sole Marketers we advertise the project and create demand by using the Print Media, Electronic Media, Boards and Hoardings, Exhibitions, Social Media Marketing and Search Engine Marketing.
									</p>
								</li>
								<li>
									<h4>Loan <br/>Assistance</h4>
									<p>
										Provide Assistance in getting loans from all banks.
									</p>
								</li>
							<ul>
						</div>	
					</div>				
				</div>
			</div>
		</section>
		<!-- end of customer -->

		<!--  process  -->
		<section class="section process" id="process">
			<div class="container">
				<div class="sectionData">
					<h2><span>Process</span></h2>
					<div class="processType">
						<ul>
							<li class="campaign">
								<h2>Campaign</h2>
								<img src="resources/images/compaign.png" />
							</li>
							<li class="leadProcess">
								<h2>Lead processing</h2>
								<img src="resources/images/leadProcessing.png" />
							</li>
							<li class="relationship">
								<h2>Developing the Relationship</h2>
								<img src="resources/images/relationship.png" />
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!--  end of process -->

		<!-- our locations -->
		<section class="section locations" id="location">
			<div class="container">
				<div class="sectionData">
					<h2><span>We have muscles in location</span></h2>
					<ul class="locationList clearfix">
						<!-- <li class="shivajinagar">
							<span class="iconL-shivajinagar"></span>
							<h3>Shivaji Nagar</h3>
						</li> -->
						<!-- <li class="deccan">
							<span class="iconL-deccan"></span>
							<h3>Deccan</h3>
						</li> -->
						<!-- <li class="yerwada">
							<span class="iconL-yerwada"></span>
							<h3>Yerwada</h3>
						</li> -->
						<li class="kharadi">
							<span class="iconL-kharadi"></span>
							<h3>Kharadi</h3>
						</li>
						<li class="karvenagar">
							<span class="iconL-karvenagar"></span>
							<h3>Karve Nagar</h3>
						</li>
						<li class="moshi">
							<span class="iconL-moshi"></span>
							<h3>Moshi</h3>
						</li>
						<li class="bibwewadi">
							<span class="iconL-bibwewadi"></span>
							<h3>Bibwewadi</h3>
						</li>
						<li class="pimplenilakh">
							<span class="iconL-pimplenilakh"></span>
							<h3>Pimple Nilakh</h3>
						</li>
						<li class="katraj">
							<span class="iconL-katraj"></span>
							<h3>Katraj</h3>
						</li>
						<li class="warje">
							<span class="iconL-warje"></span>
							<h3>Warje</h3>
						</li>
						<li class="kothrud">
							<span class="iconL-kothrud"></span>
							<h3>Kothrud</h3>
						</li>
						<li class="bavdhan">
							<span class="iconL-bavdhan"></span>
							<h3>Bavdhan</h3>
						</li>
						<li class="bhugaon">
							<span class="iconL-bhugaon"></span>
							<h3>Bhugaon</h3>
						</li>
						<li class="pirangut">
							<span class="iconL-pirangut"></span>
							<h3>Pirangut</h3>
						</li>
						<!-- <li class="rihe">
							<span class="iconL-rihe"></span>
							<h3>Rihe</h3>
						</li> -->
						<li class="baner">
							<span class="iconL-baner"></span>
							<h3>Baner</h3>
						</li>
						<li class="balewadi">
							<span class="iconL-balewadi"></span>
							<h3>Balewadi</h3>
						</li>
						<li class="pashansus">
							<span class="iconL-pashansus"></span>
							<h3>Pashan Sus Road</h3>
						</li>
						<li class="wakad">
							<span class="iconL-wakad"></span>
							<h3>Wakad</h3>
						</li>
						<li class="hinjewadi">
							<span class="iconL-hinjewadi"></span>
							<h3>Hinjewadi</h3>
						</li>
						<li class="pimplesaudagar">
							<span class="iconL-pimplesaudagar"></span>
							<h3>Pimple Saudagar</h3>
						</li>
						<!-- <li class="shirwal">
							<span class="iconL-shirwal"></span>
							<h3>Shirawal</h3>
						</li> -->						
					</ul>
				</div>
			</div>
		</section>	
		<!-- end of locations -->

		<!-- footer -->
		<footer class="pageFooter">
			<div class="container">
				<p class=""><span>2016</span>&copy; Bankon Reality</p>
				<div class="socialWrapper">
					<a href="#"></a>
				</div>
			</div>
		</footer>
		<!-- end of footer -->

		<script type="text/javascript" src="resources/js/vendor/jquery.min.js"></script>
		<script type="text/javascript" src="resources/js/vendor/html5shiv.js"></script>
		<script type="text/javascript" src="resources/js/custom.js"></script>

<%-- <!-- JAVASCRIPTS --> 
<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery.cycle2.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/vendor/sss.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lib/angular/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lib/angular/angular-route.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lib/angular/ui-bootstrap-tpls-0.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/controller.js"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-70660324-1', 'auto');
  ga('send', 'pageview');

</script> --%>
</body>
</html>