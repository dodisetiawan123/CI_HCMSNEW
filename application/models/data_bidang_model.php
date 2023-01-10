<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_bidang_model extends CI_Model {

    public function __construct()
    {
        
        $this->load->database();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function get_bidang()
    {
        $this->db->select('idmd_bidang,kodebidang,namabidang,namaorganisasi');
        $this->db->from('md_bidang');
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
    
    public function insertbidang($data)
    {
        $this->db->insert('md_bidang', $data);
        
    }

     public function hapusbidang($idmd_bidang)
    {
        $this->db->where('idmd_bidang', $idmd_bidang);
        $this->db->delete('md_bidang');
        
    }
    
     
}
