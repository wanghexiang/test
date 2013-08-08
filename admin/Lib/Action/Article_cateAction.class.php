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
		$pid=I('get.pid');
		$cate=M("article_cate");
		//修改操作
		if($id){
			$result=$cate->where("id='$id'")->find();
			$this->result=$result;
		}
		$this->pid=$pid;
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
		import('ORG.Util.Page');// 导入分页类
		$cate=M('article_cate');
		$pid=I('get.pid');
		$count=$cate->where("pid='$pid'")->count();
		$Page= new Page($count,10);// 实例化分页类 传入总记录数
		$Page->setConfig('header','条信息');
		$Page->setConfig('theme'," %upPage%%first% %prePage% %linkPage% %nextPage% %end% %downPage%");
		$show= $Page->show();// 分页显示输出
		
		$result=$cate->where("pid='$pid'")->limit($Page->firstRow.','.$Page->listRows)->select();
		
		
		$this->assign('page',$show);// 赋值分页输出
		$this->pid=$pid;
		$this->result=$result;
		$this->show();
	}
	/*
	 *删除分类
	 */	
	public function delete(){
		$id=I('get.id');
		$cate=M('article_cate');
		$count=$cate->where("pid='$id'")->count();
		//分类存在子分类，不允许删除
		if($count>0)
		die("该分类下存在子分类，不能删除");
		//删除成功
		if($cate->where("id='$id'")->delete())
		echo 1;
		else
		//删除失败
		echo "删除失败";
		
	}
	
}
?>