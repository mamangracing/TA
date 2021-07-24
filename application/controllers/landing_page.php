<?php
class landing_page extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('data_bromind','bro');
		$this->load->model('Employee_model','employe');
	}

	public function index()
	{
		$kd_user = $this->session->kd_user;

		$data['judul'] = 'Landing Page';
		$data['isi'] = 'bromind/content';
		$data['modal'] = 'bromind/asset/modal';
		$data['page'] = $this->bro->get('page');
		$data['promo'] = $this->bro->get_where('promo','status',1);
		$data['website'] = $this->bro->get('website');
		$data['story'] = $this->bro->get('story');
		$data['product'] = $this->bro->new_product();
		$data['cart'] = $this->bro->cart($kd_user);
		$data['total_cart'] = $this->bro->total_cart();

		$this->load->view('bromind/index',$data);
	}

	public function story()
	{
		$kd_user = $this->session->kd_user;

		$data['judul'] = 'Tentang Kami';
		$data['isi'] = 'bromind/history';
		$data['modal'] = 'bromind/asset/modal';
		$data['page'] = $this->bro->get('page');
		$data['website'] = $this->bro->get('website');
		$data['product'] = $this->bro->get('product');
		$data['story'] = $this->bro->get('story');
		$data['cart'] = $this->bro->cart($kd_user);
		$data['total_cart'] = $this->bro->total_cart();

		$this->load->view('bromind/index',$data);
	}

	public function contact()
	{
		$kd_user = $this->session->kd_user;

		$data['judul'] = 'Kontak Kami';
		$data['isi'] = 'bromind/contact';
		$data['modal'] = 'bromind/asset/modal';
		$data['page'] = $this->bro->get('page');
		$data['website'] = $this->bro->get('website');
		$data['product'] = $this->bro->get('product');
		$data['cart'] = $this->bro->cart($kd_user);
		$data['total_cart'] = $this->bro->total_cart();

		$this->load->view('bromind/index',$data);
	}

	public function menu()
	{
		$id=$this->input->get('product_id');
		$kd_user = $this->session->kd_user;
		
		$data['id'] = $id;
		$data['judul'] = 'Produk Kami';
		$data['isi'] = 'bromind/menu';
		$data['modal'] = 'bromind/asset/modal';
		$data['page'] = $this->bro->get('page');
		$data['website'] = $this->bro->get('website');
		$data['product'] = $this->bro->get('product');
		$data['cart'] = $this->bro->cart($kd_user);
		$data['total_cart'] = $this->bro->total_cart();

		$this->load->view('bromind/index',$data);
	}

	public function food()
	{
		$kd_user = $this->session->kd_user;

		$data['judul'] = 'Produk Kami';
		$data['isi'] = 'bromind/menu';
		$data['modal'] = 'bromind/asset/modal';
		$data['page'] = $this->bro->get('page');
		$data['website'] = $this->bro->get('website');
		$data['product'] = $this->bro->get_where('product','product_type','Food');
		$data['cart'] = $this->bro->cart($kd_user);
		$data['total_cart'] = $this->bro->total_cart();

		$this->load->view('bromind/index',$data);
	}

	public function beverage()
	{
		$kd_user = $this->session->kd_user;

		$data['judul'] = 'Produk Kami';
		$data['isi'] = 'bromind/menu';
		$data['modal'] = 'bromind/asset/modal';
		$data['page'] = $this->bro->get('page');
		$data['website'] = $this->bro->get('website');
		$data['product'] = $this->bro->get_where('product','product_type','Baverage');
		$data['cart'] = $this->bro->cart($kd_user);
		$data['total_cart'] = $this->bro->total_cart();

		$this->load->view('bromind/index',$data);
	}

	public function order_wa()
	{
		$this->session->set_flashdata('pesan','<div class="alert alert-message alert-danger text-center" role="alert">Anda belum login !!</div>');

		redirect('landing_page/menu');
	}

	public function save_cart()
	{
		if($this->session->role_id == 3){

			$product_id = $this->input->get('product_id');
			$qty = $this->input->get('qty');
			$user = $this->session->kd_user; 

			$cart = $this->bro->get('cart');

			//$no_cart = $this->db->query('SELECT * FROM cart')->result_array();
			$kd_cart = "CT";
			
			
			if($cart[0]->kd_user == $this->session->kd_user){

				$data['qty'] = $qty + $cart[0]->qty;

				$product_id = $product_id;

				$this->bro->update('cart',$data,'product_id',$product_id);

				$this->session->set_flashdata('pesan','<div class="alert alert-message alert-success text-center" role="alert">Berhasil ditambahkan ke keranjang belanja</div>');

				redirect('landing_page/menu');
				
			} else {

				$no_urut = count($cart);
				$customer = $this->session->kd_user;
				$kd_user = substr($customer, 3);

				$data['qty'] = $qty;
				$data['product_id'] = $product_id;
				$data['kd_user'] = $this->session->kd_user;
				$data['no_cart'] = $kd_cart.sprintf("%02s", $no_urut).$kd_user;

				$this->session->set_flashdata('pesan','<div class="alert alert-message alert-success text-center" role="alert">Berhasil ditambahkan ke keranjang belanja</div>');

				$this->bro->save('cart',$data);
				redirect('landing_page/menu');
			}

		} else {
			$this->session->set_flashdata('pesan','<div class="alert alert-message alert-danger text-center" role="alert">Anda harus login terlebih dahulu</div>');

			redirect('landing_page/menu');
		}
	}

	public function remove_cart()
	{
		$product_id = $this->input->get('product_id');

		$this->bro->delete('cart','product_id',$product_id);

		$this->session->set_flashdata('pesan','<div class="alert alert-message alert-success text-center" role="alert">Berhasil hapus pesanan</div>');

		redirect('landing_page/menu');
	}

	public function message()
	{
		if($this->session->role_id == 3){

			$message = $this->db->query('SELECT * FROM message')->result_array();
			
			$kd_message = "MSG";
			$kd_user = substr($this->session->kd_user, 3);
			$no_urut = count($message);

			$kode = $kd_message.sprintf("%02s", $no_urut).$kd_user;

			$data['message_id'] = $kode;
			$data['kd_user'] = $this->session->kd_user;
			$data['comment'] = $this->input->post('message');
			$data['date_created'] = date('Y-m-d');

			$this->bro->save('message',$data);

			$this->session->set_flashdata('pesan','<div class="alert alert-success alert-message text-center" role="alert">Pesan berhasil dikirim</div>');

			redirect('landing_page/contact');

		}else {

			$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-message text-center" role="alert">Anda harus login terlebih dahulu !!</div>');

			redirect('landing_page/contact');
		}
	}

	public function yt()
	{
		redirect("https://www.youtube.com/watch?v=kBueHoBhTQk");
	}
}