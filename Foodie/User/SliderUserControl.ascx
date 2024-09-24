<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderUserControl.ascx.cs" Inherits="Foodie.User.SlideUserControl" %>

<section class="slider_section ">
    <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-7 col-lg-6 ">
                            <div class="detail-box">
                                <h1>Fast Food Restaurant
                                </h1>
                                <p>
                                    "Lezzet dolu anlar, her ısırıkta damakta kalıcı izler bırakır. LezizKap ile en taze malzemelerden hazırlanan burgerler ve çıtır patatesler sizleri bekliyor. Hızlı, kaliteli ve doyurucu bir yemek deneyimi için hemen sipariş verin!"
                                </p>
                                <div class="btn-box">
                                    <a href="Menu.aspx" class="btn1">Sipariş Ver
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item ">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-7 col-lg-6 ">
                            <div class="detail-box">
                                <h1>Tatlı Krizine Son!
                                </h1>
                                <p>
                                    Canınız tatlı mı çekiyor? Menümüzden nefis tatlılarımızı keşfedin. Sıcak çikolatalı kekten taze meyveli tatlılara kadar birçok seçenek.
                                </p>
                                <div class="btn-box">
                                    <a href="Menu.aspx?id=12" class="btn1">Tatlıları Keşfet!
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-7 col-lg-6 ">
                            <div class="detail-box">
                                <h1>Lezzet Dolu Pizzalar
                                </h1>
                                <p>
                                    İnce hamurdan bol malzemeye, her damak tadına hitap eden pizzalarımızla tanışın! En taze malzemelerle hazırlanan, fırından sıcacık çıkan pizzalarımız, ister evde ister işte lezzet dolu anlar yaşatmak için sizi bekliyor. Hemen sipariş verin, pizzanın tadını çıkarın!                               
                                </p>
                                <div class="btn-box">
                                    <a href="Menu.aspx?id=9" class="btn1">Sipariş Ver
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <ol class="carousel-indicators">
                <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
                <li data-target="#customCarousel1" data-slide-to="1"></li>
                <li data-target="#customCarousel1" data-slide-to="2"></li>
            </ol>
        </div>
    </div>

</section>
