<?php
class Export_m extends CI_Model
{
    public function getAll()
    {
        $this->db->select('*');
        $this->db->from('pengguna');
        return $this->db->get();
    }
}
