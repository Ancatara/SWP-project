<%-- 
    Document   : Banner
    Created on : Mar 24, 2022, 2:10:47 PM
    Author     : Quoc Duong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/banner.css">
        <title> Page</title>
    </head>
    <body>
       <div class="container">
        <div class="panel active" style="background-image:url(https://static.tin.moi/uploads/news/photo/w4/w4G/w4GSD7s9LO-800x950.jpg);">
            

        </div>
        <div class="panel" style="background-image:url(https://hoangtusaigon.vn/wp-content/uploads/2021/10/ip13-red.png );">
            

        </div>
        <div class="panel" style="background-image:url(https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-15.png);">
            

        </div>
        <div class="panel" style="background-image:url(https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/samsung/Samsung-Galaxy-S22-Ultra/Green/Samsung-Galaxy-S22-Ultra-Green-frontimage.png );">
           

        </div>
        <div class="panel" style="background-image:url(https://specifications-pro.com/wp-content/uploads/2021/12/Xiaomi-Mi-12-1.jpg);">
            

        </div>
    </div>
        <script>
        const panels = document.querySelectorAll('.panel')

        panels.forEach(panel =>{
            panel.addEventListener('click', ()=>{
                removeActiveClasses()
                panel.classList.add('active')
            })
        })

        function removeActiveClasses(){
            panels.forEach(panel => {
                panel.classList.remove('active')
            })
        }
        </script>
    </body>
</html>
