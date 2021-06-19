<?php 
	trait SearchModel{
		//lay cac ban ghi co phan trang
		//$recordPerPage -> so ban ghi tren mot trang
		public function modelRead($recordPerPage){
			//--
			$fromPrice = isset($_GET["fromPrice"])?$_GET["fromPrice"]:0;
			$toPrice = isset($_GET["toPrice"])?$_GET["toPrice"]:0;
			$key = isset($_GET["key"])?$_GET["key"]:"";
			$search = "";
			if($fromPrice > 0)
				$search = $search. " and price >= $fromPrice";
			if($toPrice > 0)
				$search = $search. " and price <= $toPrice";
			if($key != "")
				$search = $search. " and name like '%$key%' ";

			//--
			//lay tong cac ban ghi
			$totalRecord = $this->modelTotalRecord();

			//tinh so trang
			//ham ceil la ham lay trần. VD: ceil(2.2) = 3
			$numPage = ceil($totalRecord/$recordPerPage);
			//lay bien page truyen tu url
			$page = isset($_GET["p"])&&$_GET["p"]>0 ? $_GET["p"]-1 : 0;
			//lay tu ban ghi nao
			$from = $page * $recordPerPage;
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where 1=1 $search order by id desc limit $from,$recordPerPage");
			//tra ve tat ca cac ban ghi
			return $query->fetchAll();
		}
		//tinh tong so ban ghi
		public function modelTotalRecord(){
			//--
			$fromPrice = isset($_GET["fromPrice"])?$_GET["fromPrice"]:0;
			$toPrice = isset($_GET["toPrice"])?$_GET["toPrice"]:0;
			$key = isset($_GET["key"])?$_GET["key"]:"";
			$search = "";
			if($fromPrice > 0)
				$search = $search. " and price >= $fromPrice";
			if($toPrice > 0)
				$search = $search. " and price <= $toPrice";
			if($key != "")
				$search = $search. " and name  like '%$key%' ";
			//--
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select id from products where 1= 1 $search");
			//tra ve tong so ban ghi dem duoc
			return $query->rowCount();
		}
		public function modelAjax(){
			$key = isset($_GET["key"])?$_GET["key"]:"";
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where name like '%$key%'");
			$result = $query->fetchAll();
			$strAppend = "";
			foreach($result as $rows)
				$strAppend = $strAppend."<li><img src='assets/upload/products/$rows->photo'><a href='index.php?controller=products&action=detail&id=$rows->id;'>$rows->name</a></li>";
			return $strAppend;
		}

	}
 ?>