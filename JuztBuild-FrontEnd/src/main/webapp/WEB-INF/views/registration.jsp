<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>


<body class="uk-height-1-1  uk-position-relative uk-cover-container uk-background-secondary" style="background-image: url('https://i.imgur.com/Yg6JXW6.jpg') ; background-size: 100%;background-position: center center;background-repeat:  no-repeat;background-attachment: fixed;background-size:  cover;">
	<%@ include file="navbar.jsp" %>

		<div class="uk-position-cover uk-overlay-primary"></div>
		
		<div class="uk-flex uk-flex-center uk-flex-middle uk-height-viewport uk-light uk-position-relative uk-position-z-index">
			
			<div class="uk-width-xlarge uk-padding-small" uk-scrollspy="cls: uk-animation-fade">
				<div class="uk-text-center uk-margin">
					<a href="Home" >
					<img src="https://i.imgur.com/OSFtcwy.png" alt="Logo" >
				</a>
				</div>
				<form:form   action="registration/success"  modelAttribute="user" >
				<div class="uk-grid-small" uk-grid >
				<div class="uk-width-1-4@s">
                    <form:input path="fname" class="uk-input uk-border-pill" type="text" placeholder="First Name"/>
                </div>
                <div class="uk-width-1-4@s">
                    <form:input path="lname" class="uk-input uk-border-pill" type="text" placeholder="Last Name"/>
                </div>
                <div class="uk-width-1-2@s">
                    <form:input path="phone" class="uk-input uk-border-pill" type="tel" placeholder="Phone"/>
                </div>
                <br>
                <div class="uk-width-1-1">
                    <form:input path="email" class="uk-input uk-border-pill" type="email" placeholder="Email"/>
                </div>
                <div class="uk-width-1-2@s">
                    <form:input path="password" class="uk-input uk-border-pill" type="password" placeholder="Password"/>
                </div>
                <div class="uk-width-1-2@s">
                    <input class="uk-input uk-border-pill" type="password" placeholder="RE-Enter Password">
                </div>
                </div>
                <div class="uk-margin">
							<button type="submit" class="uk-button uk-button-primary uk-border-pill uk-width-1-1">Register</button>
						</div>
                </form:form>
                
			
			</div>
		</div>
		
		
</body>
</html>