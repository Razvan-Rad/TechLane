<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:checkoutTemplate pageTitle="Tech Lane checkout Page">


    <main class="container">
        <h1 class="heading">
            <a href="${pageContext.request.contextPath}/index.jsp">
                <i class="fas fa-home"></i>
            </a>
            <i class="fas fa-shopping-cart"></i>
            Checkout
        </h1>
        <div class="container-flex">

            <!--CHECKOUT-->

            <section class="checkout">
                <h2 class="sec-heading">Payment Details</h2>
                <div class="payment-form">
                    <div class="payment-method">
                        <button class="method">
                            <i class="fas fa-credit-card"></i>
                            <span>Credit Card</span>
                            <i class="fas fa-check"></i>
                        </button>

                    </div>

                    <form action="" class="form">
                        <div class="cardholder-name">
                            <label for="name" class="label-default">Name on Card</label>
                            <input type="text" id="name" placeholder="Enter Name" class="input-default">
                        </div>

                        <div class="card-number">
                            <label for="card" class="label-default">Card Number</label>
                            <input type="text" id="card" placeholder="Enter Card Number" class="input-default">
                        </div>

                        <div class="input-flex">
                            <div class="expire-date">
                                <label for="date" class="label-default">Expiration Date</label>
                                <input type="text" id="date" placeholder="MM/YY" class="input-default">
                            </div>

                            <div class="cvv-card">
                                <label for="cvv" class="label-default">CVV</label>
                                <input type="text" id="cvv" placeholder="Enter CVV" class="input-default">
                            </div>
                        </div>
                        <br>
                        <button class="btn btn-second">Pay Now:</button>
                        <span id="payAmount"> 5.000 Ron</span>
                    </form>
                </div>
            </section>

            <!--CART-->

            <section class="cart">
                <div class="cart-box">
                    <h2 class="sec-heading">Order Summary</h2>
                    <div class="product-item">
                        <div class="card">
                            <div class="card-img">
                                <img src="images/laptop.png" alt="laptop">

                            </div>
                            <div class="detail">
                                <h3 class="product-name">Laptop Samsung AV99S3</h3>
                                <div class="wrapper">
                                    <div class="quantity">
                                        <input type="number" value="1">
                                    </div>
                                    <div class="price">
                                        <span>5.000 Ron</span>

                                    </div>
                                    <div class="delete">
                                        <i class="fas fa-trash"></i>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="product-item">
                            <div class="card">
                                <div class="card-img">
                                    <img src="images/headphones.png" alt="laptop">

                                </div>
                                <div class="detail">
                                    <h3 class="product-name">Blue Sag Headphones</h3>
                                    <div class="wrapper">
                                        <div class="quantity">
                                            <input type="number" value="1">
                                        </div>
                                        <div class="price">
                                            <span>5.000 Ron</span>
                                        </div>
                                        <div class="delete">
                                            <i class="fas fa-trash"></i>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="amount">
                                <div class="total">
                                    <span>Total</span>
                                    <span>10.000 Ron</span>
                                </div>
                                <div class="total">
                                    <span>Shipping</span>
                                    <span>Free</span>
                                </div>
                                <div class="total">
                                    <span>Total Amount</span>
                                    <span>10.000 Ron</span>
                                </div>
                            </div>
            </section>
        </div>


    </main>
</t:checkoutTemplate>
