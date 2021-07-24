
<!-- bagian hero / tampilan awal -->
<section id="carouselExampleCaptions" class="carousel slide mobile" data-ride="carousel">
	<div class="full">
		<div class="carousel-inner">
			<div class="carousel-caption d-md-block bromind bromind-text">
				<img src="<?= base_url('assets/');?>bromind_style/img/BROMIND.png">
			</div>
			<div class="carousel-caption d-md-block tombol tombol-btn col-xl-2 col-4">
				<a href="#Produk">
					<img src="<?= base_url('assets/');?>bromind_style/img/Group 108.png" class="w-100">
				</a>
			</div>
			<div class="carousel-caption d-md-block teks kopi1 cofe1 h-25 w-75">
				<img src="<?= base_url('assets/');?>bromind_style/img/tumpah 1.png" class="w-100">
			</div>
			<div class="carousel-caption d-md-block teks kopi2 cofe2 h-25">
				<img src="<?= base_url('assets/');?>bromind_style/img/tumpah 2.png" class="w-100">
			</div>
			<div class="carousel-caption d-md-block teks follow_us">
				<img src="<?= base_url('assets/');?>bromind_style/img/fb.png"><br>
				<img src="<?= base_url('assets/');?>bromind_style/img/ig.png" class="margin-top-d-1"><br>
				<img src="<?= base_url('assets/');?>bromind_style/img/wa.png" class="margin-top-d-1"><br>
				<img src="<?= base_url('assets/');?>bromind_style/img/yt.png" class="margin-top-d-1">
			</div>
			<div class="carousel-item active">
				<img src="<?= base_url('assets/');?>bromind_style/img/menu.png" class="w-100 background" alt="gambar 1">
			</div>
		</div>
	</div>
</section>

<!-- bagian fasilitas -->
<section class="jumbotron jumbotron-fluid bg-transparent my-0 margin-top" id="Fasilitas">
	<div class="container mt-5">
		<div class="col-sm-9 col-xl-7 m-auto facilities">
			<h3>Facilities</h3>
		</div>
		<div class="col-sm-9 col-xl-7 m-auto" id="facilities">
			<img src="<?= base_url('assets/');?>bromind_style/img/Group 120.png" class="w-100">
		</div>
	</div>
</section>

<!-- bagian Story -->
<section class="jumbotron jumbotron-fluid bg-transparent" id="Story">
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-9 col-xl-5 right margin-auto col-md-6 m-auto" id="Group_121">
				<img src="<?= base_url('assets/');?>bromind_style/img/Group 121.png" class="w-100">
			</div>
			<div class="col-sm-12 col-xl-6 col-md-5" id="story">
				<div class="col-xl-12">
					<h2 class="text-dark"><b>Story</b></h2>
					<font class="text-dark isi"><?= $story[0]->p1;?></font>
				</div>
				<div class="col-xl-4 col-5 col-sm-3 mt-3 col-md-5 margin-left-d" id="button-story">
					<a href="<?= base_url('landing_page/story');?>">
						<img src="<?= base_url('assets/');?>bromind_style/img/Group 81.png" class="w-100">
					</a>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- bagian best menu -->
<section class="jumbotron jumbotron-fluid bg-transparent" id="Produk">
	<div class="container col-10">
		<div class="col-5 col-sm-3 col-xl-2" id="best-menu">
			<img src="<?= base_url('assets/');?>bromind_style/img/Group 122.png" class="w-100">
		</div>
		<div class="row mt-5">
			<?php
			foreach ($product as $p) :?>
				<div class="form-group col-xl-4 col-md-12">
					<div class="col-xl-12 col-md-7 col-12 produk margin-auto">
						<div class="harga"><h5 class="text-center mt-1 text-white">Rp <?= $p->price;?></h5></div>
						<div class="image-prduk margin-auto">
							<img src="<?= base_url('assets/');?>img/product/<?= $p->product_img;?>" class="w-100">
						</div>
						<div class="card-body mt-4 col-12 text-center col-md-12 col-xl-6 margin-auto" id="name_produk">
							<h3 class="noto-sans6"><?= $p->product_name;?></h3>
						</div>
					</div>
				</div>
			<?php endforeach ?>
			<div class="col-6 col-xl-2 col-sm-4 col-md-3 m-auto" id="all-produk">
				<a href="<?= base_url('landing_page/menu');?>">
					<img src="<?= base_url('assets/');?>bromind_style/img/Group 123.png" class="w-100 mt-4">
				</a>
			</div>
		</div>
	</div>
</section>

<!-- bagian promo pembayaran-->
<section class="jumbotron jumbotron-fluid bg-transparent mt-5" id="Promo">
	<div class="container mt-5">
		<div class="row">
			<?php
			foreach ($promo as $p ) :?>
	
				<div class="form-group col-sm-9 col-xl-6 mt-3 col-md-7 margin-auto margin-bottom">
					<div class="card">
						<div class="col-xl-5 discount discount-m">
							<img src="<?= base_url('assets/');?>bromind_style/img/label-promo.png">
						</div>
						<div class="row p-5">
							<div class="col-xl-5 col-6 col-sm-6 col-md-6 m-auto gopay">
								<img src="<?= base_url('assets/');?>bromind_style/img/<?= $p->promo_img;?>" class="icon-photo w-100">
							</div>
							<div class="col-xl-7 col-12 gopay">
								<h4><b><?= $p->promo_name;?></b></h4>
								<?= $p->promo_detail;?>
								<br><br>
								<b><?= $p->period;?></b>
							</div>
						</div>
					</div>
				</div>

				<?php
			endforeach ?>
		</div>
	</div>
</section>

<!-- bagian location -->
<section class="jumbotron jumbotron-fluid bg-transparent mt-5" id="Lokasi">
	<div class="container mt-5">
		<div class="row">
			<div class="col-xl-6 col-sm-9 col-md-6 geser margin-auto" id="Group_124">
				<img src="<?= base_url('assets/');?>bromind_style/img/Group 124.png" class="w-100">
			</div>
			<div class="col-xl-5 col-md-5" id="location">
				<div class="col-xl-12">
					<h3>Location</h3>
					<font class="nunito2"><?= $website[0]->location;?></font>
				</div>
				<div class="col-6 col-sm-4 col-xl-6 mt-5 col-md-6" id="button-maps">
					<a href="<?= $website[0]->maps;?>" target="blank">
						<img src="<?= base_url('assets/');?>bromind_style/img/Group 60.png" class="w-100">
					</a>
				</div>
			</div>
		</div>
	</div>
</section>