<?php

class Cetak_pdf extends CI_Controller
{
    function index()
    {
        $pdf = new FPDF('l', 'mm', 'A5');
        //halaman baru
        $pdf->AddPage();
        //setting jenis font
        $pdf->SetFont('Arial', 'B', 16);
        //cetak string
        $pdf->Cell(190, 7, 'Universitas Dian Nusantara', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'Daftar Mahasiswa Teknik Informatika', 0, 1, 'C');
        //memberikan space kebawah
        $pdf->Cell(10, 7, '', 0, 1);
        $pdf->SetFont('Arial', 'B', 10);
        $pdf->Cell(9, 6, 'No.', 1, 0);
        $pdf->Cell(20, 6, 'NIM', 1, 0);
        $pdf->Cell(80, 6, 'NAMA MAHASISWA', 1, 0);
        $pdf->Cell(40, 6, 'Alamat', 1, 0);
        $pdf->Cell(35, 6, 'Tanggal Lahir', 1, 1);
        $pdf->SetFont('Arial', '', 10);

        $mahasiswa = $this->mahasiswa_m->mycetak_pdf();
        $no = 0;
        foreach ($mahasiswa as $row) {
            $no++;
            $pdf->Cell(9, 6, $no, 1, 0, 'C');
            $pdf->Cell(20, 6, $row['nim'], 1, 0);
            $pdf->Cell(80, 6, $row['nama'], 1, 0);
            $pdf->Cell(40, 6, $row['alamat'], 1, 0);
            $pdf->Cell(35, 6, $row['tgl_lahir'], 1, 1);
        }
        $pdf->Output();
    }
}
