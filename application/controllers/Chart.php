<?php

class Chart extends CI_Controller
{
    function index()
    {
        $data['hasil'] = $this->chart_m->Jum_mahasiswa_penjurusan();
        $this->load->view('chartMahasiswa', $data);
    }
}
