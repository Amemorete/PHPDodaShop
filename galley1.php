<title>website selling cosmetics</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href=".\css\hoder.css">


   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="./javascript/Danh_sach.js"></script>
  

    <link rel="stylesheet" type="text/css" href=".\css\list.css">
   
    

    
   
<div class="container">
  <div class="row">
    <div class="row" style="margin-top: 20px;">
      <div class="col-md-4" style="border-bottom: 2px solid #d9027d; text-align: center; margin-top: 65px;">
                 <!-- <img src="../image/title-1.png"> -->
              </div>
              <div class="col-md-4">
                 <img src="image/tt.png">
              </div>
              <div class="col-md-4" style="border-bottom: 2px solid #d9027d; text-align: center; color: #a32e58;">
                 <h1 style="font-family: Lucida Calligraphy">Categorie</h1>
              </div>
        
      </div>
      
    </div>
       <div class="row" >
               
             
      <div align="center">
          <button class="btn btn-white filter-button" data-filter="all">All</button>
          <button class="btn btn-white filter-button" data-filter="lipstick ">Lipstick</button>
          <button class="btn btn-white filter-button" data-filter="lotion">Top selling lotion</button>
          <button class="btn btn-white filter-button" data-filter="Cleasing">Cleasing milk</button>
          <button class="btn btn-white filter-button" data-filter="Make">Make up</button>
      </div>
      <br/>  
  </div>

      
   



         <div class="row">

            <?php $produit_dis_admin = $ravi-> produit_info_display_admin();
                $t_sn = 1;
                while($produit_info_admin =$produit_dis_admin->fetch_assoc())         {
                  
                
                          ?>  
                              
                                <div class="gallery_product col-lg-3 col-md-3 col-sm-6 col-xs-6 filter lipstick">
                                
                                    <div class="cuadro_intro_hover " style="background-color:#cccccc;">
                                        <p style="text-align:center; ">
                                            <img style="margin-left: 5%;"  src="<?php echo 'admin/picture/'.$produit_info_admin['photo1']; ?>"  class="img-responsive" alt="">
                                           
                                        </p>
                                       
                                        <div class="caption">
                                            <div class="blur"></div>
                                            <div class="caption-text">
                                            <a class=" btn text-white" href="det-produit.php?produit=produit-show&produitid=<?php echo $produit_info_admin['idProd']; ?>">
                                              <span class="glyphicon glyphicon-plus text-center"> 
                                              <i class="fa fa-eye"></i> Voir plus
                                              </span>
                                            </a>
                            
                                            </div>
                                        </div>
                                    </div>
                                    <h3 style="border-top:2px solid white;text-align: center; border-bottom:2px solid white; padding:10px; font-family: Lucida Calligraphy">
                                          -------
                                        <span style="color: #d9027d;"> 
                                                <?php echo $produit_info_admin['libelleProd'];?>
                                        </span>------- 
                                    </h3>
                                    <p style="text-align: center; font-family: 'Oswald', Arial, Helvetica, sans-serif; font-weight:18 ; ">Prix:  <?php echo $produit_info_admin['prix_unitaire'];?> FCFA</p>
                                </div>
                 <?php $t_sn++; } ?>
         


    </div>

    <div>
                    <span itemprop="rating" itemscope="" itemtype="https://data-vocabulary.org/rating">
                        <span class="avis_note"><span itemprop="average">4,27</span>/<span itemprop="best">5</span></span>sur
                    </span>
                    <span class="nb_avis"><span itemprop="votes">2181513</span>&nbsp;avis</span>
                    <div class="avis_note_etoile">
                        <div id="progressbarMark" class="avis_note_etoile progressbar bg_lazy">
                            <div id="Trustedshop_TrustedshopStars_indicatorFooterViewMark" class="indicator bg_lazy" style="width:85%;"></div>
                        </div>
                    </div>
                </div>
            
       
    <script type="text/javascript" src="./javascript/javascript.js"></script>
    <script type="text/javascript" src="./javascript/quangcao.js"></script>
    
</div>