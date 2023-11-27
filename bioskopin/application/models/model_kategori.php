<?php

class Model_kategori extends CI_Model
{
  public function data_elektronik()
  {
    return $this->db->get_where("tb_barang", array("kategori" => "comedy"));
  }

  public function data_pakaian_pria()
  {
    return $this->db->get_where("tb_barang", array("kategori" => "thriller"));
  }

  public function data_pakaian_wanita()
  {
    return $this->db->get_where("tb_barang", array("kategori" => "action"));
  }

  public function data_pakaian_anak_anak()
  {
    return $this->db->get_where("tb_barang", array("kategori" => "sci-fi"));
  }

  public function data_peralatan_olahraga()
  {
    return $this->db->get_where("tb_barang", array("kategori" => "horror"));
  }
}
