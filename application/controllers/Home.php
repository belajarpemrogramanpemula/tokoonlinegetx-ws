<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . 'core/Core_Controller.php';

class Home extends Core_Controller {
	public function __construct(){
		parent::__construct();
	}
	public function index()	{	
		echo "Web Services";
	}
	public function pages($judul=''){	
		if($judul=="login"){	
			$post = json_decode(file_get_contents('php://input'), true);
			$username = $post['username'];
			$password = $post['password'];

							
			$sData = array();
			$data=$this->data->login($username,$password);
			if($data){				
				foreach($data as $rs){
					$arr_row=array();
					$arr_row['id'] = (int)$rs->id;
					$arr_row['username'] = $rs->userid."";
					$arr_row['nama'] = $rs->nama."";
					$arr_row['email'] = $rs->email."";
					$arr_row['level'] = $rs->level."";
					$arr_row['foto'] = $rs->foto."";
					$sData = $arr_row;
				}	
				$response = [
					'data' =>  $sData,
					'code' => 'OK'
				];
			}else{
				$response = [
					'data' =>  $sData,
					'code' => 'Error Salah Username Password'
				];	
			}	
			header('Content-Type: application/json');
			echo json_encode($response, JSON_PRETTY_PRINT);
		}else if($judul=="kategoribyproduk"){						
			$sData = array();
			$data=$this->data->kategoribyproduk();
			foreach($data as $rs){
				$arr_row=array();
				$arr_row['id'] = (int)$rs->idkategori;
				$arr_row['nama'] = $rs->kategori."";
				$sData[] = $arr_row;	
			}
			$response = [
				'data' =>  $sData,
				'code' => 'OK'
			];
			header('Content-Type: application/json');
			echo json_encode($response, JSON_PRETTY_PRINT);
		}else if($judul=="produkbykategori"){						
			$sData = array();
			$data=$this->data->produkbykategori($this->input->get('id'));
			foreach($data as $rs){
				$arr_row=array();
				$arr_row['id'] = (int)$rs->id;
				$arr_row['idkategori'] = (int)$rs->idkategori;
				$arr_row['judul'] = $rs->judul."";
				$arr_row['harga'] = "Rp. ".$this->rp($rs->harga)."";
				$arr_row['hargax'] = $rs->harga."";
				$arr_row['deskripsi'] = $rs->deskripsi."";
				$arr_row['thumbnail'] = $rs->thumbnail."";
				$sData[] = $arr_row;	
			}
			$response = [
				'data' =>  $sData,
				'code' => 'OK'
			];
			header('Content-Type: application/json');
			echo json_encode($sData, JSON_PRETTY_PRINT);
		}else if($judul=="subkategoribyproduk"){						
			$sData = array();
			$data=$this->data->subkategoribyproduk($this->input->get('id'));
			foreach($data as $rs){
				$arr_row=array();
				$arr_row['id'] = (int)$rs->idsubkategori;
				$arr_row['idkategori'] = (int)$rs->idkategori;
				$arr_row['nama'] = $rs->subkategori."";
				$arr_row['kategori'] = $rs->kategori."";
				$sData[] = $arr_row;	
			}
			$response = [
				'data' =>  $sData,
				'code' => 'OK'
			];
			header('Content-Type: application/json');
			echo json_encode($response, JSON_PRETTY_PRINT);
			
		}
	}
}