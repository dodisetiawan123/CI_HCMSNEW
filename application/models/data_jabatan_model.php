<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_jabatan_model extends CI_Model {

    public function __construct()
    {
        
        $this->load->database();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function get_jabatan()
    {
        $this->db->select('idmd_jabatan,namajabatan,namabidang,namaorganisasi');
        $this->db->from('md_jabatan');
        $this->db->join('md_bidang', 'md_bidang.idmd_bidang = md_jabatan.idmd_bidang', 'left' );
        $this->db->join('md_organisasi', 'md_organisasi.idmd_organisasi = md_bidang.idmd_organisasi', 'left' );
        $query=$this->db->get();
        return $query->result();
    }

    public function get_organisasi()
    {
        $this->db->select('idmd_organisasi,kodeorganisasi,namaorganisasi');
        $this->db->from('md_organisasi');
        $query=$this->db->get();
        return $query->result();
    }
    
    public function insertjabatan($data)
    {
        $this->db->insert('md_jabatan', $data);
        
    }

     public function hapusjabatan($idmd_jabatan)
    {
        $this->db->where('idmd_jabatan', $idmd_jabatan);
        $this->db->delete('md_jabatan');
        
    }
    
     
}
