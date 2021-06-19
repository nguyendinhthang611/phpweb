<?php 
	trait NewsModel{
		//lay cac ban ghi co phan trang
		//$recordPerPage -> so ban ghi tren mot trang
		public function modelRead($recordPerPage){
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
			$query = $conn->query("select * from news order by id desc limit $from,$recordPerPage");
			//tra ve tat ca cac ban ghi
			return $query->fetchAll();
		}
		//tinh tong so ban ghi
		public function modelTotalRecord(){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select id from news");
			//tra ve tong so ban ghi dem duoc
			return $query->rowCount();
		}
		//lay mot ban ghi
		public function modelGetRecord($id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->prepare("select * from news where id=:var_id");
			$query->execute(["var_id"=>$id]);
			//tra ve mot ban ghi
			return $query->fetch();
		}
		public function modelUpdate($id){
			$id = isset($_GET["id"])?$_GET["id"]:0;
			$name = $_POST["name"];		
			$descriptionsnews = $_POST["descriptionsnews"];
			$content = $_POST["content"];
			$hot = isset($_POST["hot"]) ? 1 : 0;
			$time = $_POST["time"];
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->prepare("update news set name=:var_name,descriptionsnews=:var_descriptionsnews,content=:var_content,hot=:var_hot,time=:var_time where id=$id");
			$query->execute(["var_name"=>$name,"var_descriptionsnews"=>$descriptionsnews,"var_content"=>$content,"var_hot"=>$hot,"var_time"=>$time]);
			
			//---
			//neu user upload anh thi thuc hien upload
			
			$photo = "";
			if($_FILES["photo"]["name"] != ""){
				//---
				//lay anh cu de xoa
				$oldPhoto = $conn->query("select photo from news where id=$id");
				if($oldPhoto->rowCount() > 0){
					$record = $oldPhoto->fetch();
					//xoa anh
					if($record->photo != "" && file_exists("../assets/upload/news/".$record->photo))
						unlink("../assets/upload/news/".$record->photo);
				}
				//---
				$photo = time()."_".$_FILES["photo"]["name"];
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/news/$photo");
				$query = $conn->prepare("update news set photo=:var_photo where id=$id");
				$query->execute(array("var_photo"=>$photo));
			}
			//---
		}
		public function modelCreate(){
			$id = isset($_GET["id"])?$_GET["id"]:0;
			$name = $_POST["name"];		
			$descriptionsnews = $_POST["descriptionsnews"];
			$content = $_POST["content"];
			$hot = isset($_POST["hot"]) ? 1 : 0;
			$time = $_POST["time"];
			$photo = "";
			//lay bien ket noi
			$conn = Connection::getInstance();
			//---
			//neu user upload anh thi thuc hien upload			
			$photo = "";
			if($_FILES["photo"]["name"] != ""){				
				$photo = time()."_".$_FILES["photo"]["name"];
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/news/$photo");
				$query = $conn->prepare("update news set photo=:var_photo where id=$id");
				$query->execute(array("var_photo"=>$photo));
			}
			//---			
			$query = $conn->prepare("insert into news set name=:var_name,descriptionsnews=:var_descriptionsnews,content=:var_content,hot=:var_hot,photo=:var_photo,time=:var_time");
			$query->execute(["var_name"=>$name,"var_descriptionsnews"=>$descriptionsnews,"var_content"=>$content,"var_hot"=>$hot,"var_photo"=>$photo,"var_time"=>$time]);		
		}
		public function modelDelete($id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			//---
			//lay anh cu de xoa
			$oldPhoto = $conn->query("select photo from news where id=$id");
			if($oldPhoto->rowCount() > 0){
				$record = $oldPhoto->fetch();
				//xoa anh
				if($record->photo != "" && file_exists("../assets/upload/news/".$record->photo))
					unlink("../assets/upload/news/".$record->photo);
			}
			//---
			//update cot name
			$query = $conn->prepare("delete from news where id=:var_id ");
			$query->execute(["var_id"=>$id]);
		}
		
	}
 ?>