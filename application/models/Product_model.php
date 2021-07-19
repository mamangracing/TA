<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Product_model extends CI_Model
{
    public function get_product()
    {
        return $this->db->get('product')->result_array();
    }

    public function get_products($limit, $start, $product_type = null, $keyword = null)
    {
        if ($product_type) {
            if ($keyword) {
                $this->db->where('product_type', $product_type);
                $this->db->like('product_name', $keyword);
                $this->db->or_like('price', $keyword);
            } else {
                $this->db->where('product_type', $product_type);
            }
        } else {
            if ($keyword) {
                $this->db->like('product_name', $keyword);
                $this->db->or_like('price', $keyword);
            } else {
                $this->db->select('*');
            }
        }
        return $this->db->get('product', $limit, $start)->result_array();
    }

    public function countAllProducts()
    {
        return $this->db->get('product')->num_rows();
    }

    public function get_product_id($id)
    {
        $query = $this->db->get_where('product', array('product_id' => $id));
        return $query;
    }

    public function total_product()
    {
        return $this->db->get('product')->num_rows();
    }

    public function update($table = null, $data = null, $where = null, $id = null)
    {
       return $this->db->update($table, $data, array($where => $id));
    }

    public function delete($id)
    {
        $this->db->where('product_id', $id);
        $this->db->delete('product');
    }

    public function get_food()
    {
        $foods = $this->db->get_where('product', ['product_type' => 'Food'])->result_array();
        return $foods;
    }
    
    public function get_baverage()
    {
        $baverage = $this->db->get_where('product', ['product_type' => 'Baverage'])->result_array();
        return $baverage;
    }

    // public function filter($product_type)
    // {
    //     $filtered = $this->db->get_where('product', ['product_type' => $product_type])->result_array();
    //     return $filtered;
    // }

    // public function search($keyword)
    // {
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->like('product_name', $keyword);
    //     $this->db->or_like('price', $keyword);
    //     return $this->db->get()->result_array();
    // }

    // public function filter_search($product_type, $keyword)
    // {
    //     $this->db->get_where('product', ['product_type' => $product_type]);
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->like('product_name', $keyword);
    //     $this->db->or_like('price', $keyword);
    //     return $this->db->get()->result_array();
    // }
}