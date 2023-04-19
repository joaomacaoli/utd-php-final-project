<?php

namespace App\Controllers;

use App\Models\ProductModel;

class ProductController extends BaseController
{
    
    private $model;
    
    public function __construct()
    {
        $this->model = new ProductModel();
    }

    public function listProducts()
    {
        $data['result'] = $this->model->find();        
        return view('products/list', $data);
    }

    public function editProduct($id)
    {
        $data['result'] = $this->model->find($id);        
        return view('products/update', $data);
    }

    public function insertProduct(){
        return view("products/insert");
    }

    public function save(){

        $request = \Config\Services::request();

        $data = $request->getPost();

        //var_dump($data);
        $this->model->save($data);

        return redirect()->to('products');

    }

    public function deleteProduct($id){
        //var_dump($data);
        $this->model->delete($id);
        return redirect()->to('products');
    }

}


