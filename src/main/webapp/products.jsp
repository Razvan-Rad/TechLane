<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Tech Lane Products Page">

    <section class="products" id="products">
        <h1 class="heading"> Our Products </h1>
        <div class="swiper slider">
            <div class="swiper-wrapper">
            <c:forEach var="product" items="${products}">
                    <div class="swiper-slide card">

                        <img src="${product.image}" alt="pc">
                        <h3>${product.name}</h3>
                        <div class="price">${product.description}</div>
                        <div class="price">${product.price} Ron</div>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <input type="number" value="1">
                        <a href="#" class="btn">Add to cart</a>
                    </div>
            </c:forEach>
            <br><br><br><br><br><br><br><br><br><br><br>
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
                <a href="#" class="btn">Add to cart</a>

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


        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
        <script src="scripts/script.js"></script>
    </section>


</t:pageTemplate>