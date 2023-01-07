<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Model {
	public function login($username,$password){
		$data=$this->db->query("select * from signin where userid='".$username."' and pass='".$password."'");
		$this->db->close();
		return $data->result();
	}
	public function kategoribyproduk(){
		$data=$this->db->query("select distinct idkategori,kategori from produk where st='1' and thumbnail<>''");
		$this->db->close();
		return $data->result();
	}
	public function produkbykategori($id){
		$data=$this->db->query("select * from produk where idkategori='".$id."' and thumbnail<>'' and st='1' limit 0,5");
		$this->db->close();
		return $data->result();
	}				
	public function subkategoribyproduk($id){
		$data=$this->db->query("select distinct idkategori,kategori,idsubkategori,subkategori from produk where idkategori='".$id."' and thumbnail<>'' and st='1'");
		$this->db->close();
		return $data->result();
	}
}
