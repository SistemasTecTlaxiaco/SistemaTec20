<?php
	include_once('config.php');
	class Model{
		protected $db;
		public function __construct(){
			//quitamos los DB de las variales de conexión 
			$this->db = new mysqli(HOST, USER, PASS, _NAME);
			if($this->db->connect_errno){
				exit();
			}
			$this->db->set_charset(CHARSET);
		}
	}
?>
