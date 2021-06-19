<?php 
  //load file Layout.php
  $this->layoutPath = "LayoutTrangTrong.php";
  //--
  	$fromPrice = isset($_GET["fromPrice"])?$_GET["fromPrice"]:0;
	$toPrice = isset($_GET["toPrice"])?$_GET["toPrice"]:0;
	$key = isset($_GET["key"])?$_GET["key"]:0;
	$search = "";
	if($fromPrice > 0)
		$search = $search. "&fromPrice=$fromPrice";
	if($toPrice > 0)
		$search = $search. "&toPrice=$toPrice";
	if($key != "")
		$search = $search. "&key=$key";
  //--
 ?>
 <div class="contentsp-left">
      <!-- link -->
      <div class="link">
        <a href="index.php">Trang chủ</a> &emsp;>>&emsp;
        <span>Tìm kiếm</span>
      </div>
      <!-- link -->
      <!-- title -->
      <div class="title">
        <h2>Tìm kiếm</h2>
      </div>
      <!-- title -->
      <!-- toolbar -->
      <!-- toolbar -->
      <!-- product -->
        <div class="product-list">
          
            <?php foreach($data as $rows): ?>
            <div class="col-xs-3 col-md-3 col-sm-3 ">
              <div class="product">
                  <?php if(isset($rows->discount)&&$rows->discount != 0): ?>
                            <div class="sale">
                            <span class="sale-ld"><?php echo $rows->discount; ?>%</span>  
                            </div>
                  <?php endif; ?>
                  <?php if(isset($rows->hot)&&$rows->hot == 1): ?>
                    <div class="hot">
                    <span>Hot</span>
                  </div>
                            
                  <?php endif; ?>
                      <div class="img-category"><img src="assets/upload/products/<?php echo $rows->photo; ?>"></div>
                      <div class="product-action">
                        <div class="add-product">
                          <a href="index.php?controller=cart&action=add&id=<?php echo $rows->id; ?>">
                            <i class="fas fa-shopping-bag"></i>
                          </a>
                        </div>
                        <div class="view-product">
                          <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>">
                            <i class="far fa-eye"></i>
                          </a>
                        </div>
                      </div>
                      <div class="product-title"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><b><?php echo $rows->name; ?></b></a><br>
                      </div>
                      <div class="product-price">
                        <span ><?php echo number_format($rows->price - $rows->price*$rows->discount/100); ?> ₫</span>
                        <?php if(isset($rows->discount)&&$rows->discount != 0): ?>
                          <del><?php echo number_format($rows->price); ?> ₫</del>
                        <?php endif; ?>
                      </div>
                      </div>
            </div>
               <?php endforeach; ?>
          
          
        </div>
        <!-- product -->
        <div  style="clear:both"></div>
        <div   class="&#x70;&#x61;&#x67;&#x69;&#x6E;&#x61;&#x74;&#x69;&#x6F;&#x6E;&#x2D;&#x63;&#x6F;&#x6E;&#x74;&#x61;&#x69;&#x6E;&#x65;&#x72;">
                  <ul class="pagination">
                    <li class="page-item"><span>Trang</span></li>
                    <?php for($i = 1; $i <= $numPage; $i++): ?>
                    <li class="page-item"><a class="page-link" href="index.php?controller=products&action=category&category_id=<?php echo $category_id; ?>&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                  <?php endfor; ?>
                  </ul>
                </div>
  </div>