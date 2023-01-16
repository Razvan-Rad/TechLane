<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <title>Shop</title>
</head>

<body>

<!--HEADER-->
<header class="header">
    <a href="#">
        <img src="${pageContext.request.contextPath}/images/logo2.png" alt="Logo" class="logo">
    </a>
    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#about us">About us</a>
        <a href="#products">Products</a>
        <a href="#features">Features</a>

    </nav>
    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-user" id="user-btn"></div>
    </div>
    <form action="" class="login">
        <h3>Login now</h3>
        <input type="email" placeholder="enter your email" class="box">
        <input type="password" placeholder="enter your password" class="box">
        <p>don't have an account <a href="#">create now</a></p>
        <input type="submit" value="login now" class="btn">
    </form>
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

<!--ABOUT US-->

<section class="about" id="about us">
    <div class="main">
        <img src="${pageContext.request.contextPath}/images/laptop.png" alt="about us">
        <div class="about-text">
            <h1>about us</h1>
            <p>We are a company that sells electronics, we have a wide range of
                products, from computers, laptops to headphones, keyboards and etc.
                we have everything you need for your daily life to a good price and for a good quality and best
                performance.If you have any questions about our products you can easly send us an email
                and we will be happy to answear :)</p>
        </div>

    </div>
</section>


<!--PRODUCTS-->

<section class="products" id="products">
    <h1 class="heading"> Our Products </h1>
    <div class="swiper slider">
        <div class="swiper-wrapper">
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

<!--Feature-->

<section class="features" id="features">
    <h1 class="heading"> Our Features </h1>
    <div class="card-container">
        <div class="card">
            <img src="${pageContext.request.contextPath}/images/trust.png" alt="pc">
            <h3>Trust client</h3>
            <br>
            <p>Our clients should be aware of scumming site but this is not us, we are a trust company and we
                answear to our clients
                as soon as possible
            </p>
            <a href="#" class="btn">read more</a>
        </div>

        <div class="card">
            <img src="${pageContext.request.contextPath}/images/delivery.png" alt="pc">
            <h3>Fast delivery</h3>
            <br>
            <p>As soon as you order you'r products we will procced in our data base and we will delliver you'r
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

<!--Footer-->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <img src="${pageContext.request.contextPath}/images/logo2.png" alt="logo">
            <p>Our company is a trust company and we are here to help you with your problems</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> (+40) 077452990 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> (+40) 0749363188 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> techlane@tech.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> Sibiu, ROMANIA </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> about </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> products </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> features </a>

        </div>
    </div>

    <script src="${pageContext.request.contextPath}/scripts/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</body>

</html>