<?php
/*
 *后台主页
 */
class IndexAction extends Action {
    public function index(){
		//判断是否已经登陆
		if(!($_SESSION['admin'])){
			
			A('Login/index');
		}
		else{
			$this->show();
		}
	}
}