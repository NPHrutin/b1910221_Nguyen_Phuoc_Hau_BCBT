
import {
    getProducts,
    getProductById,
    insertProduct,
    updateProductById,
    deleteProductById,
} from "../models/ProductModel.js";

// lay tat ca san pham 

export const showProducts=(req,res)=>{
    getProducts((err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// lay mot san pham 

export const showProductById=(req,res)=>{
    getProductById(req.params.id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// tao mot san pham moi

export const createProduct=(req,res)=>{
    const data = req.body;
    insertProduct(data,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// cap nhat san pham
export const updateProduct=(req,res)=>{
    const data = req.body;
    const id = req.params.id;
    updateProductById(data,id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// xoa san pham 
export const deleteProduct=(req,res)=>{
    const id = req.params.id;
    deleteProductById(id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};