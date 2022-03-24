<%-- 
    Document   : Slide
    Created on : Mar 24, 2022, 2:41:00 PM
    Author     : Quoc Duong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
      rel="stylesheet"
    />
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <link rel="stylesheet" href="css/reset.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <link rel="stylesheet" href="css/app.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="image-slider">
      <div class="image-item">
        <div class="image">
          <img
            src="https://static.tin.moi/uploads/news/photo/w4/w4G/w4GSD7s9LO-800x950.jpg"
            alt=""
          />
        </div>
        <h3 class="image-title">Iphone 13 Pro</h3>
      </div>
      <div class="image-item">
        <div class="image">
          <img
            src="https://minhtuanmobile.com/uploads/products/iphone-13-green-select-220309101928-220309101928_thumb.jpg"
            alt=""
          />
        </div>
        <h3 class="image-title">Iphone 13 Pro Max</h3>
      </div>
      <div class="image-item">
        <div class="image">
          <img
            src="https://images.samsung.com/vn/smartphones/galaxy-s22-ultra/images/galaxy-s22-ultra_highlights_kv_img.jpg"
            alt=""
          />
        </div>
        <h3 class="image-title">Samsung S22 Ultra</h3>
      </div>
      <div class="image-item">
        <div class="image">
          <img
            src="https://cdn.tgdd.vn/Products/Images/42/240166/google-pixel-6-pro-1-600x600.jpg"
            alt=""
          />
        </div>
        <h3 class="image-title">Pixel 6 Pro</h3>
      </div>
      <div class="image-item">
        <div class="image">
          <img
            src="https://cellphones.com.vn/sforum/wp-content/uploads/2021/05/OPPO-Reno6-5G-1.png"
            alt=""
          />
        </div>
        <h3 class="image-title">Oppo Reno 6</h3>
      </div>
    </div>
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-1.11.0.min.js"
    ></script>
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"
    ></script>
    <script
      type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"
    ></script>
    <script>
        $(document).ready(function () {
  $(".image-slider").slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    infinite: true,
    arrows: true,
    draggable: false,
    prevArrow: `<button type='button' class='slick-prev slick-arrow'><ion-icon name="arrow-back-outline"></ion-icon></button>`,
    nextArrow: `<button type='button' class='slick-next slick-arrow'><ion-icon name="arrow-forward-outline"></ion-icon></button>`,
    dots: true,
    responsive: [
      {
        breakpoint: 1025,
        settings: {
          slidesToShow: 3,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          arrows: false,
          infinite: false,
        },
      },
    ],
    // autoplay: true,
    // autoplaySpeed: 1000,
  });
});
    </script>
    </body>
</html>
