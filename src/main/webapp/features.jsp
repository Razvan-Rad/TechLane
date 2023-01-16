<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:pageTemplate pageTitle="Features Page">




<section class="features" id="features">
    <h1 class="heading"> Our Features </h1>
    <div class="card-container">
        <div class="card">
            <img src="${pageContext.request.contextPath}/images/trust.png" alt="pc">
            <h3>Trust client</h3>
            <br>
            <p>Our clients should be aware of scumming site but this is not us, we are a trust company and we
                answer to our clients
                as soon as possible
            </p>
            <a href="#" class="btn">read more</a>
        </div>

        <div class="card">
            <img src="${pageContext.request.contextPath}/images/delivery.png" alt="pc">
            <h3>Fast delivery</h3>
            <br>
            <p>As soon as you order your products we will proceed in our database and we will deliver you'r
                product
                as soon as possible
            </p>
            <a href="#" class="btn">read more</a>
        </div>

        <div class="card">
            <img src="${pageContext.request.contextPath}/images/payment.png" alt="pc">
            <h3>Easy payment</h3>
            <br>
            <p>On our website we recomand using online payment,its easy and safe</p>
            <a href="#" class="btn">read more</a>
        </div>
    </div>
</section>
</t:pageTemplate>