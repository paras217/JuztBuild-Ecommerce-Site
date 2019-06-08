<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css">
<link rel="stylesheet" href="resources/css/navbar.css">
<style >



</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<br>
<br>

<br>
<br>
<div><h1 class="uk-text-center uk-text-uppercase" style="padding-top:5px;color: #fff;"> ADMIN <hr class="uk-divider-vertical"></span></h1></div>



<div class="uk-child-width-1-3@m uk-grid-small uk-grid-match" uk-grid>
  
    <div>
        <div class="uk-card uk-card-secondary uk-card-body">
            <h3 class="uk-card-title uk-text-center uk-text-uppercase">${userDetails.fname} ${userDetails.lname}</h3>
            <p class="uk-text-center">${userDetails.email}</p>
            
        </div>
    </div>

    <div>
        <div class="uk-card uk-card-default uk-card-body">
            <h3 class="uk-card-title uk-text-center uk-text-uppercase">Order</h3>
            <p> <button class="uk-button uk-button-default uk-width-1-1 uk-border-pill" href="#order" uk-toggle><span uk-icon="icon: file-edit"></span> Manage</button></p>
        </div>
    </div>

    <div>
        <div class="uk-card uk-card-default uk-card-body">
            <h3 class="uk-card-title uk-text-center uk-text-uppercase">Product</h3>
            <p> <button class="uk-button uk-button-default uk-width-1-1 uk-border-pill"  href="#product" uk-toggle ><span uk-icon="icon: file-edit"></span> Manage</button></p>
        </div>
    </div>
    <div>
        <div class="uk-card uk-card-default uk-card-body">
            <h3 class="uk-card-title uk-text-center uk-text-uppercase">User</h3>
            <p> <button class="uk-button uk-button-default uk-width-1-1 uk-border-pill"  href="#user" uk-toggle ><span uk-icon="icon: file-edit"></span> Manage</button></p>
        </div>
    </div>
     <div>
        <div class="uk-card uk-card-default uk-card-body">
            <h3 class="uk-card-title uk-text-center uk-text-uppercase">Category-SubCategory</h3>
            <p> <button class="uk-button uk-button-default uk-width-1-1 uk-border-pill"  href="#category" uk-toggle ><span uk-icon="icon: file-edit"></span> Manage</button></p>
        </div>
    </div>
     <div>
        <div class="uk-card uk-card-default uk-card-body">
            <h3 class="uk-card-title uk-text-center uk-text-uppercase">Address</h3>
            <p> <button class="uk-button uk-button-default uk-width-1-1 uk-border-pill"  href="#address" uk-toggle ><span uk-icon="icon: file-edit"></span> Manage</button></p>
        </div>
    </div>
</div>
<div id="order" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/photo.jpg');" uk-height-viewport></div>
            <div class="uk-padding-large">
                <h1>Headline</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>
</div>

<div id="product" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/photo.jpg');" uk-height-viewport></div>
            <div class="uk-padding-large">
                <h1>Headline</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>
</div>

<div id="user" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/photo.jpg');" uk-height-viewport></div>
            <div class="uk-padding-large">
                <h1>Headline</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>
</div>

<div id="category" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
          <div class="uk-section uk-section-default">
    <div class="uk-container">

        <h3>Section Default</h3>

        <div class="uk-grid-match uk-child-width-1-3@m" uk-grid>
            <div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
            </div>
            
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
            </div>
            
        </div>

    </div>
</div>
        
      </div>
</div>

<div id="address" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/photo.jpg');" uk-height-viewport></div>
            <div class="uk-padding-large">
                <h1>Headline</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>
</div>
</body>











</html>