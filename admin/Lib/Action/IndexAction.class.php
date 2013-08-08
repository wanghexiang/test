<?php
/*
 *后台主页
 */
class IndexAction extends Action {
    public function index(){
		//判断是否已经登陆
		if(!($_SESSION['admin'])){
			
                    $this->redirect(('Login/index?id=1'));
		}
		else{
			$this->show();
		}
	}
	public function left(){
		$this->show();
	}
	public function main(){
		$this->show();
	}
}