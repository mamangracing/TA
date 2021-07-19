<!-- session cart shopping-->
<div class="modal fade shopping-cart" id="shopping-cart" tabindex="-1" aria-labelledby="exampleModalLabel" aria-label="hidden">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" id="cart-single-button">
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-dialog">
			</div>
			<div class="modal-body" id="list-cart-single">
				<div class="title">Cart</div>
				<?php
				if($cart){
					
					foreach ($cart as $c) :?>
						<div class="form-group col-xl-12 mt-5">
							<div class="row list-cart">
								<div class="col-xl-6 col-8 cart-image">
									<img src="<?= base_url('assets/');?>bromind_style/img-product/<?= $c->product_img;?>" class="w-100">
								</div>
								<div class="col-xl-5 col-11" id="produk_name">
									<div class="produk_title mt-3"><?= $c->product_name;?></div>
									<div class="idr price"><?= $c->price;?></div>
									<div class="count mt-4">Qty 
										<input type="number" id="cart_qty" class="qty col-xl-5 margin-left" value="<?= $c->qty;?>" min="1">
									</div>
								</div>
								<div class="col-xl-1 col-1 h-25 remove">
									<a href="<?= base_url('landing_page/remove_cart?product_id='.$c->product_id);?>" class="text-dark">
										<i class="fas fa-trash">Delete</i>
									</a>
								</div>
							</div>
						</div>
					<?php endforeach ?>
						<hr class="mt-5 bg-dark">

						<div class="form-group col-xl-11 m-auto">
							<div class="row">
								<div class="col-xl-7 subtotal">
									<label>Subtotal</label>
								</div>
								<div class="col-xl-5 idr">
									<label>
										<input type="text" id="total_price" name="total" value="<?php echo $total_cart->total;?>" disabled class="col-xl-12 form-control">
									</label>
								</div>
							</div>
						</div>

						<div class="form-group col-xl-8 btn-orer m-auto">
							<a class="btn btn-danger form-control" href="<?= base_url('landing_page/order_wa');?>" target="blank">order</a>
						</div>
					<?php
				} else {
					echo "kosong";
				}
				?>
			</div>
		</div>
	</div>
</div>
<!-- end shoping cart -->

<!-- order single -->
<?php
	foreach ($product as $p):?>
		
		<div class="modal fade single-order position-fixed" id="singleOrder<?= $p->product_id;?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" id="single-order-button">
						<div class="title">Singgle Order</div>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body col-11 col-sm-11 col-md-11 col-lg-11 col-xl-11 margin-auto">
						<div class="row">
							<div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
								<img src="<?= base_url('assets/');?>bromind_style/img-product/<?= $p->product_img;?>" class="w-100">
							</div>
							<form action="<?= base_url('landing_page/save_cart');?>" type="get" class="order col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6 bg-transparent">
								<div class="form-group">
									<div class="row">
										<div class="col-xl-12 mb-4">
											<label id="name_product"><?= $p->product_name;?></label>
											<input name="product_id" value="<?= $p->product_id;?>" hidden>
										</div>
										<div class="col-xl-12 mb-4">
											<label><?= $p->description;?></label>
											<input id="price" value="<?= $p->price;?>" hidden>
										</div>
										<div class="col-xl-4 mb-4">
											<input id="qty_order" class="form-control" name="qty" min="1" value="1" type="number">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-6 col-xl-6">
											<a>
										</div>
										<div class="col-6 col-xl-6">
											<button class="btn btn-primary form-control">Add Cart</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php endforeach;
?>
