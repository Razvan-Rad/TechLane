<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:walletTemplate pageTitle="Tech Lane checkout Page">
    <div class="wallet-container">
        <p class="title"><i class="fas fa-align-left"></i>My Wallet
            <a href="${pageContext.request.contextPath}/Login">
        <div class="icons">
            <div class="fas fa-user"></div>
        </div>
        </a>
        </p>

        <div class="amount-box">
            <div class="image-box">
                <img src="images/wallet.png">
            </div>
            <p>Total Ballance</p>
            <p class="ballance">100.000 Ron</p>
        </div>

        <div class="footer">
            <div class="row">
                <div class="col-md-3">
                    <a href="${pageContext.request.contextPath}/index.jsp">
                        <div class="icons">
                            <div class="fas fa-home"></div>
                        </div>
                    </a>


                </div>
            </div>
        </div>
    </div>
    </div>
</t:walletTemplate>