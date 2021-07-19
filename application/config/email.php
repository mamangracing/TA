<?php defined('BASEPATH') OR exit ('No direct script access allowed');

$config = array(
	'protocol' => 'smtp', //'mail','sendemail', or 'smtp'
	'smtp_host' => 'smtp.gmail.com',
	'smtp_port' => 465,
	'smtp_user' => 'cafebromind@gmail.com',
	'smtp_pass' => 'belajarasteroit123',
	'smtp_crypto' => 'ssl', //can be 'ssl' or 'tls' for example
	'mailtype' => 'text', //plaintext 'text' mails or 'html'
	'smtp_timeout' => '4', //in second
	'charset' => 'iso-8859-1',
	'wordwrap' => TRUE
);