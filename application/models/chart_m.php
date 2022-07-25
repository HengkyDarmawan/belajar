<?php
class Chart_m extends CI_Model
{
    function Jum_mahasiswa_penjurusan()
    {
        $this->db->group_by('jrs');
        $this->db->select('jrs');
        $this->db->select("count(*) as total");
        return $this->db->from('data_mhs_chart')
            ->get()
            ->result();
    }
}
