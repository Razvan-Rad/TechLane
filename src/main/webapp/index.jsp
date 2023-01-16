<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Cars">

<!--HOME-->

<section class="home" id="home">
    <div class="display"></div>
    <div class="imagine">
        <img src="${pageContext.request.contextPath}/images/pc.png" alt="about us">
    </div>
    <div class="content">
        <h3><span style="--i:1">T</span>
            <span style="--i:2">E</span>
            <span style="--i:3">C</span>
            <span style="--i:4">H</span>
            <span style="--i:5">L</span>
            <span style="--i:6">A</span>
            <span style="--i:7">N</span>
            <span style="--i:8">E</span>

            for best quality electronics
        </h3>
        <p>Computers, laptops, headphones, keyboards, everything you need
            for best quality and performance</p>
    </div>
        <div class="imags">
            <img src="${pageContext.request.contextPath}/images/keyboard.png" alt="about us">
        </div>
    </div>
</section>

<!--PRODUCTS-->
<section class="products" id="products">
    <h1 class="heading"> Our Products </h1>
    <div class="swiper slider">
        <div class="swiper-wrapper">
            <c:forEach var="car" items="${cars}">
                <div class="swiper-slide card">
                <h2>Car X:</h2>
                <c:if test="${pageContext.request.isUserInRole('READ_CARS')}">
                    <div class="col">
                        <input type="checkbox" name="car_ids" value="${car.id}"/>

                    </div>

                    <div class="col">
                        <h3>Name</h3>
                            ${car.licensePlate}
                    </div>

                    <div class="col">
                        <h3>Description</h3>
                            ${car.parkingSpot}
                    </div>

                    <div class="col">
                        <h3>TODO make this int (Rating?) </h3>
                            ${car.ownerName}
                    </div>

                    <div class="col">
                            <%--                        <img src="${pageContext.request.contextPath}/CarPhoto?id=${car.id}" width="48"/>--%>
                       <img src="${pageContext.request.contextPath}/1.png" width="48"/>
                    </div>

                    <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
                        <div class="col">
                            <a class="btn btn-secondary"
                               href="${pageContext.request.contextPath}/AddCarPhoto?id=${car.id}" role="button">Add
                                Photo</a>
                        </div>
                        <div class="col">
                            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit
                                Car</a>
                        </div>
                    </c:if>
                    </div>
                </c:if>

            </c:forEach>

            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/pc.png" alt="pc">
                <h3>PC Gaming Snake 5500V</h3>
                <div class="price">Asus Rog B650-e,Intel I7-7700k, Nvidia GeForce 3080, 32 gb RAM, 1TB SSD</div>
                <div class="price">10.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>

            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/1.png" alt="pc">
                <h3>PC Ultra Demon 66G9</h3>
                <div class="price">AMD Radeon 15X, AMD Ryzen 7, Radeon Graphics, 16 gb RAM, 2TB SDD</div>
                <div class="price">12.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/2.png" alt="pc">
                <h3>PC Gaming Suvenir 12GO</h3>
                <div class="price">Asus Rog 60HI6, Intel I5-5500, Nvidia Geforce 1080p, 32gb RAM, 2TB HDD, 1TB SSD
                </div>
                <div class="price">10.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/3.png" alt="pc">
                <h3>PC Rapid Fire X99</h3>
                <div class="price">Asus Rog B650-e,Intel I7-7700k, Nvidia GeForce 3080, 32 gb RAM, 2TB SSD</div>
                <div class="price">25.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/4.png" alt="pc">
                <h3>PC Under Armour 66GIG</h3>
                <div class="price">Asus Rog A66,Intel I7-5700k, Nvidia GeForce 2080, 16 gb RAM, 500GB SSD</div>
                <div class="price">5.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/5.png" alt="pc">
                <h3>PC Blue Yeti 45H</h3>
                <div class="price">Asus Rog E600,Intel I3-2700k, Nvidia GeForce 1060, 8 gb RAM, 1TB SSD</div>
                <div class="price">2.200 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
        </div>
    </div>

    <div class="swiper slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/1p.png" alt="pc">
                <h3>Laptop Mal Ultra</h3>
                <div class="price">Mother board Mal,Intel I3-3300, Integrated Graphics, 16 gb RAM, 1TB SSD</div>
                <div class="price">3.320 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>

            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/2p.png" alt="pc">
                <h3>Laptop Acer Ultra Gaming</h3>
                <div class="price">Asus Rog B6,Intel I7-7700, Nvidia GeForce 1080p, 32 gb RAM, 1TB SSD</div>
                <div class="price">7.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/laptop.png" alt="pc">
                <h3>Laptop Samsung AV99S3</h3>
                <div class="price">Samsung V7,Intel I3-2200, Integrated Graphics, 8gb RAM, 250GB SSD</div>
                <div class="price">2.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/3p.png" alt="pc">
                <h3>Laptop Acer AUSU</h3>
                <div class="price">Acer 2020UI,Intel I5-2200, Integrated Graphics, 8 gb RAM, 1TB HDD</div>
                <div class="price">900 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>


                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/4p.png" alt="pc">
                <h3>Mac Book Ultra Wide</h3>
                <div class="price">Intel 2203,Intel I7-7700, Intefrated Graphics, 32 gb RAM, 1TB SSD</div>
                <div class="price">6.000 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/5p.png" alt="pc">
                <h3>Laptop HP 665HP</h3>
                <div class="price">HP0 B650-e,Intel I3-1700, Intefrated Graphics, 8 gb RAM, 1TB SSD</div>
                <div class="price">1.200 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
        </div>
    </div>

    <div class="swiper slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/m1.png" alt="pc">
                <h3>Mouse HP </h3>
                <div class="price">Color: Black, sensivity 700 - 1200 dpi, wired</div>
                <div class="price">20 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>

            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/headphones.png" alt="pc">
                <h3>BlueSag Headphones</h3>
                <div class="price">7.1 Weave Sound, brownie to black, bluettoth</div>
                <div class="price">120 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/keyboard.png" alt="pc">
                <h3>Mechanical Keyboard KG990</h3>
                <div class="price">Mechanical, chroma, 127 buttons, 0.1 ms responds</div>
                <div class="price">400 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/m2.png" alt="pc">
                <h3>Logitech mouse 5500</h3>
                <div class="price">wired, chroma, 400 - 2200 dpi, 1s reponds</div>
                <div class="price">220 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/h2.png" alt="pc">
                <h3>White Snow Headphones</h3>
                <div class="price">7.1 soround, white, whired</div>
                <div class="price">89 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
            <div class="swiper-slide card">
                <img src="${pageContext.request.contextPath}/images/k2.png" alt="pc">
                <h3>HP keyboard</h3>
                <div class="price">black, 127 buttons, 1.5s responds, whired</div>
                <div class="price">25 Ron</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>

                </div>
                <input type="number" value="1">
                <a href="#" class="btn">add to cart</a>

            </div>
        </div>
    </div>



</section>


</t:pageTemplate>