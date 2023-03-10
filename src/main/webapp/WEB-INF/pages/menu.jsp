<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--HEADER-->
<header class="header">
    <a href="#">
        <img src="images/logo2.png" alt="Logo" class="logo">
    </a>
    <nav class="navbar">
        <a href="${pageContext.request.contextPath}">Home</a>
        <a href="${pageContext.request.contextPath}/about.jsp">About us</a>
        <a href="${pageContext.request.contextPath}/Products">Products</a>
        <a href="${pageContext.request.contextPath}/features.jsp">Features</a>

        <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
            <a href="${pageContext.request.contextPath}/AddProduct">Add Product</a>
            <a href="${pageContext.request.contextPath}/AddUser">Add User</a>
        </c:if>

        <c:choose>
            <c:when test="${pageContext.request.getRemoteUser() == null}">

            </c:when>
            <c:otherwise>
                <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
            </c:otherwise>
        </c:choose>

    </nav>
    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-wallet" id="wallet-btn"></div>
        <a href="${pageContext.request.contextPath}/Login"}>
        <div class="fas fa-user" id="user-btn"></div>
        </a>








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
        <a href="${pageContext.request.contextPath}/checkout.jsp" class="btn">checkout</a>
    </div>

    <div class="wallet">
        <h3>You'r binnace</h3>
        <div class="balance"> 100.000  Ron</div>
        <a href="${pageContext.request.contextPath}/wallet.jsp" class="btn">checkout</a>
    </div>

</header>

