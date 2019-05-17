<html>
<head>
<title>Profile</title>



</head>
<style>

.news-slide > li > .uk-card {
				box-shadow: none;
				border:  1px solid rgba(0,0,0,0.075);
			}
</style>
<body>

<%@ include file="navbar.jsp" %>
<header id="hero-header">
  <div class="uk-section-secondary">
    <!-- change her the bg image + The overlay color/opacity/direction (under style="") -->
    <div id="change-her-the-bg-image" class="uk-background-norepeat uk-background-cover uk-background-center-center uk-background-image@s uk-section uk-section-large uk-flex uk-flex-middle" uk-parallax="bgx: 0,-60" uk-height viewport="offset-top: false" style="background: linear-gradient(to right, rgba(64, 64, 64, 0.9), rgba(64, 64, 64, 0)), url('https://i.imgur.com/4P7eKfa.jpg?1');">
      <div class="uk-width-1-1">
        <!-- hero container -->
        <div class="uk-container uk-container-large">
          <!-- Heading: Add margin top for h1 - like this the text looks more center v beacuse the navbar is transpernt -->
          <h1 class="uk-margin-small uk-margin-medium-top uk-width-large@m uk-text-center@m uk-text-center uk-h6 uk-heading-line" uk-parallax="opacity: 1,0;viewport: 0.95;media: @s">
            <!-- extra span for uk-heading-line -->
           <form class="uk-grid-small" uk-grid>
                 <div class="uk-width-1-1">
                 </div>
               <div class="uk-width-1-2@s">
               <input class="uk-input uk-border-pill"  type="text" value="${userDetails.fname}">
               </div>
               <div class="uk-width-1-2@s">
               <input class="uk-input uk-border-pill" type="text" value="${userDetails.lname}">
               </div>
               <div class="uk-width-1-1">
               <input class="uk-input uk-border-pill" type="text" value="${userDetails.email}">
               </div>
               <div class="uk-width-1-1@s">
               <input class="uk-input uk-border-pill" type="text" value="${userDetails.phone}">
               </div>
               <div uk-margin>
               <button class="uk-button uk-button-primary uk-width-1-1 uk-border-pill"><span uk-icon="icon: file-edit"></span> Save Changes</button>
               <div>
               </form>
          
          <div class="uk-margin uk-text-left@m uk-text-center" uk-parallax="y: 0,450;opacity: 1,0;easing: 0.3;target: !.uk-section;media: @s">
            <a uk-icon="icon: arrow-down;ratio: 1.5" class="uk-icon-link uk-icon" href="#main" uk-scroll=""></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>

 <br>


<div align="center" uk-switcher="animation: uk-animation-fade ; toggle:  > *">
    <a class="uk-button uk-button-default uk-border-pill" style="color:#fff "  >Address</a>
    <a class="uk-button uk-button-default uk-border-pill" style="color:#fff " >Cards</a>
  
</div>

<ul class="uk-switcher uk-margin">
    <li>
    <div class="uk-child-width-1-3@s uk-grid-match" uk-grid>
   
    <div>
        <div class="uk-card uk-card-default uk-card-hover uk-card-body">
            <h3 class="uk-card-title uk-text-center" >ADD ADDRESS</h3>
            <br><br><br>
            <a class="uk-text-emphasis uk-text-center" href="#add" uk-toggle style="margin-left:40%;"><span uk-icon="icon: plus; ratio: 3.5"></span></a>
             <br><br><br><br>
            
        </div>
    </div>
      <c:forEach items="${addressList}" var="address">
       <c:if test="${userDetails.userId == address.userId}">
    <div>
     <div class="uk-card uk-card-default ">
     <div class="uk-card-body">
            <h3 class="uk-card-title">${address.name}</h3>
            <p>${address.streetAddress}</p>
            <p>${address.streetAddress2}</p>
            <p>${address.city}, ${address.state}-${address.pincode}</p>
            <p>PhoneNumber:${address.phoneNumber}</p>
            </div>
             <div class="uk-card-footer">
              <a class="uk-button uk-button-secondary uk-border-pill"  uk-toggle="target: #edit${address.addressId}"><span uk-icon="file-edit"></span> edit</a>
              <a class="uk-button uk-button-secondary uk-border-pill" href="DeleteAddress${address.addressId}/${userDetails.userId}"><span uk-icon="trash"></span> delete</a>
        </div></div>	
    </div>
    </c:if>
    </c:forEach>
    
    
    </li>
    <li>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
  
</ul>
  	
<div id="add" uk-modal>
                <div class="uk-modal-dialog uk-modal-body uk-background-secondary">
                <button class="uk-modal-close-default" type="button" uk-close></button>
                        <div class="uk-section uk-section-secondary uk-light" style="  border-top:0px solid;">
                <h2 class="uk-modal-title">Add Address</h2>
               <p>
               <form:form  action="AddAddress${userDetails.userId}"  modelAttribute="address">
             <div class="uk-grid-small "  uk-grid>
                <form:hidden path="userId" value="${userDetails.userId}" />
                  <div class="uk-width-1-1">
                  <form:input class="uk-input uk-border-pill" type="text"  path="name" placeholder="Full Name" />
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="phoneNumber" placeholder="Phone Number"/>
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="pincode" placeholder="Pincode" />
                  </div>
                   <div class="uk-width-1-1">
                  <form:input class="uk-input uk-border-pill" type="text"  path="streetAddress" placeholder="Flat / House No. / Floor / Building" />
                  </div>
                   <div class="uk-width-1-1">
                  <form:input class="uk-input uk-border-pill" type="text"  path="streetAddress2" placeholder="Colony / Street / Locality" />
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="city" placeholder="City" />
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="state" placeholder="State" />
                 </div>
               <p class="uk-text-right">
                
                <button class="uk-button uk-button-primary uk-border-pill" type="submit"><span uk-icon="icon: pencil"></span> Save</button>
        </p>
           </div>
           </form:form>
               
               </p>
                
    </div>
</div>
</div>
<c:forEach items="${addressList}" var="address">
<div id="edit${address.addressId}" uk-modal>
                <div class="uk-modal-dialog uk-modal-body uk-background-secondary">
                <button class="uk-modal-close-default" type="button" uk-close></button>
                        <div class="uk-section uk-section-secondary uk-light " style="  border-top:0px solid;">
                <h2 class="uk-modal-title">Edit Address</h2>
               <p>
               <form:form  action="UpdateAddress${userDetails.userId}"  modelAttribute="address">
             <div class="uk-grid-small "  uk-grid>
                <form:hidden path="userId" value="${userDetails.userId}" />
                <form:hidden path="addressId" value="${address.addressId}" />
                
                  <div class="uk-width-1-1">
                  <form:input class="uk-input uk-border-pill" type="text"  path="name" placeholder="Full Name"  value="${address.name}" />
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="phoneNumber" placeholder="Phone Number"  value="${address.phoneNumber}" />
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="pincode" placeholder="Pincode"  value="${address.pincode}" />
                  </div>
                   <div class="uk-width-1-1">
                  <form:input class="uk-input uk-border-pill" type="text"  path="streetAddress" placeholder="Flat / House No. / Floor / Building"  value="${address.streetAddress}" />
                  </div>
                   <div class="uk-width-1-1">
                  <form:input class="uk-input uk-border-pill" type="text"  path="streetAddress2" placeholder="Colony / Street / Locality"  value="${address.streetAddress2}" />
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="city" placeholder="City"  value="${address.city}" />
                  </div>
                  <div class="uk-width-1-2">
                  <form:input class="uk-input uk-border-pill" type="text"  path="state" placeholder="State"  value="${address.state}" />
                 </div>
               <p class="uk-text-right">
                
                <button class="uk-button uk-button-primary uk-border-pill" type="submit"><span uk-icon="icon: pencil"></span> Save</button>
        </p>
           </div>
           </form:form>
               
               </p>
                
    </div>
</div>
</div>
</c:forEach>










  	
</body>
<%@ include file="footer.jsp" %>


</html>