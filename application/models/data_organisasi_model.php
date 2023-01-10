<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_organisasi_model extends CI_Model {

    public function __construct()
    {
        
        $this->load->database();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function get_organisasi()
    {
        $this->db->select('idmd_organisasi,kodeorganisasi,namaorganisasi');
        $this->db->from('md_organisasi');
        $query=$this->db->get();
        return $query->result();
    }

    public function insertorganisasi($data)
    {
        $this->db->insert('md_organisasi', $data);
        
    }

     public function hapusorganisasi($idmd_organisasi)
    {
        $this->db->where('idmd_organisasi', $idmd_organisasi);
        $this->db->delete('md_organisasi');
        
    }
    
     
}
