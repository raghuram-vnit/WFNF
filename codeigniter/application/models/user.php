<?php
Class User extends CI_Model
{
 function login($username, $password)
 {
   $this -> db -> select('user_id, user_fname, user_password, user_email');
   $this -> db -> from('user_master');
   $this -> db -> where('user_fname', $username);
   $this -> db -> where('user_password', $password);
   $this -> db -> limit(1);
 
   $query = $this -> db -> get();
 
   if($query -> num_rows() == 1)
   {
     return $query->result();
   }
   else
   {
     return false;
   }
 }
}
?>