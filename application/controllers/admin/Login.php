<?php
Class Login extends MY_controller{
    
    function index()
    {
        $this->load->library('form_validation');
        $this->load->helper('form');
        if($this->input->post())
        {
            $this->form_validation->set_rules('login' ,'login', 'callback_check_login');
            if($this->form_validation->run())
            {
                $this->session->set_userdata('login', true);
                
                redirect(admin_url('home'));
            }
        }
        
        $this->load->view('admin/login/index');
    }
    
    /*
     * Kiem tra username va password co chinh xac khong
     */
    function check_login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $password = md5($password);
        
        $this->load->model('admin_model');
        $where = array('username' => $username , 'password' => $password);
        $admin = $this->admin_model->get_info_rule($where);

        // if($this->admin_model->check_exists($where))
        // {
        //     return true;
        // }
        // 
        if($admin){
            $this->session->set_userdata('permissions', json_decode($admin->permissions));
            $this->session->set_userdata('admin_id',$admin->id);
            return true;
        } 
        $this->form_validation->set_message(__FUNCTION__, 'Không đăng nhập thành công');
        return false;
    }
}