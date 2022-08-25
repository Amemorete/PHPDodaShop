<?php

include "admin/setting/config.php";

$up_produitid = $_GET['produitid'];
$dis_general = $ravi->getByIdProduit($up_produitid);

$row= $dis_general->fetch_assoc();

include "header.php";
include "navbar.php";

?>

<div class="container " style="margin-top:200px;">
<div class="row " >
    <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6" >
        <div class="row ">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <img   src="<?php echo 'admin/picture/'.$row['photo1']; ?>" style="width:430px;  height: 470px;">

            </div>
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                <div class="row ">
                    <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                        <img   src="<?php echo 'admin/picture/'.$row['photo2']; ?>" style="width:190px; height: 225px;margin-bottom:10px ; ">
                    </div>
                    <div class=" col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <img   src="<?php echo 'admin/picture/'.$row['photo3']; ?>" style="width:190px; height: 230px;">
                    </div>
                </div>

            </div>

        </div>

    </div>
    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
    <h2 style="border-top:2px solid #fff;text-align: center; border-bottom:2px solid white; padding:10px; font-family: Lucida Calligraphy">
                                          -------
                                        <span style="color: #d9027d;"> 
                                        <?php echo $row['libelleProd']; ?> 
                                        </span>------- 
    </h2>
    <p class="fs-6 fw-bolder lh-lg">
    <?php echo $row['description']; ?>

    </p>
        
    </div>
</div>

</div>

  
 <?php

include "footer.php";
?>
