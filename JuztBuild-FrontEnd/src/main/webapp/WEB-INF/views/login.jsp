<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn</title>

</head>

			
			
			
			

<body class="uk-height-1-1  uk-position-relative uk-cover-container uk-background-secondary" style="background-image: url('https://i.imgur.com/dEBbxaH.jpg') ; background-size: 100%;background-position: center center;background-repeat:  no-repeat;background-attachment: fixed;background-size:  cover;">
	
		<%@ include file="navbar.jsp" %>
			

		<div class="uk-position-cover uk-overlay-primary"></div>
		
		<div class="uk-flex uk-flex-center uk-flex-middle uk-height-viewport uk-light uk-position-relative uk-position-z-index">
			
			<div class="uk-width-medium uk-padding-small" uk-scrollspy="cls: uk-animation-fade">
				<div class="uk-text-center uk-margin">
				<a href="Home" >
					<img src="https://i.imgur.com/OSFtcwy.png" alt="Logo" >
				</a>
				</div>
				<form:form action="perform_login" method="POST">
					<fieldset class="uk-fieldset">
						<div class="uk-margin">
							<div class="uk-inline uk-width-1-1">
								<span class="uk-form-icon uk-form-icon-flip" data-uk-icon="icon: mail"></span>
								<input class="uk-input uk-border-pill" required placeholder="Email" type="email" name="email">
							</div>
						</div>
						<div class="uk-margin">
							<div class="uk-inline uk-width-1-1">
								<span class="uk-form-icon uk-form-icon-flip" data-uk-icon="icon: lock"></span>
								<input class="uk-input uk-border-pill" required placeholder="Password" type="password" name="password">
							</div>
						</div>
						
						<div class="uk-margin">
							<label><input class="uk-checkbox" type="checkbox"> Keep me logged in</label>
						</div>
						<p class="uk-margin ">
							<button type="submit" class="uk-button uk-button-primary uk-border-pill " >LOG IN</button>
							<a  class="uk-button uk-button-default uk-border-pill " href="registration">New User</a>
							
						<p>
						
					</fieldset>
				</form:form>
				<div>
					<div class="uk-text-center">
						<a class="uk-link-reset uk-text-small" data-uk-toggle="target: #recover;animation: uk-animation-slide-top-small">Forgot your password?</a>
					</div>
					
					<div class="uk-margin-small-top" id="recover" hidden>
						<form action="login-dark.html">
							
							<div class="uk-margin-small">
								<div class="uk-inline uk-width-1-1">
									<span class="uk-form-icon uk-form-icon-flip" data-uk-icon="icon: mail"></span>
									<input class="uk-input uk-border-pill" placeholder="E-mail" required type="text">
								</div>
							</div>
							<div class="uk-margin-small">
								<button type="submit" class="uk-button uk-button-primary uk-border-pill uk-width-1-1">SEND PASSWORD</button>
							</div>
							
						</form>
					</div>
					
				</div>
			</div>
		</div>
		
</body>
</html>