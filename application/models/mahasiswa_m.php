<?php
class Mahasiswa_m extends CI_Model
{
    public function get_data()
    {
        return $this->db->get('tb_mahasiswa')->result_array();
    }
    public function tambah_data()
    {
        $data = [
            'nama' => $this->input->post('nama', true),
            'nim' => $this->input->post('nim', true),
            'email' => $this->input->post('email', true)
        ];
        $this->db->insert('tb_mahasiswa', $data);
    }
    public function delete_data($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('tb_mahasiswa');
    }
    public function getDataById($id)
    {
        return $this->db->get_where('tb_mahasiswa', ['id' => $id])->row_array();
    }
    public function update_data()
    {
        $data = [
            'nama' => $this->input->post('nama', true),
            'nim' => $this->input->post('nim', true),
            'email' => $this->input->post('email', true)
        ];
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('tb_mahasiswa', $data);
    }
    public function mycetak_pdf()
    {
        return $this->db->get('data_mhs')->result_array();
    }
}
