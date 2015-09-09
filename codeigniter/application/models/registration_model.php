<?php  
 class registration_model extends CI_Model {  
      function insertdata($options = array()){  
            if(isset($options['userName']))  
                $this->db->set('user_fname',strip_tags($options['userName']));  
            if(isset($options['firstName']))  
                $this->db->set('user_fname',strip_tags($options['firstName']));  
            if(isset($options['lastName']))  
                $this->db->set('user_lname',strip_tags($options['lastName']));  
            if(isset($options['phoneNumber']))  
                $this->db->set('user_phone',strip_tags($options['phoneNumber']));
            if(isset($options['email']))  
                $this->db->set('user_email',strip_tags($options['email'])); 
            if(isset($options['password']))  
                $this->db->set('user_password',strip_tags($options['password']));
            if(isset($options['pincode']))  
                $this->db->set('user_pin',strip_tags($options['pincode']));   
                
            $this->db->insert("user_master");  
            
           return $this->db->insert_id();  
      }  
 }  
 ?>