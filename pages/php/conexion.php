<?php
	include_once('config.php');
	class Model{
		protected $db;
		public function __construct(){
			$this->db = new mysqli(HOST, USER, PASS, NAME);
			if($this->db->connect_errno){
				exit();
			}
			$this->db->set_charset(CHARSET);
		}
	}
?>
