<?php
/*
 *文章分类管理
 */
class Article_cateAction extends Action{

	/*
	 *添加、修改文章页面
	 */
	public function add(){
		$id=I('get.id');
		$cate=M("article_cate");
		//修改操作
		if($id){
			$result=$cate->where("id='$id'")->find();
			$this->result=$result;
		}
		$this->show();
	}
	/*
	 *保存数据
	 */
	public function save(){
		$id=I('post.id');
		
		$cate=M("article_cate");
		//修改
		if($cate->create()){
			if($id){
			    
				if($cate->save())
				$this->error("修改成功!");
			}
			//新增
			else{
				
				if($cate->add())
				$this->error("添加成功!");
			}
		}
		else{
		
			 $this->error($cate->getError());
		}
	}
	/*
	 *分类列表
	 */
	public function index(){
		$cate=M('article_cate');
		$result=$cate->select();
		$this->result=$result;
		$this->show();
	}	
}
?>