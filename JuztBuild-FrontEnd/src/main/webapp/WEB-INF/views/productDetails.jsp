<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="navbar.jsp" %>
</head>
<body>
<section class="uk-section uk-section-secondary "style="padding-top: 110px;padding-bottom:0px">
        <div class="uk-container">
<hr class="uk-margin-small">
         <h4 class=" uk-h3 uk-text-center uk-text-uppercase ">${productDetails.product_name}</h4>
            

        </div>
</section>
<section class="uk-section uk-section-secondary "style="padding-top:0px">
			<div class="uk-container">
				<div class="uk-grid uk-child-width-1-2@l uk-flex-middle">
				<div data-uk-scrollspy="cls: uk-animation-fade">
						<img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="${productDetails.product_img}" data-uk-img alt="Image">
					</div>					<div>
						
						<div class=" uk-h6 uk-text-center" ><strike class="subtitle-text" data-uk-tooltip="title: M.R.P">&#x20b9;${productDetails.product_price}</strike><b class=" uk-h2" data-uk-tooltip="title:Price"> &#x20b9;${productDetails.product_price}</b> </div>
						<p class="subtitle-text uk-text-center" data-uk-tooltip="title:Product Description">
							${productDetails.product_description}
						</p>
						<a href="#" class="uk-button uk-button-primary uk-border-pill uk-align-center " ><span uk-icon="icon:check"></span> BUY NOW</a>
					   <a href="#" class="uk-button uk-button-default uk-border-pill uk-align-center" ><span uk-icon="icon:cart"></span> ADD TO CART</a>
					</div>
					
				</div>
				
			</div>

		</section>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br><br>
<br>

</body>
</html>