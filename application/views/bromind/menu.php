
<!-- Menu -->
<section class="jumbotron jumbotron-fluid bg-transparent" id="Produk">
	<div class="container col-10 shopping-cart">
		<div class="row margin-top">
			<div class="col-xl-12"><?= $this->session->flashdata('pesan');?></div>
			<div class="col-4">
				<h5>Product</h5>
			</div>
			<div class="col-8 col-xl-3">
				<input type="text" name="cari" id="search" class="form-control search" placeholder="Search ...">
		    	<span class="glyphicon glyphicon-search form-control-feedback"></span>
			</div>
			<div class="col-xl-12 mt-3" id="type">
		    	<ul>
		    		<li>
		    			<a href="<?= base_url('landing_page/menu');?>">
		    				<h5>All</h5>
		    			</a>
		    		</li>
		    		<li>
		    			<a href="<?= base_url('landing_page/food');?>">
		    				<h5>Food</h5>
		    			</a>
		    		</li>
		    		<li>
		    			<a href="<?= base_url('landing_page/beverage');?>">
		    				<h5>Beverage</h5>
		    			</a>
		    		</li>
		    	</ul>
		    </div>
		    <div class="row col-xl-12" id="all-product">
		    	<?php
			    	foreach($product as $p) :?>
						<div class="form-group col-12 col-xl-4 col-md-6 mt-5 daftar-menu">
							<div class="col-xl-12 col-md-12 col-12 produk">
								<div class="harga"><h5 class="text-center mt-1 text-white">Rp <?= $p->price;?></h5></div>
								<div class="image-prduk margin-auto">
									<a href="#" data-toggle="modal" data-target="#singleOrder<?= $p->product_id;?>">
										<img src="<?= base_url('assets/');?>bromind_style/img-product/<?= $p->product_img;?>" class="w-100">
									</a>
									<div class="card-body mt-4 col-12 text-center col-md-12 col-xl-10" id="name_produk">
										<h3 class="noto-sans6"><?= $p->product_name;?></h3>
									</div>
								</div>
							</div>
						</div>
					<?php endforeach;
				?>
			</div>
		</div>
		
	</div>
</section>