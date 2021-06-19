<?php 
	include "models/CategoriesModel.php";
	class CategoriesController extends Controller{
		//ke thua class CategoriesModel
		use CategoriesModel;
		public function index(){
			//so ban ghi tren mot trang
			$recordPerPage = 20;
			//tinh so trang de truyen ra view
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			//lay du lieu
			$data = $this->modelRead($recordPerPage);
			//goi view, truyen du lieu ra view
			$this->loadView("CategoriesReadView.php",["numPage"=>$numPage,"data"=>$data]);
		}
		public function update(){
			$id = isset($_GET["id"])&&$_GET["id"]>0 ? $_GET["id"] : 0;
			//tao bien $action de dua vao thuoc tinh action cua the form
			$action = "index.php?controller=categories&action=updatePost&id=$id";
			//lay du lieu
			$record = $this->modelGetRecord($id);
			//goi view, truyen du lieu ra view
			$this->loadView("CategoriesCreateUpdateView.php",["record"=>$record,"action"=>$action]);
		}
		public function updatePost(){
			$id = isset($_GET["id"])&&$_GET["id"]>0 ? $_GET["id"] : 0;
			$this->modelUpdate($id);
			header("location:index.php?controller=categories");
		}
		public function create(){
			//tao bien $action de dua vao thuoc tinh action cua the form
			$action = "index.php?controller=categories&action=createPost";
			//goi view, truyen du lieu ra view
			$this->loadView("CategoriesCreateUpdateView.php",["action"=>$action]);
		}
		public function createPost(){
			$this->modelCreate();
			header("location:index.php?controller=categories");
		}
		public function delete(){
			$id = isset($_GET["id"])&&$_GET["id"]>0 ? $_GET["id"] : 0;
			$this->modelDelete($id);
			header("location:index.php?controller=categories");
		}
	}
 ?>