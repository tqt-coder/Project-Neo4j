<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Website CV</title>
<link rel="preconnect" href="https://fonts.gstatic.com"
	crossorigin="crossorigin" />
<link rel="preload" as="style"
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&amp;family=Roboto:wght@300;400;500;700&amp;display=swap" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&amp;family=Roboto:wght@300;400;500;700&amp;display=swap"
	media="print" onload="this.media='all'" />
<noscript>
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&amp;family=Roboto:wght@300;400;500;700&amp;display=swap" />
</noscript>
<link
	href="<c:url value="/assets/css/font-awesome/css/all.min.css?ver=1.2.1" />"
	rel="stylesheet">
<link href="<c:url value="/assets/css/mdb.min.css?ver=1.2.1" />"
	rel="stylesheet">
<link href="<c:url value="/assets/css/aos.css?ver=1.2.1" />"
	rel="stylesheet">
<link href="<c:url value="/assets/css/main.css?ver=1.2.1" />"
	rel="stylesheet">


<noscript>
	<style type="text/css">
[data-aos] {
	opacity: 1 !important;
	transform: translate(0) scale(1) !important;
}
</style>
</noscript>
</head>

<body class="bg-light" id="top">
	<header class="d-print-none">
		<div class="container text-center text-lg-left">
			<div class="pt-4 clearfix">
				<h1 class="site-title mb-0"><c:out value="${bgb.firstname}" /></h1>
				<div class="site-nav">
					<nav role="navigation">
						<ul class="nav justify-content-center">
							<li class="nav-item"><a class="nav-link" href="#about"
								title="About"><span class="menu-title">About</span></a></li>
							<li class="nav-item"><a class="nav-link" href="#skills"
								title="Skills"><span class="menu-title">Skills</span></a></li>
							<li class="nav-item"><a class="nav-link" href="#experience"
								title="Experience"><span class="menu-title">Experience</span></a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#education"
								title="Education"><span class="menu-title">Education</span></a>
							</li>


						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<div class="page-content">
		<div class="container">
			<div class="resume-container">
				<div class="shadow-1-strong bg-white my-5" id="intro">
					<div class="bg-info text-white">
						<div class="cover bg-image">
							<img src="<c:url value="/assets/images/header-background.jpg"/>" />
							<div class="mask"
								style="background-color: rgba(0, 0, 0, 0.7); backdrop-filter: blur(2px);">
								<div class="text-center p-5">
									<div class="avatar p-1">
										<img class="img-thumbnail shadow-2-strong"
											src="/Resume_Neo4j/assets/images/<c:out value="${bgb.image}" />" width="160"
											height="160" />
									</div>
									<div class="header-bio mt-3">
										<div data-aos="zoom-in" data-aos-delay="0">
											<h2 class="h1"><c:out value="${bgb.firstname}" /> <c:out value="${bgb.lastname}" /></h2>
											<p><c:out value="${bgb.major}" /></p>
										</div>

										<div class="d-print-none">
											<a class="btn btn-outline-light btn-lg shadow-sm mt-1 me-3"
												href="<c:url value="/assets/css/material-resume.pdf"/>"
												data-aos="fade-right" data-aos-delay="700">Download CV</a>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="shadow-1-strong bg-white my-5 p-5" id="about">
						<div class="about-section">
							<div class="row">
								<div class="col-md-6">
									<h2 class="h2 fw-light mb-4">About Me</h2>
									<p>
										<c:out value="${bgb.self_decription}" />
									</p>
									
								</div>
								<div class="col-md-5 offset-lg-1">
									<div class="row mt-2">
										<h2 class="h2 fw-light mb-4">Bio</h2>
										<div class="col-sm-5">
											<div class="pb-2 fw-bolder">
												<i class="far fa-calendar-alt pe-2 text-muted"
													style="width: 24px; opacity: 0.85;"></i> Age
											</div>
										</div>
										<div class="col-sm-7">
											<div class="pb-2"><c:out value="${bgb.age}" /></div>
										</div>
										<div class="col-sm-5">
											<div class="pb-2 fw-bolder">
												<i class="far fa-envelope pe-2 text-muted"
													style="width: 24px; opacity: 0.85;"></i> Email
											</div>
										</div>
										<div class="col-sm-7">
											<div class="pb-2"><c:out value="${bgb.email}" /></div>
										</div>
										<div class="col-sm-5">
											<div class="pb-2 fw-bolder">
												<i class="fab fa-skype pe-2 text-muted"
													style="width: 24px; opacity: 0.85;"></i> Skype
											</div>
										</div>
										<div class="col-sm-7">
											<div class="pb-2"><c:out value="${bgb.skype}" /></div>
										</div>
										<div class="col-sm-5">
											<div class="pb-2 fw-bolder">
												<i class="fas fa-phone pe-2 text-muted"
													style="width: 24px; opacity: 0.85;"></i> Phone
											</div>
										</div>
										<div class="col-sm-7">
											<div class="pb-2"><c:out value="${bgb.phonenumber}" /></div>
										</div>
										<div class="col-sm-5">
											<div class="pb-2 fw-bolder">
												<i class="fas fa-map-marker-alt pe-2 text-muted"
													style="width: 24px; opacity: 0.85;"></i> Address
											</div>
										</div>
										<div class="col-sm-7">
											<div class="pb-2"><c:out value="${bgb.address}" /></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="shadow-1-strong bg-white my-5 p-5" id="skills">
						<div class="skills-section">
							<h2 class="h2 fw-light mb-4">Professional Skills</h2>
							<div class="row">
								<div class="col-md-6">
									
									<div class="mb-3">
										<span class="fw-bolder"><c:out value="${userSkill.it}" /></span>
										<div class="progress my-2 rounded" style="height: 20px">
											<div class="progress-bar bg-info" role="progressbar"
												data-aos="zoom-in-right" data-aos-delay="200"
												data-aos-anchor=".skills-section" style="width: <c:out value="${userSkill.itValue}" />%"
												aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">Expert</div>
										</div>
									</div>
									<div class="mb-3">
										<span class="fw-bolder"><c:out value="${userSkill.language}" /></span>
										<div class="progress my-2 rounded" style="height: 20px">
											<div class="progress-bar bg-info" role="progressbar"
												data-aos="zoom-in-right" data-aos-delay="300"
												data-aos-anchor=".skills-section" style="width: <c:out value="${userSkill.languageValue}" />%"
												aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">Advance</div>
										</div>
									</div>
									<div class="mb-3">
										<span class="fw-bolder"><c:out value="${userSkill.wordGroup}" /></span>
										<div class="progress my-2 rounded" style="height: 20px">
											<div class="progress-bar bg-secondary" role="progressbar"
												data-aos="zoom-in-right" data-aos-delay="400"
												data-aos-anchor=".skills-section" style="width: <c:out value="${userSkill.wordGroupValue}" />%"
												aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">Master</div>
										</div>
									</div>
								</div>
								
						</div>
					</div>
					<div class="shadow-1-strong bg-white my-5 p-5" id="experience">
						<div class="work-experience-section">
							<h2 class="h2 fw-light mb-4">Work Experience</h2>
							<div class="timeline">
							<c:forEach items="${lex}" var="row">
						
								<div class="timeline-card timeline-card-info" data-aos="fade-in"
									data-aos-delay="0">
									<div class="timeline-head px-4 pt-3">
										<div class="h5">
											<c:out value="${row.position}" /> <span class="text-muted h6">at
												<c:out value="${row.company}" /></span>
										</div>
									</div>
									<div class="timeline-body px-4 pb-4">
										<div class="text-muted text-small mb-3"><c:out value="${row.pos_startdate}" /> -
											<c:out value="${row.pos_enddate}" /></div>
										<div><c:out value="${row.position_decription}" /></div>
									</div>
								</div>
						</c:forEach>
								
					</div>
					<div class="shadow-1-strong bg-white my-5 p-5" id="education">
						<div class="education-section">
							<h2 class="h2 fw-light mb-4">Education</h2>
							<div class="timeline">
							<c:forEach items="${leb}" var="row">
							
								<div class="timeline-card timeline-card-success"
									data-aos="fade-in" data-aos-delay="100">
									<div class="timeline-head px-4 pt-3">
										<div class="h5">
											<c:out value="${row.mayjor}" /> <span class="text-muted h6">from
												<c:out value="${row.university}" /></span>
										</div>
									</div>
									<div class="timeline-body px-4 pb-4">
										<div class="text-muted text-small mb-3"><c:out value="${row.may_startdate}" /> - <c:out value="${row.may_enddate}" /></div>
										<div><c:out value="${row.mayjor_decription}" /></div>
									</div>
								</div>
							</c:forEach>
								
							</div>
						</div>
					</div>




				</div>
			</div>
			<script type="text/javascript"
				src="<c:url value="/assets/js/mdb.min.js?ver=1.2.1"/>"></script>
			<script type="text/javascript"
				src="<c:url value="/assets/js/aos.js?ver=1.2.1"/>"></script>
			<script type="text/javascript"
				src="<c:url value="/assets/js/main.js?ver=1.2.1"/>"></script>
</body>

</html>