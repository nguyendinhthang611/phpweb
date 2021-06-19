<!-- top -->
  <div class="top">
    <!-- contact -->
    <div class="contact">
      <a href="#">Hotline:0908770095</a>
    </div>
    <!-- contact -->
    <!-- login -->
    <div class="login">
      <ul>
        <li><i class="fas fa-edit"></i>
          <a href="#">Kiểm tra đơn hàng</a></li>
        <li><i class="fas fa-shopping-cart"></i>
          <a href="index.php?controller=cart">Giỏ hàng</a></li>
        <li><?php if(isset($_SESSION["customer_email"]) == true): ?>
          <i class="fas fa-sign-in-alt"></i>
          <a href="#">Xin chào <?php echo $_SESSION["customer_email"];  ?></a>&nbsp; &nbsp;<i class="fas fa-sign-out-alt"></i><a href="index.php?controller=account&action=logout">Đăng Xuất</a>
           <?php else: ?>
            <i class="fas fa-sign-in-alt"></i>
            <a href="index.php?controller=account&action=login">Đăng nhập</a>&nbsp; &nbsp;<i class="fab fa-keycdn"></i><a href="index.php?controller=account&action=register">Đăng ký</a>
             <?php endif; ?>
        </li>
        <!-- <li><i class="fab fa-keycdn"></i>
          <a href="index.php?controller=account&action=logout">Đăng Xuất</a></li> -->
      </ul>
    </div>  
    <!-- login -->
  </div>
  <!-- top -->
  <!-- header -->
  <div class="header">
    <!-- logo -->
    <div class="logo">
      <a href="index.php"><img src="assets/frontend/images/logo.png"></a>
    </div>
    <!-- logo -->
    <!-- search -->
    <div class="search" style="position: relative;">
      <!-- <input type="text" class="search-txt" value="" > -->
      <input type="text" value="" class="search-txt" placeholder="Nhập từ khóa tìm kiếm..." id="key" >
      <input type="button" class="search-btn" onclick="location.href='index.php?controller=search&key='+document.getElementById('key').value;" value="Tìm ngay" >
    </div>
    <div id="smart-search">
        <ul>
         <!--  <li><img src="assets/upload/products/1622640476_1615812872_132195017985165066_1.jpg"> <a href="#">18 - 16 - MacBook Pro 16 Touch Bar</a></li>
          <li><img src="assets/upload/products/1622640476_1615812872_132195017985165066_1.jpg"> <a href="#">18 - 16 - MacBook Pro 16 Touch Bar</a></li>
          <li><img src="assets/upload/products/1622640476_1615812872_132195017985165066_1.jpg"> <a href="#">18 - 16 - MacBook Pro 16 Touch Bar</a></li> -->
        </ul>
      </div>
      <style type="text/css">
      #smart-search{position: absolute; width: 550px; background: white; z-index: 1; display: none;margin-left: 430px;margin-top: 70px; max-height: 300px;overflow: scroll;}
      #smart-search ul{padding: 0px; margin: 0px; list-style: none;}
      #smart-search ul li{border-bottom: 1px solid #dddddd; margin-bottom: 10px; margin-top: 10px;}
      #smart-search img{width: 60px; margin-right: 5px;}
    </style>
    <script type="text/javascript">
      $(document).ready(function(){
        $("#key").keyup(function(){
          var key = $("#key").val();
          if(key != ""){
            $("#smart-search").attr("style","display:block;");
            //---
            $.ajax({
              url: "index.php?controller=search&action=ajax&key="+key,
              success: function( result ) {
                $( "#smart-search ul" ).empty();
                $( "#smart-search ul" ).append(result);
              }
            });
            //---
          }
          else
            $("#smart-search").attr("style","display:none;");
        });
      });
    </script>
    
    <!-- search -->
    <!-- account -->
    <div class="account" >
      <div class="account-icon">
        <i class="far fa-user"></i>
      </div>
      <div class="account-title">
        <strong>Tài khoản</strong>
      </div>
      <div class="account-box" >
        <ul>
          <?php if(isset($_SESSION["customer_email"]) == true): ?>
          <li><a href="#" style="padding-left: 50px;"> <?php echo $_SESSION["customer_email"];  ?></a></li>
          <li><a href="index.php?controller=account&action=logout" style="padding-left:70px;">Đăng Xuất</a></li>
           <?php else: ?>
          <li><a href="index.php?controller=account&action=login" style="padding-left:60px;">Đăng Nhập</a></li>
          <li><a href="index.php?controller=account&action=register" style="padding-left:70px;">Đăng Kí</a></li>
          <?php endif; ?>
        </ul>
      </div>
    </div>
    <!-- account -->
    <!-- cart -->
    <?php 
        $number = 0;
        if(isset($_SESSION["cart"])==true){
          foreach($_SESSION["cart"] as $product){
          $number++;
        }
        }
       ?>
    <div class="cart">
      <div class="cart-icon">
        <i class=" fas fa-shopping-cart"></i>
      </div>
      <div class="cart-title">
        <strong class="cart_header_count"><a href="index.php?controller=cart" style="color: black;text-decoration: none;">Giỏ hàng</a><span>(<?php echo $number; ?>)</span></strong><br>
      </div>
      <div class="cart-box" >
        <ul >
    <?php if(isset($_SESSION["cart"])==true): ?>
              <?php 
                foreach($_SESSION["cart"] as $product):
               ?>
          <li >
            <div class="image" >
              <a href=""><img src="assets/upload/products/<?php echo $product["photo"] ?>"></a>
            </div>
            <div class="info" s>
              <h3 ><a href="index.php?controller=products&action=detail&id=<?php echo $product["id"] ?>" ><?php echo $product["name"] ?></a></h3>
              <p><?php echo $product["number"] ?> x <?php echo number_format($product["price"]) ?></p>
            </div>
            <div class="buttonss" > <a href="index.php?controller=cart&action=delete&id=<?php echo $product['id']; ?>"> <i class="fa fa-times"></i></a> </div>
          </li>
          <?php endforeach; ?>
          <?php endif; ?>
        </ul>
         <a href="index.php?controller=cart&action=checkout" class="button" >Thanh toán</a> </div>
      </div>
    </div>
    <!-- cart -->
  </div>
    <!-- header -->