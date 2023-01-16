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
        $this->db->select('idmd_organisasi,idmd_organisasi as id,kodeorganisasi,namaorganisasi,(SELECT IFNULL(SUM(standard), 0) FROM md_jabatan where idmd_organisasi = id) as standard,');
        $this->db->from('md_organisasi');
        $this->db->where('md_organisasi.deleted', '0');
        $query=$this->db->get();
        return $query->result();
    }

    public function insertorganisasi($data)
    {
        $this->db->insert('md_organisasi', $data);
        
    }

     public function hapusorganisasi($idmd_organisasi)
    {
        $data = array(
                    'deleted' => '1',
            );

        $this->db->where('idmd_organisasi', $idmd_organisasi);
        $this->db->update('md_organisasi', $data);
        
    }
    
     
}
