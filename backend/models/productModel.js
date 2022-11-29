// kết nói với dư liệu

// const db = require('../config/database')

import db from '../config/database.js'

// lay tat ca san pham 

export const getProducts = (result) => {
    db.query("SELECT * FROM sanpham", (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};

// lay mot san phantom

export const getProductById = (id,result) => {
    db.query("SELECT * FROM sanpham WHERE id_sp = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};

// them mot san phan mot

export const insertProduct = (data,result) => {
    db.query("INSERT INTO sanpham SET ?",data, (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};


// cap nhat san phantom

export const updateProductById = (data,id,result) => {
    db.query("UPDATE sanpham SET ten = ?, mota = ? , gia = ? , loai = ? , url = ? , soluong = ? ,ban = ? WHERE id_sp = ?",
                [data.ten, data.mota, data.gia, data.loai, data.url, data.soluong, data.ban , id], 
                (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};

//xoa san pham

export const deleteProductById = (id,result) => {
    db.query("DELETE FROM sanpham WHERE id_sp = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};