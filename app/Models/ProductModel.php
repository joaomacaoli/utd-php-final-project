<?php

namespace App\Models;

use CodeIgniter\Model;

class ProductModel extends Model
{
    protected $table      = 'products';
    protected $primaryKey = 'id_product';
    //protected $useAutoIncrement = true;
    protected $returnType     = 'array';
    //protected $useSoftDeletes = true;
    protected $allowedFields = ['id_product','product_name','product_code','product_price','product_stock','product_created_in'];
    
}