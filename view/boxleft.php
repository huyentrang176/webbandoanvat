<div class="col-lg-3 col-md-5">

    <div class="sidebar">
    
        <div class="blog__sidebar__search">
            <form action="index.php?act=sanpham" method="post">
                <input type="text" name="keyw" placeholder="Tìm kiếm...">
                <button type="submit" name="timkiem"><span class="icon_search"></span></button>
            </form>
        </div>
        <div class="sidebar__item">
            <h4>Top 10 món yêu thích</h4>
            <?php 
                foreach($yeuthich as $tym){
                    extract($tym);
                    $hinh = $img_path . $img_sp;
                    $linksp = "index.php?act=sanphamct&id_sp=" . $id_sp;
                
            ?>
            <ul>
                <div class="selling_products">
                    <img src="<?= $hinh?>" alt="anh">
                    <a href="<?= $linksp?>"><?= $ten_sp?></a>
                </div>
            </ul>
            <?php }?>
        </div>
        
        
        <div class="sidebar__item">
            <h4>Kích thước </h4>
            <div class="sidebar__item__size">
                <label for="large">
                    <a href="">XL</a>
                    <input type="radio" id="large">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="medium">
                    <a href="">L</a>
                    <input type="radio" id="medium">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="small">
                    <a href="">M</a>
                    <input type="radio" id="small">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="tiny">
                    <a href="">S</a>
                    <input type="radio" id="tiny">
                </label>
            </div>
        </div>
    </div>
</div>