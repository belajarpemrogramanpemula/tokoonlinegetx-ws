<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Core_Controller extends CI_Controller{
	var $agent;
	var $meta;
	var $release;
	function __construct(){
		parent::__construct();
		/*load library,untuk deteksi browser*/
		$this->load->library('user_agent');
		$this->agent = $this->agent->agent_string();
		$this->release=$this->release();
		$this->load->model("data");
		$this->load->library('session');
		date_default_timezone_set('Asia/Jakarta');
	}
	
	function release(){
		//return "dev";
		return "pages";
	}
	
	function rp($rp){
		$a=$rp;
		$b=explode(".",$a);
		$rp=$b[0];
		if(count($b)>1){
			$koma=$b[1];
		}else{
			$koma="";
		}
		$rupiah="";
		$p=strlen($rp);
		while($p>3){$rupiah=".".substr($rp,-3).$rupiah;
			$l=strlen($rp)-3;
			$rp=substr($rp,0,$l);
			$p=strlen($rp);
		}
		if($koma==""||$koma==0||$koma==00){
			$rupiah=$rp.$rupiah;
		}else{
			$rupiah=$rp.$rupiah.",".$koma;
		}
		if($rupiah==0||$rupiah=="0,00") $rupiah="";
		return $rupiah;
	}
}