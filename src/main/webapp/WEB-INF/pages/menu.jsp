<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!--HEADER-->
<header class="header">
    <a href="${pageContext.request.contextPath}">
        <img src="${pageContext.request.contextPath}/images/logo2.png" alt="Logo" class="logo">
    </a>
    <nav class="navbar">
        <a href="${pageContext.request.contextPath}">Home</a>
        <a href="${pageContext.request.contextPath}/about.jsp">About us</a>
        <a href="${pageContext.request.contextPath}/products.jsp">Products</a>
        <a href="${pageContext.request.contextPath}/features.jsp">Features</a>
        <c:choose>
            <c:when test="${pageContext.request.getRemoteUser() == null}">
                <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
            </c:when>
            <c:otherwise>
                <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
            </c:otherwise>
        </c:choose>
    </nav>
    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-user" id="user-btn"></div>
    </div>

    <div class="cart">
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="${pageContext.request.contextPath}/images/laptop.png" alt="laptop">
            <div class="content">
                <h3>laptop Asus AV9993U</h3>
                <span class="price">5.000 Ron /</span>
                <span class="quantity">qty: 1</span>
            </div>
        </div>


        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="${pageContext.request.contextPath}/images/headphones.png" alt="laptop">
            <div class="content">
                <h3>Headphone BlueSag </h3>
                <span class="price">43.00 Ron /</span>
                <span class="quantity">qty: 1</span>
            </div>
        </div>
        <div class="total"> total: 6.000 Ron</div>
        <a href="#" class="btn">checkout</a>
    </div>

</header>


<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="${pageContext.request.contextPath}">Parking Lot</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/about.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/about.jsp">About</a>
          </li>

          <li class="nav-item">
            <c:if test="${pageContext.request.isUserInRole('READ_CARS')}">
            <a class="nav-link ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/cars.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/Cars">Cars</a>
            </c:if>
          </li>


          <li class="nav-item">
<c:if test="${pageContext.request.isUserInRole('READ_USERS')}">
            <a class="nav-link ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/users.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/Users">Users</a>
</c:if>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item">
              <c:choose>
                  <c:when test="${pageContext.request.getRemoteUser() == null}">
                      <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                  </c:when>
                  <c:otherwise>
                      <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
                  </c:otherwise>
              </c:choose>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

