<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>JuzTBuild</title>
		<link rel="icon" href="https://i.imgur.com/XjFQY0S.png">
		<!-- CSS FILES -->
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css">
		 <link rel="stylesheet" href="resources/css/navbar.css">
		 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		 <style >


       *:focus {
          outline: none;
         }

       .tags-suggestions { text-align: left; border: 1px solid #999; border-bottom-left-radius: 3px; border-bottom-right-radius: 3px; background: #FFF; overflow: auto; }
       .tags-suggestion { padding: 5px 5px; white-space: nowrap; overflow: hidden; cursor: pointer;}
       .tags-selected { background: #F0F0F0; }
       .tags-suggestions strong { font-weight: normal; color: #3399FF; }
       .tags-group { padding: 2px 5px; }
       .tags-group strong { display: block; border-bottom: 1px solid #000; }
		 
		 </style>
			</head>
	

	
		<!-- TOP -->
		<div class="top-wrap uk-position-relative uk-light uk-background-secondary">
			
			<!-- NAV -->
			<div class="nav" data-uk-sticky="cls-active: uk-background-secondary uk-box-shadow-medium; top: 100vh; animation: uk-animation-slide-top">
				<div class="uk-container">
					<nav class="uk-navbar-container uk-navbar-transparent" data-uk-navbar>
						<div class="uk-navbar-left">
							<div class="uk-navbar-item uk-padding-remove-horizontal">
								<a class="uk-logo" href="Home" title="Logo"  data-uk-tooltip="title:Home" ><img src="https://i.imgur.com/OSFtcwy.png" alt="Logo"></a>
								
							</div>
							
							
						</div>
						<div class="uk-navbar-right">
						  <ul class="uk-navbar-nav uk-visible@l ">
						
						    <li>
                             <form class="uk-search" id="search-form" action="search">
                                 <div class="uk-inline">
								<span class="uk-form-icon uk-form-icon-flip" data-uk-icon="icon: search"></span>
								 <input class="uk-input search-fld" type="text" id="tags" placeholder="Search" name="key" >
								<a href="#" class="search-filter" data-uk-filter-control="[data-tags*='']" hidden>Search</a>
							</div>
                             </form>
                             
                             </li>	
						
						  
						  </ul>
							<ul class="uk-navbar-nav uk-visible@l">
								<c:forEach var="category" items="${categoryList}">
								<li>
									<a href="#" data-uk-icon="chevron-down">${category.categoryName}</a>
									<div class="uk-navbar-dropdown">
										<ul class="uk-nav uk-navbar-dropdown-nav">
										<c:forEach var="subcategory" items="${subCategoryList}">
										  <c:if test="${subcategory.categoryId == category.categoryId}">
											<li><a href="product ${subcategory.subcategoryId}-${subcategory.subCateName}">${subcategory.subCateName}</a></li>
											</c:if></c:forEach>
										</ul>
									</div>
								</li>
								</c:forEach>
								   <c:if test="${userDetails.fname != null}">  
                             <li>
								<a href="#" data-uk-icon="icon: chevron-down" class="uk-margin-small-right" >My Account</a>
								<div class="uk-navbar-dropdown uk-navbar-dropdown-bottom-left ">
									<ul class="uk-nav uk-navbar-dropdown-nav">
										<li class="uk-nav-header"><span class="uk-margin-small-right" uk-icon="icon:user;"></span>${userDetails.fname} ${userDetails.lname} </li>
										<li class="uk-nav-divider"></li>
										<li><a href="Profile ${userDetails.userId}"><span data-uk-icon="icon:nut"></span> Profile</a></li>
										<li><a href="#"><span data-uk-icon="icon:file-text"></span> Order</a></li>
										<c:if test="${userDetails.roleId == 2}">  
									    <li><a href="admin"><span data-uk-icon="icon:plus-circle"></span> Admin</a></li>
									    </c:if>
										<li class="uk-nav-divider"></li>
										<li><a href="perform_logout"><span data-uk-icon="icon: sign-out"></span> Logout</a></li>
										
									</ul>
								</div>
							</li>
							 <li>
								 <button  style="margin-top: 5px; " class="uk-button uk-button-primary uk-border-pill " ><span uk-icon="icon:cart"></span>cart</button>
								   </li>
                             </c:if>
                             <li>
                             
                             </li>	
							</ul>
							 <c:if test="${userDetails.fname == null}">
							     <p uk-margin>
							        <a class="uk-button uk-button-default uk-border-pill uk-visible@l" href="UserLogin"><span uk-icon="icon:sign-in"></span> LOG IN</a>
							     </p>
                             </c:if>
                           
                                 
							<a class="uk-navbar-toggle uk-navbar-item uk-hidden@l" data-uk-toggle data-uk-navbar-toggle-icon href="#menu"></a>
						</div>
						     
					</nav>
				</div>
			</div>
	    </div>
		<div id="menu" data-uk-offcanvas="flip: true; overlay: false">
			<div class="uk-offcanvas-bar uk-offcanvas-bar-animation uk-offcanvas-slide">
				<button class="uk-offcanvas-close uk-close uk-icon" type="button" data-uk-close></button>
				<br>
			       
			       <c:if test="${userDetails.fname != null}">
			        
			      
			         <div class="uk-text-large uk-text-uppercase uk-text-uppercase uk-text-center" ><span class="uk-margin-small-right" uk-icon="icon:user; ratio:3.5"></span>${userDetails.fname} </div>
			           <p uk-margin>
                          <a class="uk-button uk-button-default   uk-button-small uk-border-pill" href="Profile ${userDetails.userId}"  style="font-size:13.5px"><span uk-icon="icon: nut;uk-icon-spin"></span> Profile</a>
                          <a class="uk-button uk-button-default  uk-button-small uk-border-pill" style="font-size:14px " ><span uk-icon="icon:file-text"></span> Order</a>
                       </p>
                        <p uk-margin>
                        <a  class="uk-button uk-button-primary uk-border-pill uk-width-1-1"  ><span uk-icon="icon:cart"></span> Cart</a>
                         </p>
                         <c:if test="${userDetails.roleId == 2}"> 
                         <p uk-margin>
                        <a  class="uk-button uk-button-primary uk-border-pill uk-width-1-1" href="admin" ><span uk-icon="icon:plus-circle"></span> Admin</a>
                         </p>
                         </c:if>
			       </c:if>
			          
			           <ul class="uk-nav uk-nav-default" uk-nav>
			            <li class="uk-nav-divider"></li>
			                <li>
                             <form class="uk-search  " id="search-form" action="">
                                 <div class="uk-inline">
								<span class="uk-form-icon uk-form-icon-flip" data-uk-icon="icon: search"></span>
								<input class="uk-input 	 search-fld" type="text" placeholder="Search" id="tags" >
								<a href="#" class="search-filter" data-uk-filter-control="[data-tags*='']" hidden>Search</a>
							</div>
                             </form>
                             </li>	
			            <li class="uk-nav-divider"></li>
          	            <c:forEach var="category" items="${categoryList}">
                       <li class="uk-parent uk-active ">
                        <a href="#"  data-uk-icon="chevron-down"> ${category.categoryName}</a>
                         <ul class="uk-nav-sub">
                           <c:forEach var="subcategory" items="${subCategoryList}">
                             <c:if test="${subcategory.categoryId == category.categoryId}">
                                 <li ><a href="product ${subcategory.subcategoryId}-${subcategory.subCateName}">${subcategory.subCateName}</a></li>
                             </c:if>
                           </c:forEach>
                         </ul>
                      </li>	
                 </c:forEach>
                  <li class="uk-nav-divider"></li>
                  <li>
                  
                  </li>
                </ul>
                
            
				<p uk-margin>
				
				<c:if test="${userDetails.fname == null}">
					<a  class="uk-button uk-button-primary uk-border-pill uk-width-1-1" href="UserLogin"  ><span uk-icon="icon:sign-in"></span> LOG IN</a>
					</c:if>
					<c:if test="${userDetails.fname != null}">
				    <a  class="uk-button uk-button-default uk-border-pill uk-width-1-1" href="perform_logout"><span uk-icon="icon:sign-out"></span> LOG OUT</a>
				      </c:if>
                       </p>
                    
				<p class="uk-text-center" >Made In India</p>
			</div>
		</div>
		<!-- /OFFCANVAS -->


        <!-- JS FILES -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     
		
		
		<!-- Search Autocomplete -->
		<script>
           $( function() {
              var availableTags = ${search};
           $( "#tags" ).autocomplete({
              source: availableTags
                });
           } );
        </script>
			