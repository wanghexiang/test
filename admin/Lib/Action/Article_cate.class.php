<?php
/*
 *文章分类管理
 */
class ArticlecateAction extends Action{

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
}
?>