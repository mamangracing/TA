<?php
class MY_Controller extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->library(array('cart','form_validation','pagination','session'));
		$this->load->helper(array('form','url','text'));
	}
}

class Frontend_Controller extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}
}
