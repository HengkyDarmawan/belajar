<?php

class ProfileHengkyDarmawan extends CI_Controller
{
    public function lihat()
    {
        $data["hasil"] = $this->mahasiswa_m->get_data();
        $this->load->view('lihat', $data);
    }
    public function tambah()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nim', 'NIM', 'required|numeric');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('tambah');
        } else {
            $this->mahasiswa_m->tambah_data();
            $this->session->set_flashdata('flashdata', 'Tambahkan');
            redirect('lihat');
        }
    }
    public function delete($id)
    {
        $this->mahasiswa_m->delete_data($id);
        $this->session->set_flashdata('flashdata', 'Hapus');
        redirect('ProfileHengkyDarmawan/lihat');
    }

    public function update($id)
    {
        $data["mahasiswa"] = $this->mahasiswa_m->getDataById($id);

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nim', 'NIM', 'required|numeric');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('update', $data);
        } else {
            $this->mahasiswa_m->update_data();
            $this->session->set_flashdata('flashdata', 'Update');
            redirect('lihat');
        }
    }
    public function upload()
    {
        $this->load->view('upload', array('error' => ' '));
    }
    public function do_upload()
    {
        $config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = 10000;
        $config['max_width']            = 1024;
        $config['max_height']           = 768;

        $this->upload->initialize($config);

        if (!$this->upload->do_upload('userfile')) {
            $error = array('error' => $this->upload->display_errors());

            $this->load->view('upload', $error);
        } else {
            $data = array('upload_data' => $this->upload->data());

            $this->load->view('upload_success', $data);
        }
    }
}
