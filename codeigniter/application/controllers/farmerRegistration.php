<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class FarmerRegistration extends CI_Controller {

	public function __construct(){  
           parent::__construct();  
           $this->load->model("registration_model");  
      } 

	public function index()
	{
		$this->load->view('farmer_registration');
	}

	function registration()
	{
	   $this->form_validation->set_rules('userName', 'Username', 'required');  
       $this->form_validation->set_rules('firstName', 'FirstName', 'required');  
       $this->form_validation->set_rules('lastName', 'LastName', 'required');  
       $this->form_validation->set_rules('phoneNumber','PhoneNumber','required|numeric');  
       $this->form_validation->set_rules('email', 'Email', 'required');  
       $this->form_validation->set_rules('password', 'Password', 'required');  
       $this->form_validation->set_rules('pincode', 'Pincode', 'required');
       $this->form_validation->set_rules('userType', 'UserType', 'required');  
       if ($this->form_validation->run())  
       {       
       		$register=$this->registration_model->insertdata($_POST);
       		  
       		if($register){  
                 echo "<script>alert('added Sucessfully')</script>";  
            }  
       }  
       $data['title']="Registration";  
       $this->load->view('farmer_profile',$data); 

	}
}

/* End of file FarmerRegistration.php */
/* Location: ./application/controllers/FarmerRegistration.php */