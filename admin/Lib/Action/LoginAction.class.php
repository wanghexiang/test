<?php
/*
 *后台主页
 */
class LoginAction extends Action {
    public function index(){
		
			$this->show();
		
	}
	public function login(){
	//print_r($_POST);
	

		$admin=M('admin');
		$username=I('post.username');
		$password=(I('password'));
		$result=$admin->where("email='$username' and pwd='$password'")->find();
		echo $admin->getLastSql();
	
		
	}
}